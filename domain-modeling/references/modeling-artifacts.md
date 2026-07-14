# Domain Modeling Artifacts

Adapt these formats to the repository's existing conventions.

## Modeling session

- Decision or workflow under study:
- Participants and perspectives represented:
- Outcomes and constraints:
- Concrete examples:
- Rules and invariants:
- Events or meaningful transitions:
- Information needed at each decision:
- Exceptions, temporal behavior, and repair:
- Terms used inconsistently:
- Existing code/data representations:

## Model comparison

| Candidate model | Scenarios simplified | Invariants made explicit | Important omissions | New complexity | Migration/compatibility cost |
| --- | --- | --- | --- | --- | --- |

Prefer a focused model that creates leverage for the important problem. Introduce another context when two important problem shapes require persistently conflicting meanings or rules.

## Glossary entry

### Term

- Meaning in this context:
- Purpose and behavior:
- Valid states or invariants:
- Concrete examples and counterexamples:
- Distinct from:
- Translated as in neighboring contexts:
- Reflected in code/data/interfaces:
- Open questions:

## Context boundary

- Context name and purpose:
- Language and model owned here:
- Decisions, invariants, and data authority:
- Team or role with decision authority:
- Upstream and downstream contexts:
- Translation or anti-corruption mechanism:
- Shared contracts and compatibility policy:
- Failure, support, and escalation obligations:

## Context map

| Context | Local purpose/model | Upstream/downstream | Relationship and power | Contract/translation | Owner |
| --- | --- | --- | --- | --- | --- |

## Decision record threshold

Record an ADR or equivalent only when the choice is consequential, hard to reverse, surprising without context, and selected among genuine alternatives. Include:

1. Context and difficult scenarios
2. Decision and model boundary
3. Alternatives considered
4. Consequences and tradeoffs
5. Compatibility or migration plan
6. Evidence and revisit signals
