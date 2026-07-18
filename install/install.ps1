[CmdletBinding()]
param(
  [string]$Skill,
  [string]$Package,

  [ValidateSet(
    'user-agents',
    'user-codex',
    'user-claude',
    'project-agents',
    'project-codex',
    'project-claude',
    'custom'
  )]
  [string]$Target,

  [string]$ProjectRoot,
  [string]$TargetDirectory,

  [ValidateSet('SymbolicLink', 'Junction')]
  [string]$LinkType = 'SymbolicLink',

  [switch]$DryRun,
  [switch]$List
)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

$repoRoot = (Resolve-Path -LiteralPath (Join-Path $PSScriptRoot '..')).Path
$skillsRoot = Join-Path $repoRoot 'skills'
$packagesRoot = Join-Path $PSScriptRoot 'packages'

if (-not (Test-Path -LiteralPath $skillsRoot -PathType Container)) {
  throw "Skills root was not found: $skillsRoot"
}
if (-not (Test-Path -LiteralPath $packagesRoot -PathType Container)) {
  throw "Package root was not found: $packagesRoot"
}

function Get-SkillNames {
  @(
    Get-ChildItem -LiteralPath $skillsRoot -Directory |
      Where-Object {
        Test-Path -LiteralPath (Join-Path $_.FullName 'SKILL.md') -PathType Leaf
      } |
      Sort-Object -Property Name |
      ForEach-Object { $_.Name }
  )
}

function Get-PackageNames {
  @('all') + @(
    Get-ChildItem -LiteralPath $packagesRoot -File -Filter '*.txt' |
      Sort-Object -Property BaseName |
      ForEach-Object { $_.BaseName }
  )
}

function Read-Selection {
  param(
    [Parameter(Mandatory)]
    [string]$Prompt,

    [Parameter(Mandatory)]
    [string[]]$Choices
  )

  if ($Choices.Count -eq 0) {
    throw "No choices are available for $Prompt."
  }

  Write-Host $Prompt
  for ($index = 0; $index -lt $Choices.Count; $index++) {
    Write-Host ('  {0}) {1}' -f ($index + 1), $Choices[$index])
  }

  $answer = Read-Host
  $numericChoice = 0
  if ([int]::TryParse($answer, [ref]$numericChoice)) {
    if ($numericChoice -lt 1 -or $numericChoice -gt $Choices.Count) {
      throw "Selection is out of range: $answer"
    }
    return $Choices[$numericChoice - 1]
  }

  $matchedChoice = @($Choices | Where-Object { $_ -eq $answer })
  if ($matchedChoice.Count -ne 1) {
    throw "Unknown selection: $answer"
  }
  return $matchedChoice[0]
}

function Assert-SkillName {
  param([Parameter(Mandatory)][string]$Name)

  if ($Name -notmatch '^[a-z0-9-]+$') {
    throw "Invalid skill name: $Name"
  }
  if (-not (Test-Path -LiteralPath (Join-Path $skillsRoot "$Name\SKILL.md") -PathType Leaf)) {
    throw "Skill was not found: $Name"
  }
}

function Get-UnresolvedFullPath {
  param([Parameter(Mandatory)][string]$Path)

  $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath($Path)
}

function Get-LinkTargetPath {
  param(
    [Parameter(Mandatory)]$Item,
    [Parameter(Mandatory)][string]$DestinationPath
  )

  $rawTarget = [string]@($Item.Target)[0]
  if ([string]::IsNullOrWhiteSpace($rawTarget)) {
    return $null
  }
  if ([IO.Path]::IsPathRooted($rawTarget)) {
    return [IO.Path]::GetFullPath($rawTarget)
  }
  return [IO.Path]::GetFullPath((Join-Path (Split-Path -Parent $DestinationPath) $rawTarget))
}

