# Architecture Assessment Playbook

## Scope

- Portfolio decision: which structural investments deserve attention first
- Business or engineering goal:
- Portfolio/value stream/subsystem:
- Change-history window:
- Included runtime and data dependencies:
- Constraints and ADRs:
- Exclusions and known blind spots:
- Preselected completed design: none; if present with a material knowledge delta, route to `$retrospective-architecture-review`

## Evidence surfaces

Use available sources proportionately:

- version-control hotspots and coordinated changes;
- issue, defect, incident, and support clusters;
- module, package, service, database, and deployment structure;
- runtime graphs, traces, queues, retries, and failure propagation;
- public contracts, events, schemas, and compatibility policy;
- test architecture, feedback duration, flakes, and hard-to-reproduce behavior;
- ownership, on-call, review, release, and cross-team handoffs;
- domain vocabulary and recurring model friction.

## Candidate card

- **Title and recommendation strength:** Strong / Worth exploring / Speculative
- **Evidence:** Files, changes, incidents, runtime behavior, or handoffs
- **Mechanism:** Why the current structure creates recurring cost or risk
- **Target responsibility and seam:** What becomes local and who owns it
- **Interface and behavior:** What callers gain and stop knowing
- **Benefits:** Change locality, leverage, testability, operability, comprehension
- **Migration:** Tracer step, compatibility, coexistence, rollback, cleanup
- **Risks and tradeoffs:** New complexity, coupling, ownership, or platform needs
- **Conflicts:** Standards or ADRs that must be respected or reopened
- **Unknowns:** Evidence required before implementation

## Ranking rubric

Use qualitative judgments with evidence. Do not sum weak guesses into a precise score.

| Dimension | Low | Medium | High |
| --- | --- | --- | --- |
| Change frequency | Rare | Periodic | Frequent/hotspot |
| Consequence | Local inconvenience | Team/product impact | Customer, data, security, or reliability risk |
| Reach | One caller/team | Several modules/teams | Broad platform or value stream |
| Evidence strength | Hypothesis | Multiple code/history signals | Code plus runtime/incident/ownership evidence |
| Migration risk | Reversible/local | Coordinated | Stateful, public, or cross-organization |
| Option value | Isolated cleanup | Enables adjacent work | Opens several high-value changes |

## Report structure

1. Executive outcome and top recommendation
2. Scope, constraints, and evidence used
3. Current structural or runtime view
4. Three to seven ranked candidate cards
5. Portfolio dependencies and sequencing
6. Areas intentionally left unchanged
7. Unknowns and proposed validation
8. Selection question before implementation
