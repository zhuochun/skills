# Controlled Release Design Reference

Use this template proportionately. A low-risk UI change needs less machinery than a cross-service financial workflow.

## Release contract

- Behavior being released:
- Product or service outcome:
- Deployment unit:
- Exposure unit:
- Authoritative assignment point:
- Enforcement points:
- Eligible and excluded populations:
- Irreversible effects:
- Owners: product decision, technical, operations, evidence, cleanup:
- Deadline and expiry:

## Flag state model

Possible states include `off`, `shadow`, `internal`, `opt-in`, `limited`, `ramping`, `on`, and `retired`. Use only states with distinct behavior and decisions.

| State | Assignment | Executed behavior | Visible or durable effects | Evidence required to enter | Allowed next states |
| --- | --- | --- | --- | --- | --- |

Record:

- default and fail-open/fail-closed behavior;
- targeting precedence and stable assignment;
- propagation and cache delay;
- client visibility and tamper resistance;
- authorization and audit;
- stale configuration and split-brain behavior;
- expiry and removal owner.

## Cross-service control topology

For each participating component:

| Component | Version combinations | Receives assignment from | Local gate purpose | Data or external effect | Partial-failure behavior | Correlation emitted |
| --- | --- | --- | --- | --- | --- | --- |

Prefer assignment at the business-workflow entry point when all services must agree. Propagate a stable decision token or context. A downstream local kill switch may still be appropriate when it owns a distinct hazardous effect, but document its precedence and inconsistent-state behavior.

## Exposure-unit selection

- **Shadow:** Exercises computation with suppressed or isolated effects; useful for comparison and load, but not proof of user experience.
- **Internal or trusted users:** Improves feedback access; often unrepresentative of scale, permissions, and behavior.
- **Tenant or account:** Useful when data and support boundaries align with tenancy; large tenants can dominate consequence.
- **Region, zone, cell, or cluster:** Useful for blast-radius isolation; topology may correlate with dependencies and traffic mix.
- **Request percentage:** Easy to ramp; weak when a user's workflow requires stable assignment or effects persist.
- **Capability or workflow:** Targets the actual behavior; requires clear eligibility and cross-service propagation.

Choose the unit that bounds consequence and preserves interpretable comparison, not merely the easiest flag rule.

## Phase contract

| Phase | Population | Entry criteria | Action | Observation window | Success | Hold | Abort | Recovery or compensation | Owner |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |

Treat absent traffic, missing telemetry, sample imbalance, delayed effects, and unresolved divergence as hold conditions rather than success.

## Evidence portfolio

Include only evidence tied to a claim:

- **Outcome:** completion, adoption, conversion, quality, or other customer-recognizable result, plus an opposing metric.
- **Correctness:** invariants, old/new comparison, duplication, loss, ordering, reconciliation, or audit evidence.
- **Service:** rate, errors, latency, backlog, freshness, retry, timeout, and dependency behavior.
- **Capacity:** headroom, saturation, amplification, cache effects, and recovery envelope.
- **Operations:** paging, manual intervention, support load, repair demand, and ownership routing.
- **Control:** assignment, propagation, configuration age, kill-switch reachability, permissions, and audit.

State baseline, denominator, expected delay, important dimensions, uncertainty, and who makes the promotion decision.

## Completion checklist

- Permanent behavior and ownership are explicit.
- Unsupported clients and delayed work are below the stated retirement threshold.
- Old behavior, adapters, duplicate writes, shadow traffic, and repair machinery are removed or deliberately retained.
- Flag definitions, configuration, tests, dashboards, alerts, and documentation are removed or converted to permanent controls.
- A final check proves the old path is no longer active.

## Boundary with adjacent skills

- Use `observability-design` to design the feature and release signals in detail.
- Use `verification-strategy-design` when the larger question is which methods can falsify all engineering claims.
- Use `high-risk-change-planning` when exposure is one part of a migration with coexistence, data authority, irreversible transitions, and organizational coordination.
- Use `operational-feedback-audit` later to evaluate whether live evidence and controls produced correct operational action.
