# Installation

The installers create directory links from an agent's skills directory to the
skill sources in this checkout. Because the links are live, a later `git pull`
updates installed skills without copying them again. Keep the checkout at a
stable absolute path; moving it will break existing links.

Use [`install.sh`](../install/install.sh) on macOS and Unix, and
[`install.ps1`](../install/install.ps1) on Windows. Both installers provide the
same selections, targets, package manifests, dry-run behavior, and safety
rules.

## Interactive installation

Run either installer without selection or target arguments:

```sh
sh install/install.sh
```

```powershell
.\install\install.ps1
```

The installer prompts for:

1. an individual skill or package;
2. the skill or package name; and
3. a user, project, or custom target.

## Installation targets

| Target | Destination |
| --- | --- |
| `user-agents` | `$HOME/.agents/skills` |
| `user-codex` | `$HOME/.codex/skills` |
| `user-claude` | `$HOME/.claude/skills` |
| `project-agents` | `<project-root>/.agents/skills` |
| `project-codex` | `<project-root>/.codex/skills` |
| `project-claude` | `<project-root>/.claude/skills` |
| `custom` | The exact skills directory supplied by the user |

Project targets require an existing project repository root and append the
selected agent's skills path. A custom target is already the final skills
directory; the installer does not append another path segment.

## Skill packages

Packages are curated installation bundles, not a replacement for the
[catalog](catalog.md) or its relationship model. Profiles may overlap when one
is intentionally a smaller version of another.

| Package | Contents |
| --- | --- |
| `product` | 3 product-opportunity and domain-framing skills |
| `software` | 19 larger-scale software understanding, service and platform design, multi-team change, release, and verification skills |
| `software-light` | 12 small-project, monolith, and single-service skills for orientation, architecture assessment and consolidation, orchestration, implementation, diagnosis, review, and verification |
| `operational` | 6 service operation, ownership, feedback, and incident skills |
| `misc` | 2 cross-cutting decision and capability-development skills |
| `all` | Every skill currently present under `skills/` |

The tracked manifests are
[`product.txt`](../install/packages/product.txt),
[`software.txt`](../install/packages/software.txt),
[`software-light.txt`](../install/packages/software-light.txt),
[`operational.txt`](../install/packages/operational.txt), and
[`misc.txt`](../install/packages/misc.txt). The `all` package is computed from
the skill directories so newly added skills are not silently omitted.

List the available names without writing anything:

```sh
sh install/install.sh --list
```

```powershell
.\install\install.ps1 -List
```

## macOS and Unix examples

Install one skill for tools that discover `$HOME/.agents/skills`:

```sh
sh install/install.sh \
  --skill service-surface-mapping \
  --target user-agents
```

Install the product package for user-scoped Codex discovery:

```sh
sh install/install.sh \
  --package product \
  --target user-codex
```

Install the light software profile into a small project or monolith:

```sh
sh install/install.sh \
  --package software-light \
  --target project-agents \
  --project-root /path/to/project
```

Install the operational package into a project's Claude skills directory:

```sh
sh install/install.sh \
  --package operational \
  --target project-claude \
  --project-root /path/to/project
```

Use an exact custom skills directory:

```sh
sh install/install.sh \
  --skill code-review \
  --target custom \
  --target-dir /path/to/custom/skills
```

Add `--dry-run` to validate selection and print every planned link without
creating directories or links.

## Windows examples

Install one skill for tools that discover the user's `.agents\skills`:

```powershell
.\install\install.ps1 `
  -Skill service-surface-mapping `
  -Target user-agents
```

Install the larger-scale software package for user-scoped Codex discovery:

```powershell
.\install\install.ps1 `
  -Package software `
  -Target user-codex
```

Install the light software profile into a small project or monolith:

```powershell
.\install\install.ps1 `
  -Package software-light `
  -Target project-agents `
  -ProjectRoot 'D:\path\to\project'
```

Install the operational package into a project's Claude skills directory:

```powershell
.\install\install.ps1 `
  -Package operational `
  -Target project-claude `
  -ProjectRoot 'D:\path\to\project'
```

Use an exact custom skills directory:

```powershell
.\install\install.ps1 `
  -Skill code-review `
  -Target custom `
  -TargetDirectory 'D:\path\to\custom\skills'
```

Windows symbolic links may require Developer Mode or an elevated shell. When
symbolic-link privileges are unavailable, request a directory junction:

```powershell
.\install\install.ps1 `
  -Package product `
  -Target user-agents `
  -LinkType Junction
```

Add `-DryRun` to validate selection and print every planned link without
creating directories or links.

## Safety and repeatability

- Sources are resolved from the checkout containing the installer, not from the
  caller's current directory.
- Every skill must contain `SKILL.md`, and every package entry must resolve to a
  valid skill before installation begins.
- The complete selection is checked for destination conflicts before any links
  are created.
- Existing files, directories, and links to different sources are never
  replaced.
- An existing link to the same absolute source is reported as already installed,
  making repeated runs idempotent.
- Every package is validated for duplicate or missing skills, and the combined
  manifests must cover every catalog skill. Intentional overlap between package
  profiles is allowed.
- Entries in each manifest must remain alphabetically sorted for quick visual
  comparison and review.

The installers create links only. They do not remove installations or modify
agent configuration files.
