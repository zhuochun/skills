#!/bin/sh
set -eu

usage() {
  cat <<'EOF'
Install skill links from this checkout.

Usage:
  sh install/install.sh [selection] [target] [options]

Selection (choose one):
  --skill NAME          Install one skill.
  --package NAME        Install product, software, software-light,
                        operational, misc, or all.

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
  --dry-run             Validate and print links without writing.
  --list                List available skills and packages.
  -h, --help            Show this help.

With no selection or target arguments, the script opens interactive menus.
Existing files and directories are never replaced. An existing absolute
symlink to the same source is treated as already installed.
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

list_packages() {
  printf '%s\n' all
  for manifest_path in "$packages_root"/*.txt; do
    if [ -f "$manifest_path" ]; then
      manifest_name=$(basename "$manifest_path")
      printf '%s\n' "${manifest_name%.txt}"
    fi
  done | LC_ALL=C sort
}

validate_skill_name() {
  candidate=$1
  case "$candidate" in
    ''|*[!a-z0-9-]*) die "Invalid skill name: $candidate" ;;
  esac
  [ -f "$skills_root/$candidate/SKILL.md" ] || die "Skill was not found: $candidate"
}

validate_package_partition() {
  partition_entries=
  partition_carriage_return=$(printf '\r')

  for partition_manifest in "$packages_root"/*.txt; do
    [ -f "$partition_manifest" ] || continue
    partition_manifest_count=0
    partition_manifest_entries=
    while IFS= read -r partition_line || [ -n "$partition_line" ]; do
      partition_line=${partition_line%"$partition_carriage_return"}
      case "$partition_line" in
        ''|'#'*) continue ;;
      esac
      validate_skill_name "$partition_line"
      partition_manifest_count=$((partition_manifest_count + 1))
      if [ -z "$partition_manifest_entries" ]; then
        partition_manifest_entries=$partition_line
      else
        partition_manifest_entries="$partition_manifest_entries
$partition_line"
      fi
      if [ -z "$partition_entries" ]; then
        partition_entries=$partition_line
      else
        partition_entries="$partition_entries
$partition_line"
      fi
    done < "$partition_manifest"
    [ "$partition_manifest_count" -gt 0 ] || die "Package is empty: $partition_manifest"
    partition_manifest_duplicates=$(printf '%s\n' "$partition_manifest_entries" | LC_ALL=C sort | uniq -d)
    [ -z "$partition_manifest_duplicates" ] || \
      die "Package contains duplicate skills: $partition_manifest -> $partition_manifest_duplicates"
    partition_manifest_sorted=$(printf '%s\n' "$partition_manifest_entries" | LC_ALL=C sort)
    [ "$partition_manifest_entries" = "$partition_manifest_sorted" ] || \
      die "Package entries must be alphabetically sorted: $partition_manifest"
  done

  [ -n "$partition_entries" ] || die 'No package entries were found.'

  for partition_skill in $(list_skills); do
    partition_count=$(printf '%s\n' "$partition_entries" | grep -F -x -c "$partition_skill" || true)
    [ "$partition_count" -ge 1 ] || die "Skill must appear in at least one package: $partition_skill"
  done
}

validate_package_partition

if [ "$list_only" -eq 1 ]; then
  printf 'Packages:\n'
  list_packages | sed 's/^/  /'
  printf 'Skills:\n'
  list_skills | sed 's/^/  /'
  exit 0
fi

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

if [ -n "$skill_name" ] && [ -n "$package_name" ]; then
  die 'Choose either --skill or --package, not both.'
fi

if [ -z "$skill_name" ] && [ -z "$package_name" ]; then
  selection_kind=$(choose_item 'Install an individual skill or a package?' skill package)
  if [ "$selection_kind" = skill ]; then
    skill_name=$(choose_item 'Choose a skill:' $(list_skills))
  else
    package_name=$(choose_item 'Choose a package:' $(list_packages))
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

if [ -n "$skill_name" ]; then
  validate_skill_name "$skill_name"
  selected_skills=$skill_name
else
  case "$package_name" in
    all)
      selected_skills=$(list_skills)
      ;;
    ''|*[!a-z0-9-]*)
      die "Invalid package name: $package_name"
      ;;
    *)
      manifest_path=$packages_root/$package_name.txt
      [ -f "$manifest_path" ] || die "Package was not found: $package_name"
      selected_skills=
      carriage_return=$(printf '\r')
      while IFS= read -r manifest_line || [ -n "$manifest_line" ]; do
        manifest_line=${manifest_line%"$carriage_return"}
        case "$manifest_line" in
          ''|'#'*) continue ;;
        esac
        validate_skill_name "$manifest_line"
        if [ -z "$selected_skills" ]; then
          selected_skills=$manifest_line
        else
          selected_skills="$selected_skills
$manifest_line"
        fi
      done < "$manifest_path"
      [ -n "$selected_skills" ] || die "Package is empty: $package_name"
      duplicate_skills=$(printf '%s\n' "$selected_skills" | LC_ALL=C sort | uniq -d)
      [ -z "$duplicate_skills" ] || die "Package contains duplicate skills: $duplicate_skills"
      ;;
  esac
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
