# Contributing skills

This repository maintains product and software-engineering workflows for
consequential work. Keep [`README.md`](README.md) focused on installation and
first use. The authoritative references are:

- [`WRITE_SKILL.md`](WRITE_SKILL.md) for skill admission, ownership, contracts,
  language, token efficiency, and composition boundaries;
- [`docs/catalog.md`](docs/catalog.md) for the catalog;
- [`docs/skill-boundaries.md`](docs/skill-boundaries.md) for ownership and
  relationships;
- [`docs/composition-guide.md`](docs/composition-guide.md) for composition; and
- [`evals/learnings.md`](evals/learnings.md) for durable evaluation principles.

## Prepare a bounded contribution

Read [`WRITE_SKILL.md`](WRITE_SKILL.md) completely before adding or materially
changing a skill. In the change description:

- name the missing decision, artifact, or action;
- identify the affected owner and nearest neighboring skills;
- record the source set and representative triggers or non-triggers; and
- state whether the change affects invocation, contract, composition,
  distribution, or evaluation.

Preserve source provenance in review or commit context. Keep research diaries
out of `SKILL.md`.

## Update affected surfaces

When adding or changing an owner, update only the affected catalog,
relationship, composition, example-prompt, package-manifest, and neighboring
route surfaces. Apply the distribution validation and skill-only versioning
rule below to the affected surfaces.

## Test boundaries and verify

Forward-test with fresh agents given only the skill path and a natural request.
Cover ordinary use, a small reversible case that should avoid ceremony, and a
consequential boundary that may require a conditional result, `not ready`, or
routing. Do not leak intended answers, previous outputs, grading anchors, or
treatment identity.

Inspect for invented evidence, neighboring-skill takeover, unnecessary
artifacts, and completeness without decision value. Revise from the observed
failure mechanism and rerun affected cases with a fresh agent.

Before completion:

- run the installed `skill-creator` validator for affected skills;
- validate the catalog after naming, trigger, contract, or composition changes;
- check metadata, links, and scaffold residue;
- run both installers in list mode to validate sorted, unique, current package
  manifests and coverage of every skill by their union; keep workflow profiles
  composition-closed for their declared normal paths;
- after installer validation changes, run
  `python -X utf8 install/tests/test_package_coverage.py` with `pwsh` and a POSIX
  shell available (`bash` on Windows);
- use the local evaluation assets for comparative evaluations when available;
  and
- run `git diff --check`.

On Windows, run Python catalog validation in explicit UTF-8 mode when required
by the existing prose. A decoding failure is not a skill-contract failure.

## Keep distribution current

The repository root is the `bicrement` Codex plugin, and [`skills/`](skills/)
is the only source of skill content. Do not copy skills into Marketplace
directories. Update the strict-semver `version` in
[`plugin.json`](.codex-plugin/plugin.json) only when files under `skills/` change,
including skill additions, removals, renames, instructions, references, scripts,
assets, or agent metadata. Changes limited to repository documentation,
installers, package manifests, tests, evaluation assets, or plugin metadata do
not require a version bump.

When skill content or distribution configuration changes, validate the root
plugin and run `npx skills add . --list --agent codex`, whether or not a version
bump is required.

Preserve unrelated work. Preview and commit scoped paths unless the user asks
for every change, inspect `git status` around writes and commits, and verify the
branch tracks its intended remote after pushing.