$availableSkills = @(Get-SkillNames)
$availablePackages = @(Get-PackageNames)
$packageSkillNames = @(
  Get-ChildItem -LiteralPath $packagesRoot -File -Filter '*.txt' |
    Sort-Object -Property BaseName |
    ForEach-Object {
      $manifestSkills = @(
        Get-Content -LiteralPath $_.FullName -Encoding UTF8 |
          Where-Object { $_ -and -not $_.StartsWith('#') }
      )
      if ($manifestSkills.Count -eq 0) {
        throw "Package is empty: $($_.FullName)"
      }
      $manifestDuplicates = @(
        $manifestSkills |
          Group-Object |
          Where-Object { $_.Count -gt 1 } |
          ForEach-Object { $_.Name }
      )
      if ($manifestDuplicates.Count -ne 0) {
        throw "Package contains duplicate skills: $($_.FullName) -> $($manifestDuplicates -join ', ')"
      }
      $sortedManifestSkills = @($manifestSkills | Sort-Object)
      if (($manifestSkills -join "`n") -cne ($sortedManifestSkills -join "`n")) {
        throw "Package entries must be alphabetically sorted: $($_.FullName)"
      }
      foreach ($manifestSkill in $manifestSkills) {
        Assert-SkillName $manifestSkill
        $manifestSkill
      }
    }
)
$packageCoverageDifference = @(
  Compare-Object `
    -ReferenceObject $availableSkills `
    -DifferenceObject @($packageSkillNames | Sort-Object -Unique)
)
if ($packageCoverageDifference.Count -ne 0) {
  throw "Package manifests must cover every skill at least once: $($packageCoverageDifference | Out-String)"
}

if ($List) {
  Write-Host 'Packages:'
  $availablePackages | ForEach-Object { Write-Host "  $_" }
  Write-Host 'Skills:'
  $availableSkills | ForEach-Object { Write-Host "  $_" }
  return
}

if ($Skill -and $Package) {
  throw 'Choose either -Skill or -Package, not both.'
}

if (-not $Skill -and -not $Package) {
  $selectionKind = Read-Selection `
    -Prompt 'Install an individual skill or a package?' `
    -Choices @('skill', 'package')
  if ($selectionKind -eq 'skill') {
    $Skill = Read-Selection -Prompt 'Choose a skill:' -Choices $availableSkills
  } else {
    $Package = Read-Selection -Prompt 'Choose a package:' -Choices $availablePackages
  }
}

if (-not $Target) {
  $Target = Read-Selection `
    -Prompt 'Choose an installation target:' `
    -Choices @(
      'user-agents',
      'user-codex',
      'user-claude',
      'project-agents',
      'project-codex',
      'project-claude',
      'custom'
    )
}

$userProfile = [Environment]::GetFolderPath('UserProfile')
if ([string]::IsNullOrWhiteSpace($userProfile)) {
  throw 'The user profile directory could not be resolved.'
}

switch ($Target) {
  'user-agents' {
    $targetRoot = Join-Path $userProfile '.agents\skills'
  }
  'user-codex' {
    $targetRoot = Join-Path $userProfile '.codex\skills'
  }
  'user-claude' {
    $targetRoot = Join-Path $userProfile '.claude\skills'
  }
  { $_ -in @('project-agents', 'project-codex', 'project-claude') } {
    if (-not $ProjectRoot) {
      $ProjectRoot = Read-Host 'Existing project repository root'
    }
    if (-not (Test-Path -LiteralPath $ProjectRoot -PathType Container)) {
      throw "Project root does not exist: $ProjectRoot"
    }
    $resolvedProjectRoot = (Resolve-Path -LiteralPath $ProjectRoot).Path
    $targetSuffix = switch ($Target) {
      'project-agents' { '.agents\skills' }
      'project-codex' { '.codex\skills' }
      'project-claude' { '.claude\skills' }
    }
    $targetRoot = Join-Path $resolvedProjectRoot $targetSuffix
  }
  'custom' {
    if (-not $TargetDirectory) {
      $TargetDirectory = Read-Host 'Exact destination skills directory'
    }
    if ([string]::IsNullOrWhiteSpace($TargetDirectory)) {
      throw 'The custom target directory cannot be empty.'
    }
    $targetRoot = Get-UnresolvedFullPath $TargetDirectory
  }
}

