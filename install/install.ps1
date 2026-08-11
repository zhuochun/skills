[CmdletBinding()]
param(
  [ValidateSet('Install', 'Doctor', 'Uninstall')]
  [string]$Action = 'Install',

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
  @(
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

function Assert-SkillSyntax {
  param([Parameter(Mandatory)][string]$Name)

  if ($Name -notmatch '^[a-z0-9-]+$') {
    throw "Invalid skill name: $Name"
  }
}

function Assert-CurrentSkill {
  param([Parameter(Mandatory)][string]$Name)

  Assert-SkillSyntax $Name
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

function Test-PathEqual {
  param(
    [AllowNull()][string]$Left,
    [AllowNull()][string]$Right
  )

  if ($null -eq $Left -or $null -eq $Right) {
    return $false
  }
  $Left.Equals($Right, [StringComparison]::OrdinalIgnoreCase)
}

function Test-CheckoutSkillTarget {
  param([AllowNull()][string]$Path)

  if ([string]::IsNullOrWhiteSpace($Path)) {
    return $false
  }
  Test-PathEqual (Split-Path -Parent $Path) $skillsRoot
}

function ConvertTo-PowerShellLiteral {
  param([Parameter(Mandatory)][string]$Value)

  "'$($Value.Replace("'", "''"))'"
}

function Get-ManifestSkills {
  param([Parameter(Mandatory)][string]$ManifestPath)

  @(
    Get-Content -LiteralPath $ManifestPath -Encoding UTF8 |
      Where-Object { $_ -and -not $_.StartsWith('#') }
  )
}

$availableSkills = @(Get-SkillNames)
$availablePackages = @(Get-PackageNames)

foreach ($packageName in $availablePackages) {
  if ($packageName -notmatch '^[a-z0-9-]+$') {
    throw "Invalid package name: $packageName"
  }
  if ($packageName -notmatch '(-bundles|-profile)$') {
    throw "Package name must end in -bundles or -profile: $packageName"
  }

  $manifestPath = Join-Path $packagesRoot "$packageName.txt"
  $manifestSkills = @(Get-ManifestSkills $manifestPath)
  if ($manifestSkills.Count -eq 0) {
    throw "Package is empty: $manifestPath"
  }
  $manifestDuplicates = @(
    $manifestSkills |
      Group-Object |
      Where-Object { $_.Count -gt 1 } |
      ForEach-Object { $_.Name }
  )
  if ($manifestDuplicates.Count -ne 0) {
    throw "Package contains duplicate skills: $manifestPath -> $($manifestDuplicates -join ', ')"
  }
  $sortedManifestSkills = @($manifestSkills | Sort-Object)
  if (($manifestSkills -join "`n") -cne ($sortedManifestSkills -join "`n")) {
    throw "Package entries must be alphabetically sorted: $manifestPath"
  }
  foreach ($manifestSkill in $manifestSkills) {
    Assert-CurrentSkill $manifestSkill
  }
}

if ($List) {
  Write-Host 'Topic bundles:'
  $availablePackages |
    Where-Object { $_.EndsWith('-bundles', [StringComparison]::Ordinal) } |
    ForEach-Object { Write-Host "  $_" }
  Write-Host 'Workflow profiles:'
  $availablePackages |
    Where-Object { $_.EndsWith('-profile', [StringComparison]::Ordinal) } |
    ForEach-Object { Write-Host "  $_" }
  Write-Host 'Computed package:'
  Write-Host '  all'
  Write-Host 'Skills:'
  $availableSkills | ForEach-Object { Write-Host "  $_" }
  return
}

if ($Skill -and $Package) {
  throw 'Choose either -Skill or -Package, not both.'
}
if ($Action -eq 'Doctor' -and $DryRun) {
  throw '-DryRun is not valid with -Action Doctor because doctor never writes.'
}
if ($Action -ne 'Install' -and $PSBoundParameters.ContainsKey('LinkType')) {
  throw '-LinkType is valid only with -Action Install.'
}

if (-not $Skill -and -not $Package -and $Action -ne 'Doctor') {
  $selectionKind = Read-Selection `
    -Prompt "$Action an individual skill or a package?" `
    -Choices @('skill', 'package')
  if ($selectionKind -eq 'skill') {
    $Skill = Read-Selection -Prompt 'Choose a skill:' -Choices $availableSkills
  } else {
    $Package = Read-Selection `
      -Prompt 'Choose a topic bundle, workflow profile, or all:' `
      -Choices @($availablePackages + 'all')
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

$selectedSkills = @()
if ($Skill) {
  Assert-SkillSyntax $Skill
  if ($Action -eq 'Install') {
    Assert-CurrentSkill $Skill
  }
  $selectedSkills = @($Skill)
} elseif ($Package -eq 'all') {
  $selectedSkills = $availableSkills
} elseif ($Package) {
  if ($Package -notmatch '^[a-z0-9-]+$') {
    throw "Invalid package name: $Package"
  }
  $manifestPath = Join-Path $packagesRoot "$Package.txt"
  if (-not (Test-Path -LiteralPath $manifestPath -PathType Leaf)) {
    throw "Package was not found: $Package"
  }
  $selectedSkills = @(Get-ManifestSkills $manifestPath)
}

if ($Action -eq 'Doctor') {
  $healthyCount = 0
  $issueCount = 0
  $correctionActions = @()
  $installerLiteral = ConvertTo-PowerShellLiteral $PSCommandPath
  $targetArguments = "-Target $(ConvertTo-PowerShellLiteral $Target)"
  if ($Target -like 'project-*') {
    $targetArguments += " -ProjectRoot $(ConvertTo-PowerShellLiteral $resolvedProjectRoot)"
  } elseif ($Target -eq 'custom') {
    $targetArguments += " -TargetDirectory $(ConvertTo-PowerShellLiteral $targetRoot)"
  }

  function Get-DoctorInstallCommand {
    param([Parameter(Mandatory)][string]$Name)

    "& $installerLiteral -Action Install -Skill $(ConvertTo-PowerShellLiteral $Name) $targetArguments"
  }

  function Get-DoctorUninstallCommand {
    param([Parameter(Mandatory)][string]$Name)

    "& $installerLiteral -Action Uninstall -Skill $(ConvertTo-PowerShellLiteral $Name) $targetArguments"
  }

  if (-not (Test-Path -LiteralPath $targetRoot -PathType Container)) {
    Write-Host "[missing-target] $targetRoot"
    $issueCount++
    if ($Skill) {
      $correctionActions += Get-DoctorInstallCommand $Skill
    } elseif ($Package) {
      $correctionActions += "& $installerLiteral -Action Install -Package $(ConvertTo-PowerShellLiteral $Package) $targetArguments"
    } else {
      $correctionActions += "Run Install with -Skill or -Package and $targetArguments to create the target."
    }
  } elseif ($selectedSkills.Count -gt 0) {
    foreach ($selectedSkill in $selectedSkills) {
      $sourcePath = Get-UnresolvedFullPath (Join-Path $skillsRoot $selectedSkill)
      $destinationPath = Join-Path $targetRoot $selectedSkill
      $existingItem = Get-Item -LiteralPath $destinationPath -Force -ErrorAction SilentlyContinue

      if ($null -eq $existingItem) {
        Write-Host "[missing] $destinationPath"
        $issueCount++
        $correctionActions += Get-DoctorInstallCommand $selectedSkill
        continue
      }
      if ($existingItem.LinkType -notin @('SymbolicLink', 'Junction')) {
        Write-Host "[conflict] $destinationPath is not a supported link"
        $issueCount++
        $correctionActions += "Move or remove $(ConvertTo-PowerShellLiteral $destinationPath), then run: $(Get-DoctorInstallCommand $selectedSkill)"
        continue
      }

      $existingTarget = Get-LinkTargetPath -Item $existingItem -DestinationPath $destinationPath
      if (-not (Test-PathEqual $existingTarget $sourcePath)) {
        Write-Host "[wrong-source] $destinationPath -> $existingTarget"
        $issueCount++
        $correctionActions += "Resolve the foreign link at $(ConvertTo-PowerShellLiteral $destinationPath), then run: $(Get-DoctorInstallCommand $selectedSkill)"
        continue
      }
      if (-not (Test-Path -LiteralPath (Join-Path $sourcePath 'SKILL.md') -PathType Leaf)) {
        Write-Host "[broken] $destinationPath -> $sourcePath"
        $issueCount++
        $correctionActions += Get-DoctorUninstallCommand $selectedSkill
        continue
      }

      Write-Host "[healthy] $destinationPath -> $sourcePath"
      $healthyCount++
    }
  } else {
    $ownedLinkCount = 0
    foreach ($existingItem in Get-ChildItem -LiteralPath $targetRoot -Force) {
      if ($existingItem.LinkType -notin @('SymbolicLink', 'Junction')) {
        continue
      }
      $existingTarget = Get-LinkTargetPath `
        -Item $existingItem `
        -DestinationPath $existingItem.FullName
      if (-not (Test-CheckoutSkillTarget $existingTarget)) {
        continue
      }

      $ownedLinkCount++
      $targetSkillName = Split-Path -Leaf $existingTarget
      if (-not $existingItem.Name.Equals($targetSkillName, [StringComparison]::Ordinal)) {
        Write-Host "[wrong-name] $($existingItem.FullName) -> $existingTarget"
        $issueCount++
        $correctionActions += "Remove-Item -LiteralPath $(ConvertTo-PowerShellLiteral $existingItem.FullName) -Force"
      } elseif (-not (Test-Path -LiteralPath (Join-Path $existingTarget 'SKILL.md') -PathType Leaf)) {
        Write-Host "[broken] $($existingItem.FullName) -> $existingTarget"
        $issueCount++
        $correctionActions += Get-DoctorUninstallCommand $targetSkillName
      } else {
        Write-Host "[healthy] $($existingItem.FullName) -> $existingTarget"
        $healthyCount++
      }
    }
    if ($ownedLinkCount -eq 0) {
      Write-Host 'No links from this checkout were found.'
    }
  }

  Write-Host "Target: $targetRoot"
  Write-Host "Healthy links: $healthyCount; issues: $issueCount"
  if ($issueCount -gt 0) {
    Write-Host 'Correction actions:'
    $correctionActions | Select-Object -Unique | ForEach-Object { Write-Host "  $_" }
    exit 1
  }
  return
}

if ($Action -eq 'Uninstall') {
  $plan = foreach ($selectedSkill in $selectedSkills) {
    $sourcePath = Get-UnresolvedFullPath (Join-Path $skillsRoot $selectedSkill)
    $destinationPath = Join-Path $targetRoot $selectedSkill
    $existingItem = Get-Item -LiteralPath $destinationPath -Force -ErrorAction SilentlyContinue

    if ($null -eq $existingItem) {
      [pscustomobject]@{
        Skill = $selectedSkill
        Source = $sourcePath
        Destination = $destinationPath
        Absent = $true
      }
      continue
    }
    if ($existingItem.LinkType -notin @('SymbolicLink', 'Junction')) {
      throw "Destination is not a supported link and will not be removed: $destinationPath"
    }
    $existingTarget = Get-LinkTargetPath -Item $existingItem -DestinationPath $destinationPath
    if (-not (Test-PathEqual $existingTarget $sourcePath)) {
      throw "Destination is a different link and will not be removed: $destinationPath -> $existingTarget"
    }

    [pscustomobject]@{
      Skill = $selectedSkill
      Source = $sourcePath
      Destination = $destinationPath
      Absent = $false
    }
  }

  $removedCount = 0
  $absentCount = 0
  foreach ($item in $plan) {
    if ($item.Absent) {
      Write-Host "Already absent: $($item.Destination)"
      $absentCount++
      continue
    }
    if ($DryRun) {
      Write-Host "[dry-run] Remove link: $($item.Destination) -> $($item.Source)"
    } else {
      Remove-Item -LiteralPath $item.Destination -Force
      Write-Host "Removed link: $($item.Destination) -> $($item.Source)"
    }
    $removedCount++
  }

  Write-Host "Target: $targetRoot"
  if ($DryRun) {
    Write-Host "Planned removals: $removedCount; already absent: $absentCount"
  } else {
    Write-Host "Removed links: $removedCount; already absent: $absentCount"
  }
  return
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
    $existingTarget = Get-LinkTargetPath -Item $existingItem -DestinationPath $destinationPath
    if (-not (Test-PathEqual $existingTarget $sourcePath)) {
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
