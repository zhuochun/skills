# Boundary Review Worksheet

Use this worksheet for a formal review. Adapt the depth to decision consequence and reversibility.

## Decision frame

- Candidate boundary:
- Decision owner:
- Affected owners and consumers:
- Business outcome or recurring pain:
- Enforcement types in question: in-process module / deployment / data / failure / operating ownership
- Decision horizon and constraints:

## Domain and workflow

- Local language and model:
- Important workflows:
- Invariants and consistency needs:
- Facts owned here:
- Facts translated from elsewhere:
- Difficult examples or edge cases:

## Complete interface inventory

| Interface | Producer/owner | Consumers | Semantics and compatibility | Failure/recovery obligation |
| --- | --- | --- | --- | --- |
| Request/API | | | | |
| Event/stream | | | | |
| Shared data/cache/projection | | | | |
| Bulk import/export/analytics | | | | |
| Operational/control path | | | | |

## Force matrix

| Force | Evidence | Strength | Favours | Consequence if ignored |
| --- | --- | --- | --- | --- |
| Independent capability or identity | | | split / keep | |
| Volatility or release cadence | | | split / keep | |
| Scale or performance profile | | | split / keep | |
| Security or compliance boundary | | | split / keep | |
| Fault isolation and blast radius | | | split / keep | |
| Transaction or invariant scope | | | merge / keep | |
| Data ownership or query coupling | | | merge / keep | |
| Workflow chatter and latency | | | merge / keep | |
| Coordinated delivery or testing | | | merge / keep | |
| Operating capacity and platform support | | | merge / keep | |

## Scenario traces

For each scenario, record the participating boundaries, data movement, remote calls, failure branches, owner handoffs, and controls.

1. Representative business change:
2. Peak-load or scale divergence:
3. Dependency or partial failure:
4. Data repair, replay, or recovery:
5. Ownership or policy change:

## Options

Compare at least these when plausible:

- Keep the current physical boundary and improve internal modularity.
- Expose or repair a logical boundary before extraction; route detailed hidden-knowledge and interface design to `deep-module-design`.
- Split deployment while retaining explicit translation and ownership.
- Merge boundaries that cannot fail, change, or transact independently.

## Decision

- Recommendation and confidence:
- Selected enforcement boundary and desired locality:
- Decisive evidence:
- Prerequisites:
- `deep-module-design` handoff when logical modularity is selected: pressure, preserved commitments, service constraints, and rejection gates
- Migration outline and reversibility:
- Temporary complexity and retirement owner:
- Accepted risks:
- Evidence still missing:
- Revisit when these signals appear:
