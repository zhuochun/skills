# Writing skills

This file is the authoritative contract for writing and materially revising
skills in this repository. It applies to `SKILL.md`, its references, and its
agent metadata. The language rules are informed by controlled technical
English, but they do not claim ASD-STE100 conformance.

## Use normative terms consistently

Use these terms only with the specified meanings:

| Term | Meaning |
| --- | --- |
| **must** | Required for correct or safe execution. |
| **should** | The preferred default. A justified exception is permitted. |
| **may** | Permitted or optional. |
| **can** | Capable or possible. Do not use it to grant permission. |
| **do not** | Prohibited behavior. |
| **stop** | Do not continue the current workflow. State what blocks progress. |
| **route** | Transfer an unresolved decision or action to its named owner. |

Prefer a direct imperative for workflow steps. Use **must** only when the text
needs to state an obligation instead of an action. Do not replace **should**,
**may**, or **can** with **must** during simplification.

These meanings do not change quoted source text, code, commands, schemas,
literal interface names, or terminology owned by an external standard.

## Admit only grounded, distinct workflows

Before adding or materially changing a skill:

- state the missing decision, artifact, or action;
- collect representative triggers and non-triggers;
- search the relevant `maps/` in the `talks-and-articles` knowledge base;
- read the smallest sufficient source set;
- extract supported mechanisms, inputs, outputs, authority boundaries, gates,
  stop conditions, and specific failure modes; and
- compare neighboring owners in the catalog and boundary model. Refine an
  existing skill when it already owns the work.

Reject or defer generic advice that lacks a distinct owner or enforceable
workflow. Preserve source provenance in review or commit context, not as a
research diary in `SKILL.md`. If the maps provide only adjacent context, run a
focused extraction and overlap check before authoring. Keep concept extraction
and map editing as separate scopes.

## Define one clear owner

Choose a concise action or artifact name only after its proposition, output,
and boundary are stable. Answer these questions:

- What does this skill own that its nearest neighbor does not?
- Is it producing, evaluating, executing, coordinating, or preserving state?
- Which decisions remain with another specialist or accountable human?
- Can a small reversible change bypass it safely?

When ownership overlaps, nominate one canonical owner. Make neighboring skills
consume, route to, or preserve its result.

## Encode the skill contract

Use `skill-creator` for every new skill and material update. Encode inputs,
outputs, authority, workflow, quality gates, stop conditions, and weak-result
rejection. Separate confirmed, inferred, assumed, proposed, and unresolved
material. Never invent a blocking specialist decision to complete an artifact.

Preserve consequential interpretation, risk acceptance, and cutover for the
accountable human. Keep `agents/openai.yaml` synchronized. Name the skill as
`$skill-name` in its default prompt. A producing skill must not silently certify
its own output. Require greater evaluator independence as consequence,
irreversibility, or uncertainty increases.

## Write for reliable execution

- Lead with the outcome or decision that the skill owns.
- Give each sentence one primary instruction or decision rule.
- Give each numbered workflow step one primary action or judgment.
- Start executable steps with an imperative verb.
- State a gating condition before the action that it controls.
- Keep an exception or stop condition next to the rule that it limits.
- Name the actor when authority or responsibility could be ambiguous.
- Use one canonical term for each owner, artifact, state, and decision.
- Define an uncommon technical term once. Do not replace it with loose synonyms.
- Use active voice unless the actor is unknown or immaterial.
- Use pronouns only when their antecedents are unambiguous.
- Use vertical lists for independent requirements, alternatives, or outputs.
- Use positive instructions for the normal path. Use **do not** for material
  failure modes and authority boundaries.

Do not force one idea into several short sentences when that separates a rule
from its condition or exception. Do not combine several independent
requirements merely to save a line.

## Control instruction density and token cost

Keep one common execution spine in `SKILL.md`. Move branch-specific detail,
large schemas, extended examples, and specialist procedures into references.
Load those references only when their branch applies.

- Keep a description near 45–55 words. Include the owned action or artifact,
  strongest triggers, and nearest exclusion or route. Exceed this range only
  when shortening would make activation or ownership materially ambiguous.
- Keep `SKILL.md` below 200 physical lines, including frontmatter and blank
  lines. Exceed this default only when splitting the execution spine would
  weaken safe execution or cause a commonly required reference load.
- Treat these budgets as design constraints, not proof of quality. A shorter
  skill must still preserve its complete operating contract.
- State a rule once. Refer to its canonical owner instead of restating it.
- Remove rationale that does not change execution, judgment, or a boundary.
- Keep examples only when they distinguish valid behavior from a plausible
  failure.
- Prefer existing repository helpers over prose that reconstructs their
  interface or validation behavior.
- Do not use tables of contents in `SKILL.md` or references. Use descriptive
  headings and direct conditional links from the entry point.
- Keep headings and lists that improve retrieval. Do not impose a fixed report
  shape when the task does not need one.
- Review each prose sentence above 35 words. Split or simplify it unless the
  longer form keeps one condition, action, and exception semantically intact.
- Judge efficiency across the full run. A few extra words are justified when
  they prevent a wrong route, repeated investigation, or unsupported action.

Do not optimize word count by removing source reading, evidence gates,
authority boundaries, review independence, stop controls, or verification.

## Clarify and challenge with decision value

Every skill remains responsible for baseline clarity when the user does not
request an interactive exchange. Inspect discoverable evidence first. Surface
material ambiguity, assumptions, unknowns, and missing authority. Ask only
questions whose answers can change the decision or artifact that the skill
owns. Return a conditional, partial, routed, or not-ready result instead of
silently filling a consequential gap.

When interactive clarification or stress-testing is useful, partition questions
by decision dependency and disclosure dependency. Batch only a current
low-sensitivity frontier whose answers remain independently understandable.
Serialize when:

- an answer should shape the next question;
- ambiguity needs adaptive follow-up;
- trust, power, or sensitive disclosure affects candor; or
- a gating answer determines later relevance.

Update the working model after each batch. Suppress questions already answered
by evidence or prior responses. Keep each skill's questions within its own
decision or artifact lens. A shared cadence does not merge specialist
ownership.

## Preserve composition boundaries

Composition is optional, not a mandatory lifecycle. Route specialized work to
its owner. Reference stable namespaced keys instead of requiring runtime handoff
documents or duplicating contracts.

Keep orchestration, specification, design, implementation, evaluation, and
multi-workstream coordination distinct. A skill may consume another owner's
result without reproducing the other skill's complete workflow.

## Reject mechanical simplification

- Do not enforce the ASD-STE100 controlled dictionary across the catalog.
- Do not use a fixed 20-word or 25-word sentence limit.
- Do not replace precise technical terms with longer, weaker phrases.
- Do not split a condition from the action or exception that it governs.
- Do not collapse obligation, recommendation, permission, and capability.
- Do not remove necessary repetition when it prevents an ambiguous antecedent.
- Do not make vocabulary, sentence length, or output shape a proxy for skill
  effectiveness.

The final test is behavioral: the skill must improve the owned decision,
artifact, or action without taking authority, inventing evidence, or imposing
unnecessary workflow.