if ($ProjectRoot -and $Target -notlike 'project-*') {
  throw '-ProjectRoot is valid only with a project target.'
}
if ($TargetDirectory -and $Target -ne 'custom') {
  throw '-TargetDirectory is valid only with the custom target.'
}

if ($Skill) {
  Assert-SkillName $Skill
  $selectedSkills = @($Skill)
} elseif ($Package -eq 'all') {
  $selectedSkills = $availableSkills
} else {
  if ($Package -notmatch '^[a-z0-9-]+$') {
    throw "Invalid package name: $Package"
  }
  $manifestPath = Join-Path $packagesRoot "$Package.txt"
  if (-not (Test-Path -LiteralPath $manifestPath -PathType Leaf)) {
    throw "Package was not found: $Package"
  }
  $selectedSkills = @(
    Get-Content -LiteralPath $manifestPath -Encoding UTF8 |
      Where-Object { $_ -and -not $_.StartsWith('#') }
  )
  if ($selectedSkills.Count -eq 0) {
    throw "Package is empty: $Package"
  }
  foreach ($selectedSkill in $selectedSkills) {
    Assert-SkillName $selectedSkill
  }
  $duplicates = @(
    $selectedSkills |
      Group-Object |
      Where-Object { $_.Count -gt 1 } |
      ForEach-Object { $_.Name }
  )
  if ($duplicates.Count -ne 0) {
    throw "Package contains duplicate skills: $($duplicates -join ', ')"
  }
}

$plan = foreach ($selectedSkill in $selectedSkills) {
  $sourcePath = (Resolve-Path -LiteralPath (Join-Path $skillsRoot $selectedSkill)).Path
  $destinationPath = Join-Path $targetRoot $selectedSkill
  $existingItem = Get-Item -LiteralPath $destinationPath -Force -ErrorAction SilentlyContinue
  $alreadyLinked = $false

  if ($null -ne $existingItem) {
    if ($existingItem.LinkType -notin @('SymbolicLink', 'Junction')) {
      throw "Destination already exists and will not be replaced: $destinationPath"
    }
    $existingTarget = Get-LinkTargetPath `
      -Item $existingItem `
      -DestinationPath $destinationPath
    if (-not $existingTarget -or -not $existingTarget.Equals($sourcePath, [StringComparison]::OrdinalIgnoreCase)) {
      throw "Destination is already a different link: $destinationPath -> $existingTarget"
    }
    $alreadyLinked = $true
  }

  [pscustomobject]@{
    Skill = $selectedSkill
    Source = $sourcePath
    Destination = $destinationPath
    AlreadyLinked = $alreadyLinked
  }
}

if (-not $DryRun) {
  New-Item -ItemType Directory -Path $targetRoot -Force | Out-Null
}

$installedCount = 0
$existingCount = 0
foreach ($item in $plan) {
  if ($item.AlreadyLinked) {
    Write-Host "Already linked: $($item.Destination) -> $($item.Source)"
    $existingCount++
    continue
  }
  if ($DryRun) {
    Write-Host "[dry-run] Link: $($item.Destination) -> $($item.Source)"
    $installedCount++
    continue
  }

  try {
    New-Item `
      -ItemType $LinkType `
      -Path $item.Destination `
      -Target $item.Source `
      -ErrorAction Stop | Out-Null
  } catch {
    $guidance = if ($LinkType -eq 'SymbolicLink') {
      'Enable Windows Developer Mode, run an elevated shell, or retry with -LinkType Junction.'
    } else {
      'Confirm that the destination supports Windows directory junctions.'
    }
    throw "Could not create $LinkType for $($item.Skill). $guidance $($_.Exception.Message)"
  }

  Write-Host "Linked: $($item.Destination) -> $($item.Source)"
  $installedCount++
}

Write-Host "Target: $targetRoot"
Write-Host "New links: $installedCount; already linked: $existingCount"
