# Domain modeling artifacts

Adapt these formats to the repository's established conventions. They are thinking aids, not mandatory handoff documents.

## Knowledge-derived reasoning model

| Mechanism | Consequence for modeling |
| --- | --- |
| **Solution-Shaped Requirements Hide Business Intent** | Recover outcomes, constraints, examples, and desired behavior before accepting a proposed screen, schema, service, or technology as the model. |
| **Model Usefulness Is Problem-Specific** | Select a model for the difficult decision or workflow it clarifies; require explicit omissions instead of rewarding completeness. |
| **Operational Principles Explain Behavioral Concepts** | Connect purpose, state, actions, and observable outcome in a compact multi-action scenario before hardening concepts into interfaces. |
| **Model Friction Signals Domain Misalignment** | Use repeated exceptions, missing terms, awkward translations, and difficult changes as investigation signals rather than automatic redesign verdicts. |
| **Bounded Context Enables Precise Meaning** | Bound where language, rules, and invariants can be trusted; translate rather than silently importing foreign assumptions. |
| **Anti-Corruption Translation Preserves Local Models** | Make model crossing an explicit semantic choice, not only transport mapping or DTO reuse. |
| **Physical Isolation Preserves Logical Boundaries** | Increase enforcement only when code, ownership, data, or interface controls are insufficient under delivery pressure. |
| **Microservices Relocate Rather Than Remove Complexity** | Price latency, partial failure, versioning, observability, deployment, and ownership before aligning a context with a service. |

These are practice-grounded heuristics. The knowledge map still identifies boundary evolution, broad model-to-code feedback, and context-relationship strategy as incomplete areas; do not invent universal thresholds or force relationship-pattern labels where evidence is thin.

## Modeling session

- Problem, decision, or workflow under study:
- Outcomes, hard constraints, and mandated implementation choices:
- Perspectives represented and missing:
- Purpose-linked behavioral scenario:
- Rules, invariants, events, and meaningful transitions:
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
6. Evidence, uncertainty, and revisit signals
