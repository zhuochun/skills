# Service Surface Map Reference

Choose the fast path that matches the user's decision, then fill only the artifact sections needed to support it.

## Fast paths

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

## Orientation artifact

### Decision frame

- Immediate question:
- Time budget and environments:
- Stop condition:
- Explicitly out of scope:

### Service identity

- Promise and critical workflows:
- Users, callers, and important populations:
- Runtime/deploy units:
- Repositories and canonical entry points:
- SLOs or operating expectations:

### Critical surface matrix

| Surface | What matters | Evidence and recency | Owner/authority | Confidence | Contradiction or next probe |
| --- | --- | --- | --- | --- | --- |
| Product/workflow |  |  |  |  |  |
| Interfaces/contracts |  |  |  |  |  |
| Data and external effects |  |  |  |  |  |
| Runtime/dependencies |  |  |  |  |  |
| Deploy/config/release |  |  |  |  |  |
| Health/diagnosis/alerts |  |  |  |  |  |
| Capacity/failure/recovery |  |  |  |  |  |
| Ownership/access/escalation |  |  |  |  |  |

### Critical-path trace

| Step | Component | Input/output | Data authority or effect | Dependency/failure behavior | Telemetry | Owner |
| --- | --- | --- | --- | --- | --- | --- |

Trace success first, then annotate partial completion, retry, timeout, duplication, fallback, and recovery. For asynchronous paths, include enqueue, durable acceptance, processing, externally visible completion, dead-letter or repair, and age/freshness.

### Scenario walks

1. **Normal:** How does useful work enter, complete, become visible, and get measured?
2. **Change:** Which contracts, services, data, flags, tests, owners, and recovery paths does the proposed change touch?
3. **Failure:** How is impact detected, localized, routed, mitigated, and verified as recovered?

### Handoff

- Immediate hazards that block ordinary work:
- Unknowns that change the decision:
- Cheapest next probes:
- People or teams needed:
- Recommended next skill or activity:

Route to:

- `domain-modeling` for disputed meaning or invariants;
- `service-boundary-design` for split, merge, data, deployment, or ownership boundaries;
- `deep-module-design` for a selected code seam or interface;
- `architecture-risk-evaluation` for consequential scenario and quality-risk judgment;
- `controlled-release-design` for flags, cohorts, and exposure control;
- `observability-design` for missing prospective telemetry;
- `operational-feedback-audit` for whether the live operating loop works;
- `high-risk-change-planning` for a staged, reversible transition.

## Stop rules

Stop orientation when the immediate decision has enough evidence to move into focused work, even if the whole service is not documented. Continue only when an unknown can materially change scope, safety, authority, or the next skill. The output should make ignorance navigable, not pretend to eliminate it.
