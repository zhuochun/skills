# Contributing skills

This repository maintains product and software-engineering workflows for
consequential work. Keep [`README.md`](README.md) focused on installation and
first use. The authoritative references are:

- [`docs/catalog.md`](docs/catalog.md) for the catalog;
- [`docs/skill-boundaries.md`](docs/skill-boundaries.md) for ownership and
  relationships;
- [`docs/composition-guide.md`](docs/composition-guide.md) for composition; and
- [`evals/README.md`](evals/README.md) for comparative evaluation.

## Admit only grounded, distinct workflows

Before adding or materially changing a skill:

- state the missing decision, artifact, or action and collect representative
  triggers and non-triggers;
- search the relevant `maps/` in the `talks-and-articles` knowledge base and
  read the smallest sufficient source set;
- extract supported mechanisms, inputs, outputs, authority boundaries, gates,
  stop conditions, and specific failure modes; and
- compare neighboring owners in the catalog and boundary model, refining an
  existing skill when it already owns the work.

Reject or defer generic advice that lacks a distinct owner or enforceable
workflow. Preserve source provenance in review or commit context, not as a
research diary in `SKILL.md`. If the maps provide only adjacent context, run a
focused extraction and overlap check before authoring; keep concept extraction
and map editing as separate scopes.

## Define one clear owner

Choose a concise action or artifact name only after its proposition, output,
and boundary are stable. A contributor should be able to answer:

- What does this skill own that its nearest neighbor does not?
- Is it producing, evaluating, executing, coordinating, or preserving state?
- Which decisions remain with another specialist or accountable human?
- Can a small reversible change bypass it safely?

When ownership overlaps, nominate one canonical owner and make neighboring
skills consume, route to, or preserve its result.

## Satisfy the skill contract

Use `skill-creator` for every new skill and material update. Encode inputs,
outputs, authority, workflow, quality gates, stop conditions, and weak-result
rejection. Separate confirmed, inferred, assumed, proposed, and unresolved
material; never invent a blocking specialist decision to complete an artifact.

Preserve consequential interpretation, risk acceptance, and cutover for the
accountable human. Keep `agents/openai.yaml` synchronized and name the skill as
`$skill-name` in its default prompt. A producing skill must not silently certify
its own output; require greater evaluator independence as consequence,
irreversibility, or uncertainty increases.

## Clarify and challenge with decision value

Every skill remains responsible for baseline clarity even when the user does
not request an interactive exchange. Inspect discoverable evidence first,
surface material ambiguity, assumptions, unknowns, and missing authority, and
ask only questions whose answers can change the decision or artifact the skill
owns. Return a conditional, partial, routed, or not-ready result rather than
silently filling a consequential gap.

When interactive clarification or stress-testing is useful, partition questions
by both decision dependency and disclosure dependency. Batch only a current
low-sensitivity frontier whose answers remain independently understandable.
Serialize when an answer should shape the next question, when ambiguity needs
adaptive follow-up, when trust, power, or sensitive disclosure affects candor,
or when a gating answer determines later relevance. Update the working model
after each batch and suppress questions already answered by evidence or prior
responses. Keep each skill's questions within its own decision or artifact
lens; shared cadence does not merge specialist ownership.

## Preserve composition boundaries

Composition is optional, not a mandatory lifecycle. Route specialized work to
its owner and reference stable namespaced keys instead of requiring runtime
handoff documents or duplicating contracts.

When adding or changing an owner, update only the affected catalog,
relationship, composition, example-prompt, package-manifest, and neighboring
route surfaces. Keep orchestration, specification, design, implementation,
evaluation, and multi-workstream coordination distinct.

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
  manifests and composition-closed workflow profiles;
- follow [`evals/README.md`](evals/README.md) for comparative evaluations; and
- run `git diff --check`.

On Windows, run Python catalog validation in explicit UTF-8 mode when required
by the existing prose. A decoding failure is not a skill-contract failure.

## Keep distribution current

The repository root is the `bicrement` Codex plugin, and [`skills/`](skills/)
is the only source of skill content. Do not copy skills into Marketplace
directories. When published content or plugin metadata changes, update the
strict-semver `version` in [`plugin.json`](.codex-plugin/plugin.json), validate
the root plugin, and run `npx skills add . --list --agent codex`.

Preserve unrelated work. Preview and commit scoped paths unless the user asks
for every change, inspect `git status` around writes and commits, and verify the
branch tracks its intended remote after pushing.
