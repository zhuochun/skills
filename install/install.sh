#!/bin/sh
set -eu

usage() {
  cat <<'EOF'
Manage skill links from this checkout.

Usage:
  sh install/install.sh [install|doctor|uninstall] [selection] [target] [options]

Actions:
  install               Create skill links (default).
  doctor                Inspect one target without writing. Selection is optional.
  uninstall             Remove only links owned by this checkout.

Selection (choose one):
  --skill NAME          Select one skill.
  --package NAME        Select a *-bundles or *-profile package, or all.

Target (choose one; prompted when omitted):
  --target user-agents  $HOME/.agents/skills
  --target user-codex   $HOME/.codex/skills
  --target user-claude  $HOME/.claude/skills
  --target project-agents  <project>/.agents/skills
  --target project-codex   <project>/.codex/skills
  --target project-claude  <project>/.claude/skills
  --target custom       Exact skills directory supplied by --target-dir

Options:
  --project-root PATH   Existing repository root for a project target.
  --target-dir PATH     Exact skills directory for the custom target.
  --dry-run             Print install or uninstall effects without writing.
  --list                List available skills and packages.
  -h, --help            Show this help.

With no selection or target arguments, install and uninstall open interactive
menus. Doctor scans all links from this checkout unless a selection is given.
Existing files, directories, and links from other sources are never replaced
or removed.
EOF
}

die() {
  printf 'Error: %s\n' "$*" >&2
  exit 1
}

script_dir=$(CDPATH= cd "$(dirname "$0")" && pwd -P)
repo_root=$(dirname "$script_dir")
skills_root=$repo_root/skills
packages_root=$script_dir/packages

[ -d "$skills_root" ] || die "Skills root was not found: $skills_root"
[ -d "$packages_root" ] || die "Package root was not found: $packages_root"

action=install
case "${1-}" in
  install|doctor|uninstall)
    action=$1
    shift
    ;;
esac

skill_name=
package_name=
target_name=
project_root=
target_dir=
dry_run=0
list_only=0

while [ "$#" -gt 0 ]; do
  case "$1" in
    --skill)
      [ "$#" -ge 2 ] || die '--skill requires a name.'
      skill_name=$2
      shift 2
      ;;
    --package)
      [ "$#" -ge 2 ] || die '--package requires a name.'
      package_name=$2
      shift 2
      ;;
    --target)
      [ "$#" -ge 2 ] || die '--target requires a name.'
      target_name=$2
      shift 2
      ;;
    --project-root)
      [ "$#" -ge 2 ] || die '--project-root requires a path.'
      project_root=$2
      shift 2
      ;;
    --target-dir)
      [ "$#" -ge 2 ] || die '--target-dir requires a path.'
      target_dir=$2
      shift 2
      ;;
    --dry-run)
      dry_run=1
      shift
      ;;
    --list)
      list_only=1
      shift
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      die "Unknown argument: $1"
      ;;
  esac
done

