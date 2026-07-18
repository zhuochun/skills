# Contributing skills

This repository maintains production-grade software-engineering skills for
consequential work in real repositories and operating environments. Treat
[`README.md`](README.md) as the canonical catalog, relationship model, and
composition guide. Treat [`evals/README.md`](evals/README.md) as the canonical
forward-evaluation protocol.

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
4. Compare the proposal with neighboring triggers, artifacts, and ownership
   boundaries in `README.md`. Prefer refining an existing skill when it already
   owns the decision or artifact.
5. Reject or defer the proposal when the sources support only generic advice,
   do not support a distinct practical workflow, or cannot justify its gates
   and failure modes.

Preserve source provenance in review notes or commit context. Do not embed a
research diary in `SKILL.md`.

## Satisfy the skill contract

Use `skill-creator` for every new skill and material skill update. Read its full
instructions before editing.

- Turn the source-gate findings into an explicit operating contract: inputs,
  outputs, authority, workflow, quality gates, stop conditions, and weak-result
  rejection where applicable.
- Preserve consequential interpretation, risk acceptance, and cutover for the
  accountable human.
- Keep `agents/openai.yaml` synchronized. Its default prompt must mention the
  skill explicitly as `$skill-name`.
- Do not let a producing skill silently certify its own artifact. Increase
  evaluator independence with consequence, irreversibility, and uncertainty.

## Preserve composition boundaries

Consult the distinctions in `README.md` before changing a skill's ownership,
trigger, or relationships. Keep composition optional rather than turning the
catalog into a mandatory lifecycle or universal stage-gate process.

Do not require runtime handoff documents between composing skills. Keep users
in flow by referencing a stable namespaced key together with its plain-language
label. Route specialized work to its owning skill instead of duplicating its
contract.

## Verify proportionately

- Run the installed `skill-creator` validator for every affected skill.
- Validate the whole catalog after changes to naming, triggering, contracts, or
  composition.
- Forward-test consequential workflow changes against realistic ordinary and
  boundary cases. The correct boundary result may be to stop, retain a
  protection, or use a smaller or independent skill.
- Follow `evals/README.md` for comparative evaluations. Do not leak intended
  answers, grader anchors, previous outputs, or treatment identity to producing
  agents.
- Run `git diff --check` before committing.

Preview and commit a scoped path set unless the user explicitly requests every
repository change. Preserve unrelated work and verify the branch tracks its
intended remote after pushing.
