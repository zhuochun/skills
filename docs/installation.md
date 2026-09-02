# Installation

Install individual skills, a topic bundle, a composition-closed workflow
profile, or the complete collection. The repository installers create live
links from an agent's skills directory to this checkout, so a later `git pull`
updates installed skills in place. Keep the checkout at a stable absolute path;
moving it breaks existing links.

Use [`install.sh`](../install/install.sh) on macOS and Unix, or
[`install.ps1`](../install/install.ps1) on Windows. They provide the same
packages, targets, dry runs, diagnostics, and ownership-safe removal.

## Quick installation

Install one or more individual skills with
[`skills.sh`](https://www.skills.sh/):

```sh
npx skills add zhuochun/skills --list
npx skills add zhuochun/skills --skill architecture-surface-mapping
```

Add `--global` for a user-scoped installation.

### Codex plugin

The Marketplace plugin installs the complete collection:

```sh
codex plugin marketplace add zhuochun/skills
```

Restart Codex, open the Plugins Directory or `/plugins`, and install
`bicrement`. For local plugin development, add this checkout with
`codex plugin marketplace add .`. To refresh a published installation, run
`codex plugin marketplace upgrade bicrement` and reinstall the plugin.

Use the repository installer below when you want a package, project or custom
target, dry-run, doctor, uninstall, or live links to this checkout.

## Repository installer

Run without arguments for interactive installation:

```sh
sh install/install.sh
```

```powershell
.\install\install.ps1
```

Choose one skill with `--skill` or `-Skill`, or one package with `--package` or
`-Package`. Installation is the default action. The other actions are:

| Action | macOS and Unix | Windows |
| --- | --- | --- |
| Diagnose | `doctor` after the script path | `-Action Doctor` |
| Remove links | `uninstall` after the script path | `-Action Uninstall` |

List available skills and packages without writing:

```sh
sh install/install.sh --list
```

```powershell
.\install\install.ps1 -List
```

## Targets

| Target | Destination | Required option |
| --- | --- | --- |
| `user-agents` | `$HOME/.agents/skills` | — |
| `user-codex` | `$HOME/.codex/skills` | — |
| `user-claude` | `$HOME/.claude/skills` | — |
| `project-agents` | `<project>/.agents/skills` | `--project-root` / `-ProjectRoot` |
| `project-codex` | `<project>/.codex/skills` | `--project-root` / `-ProjectRoot` |
| `project-claude` | `<project>/.claude/skills` | `--project-root` / `-ProjectRoot` |
| `custom` | Exact supplied directory | `--target-dir` / `-TargetDirectory` |

Project targets require an existing repository root. A custom target is already
the final skills directory; the installer does not append another segment.

## Packages

A topic bundle ends in `-bundles` and groups skills around a user-facing theme.
Bundles may overlap and need not cover every downstream specialist. A workflow
profile ends in `-profile` and is composition-closed for its declared normal
paths; exceptional routes may leave the profile. See the
[catalog](catalog.md) for individual skill ownership and relationships.

| Package | Kind | Contents |
| --- | --- | --- |
| [`product-bundles`](../install/packages/product-bundles.txt) | Topic bundle | Product opportunity and domain framing |
| [`operational-bundles`](../install/packages/operational-bundles.txt) | Topic bundle | Service operation, ownership, feedback, and incident work |
| [`leadership-bundles`](../install/packages/leadership-bundles.txt) | Topic bundle | Technical leadership, coordination, ownership, decisions, and growth |
| [`security-bundles`](../install/packages/security-bundles.txt) | Topic bundle | Threat-grounded security design, secure implementation, review, and verification |
| [`dev-base-profile`](../install/packages/dev-base-profile.txt) | Workflow profile | Repository setup, goal pursuit, bounded local change, contract evolution, diagnosis, refactoring, review, and verification |
| [`dev-profile`](../install/packages/dev-profile.txt) | Workflow profile | Goal pursuit across broader design, delivery, release, operational feedback, and verification |
| `all` | Computed | Every current skill under `skills/` |

`all` is computed so new skills are not silently omitted. Other manifests are
validated for current, unique, alphabetically sorted entries; they may overlap
or omit unrelated catalog skills.

## Common commands

Install the base development profile for user-scoped agent discovery:

```sh
sh install/install.sh --package dev-base-profile --target user-agents
```

```powershell
.\install\install.ps1 -Package dev-base-profile -Target user-agents
```

For a project target, add its existing root:

```sh
sh install/install.sh \
  --skill architecture-surface-mapping \
  --target project-agents \
  --project-root /path/to/project
```

```powershell
.\install\install.ps1 `
  -Skill architecture-surface-mapping `
  -Target project-agents `
  -ProjectRoot 'D:\path\to\project'
```

Add `--dry-run` or `-DryRun` to print planned install or uninstall effects
without writing.

Windows symbolic links may require Developer Mode or an elevated shell. Use a
directory junction when symbolic-link privileges are unavailable:

```powershell
.\install\install.ps1 `
  -Package product-bundles `
  -Target user-agents `
  -LinkType Junction
```

## Doctor

Doctor is read-only. Without a selection it scans links owned by this checkout
in the chosen target. With a skill or package it also checks completeness. It
reports missing, broken, wrongly named, wrong-source, and conflicting entries,
prints correction actions for each issue, and exits unsuccessfully when it
finds an issue. PowerShell Doctor reports this without throwing an exception.

```sh
sh install/install.sh doctor --target user-agents
```

```powershell
.\install\install.ps1 -Action Doctor -Target user-agents
```

Doctor never scans unrelated targets or repairs links automatically.

## Uninstall

Uninstall preflights the complete selection and removes only links whose target
exactly matches the selected source in this checkout. Missing links are already
absent; a regular file, directory, or foreign link stops the operation before
anything is removed.

```sh
sh install/install.sh uninstall \
  --package leadership-bundles \
  --target user-agents \
  --dry-run
```

```powershell
.\install\install.ps1 `
  -Action Uninstall `
  -Package leadership-bundles `
  -Target user-agents `
  -DryRun
```

The installers do not keep receipts. Package uninstall therefore uses the
current manifest rather than reconstructing an older installation. An explicit
dangling link can still be removed when its stored target matches this checkout.

## Safety

- Sources are resolved from the checkout containing the installer.
- Every selection is fully validated and preflighted before links are changed.
- Existing files, directories, and foreign links are never replaced or removed.
- Reinstalling the same source is idempotent and reported as already linked.
- Doctor stays read-only and uninstall never removes the target skills directory.
- The installers do not modify agent configuration files.