list_skills() {
  for skill_path in "$skills_root"/*; do
    if [ -d "$skill_path" ] && [ -f "$skill_path/SKILL.md" ]; then
      basename "$skill_path"
    fi
  done | LC_ALL=C sort
}

list_bundle_packages() {
  for manifest_path in "$packages_root"/*-bundles.txt; do
    if [ -f "$manifest_path" ]; then
      manifest_name=$(basename "$manifest_path")
      printf '%s\n' "${manifest_name%.txt}"
    fi
  done | LC_ALL=C sort
}

list_profile_packages() {
  for manifest_path in "$packages_root"/*-profile.txt; do
    if [ -f "$manifest_path" ]; then
      manifest_name=$(basename "$manifest_path")
      printf '%s\n' "${manifest_name%.txt}"
    fi
  done | LC_ALL=C sort
}

list_packages() {
  list_bundle_packages
  list_profile_packages
  printf '%s\n' all
}

validate_skill_syntax() {
  candidate=$1
  case "$candidate" in
    ''|*[!a-z0-9-]*) die "Invalid skill name: $candidate" ;;
  esac
}

validate_current_skill() {
  candidate=$1
  validate_skill_syntax "$candidate"
  [ -f "$skills_root/$candidate/SKILL.md" ] || die "Skill was not found: $candidate"
}

validate_packages() {
  package_count=0
  package_carriage_return=$(printf '\r')

  for package_manifest in "$packages_root"/*.txt; do
    [ -f "$package_manifest" ] || continue
    package_count=$((package_count + 1))
    package_base=$(basename "$package_manifest" .txt)
    case "$package_base" in
      *-bundles|*-profile) ;;
      *) die "Package name must end in -bundles or -profile: $package_base" ;;
    esac

    package_manifest_count=0
    package_manifest_entries=
    while IFS= read -r package_line || [ -n "$package_line" ]; do
      package_line=${package_line%"$package_carriage_return"}
      case "$package_line" in
        ''|'#'*) continue ;;
      esac
      validate_current_skill "$package_line"
      package_manifest_count=$((package_manifest_count + 1))
      if [ -z "$package_manifest_entries" ]; then
        package_manifest_entries=$package_line
      else
        package_manifest_entries="$package_manifest_entries
$package_line"
      fi
    done < "$package_manifest"

    [ "$package_manifest_count" -gt 0 ] || die "Package is empty: $package_manifest"
    package_manifest_duplicates=$(printf '%s\n' "$package_manifest_entries" | LC_ALL=C sort | uniq -d)
    [ -z "$package_manifest_duplicates" ] || \
      die "Package contains duplicate skills: $package_manifest -> $package_manifest_duplicates"
    package_manifest_sorted=$(printf '%s\n' "$package_manifest_entries" | LC_ALL=C sort)
    [ "$package_manifest_entries" = "$package_manifest_sorted" ] || \
      die "Package entries must be alphabetically sorted: $package_manifest"
  done

  [ "$package_count" -gt 0 ] || die 'No package manifests were found.'
}

validate_packages

if [ "$list_only" -eq 1 ]; then
  printf 'Topic bundles:\n'
  list_bundle_packages | sed 's/^/  /'
  printf 'Workflow profiles:\n'
  list_profile_packages | sed 's/^/  /'
  printf 'Computed package:\n  all\n'
  printf 'Skills:\n'
  list_skills | sed 's/^/  /'
  exit 0
fi

[ -z "$skill_name" ] || [ -z "$package_name" ] || \
  die 'Choose either --skill or --package, not both.'
[ "$action" != doctor ] || [ "$dry_run" -eq 0 ] || \
  die '--dry-run is not valid with doctor because doctor never writes.'

choose_item() {
  prompt=$1
  shift
  [ "$#" -gt 0 ] || die "No choices are available for $prompt."

  printf '%s\n' "$prompt" >&2
  choice_index=1
  for choice_item in "$@"; do
    printf '  %s) %s\n' "$choice_index" "$choice_item" >&2
    choice_index=$((choice_index + 1))
  done
  printf '> ' >&2
  IFS= read -r answer || die 'Input ended before a selection was made.'

  case "$answer" in
    ''|*[!0-9]*)
      for choice_item in "$@"; do
        if [ "$answer" = "$choice_item" ]; then
          printf '%s\n' "$choice_item"
          return
        fi
      done
      die "Unknown selection: $answer"
      ;;
    *)
      choice_index=1
      for choice_item in "$@"; do
        if [ "$answer" -eq "$choice_index" ]; then
          printf '%s\n' "$choice_item"
          return
        fi
        choice_index=$((choice_index + 1))
      done
      die "Selection is out of range: $answer"
      ;;
  esac
}

if [ -z "$skill_name" ] && [ -z "$package_name" ] && [ "$action" != doctor ]; then
  selection_kind=$(choose_item "$action an individual skill or a package?" skill package)
  if [ "$selection_kind" = skill ]; then
    skill_name=$(choose_item 'Choose a skill:' $(list_skills))
  else
    package_name=$(choose_item 'Choose a topic bundle, workflow profile, or all:' $(list_packages))
  fi
fi

if [ -z "$target_name" ]; then
  target_name=$(choose_item 'Choose an installation target:' \
    user-agents user-codex user-claude \
    project-agents project-codex project-claude custom)
fi

case "$target_name" in
  user-agents)
    target_root=$HOME/.agents/skills
    ;;
  user-codex)
    target_root=$HOME/.codex/skills
    ;;
  user-claude)
    target_root=$HOME/.claude/skills
    ;;
  project-agents|project-codex|project-claude)
    if [ -z "$project_root" ]; then
      printf 'Existing project repository root: ' >&2
      IFS= read -r project_root || die 'Input ended before the project root was supplied.'
    fi
    case "$project_root" in
      '~') project_root=$HOME ;;
      '~/'*) project_root=$HOME/${project_root#'~/'} ;;
    esac
    [ -d "$project_root" ] || die "Project root does not exist: $project_root"
    project_root=$(CDPATH= cd "$project_root" && pwd -P)
    case "$target_name" in
      project-agents) target_root=$project_root/.agents/skills ;;
      project-codex) target_root=$project_root/.codex/skills ;;
      project-claude) target_root=$project_root/.claude/skills ;;
    esac
    ;;
  custom)
    if [ -z "$target_dir" ]; then
      printf 'Exact destination skills directory: ' >&2
      IFS= read -r target_dir || die 'Input ended before the target directory was supplied.'
    fi
    case "$target_dir" in
      '~') target_dir=$HOME ;;
      '~/'*) target_dir=$HOME/${target_dir#'~/'} ;;
    esac
    case "$target_dir" in
      /*) target_root=$target_dir ;;
      *) target_root=$PWD/$target_dir ;;
    esac
    ;;
  *)
    die "Unknown target: $target_name"
    ;;
esac

if [ -n "$project_root" ] && [ "${target_name#project-}" = "$target_name" ]; then
  die '--project-root is valid only with a project target.'
fi
if [ -n "$target_dir" ] && [ "$target_name" != custom ]; then
  die '--target-dir is valid only with the custom target.'
fi

selected_skills=
if [ -n "$skill_name" ]; then
  validate_skill_syntax "$skill_name"
  if [ "$action" = install ]; then
    validate_current_skill "$skill_name"
  fi
  selected_skills=$skill_name
elif [ "$package_name" = all ]; then
  selected_skills=$(list_skills)
elif [ -n "$package_name" ]; then
  case "$package_name" in
    *[!a-z0-9-]*) die "Invalid package name: $package_name" ;;
  esac
  manifest_path=$packages_root/$package_name.txt
  [ -f "$manifest_path" ] || die "Package was not found: $package_name"
  carriage_return=$(printf '\r')
  while IFS= read -r manifest_line || [ -n "$manifest_line" ]; do
    manifest_line=${manifest_line%"$carriage_return"}
    case "$manifest_line" in
      ''|'#'*) continue ;;
    esac
    if [ -z "$selected_skills" ]; then
      selected_skills=$manifest_line
    else
      selected_skills="$selected_skills
$manifest_line"
    fi
  done < "$manifest_path"
fi

if [ "$action" = doctor ]; then
  healthy_count=0
  issue_count=0

  if [ ! -d "$target_root" ]; then
    printf '[missing-target] %s\n' "$target_root"
    issue_count=$((issue_count + 1))
  elif [ -n "$selected_skills" ]; then
    while IFS= read -r selected_skill; do
      [ -n "$selected_skill" ] || continue
      source_path=$skills_root/$selected_skill
      destination_path=$target_root/$selected_skill

      if [ -L "$destination_path" ]; then
        existing_target=$(readlink "$destination_path")
        if [ "$existing_target" != "$source_path" ]; then
          printf '[wrong-source] %s -> %s\n' "$destination_path" "$existing_target"
          issue_count=$((issue_count + 1))
        elif [ ! -f "$source_path/SKILL.md" ]; then
          printf '[broken] %s -> %s\n' "$destination_path" "$source_path"
          issue_count=$((issue_count + 1))
        else
          printf '[healthy] %s -> %s\n' "$destination_path" "$source_path"
          healthy_count=$((healthy_count + 1))
        fi
      elif [ -e "$destination_path" ]; then
        printf '[conflict] %s is not a symbolic link\n' "$destination_path"
        issue_count=$((issue_count + 1))
      else
        printf '[missing] %s\n' "$destination_path"
        issue_count=$((issue_count + 1))
      fi
    done <<EOF
$selected_skills
EOF
  else
    owned_link_count=0
    for destination_path in "$target_root"/*; do
      [ -L "$destination_path" ] || continue
      existing_target=$(readlink "$destination_path")
      case "$existing_target" in
        "$skills_root"/*)
          target_tail=${existing_target#"$skills_root"/}
          case "$target_tail" in
            */*) continue ;;
          esac
          owned_link_count=$((owned_link_count + 1))
          target_skill_name=${existing_target##*/}
          destination_skill_name=${destination_path##*/}
          if [ "$destination_skill_name" != "$target_skill_name" ]; then
            printf '[wrong-name] %s -> %s\n' "$destination_path" "$existing_target"
            issue_count=$((issue_count + 1))
          elif [ ! -f "$existing_target/SKILL.md" ]; then
            printf '[broken] %s -> %s\n' "$destination_path" "$existing_target"
            issue_count=$((issue_count + 1))
          else
            printf '[healthy] %s -> %s\n' "$destination_path" "$existing_target"
            healthy_count=$((healthy_count + 1))
          fi
          ;;
      esac
    done
    if [ "$owned_link_count" -eq 0 ]; then
      printf 'No links from this checkout were found.\n'
    fi
  fi

  printf 'Target: %s\n' "$target_root"
  printf 'Healthy links: %s; issues: %s\n' "$healthy_count" "$issue_count"
  [ "$issue_count" -eq 0 ] || exit 1
  exit 0
fi

if [ "$action" = uninstall ]; then
  # Preflight the whole selection before removing any links.
  while IFS= read -r selected_skill; do
    [ -n "$selected_skill" ] || continue
    source_path=$skills_root/$selected_skill
    destination_path=$target_root/$selected_skill

    if [ -L "$destination_path" ]; then
      existing_target=$(readlink "$destination_path")
      [ "$existing_target" = "$source_path" ] || \
        die "Destination is a different symlink and will not be removed: $destination_path -> $existing_target"
    elif [ -e "$destination_path" ]; then
      die "Destination is not a symbolic link and will not be removed: $destination_path"
    fi
  done <<EOF
$selected_skills
EOF

  removed_count=0
  absent_count=0
  while IFS= read -r selected_skill; do
    [ -n "$selected_skill" ] || continue
    source_path=$skills_root/$selected_skill
    destination_path=$target_root/$selected_skill

    if [ ! -L "$destination_path" ]; then
      printf 'Already absent: %s\n' "$destination_path"
      absent_count=$((absent_count + 1))
    elif [ "$dry_run" -eq 1 ]; then
      printf '[dry-run] Remove link: %s -> %s\n' "$destination_path" "$source_path"
      removed_count=$((removed_count + 1))
    else
      rm "$destination_path"
      printf 'Removed link: %s -> %s\n' "$destination_path" "$source_path"
      removed_count=$((removed_count + 1))
    fi
  done <<EOF
$selected_skills
EOF

  printf 'Target: %s\n' "$target_root"
  if [ "$dry_run" -eq 1 ]; then
    printf 'Planned removals: %s; already absent: %s\n' "$removed_count" "$absent_count"
  else
    printf 'Removed links: %s; already absent: %s\n' "$removed_count" "$absent_count"
  fi
  exit 0
fi

# Preflight the whole selection before creating any links.
while IFS= read -r selected_skill; do
  [ -n "$selected_skill" ] || continue
  source_path=$skills_root/$selected_skill
  destination_path=$target_root/$selected_skill

  if [ -L "$destination_path" ]; then
    existing_target=$(readlink "$destination_path")
    [ "$existing_target" = "$source_path" ] || \
      die "Destination is already a different symlink: $destination_path -> $existing_target"
  elif [ -e "$destination_path" ]; then
    die "Destination already exists and will not be replaced: $destination_path"
  fi
done <<EOF
$selected_skills
EOF

if [ "$dry_run" -eq 0 ]; then
  mkdir -p "$target_root"
fi

installed_count=0
existing_count=0
while IFS= read -r selected_skill; do
  [ -n "$selected_skill" ] || continue
  source_path=$skills_root/$selected_skill
  destination_path=$target_root/$selected_skill

  if [ -L "$destination_path" ]; then
    printf 'Already linked: %s -> %s\n' "$destination_path" "$source_path"
    existing_count=$((existing_count + 1))
  elif [ "$dry_run" -eq 1 ]; then
    printf '[dry-run] Link: %s -> %s\n' "$destination_path" "$source_path"
    installed_count=$((installed_count + 1))
  else
    ln -s "$source_path" "$destination_path"
    printf 'Linked: %s -> %s\n' "$destination_path" "$source_path"
    installed_count=$((installed_count + 1))
  fi
done <<EOF
$selected_skills
EOF

printf 'Target: %s\n' "$target_root"
printf 'New links: %s; already linked: %s\n' "$installed_count" "$existing_count"
