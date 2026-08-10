# Architecture Surface Map Reference

Choose the fast path that matches the user's decision, then fill only the artifact sections needed to support it.

## Fast paths

### Repository or codebase orientation

Prioritize purpose, executable entry points, module and dependency shape, representative workflows, build and verification paths, deployment or containing runtime, data and effect authority, ownership, and the first safe change path. Do not turn orientation into a ranked architecture assessment.

### Module or subsystem orientation

Prioritize responsibility, callers, hidden knowledge and state, interfaces, dependency direction, representative behavior and error paths, tests, change history, containing runtime, and accountable owner. Mark service-level operational surfaces as inherited, not applicable, or still unknown.

### Platform or end-to-end capability

Prioritize user promise, participating modules and services, interfaces, state and effect authority, runtime and deployment topology, critical dependencies, change and adoption paths, operating controls, and ownership across the full value path.

### Inherited service

Prioritize service promise, critical workflows, deployment/configuration, runtime dependencies, data authority, health entry, common failures, recovery, access, on-call ownership, and the first safe change path.

### Feature-change safety

Prioritize the affected workflow, contracts and consumers, persistent or external effects, flags/configuration, mixed versions, tests, telemetry, rollout and rollback limits, and owners needed for approval or recovery.

### On-call orientation

Prioritize customer-proximate health, alert routes, recent incidents, dependency topology, dashboards and queries, runbooks, credentials, mitigation controls, escalation, and known noisy or misleading signals.

### Ownership handover

Prioritize operational load, unresolved defects, reliability gaps, automation, monitoring and alerting, capacity, access, support boundaries, documentation usability, blockers, shadowing, and explicit takeover conditions.

## Evidence ranking

Use evidence types, not one universal truth hierarchy:

- **Observed:** Current traces, traffic, deployments, telemetry, incidents, or direct behavior. Strong for exercised runtime paths; weak for rare or latent paths.
- **Executable:** Code, schemas, tests, infrastructure, configuration, policies, and generated manifests. Strong for possible and intended behavior; may differ from deployed state.
- **Declared:** Current ADRs, service catalogs, diagrams, runbooks, and interface documentation. Strong for intent and ownership claims; freshness must be checked.
- **Reported:** Owner or operator accounts. Strong for operational history and unwritten procedures; corroborate consequential claims.
- **Inferred:** Analyst reasoning connecting incomplete evidence. Keep visible and attach the next falsifying probe.

When sources disagree, record the contradiction, consequence, and next observation. Do not silently privilege a clean diagram over runtime evidence or one runtime sample over an executable latent path.

Treat silence or an empty failure record as health evidence only when the relevant path was exercised and the observation or reporting channel could detect the failure. Otherwise mark the path or failure class as uninspected.

## Orientation artifact

### Decision frame

- Immediate question:
- Time budget and environments:
- Stop condition:
- Explicitly out of scope:

### Subject and purpose

- Subject type and scope boundary:
- Responsibility or promise and critical workflows:
- Users, callers, and important populations:
- Modules, runtime, or deploy units where applicable:
- Repositories and canonical entry points:
- Invariants, SLOs, or operating expectations:

### Critical surface matrix

| Surface | What matters | Evidence and recency | Owner/authority | Confidence | Contradiction or next probe |
| --- | --- | --- | --- | --- | --- |
| Purpose/semantics/workflow |  |  |  |  |  |
| Code/modules |  |  |  |  |  |
| Interfaces/contracts |  |  |  |  |  |
| Data and external effects |  |  |  |  |  |
| Runtime/dependencies |  |  |  |  |  |
| Change/build/test/deploy |  |  |  |  |  |
| Health/diagnosis/alerts |  |  |  |  |  |
| Capacity/failure/recovery |  |  |  |  |  |
| Ownership/access/escalation |  |  |  |  |  |

### Critical-path trace

| Step | Component | Input/output | Data authority or effect | Dependency/failure behavior | Telemetry | Owner |
| --- | --- | --- | --- | --- | --- | --- |

Trace success first, then annotate partial completion, retry, timeout, duplication, fallback, and recovery. For asynchronous paths, include enqueue, durable acceptance, processing, externally visible completion, dead-letter or repair, and age/freshness.

At runtime or library boundaries, record lifecycle, scheduling, cancellation, resource ownership, isolation, backpressure, and introspection semantics only when they affect the outcome. For cross-layer controls, show their ordering and whether stopped caller work also stops underlying work.

### Scenario walks

1. **Normal:** How does useful work enter, complete, become visible, release its resources, and get measured?
2. **Change:** Which components, contracts, data, flags, tests, owners, and recovery paths does the proposed change touch? When versions coexist, what shared state or interpretation must remain valid?
3. **Failure:** Which observer detects impact? How do cancellation, retry, fallback, containment, and recovery compose until the system reaches a usable state and verifies the consumer-visible outcome?

### Handoff

- Immediate hazards that block ordinary work:
- Unknowns that change the decision:
- Cheapest next probes:
- People or teams needed:
- Recommended next skill or activity:

Route to:

- `trace-end-to-end-journey` for one bounded product-to-system walkthrough with aligned experience, operational, domain, system, and interface views;
- `domain-modeling` for disputed meaning or invariants;
- `service-boundary-design` for split, merge, data, deployment, or failure boundaries;
- `deep-module-design` for a selected code seam or interface;
- `architecture-assessment` for discovering and ranking structural investment opportunities;
- `architecture-risk-evaluation` for consequential scenario and quality-risk judgment;
- `controlled-release-design` for flags, cohorts, and exposure control;
- `observability-design` for missing prospective telemetry;
- `operational-feedback-audit` for whether the live operating loop works;
- `migration-planning` when an accepted target requires material technical movement, controlled transition states, authority transfer, cutover, retireability, and retirement.

## Stop rules

Stop orientation when the immediate decision has enough evidence to move into focused work, even if the whole subject is not documented. Continue only when an unknown can materially change scope, safety, authority, or the next skill. The output should make ignorance navigable, not pretend to eliminate it.
