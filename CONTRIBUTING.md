# Contributing skills

This repository maintains production-grade product and software-engineering
skills for consequential work in real organizations, repositories, and
operating environments. Treat [`docs/catalog.md`](docs/catalog.md) as the
canonical catalog, [`docs/skill-boundaries.md`](docs/skill-boundaries.md) as the
canonical relationship and ownership-boundary model, and
[`docs/composition-guide.md`](docs/composition-guide.md) as the canonical
composition guide. Treat [`evals/README.md`](evals/README.md) as the canonical
forward-evaluation protocol. Keep [`README.md`](README.md) focused on
installation and first use.

## Preserve the collection's purpose

Build practical workflows that could survive use in a large engineering
organization. Preserve accountable human decisions, expose uncertainty, and
distinguish producing an artifact from evaluating or executing it. Do not add a
skill merely to fill a plausible catalog gap.

## Pass the source and distinctness gate

Before adding a skill or materially changing one:

1. State the missing decision or artifact and collect representative requests
   that should and should not trigger the skill.
2. Search `maps/` in the `talks-and-articles` knowledge base and read the
   smallest relevant set. Do not limit grounding to a fixed map shortlist.
3. Extract the supported mechanisms, inputs, outputs, authority boundaries,
   quality gates, stop conditions, and failure modes. Use the sources as
   evidence and vocabulary, not prose to copy.
4. Compare the proposal with neighboring triggers and artifacts in
   `docs/catalog.md` and with ownership boundaries in
   `docs/skill-boundaries.md`. Prefer refining an existing skill when it
   already owns the decision or artifact.
5. Reject or defer the proposal when the sources support only generic advice,
   do not support a distinct practical workflow, or cannot justify its gates
   and failure modes.

Preserve source provenance in review notes or commit context. Do not embed a
research diary in `SKILL.md`.

If the maps explain the surrounding domain but do not directly support the
proposed workflow, run a focused extraction pass before authoring. Require a
curated raw evidence set, an overlap search, a stable proposition and boundary,
and the normal concept verification gate. A newly useful raw source is not by
itself permission to invent a generic skill. Keep concept extraction and map
editing as separate scopes; report affected-map freshness unless map work was
also requested.

A source pass is not enough by itself. A proposal passes only when the evidence
and collection together support:

- one canonical decision, artifact, or action owner;
- realistic triggers and non-triggers;
- a repeatable workflow with consequential stop or route conditions;
- failure modes more specific than generic advice; and
- a useful boundary from neighboring skills.

## Name and bound the owner

Choose a name only after the proposition, output, and boundary are stable.
Prefer a concise action or artifact name that a user can distinguish from its
neighbors without reading every `SKILL.md`. Keep names stylistically coherent
with the collection, but do not sacrifice precision merely to make suffixes
match.

Red-team the proposal with paired questions such as:

- What does this skill own that the nearest skill does not?
- Is it producing, evaluating, executing, coordinating, or preserving state?
- Does it own one bounded artifact or an entire lifecycle?
- Can a clear local change bypass it without losing safety?
- Which decision must remain with a specialist or accountable human?

When two skills can answer the same request, establish a canonical owner and
make the other consume, route, or preserve the result. Do not rely on prose
similarity alone to distinguish them.

## Satisfy the skill contract

Use `skill-creator` for every new skill and material skill update. Read its full
instructions before editing.

- Turn the source-gate findings into an explicit operating contract: inputs,
  outputs, authority, workflow, quality gates, stop conditions, and weak-result
  rejection where applicable.
- Separate confirmed, inferred, assumed, proposed, and unresolved material.
  Never fill a blocking specialist decision with a plausible default merely to
  produce a complete-looking artifact. A conditional partial result or a
  `not ready` verdict is often the correct output.
- Preserve consequential interpretation, risk acceptance, and cutover for the
  accountable human.
- Keep `agents/openai.yaml` synchronized. Its default prompt must mention the
  skill explicitly as `$skill-name`.
- Do not let a producing skill silently certify its own artifact. Increase
  evaluator independence with consequence, irreversibility, and uncertainty.

## Preserve composition boundaries

Consult the distinctions in `docs/skill-boundaries.md` before changing a
skill's ownership, trigger, or relationships. Keep composition optional rather
than turning the catalog into a mandatory lifecycle or universal stage-gate
process.

Do not require runtime handoff documents between composing skills. Keep users
in flow by referencing a stable namespaced key together with its plain-language
label. Route specialized work to its owning skill instead of duplicating its
contract.

Integrate a new owner in both directions:

- update the nearest downstream skill to consume or route to it without making
  the new skill mandatory for trivial work;
- update upstream routes only where ambiguity or consequence warrants the new
  artifact;
- update the catalog row in `docs/catalog.md`; the relationship graph,
  important distinctions, and evaluator table in `docs/skill-boundaries.md`;
  common compositions in `docs/composition-guide.md`; the relevant prompt in
  `docs/example-prompts.md`; at least one applicable package manifest under
  `install/packages/`; and the skill count in `README.md`; and
- keep orchestration, specification, design, implementation, evaluation, and
  multi-workstream program flow distinct.

## Forward-test boundaries before polishing

Use fresh agents with only the skill path and a natural user request. Do not
leak the intended answer, suspected flaw, previous output, or grading anchor.
Test at least:

1. an ordinary case where the skill should add concrete decision value;
2. a small reversible case where proportional behavior should avoid ceremony;
3. a consequential boundary case where the correct response may be conditional,
   `not ready`, or routed to another owner.

Inspect whether the result invents evidence, takes over a neighboring skill,
turns examples into false completeness, creates unnecessary artifacts, or
becomes exhaustive without improving the decision. Revise the contract from
the observed failure mechanism, then repeat the affected boundary case with a
fresh agent.

## Verify proportionately

- Run the installed `skill-creator` validator for every affected skill.
- Validate the whole catalog after changes to naming, triggering, contracts, or
  composition.
- On Windows, run Python-based catalog validation in explicit UTF-8 mode when
  existing skill prose contains characters outside the active code page; a
  validator decoding failure is not a skill-contract failure.
- Check generated metadata for shell-expanded `$skill-name` values, scaffold
  residue, broken reference links, and stale catalog counts.
- Run both installers in list mode so package validation confirms that every
  manifest is internally unique and alphabetically sorted, and the combined
  manifests cover every skill.
- Forward-test consequential workflow changes against realistic ordinary and
  boundary cases. The correct boundary result may be to stop, retain a
  protection, or use a smaller or independent skill.
- Follow `evals/README.md` for comparative evaluations. Do not leak intended
  answers, grader anchors, previous outputs, or treatment identity to producing
  agents.
- Run `git diff --check` before committing.

## Keep the distribution surfaces current

The repository root is also the `zhuochun-skills` Codex plugin. Keep
[`skills/`](skills/) as the only source of skill content: do not create copied
Marketplace skill directories. When a published skill, its supporting files, or
the plugin metadata changes, update the strict-semver `version` in
[`plugin.json`](.codex-plugin/plugin.json) so installed Marketplace copies can
be refreshed. Validate the root plugin with the installed `plugin-creator`
validator, and run `npx skills add . --list --agent codex` to confirm the
skills.sh CLI still discovers the full catalog.

Preview and commit a scoped path set unless the user explicitly requests every
repository change. Preserve unrelated work and verify the branch tracks its
intended remote after pushing.

Inspect `git status` before writing, before staging, and after committing.
Treat changes that appear concurrently as user-owned: reread files after a
patch-context mismatch, integrate only when the requested scope requires it,
and never broaden a commit merely because related experiments or evaluation
work are present in the worktree.
