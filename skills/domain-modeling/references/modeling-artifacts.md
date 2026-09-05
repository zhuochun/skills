# Domain modeling artifacts

Adapt these formats to the repository's established conventions. They are thinking aids, not mandatory handoff documents.

## Model expression and classification probes

### Meaningful transition

- Name a transition as a domain event only when the occurrence itself matters to language, lifecycle, audit, coordination, or future interpretation.
- Distinguish a requested command, the rule that accepts or refuses it, the resulting fact, and current state. Explicit events do not require canonical event-sourced history.
- State the event's domain meaning, authority, context, and authoritative fact content. When independently evolving producers, consumers, or stored state need payload compatibility, versioning, delivery, replay, idempotency, adoption, or retirement policy, route that contract-lifecycle decision to `software-contract-evolution`.

### Domain value

- Introduce a value object when a stable domain term can own context, validation, invariants, comparison, or computation that is otherwise scattered.
- Keep transport shapes separate and translate them before domain behavior depends on them. Reject wrappers that add ceremony without meaning or behavior.

### Consequential classification

Treat these classification prompts as provisional probes, not legal, fairness,
privacy, or safety verdicts. Ground boundary evolution, model-to-code feedback,
and context relationships in case evidence; do not invent universal thresholds
or force relationship-pattern labels.

- Inventory the objects, subjects, categories, and relations that the system makes actionable, plus observations treated as invalid, impossible, or noise.
- Preserve ambiguous cases long enough to test whether they reveal an implementation defect or a disputed boundary. Name who can split, merge, relate, contest, historicize, or revise a category.
- Include affected perspectives and route legal, privacy, fairness, safety, and distributional judgments to accountable owners.

## Modeling session

- Problem, decision, or workflow under study:
- Requested surface and change owner:
- Preserved semantic, state, and lifecycle owners:
- Evidence that a material modeling problem exists, or smaller route:
- Consequential claims and evidence locators, labeled confirmed, inferred, assumed, proposed, or unresolved:
- Outcomes, hard constraints, and mandated implementation choices:
- Perspectives represented and missing:
- Purpose-linked behavioral scenario:
- Rules, invariants, meaningful transitions, and domain-event candidates:
- Implicit values or field clusters whose context, validation, or computation is scattered:
- Identity kind, multiplicity, provenance, and split/merge/edit/reappearance counterexamples when relevant:
- Consequential classifications, exclusions, affected perspectives, and contest or revision authority:
- Exceptions, time, authorization, partial progress, failure, and repair:
- Terms used inconsistently or absent from the model:
- Existing code, data, interface, and operational representations:
- Deliberate omissions and open questions:

## Model comparison

| Candidate model | Difficult decisions or scenarios simplified | Purpose, state, and operations made coherent | Important omissions | New complexity and awkward adjacent cases | Migration and compatibility |
| --- | --- | --- | --- | --- | --- |

Prefer a focused model that creates leverage for the important problem. Introduce another context only when important problem shapes require persistently conflicting meanings, rules, or invariants.

## Glossary entry

### Term

- Meaning and purpose in this context:
- Operational principle or archetypal scenario:
- Valid states, operations, and invariants:
- Examples and counterexamples:
- Distinct from:
- Foreign meaning and local translation:
- Reflected in code, data, tests, and interfaces:
- Open questions:

## Context boundary

- Context purpose and problem served:
- Language, model, decisions, and invariants owned here:
- Consequential classifications or relations enacted here, including exclusions and revision authority:
- Facts and data authority:
- Decision owner and affected perspectives:
- Neighboring foreign meanings:
- Translation, deliberate conformance, and compatibility policy:
- Logical enforcement currently used:
- Proposed code, data, deployment, failure, or ownership enforcement:
- Complexity moved into integration and operations:
- Evidence and trigger for redrawing the boundary:

## Context relationship view

| Context | Local purpose and model | Foreign meaning crossing the edge | Actual authority or power relationship | Translation or deliberate conformance | Contract and owner |
| --- | --- | --- | --- | --- | --- |

Describe the observed relationship before assigning a named context-map strategy.

## Decision record threshold

Record an ADR or equivalent only when the choice is consequential, hard to reverse, surprising without context, and selected among genuine alternatives. Include:

1. Problem and difficult scenarios
2. Selected model and semantic boundary
3. Alternatives and deliberate omissions
4. Enforcement choice and relocated complexity
5. Translation, compatibility, or migration
6. Classification exclusions, affected perspectives, and revision authority when material
7. Evidence, uncertainty, and revisit signals
