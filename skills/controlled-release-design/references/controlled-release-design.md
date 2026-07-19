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

| State | Assignment | Executed behavior | Visible or durable effects | Named promotion conditions | Allowed next states |
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

| Exposure phase | Population | Entry criteria | Action | Observation window | Named success conditions | Hold | Abort | Recovery or compensation | Owner |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |

Treat absent traffic, missing telemetry, sample imbalance, delayed effects, and unresolved divergence as hold conditions rather than success.

## Promotion evidence requirements

Name only the evidence that a promotion, hold, or abort decision consumes:

- **Outcome:** completion, adoption, conversion, quality, or other customer-recognizable result, plus an opposing metric.
- **Correctness:** invariants, old/new comparison, duplication, loss, ordering, reconciliation, or audit evidence.
- **Service:** rate, errors, latency, backlog, freshness, retry, timeout, and dependency behavior.
- **Capacity:** headroom, saturation, amplification, cache effects, and recovery envelope.
- **Operations:** paging, manual intervention, support load, repair demand, and ownership routing.
- **Control:** assignment, propagation, configuration age, kill-switch reachability, permissions, and audit.

Reference each item with its namespaced key and plain-language label, such as `OBS-settlement-age — Settlement completion age` or `VER-ledger-conservation — Ledger value is conserved`. The prefix identifies the contract family. Do not duplicate the measurement contract or verification method here. State the comparison or decision rule, uncertainty, missing-evidence behavior, and accountable promotion owner.

When this release is nested inside a migration plan, inherit the master transition's scope, invariants, compatibility matrix, irreversible effects, data authority, recovery, and cutover. This subplan remains authoritative only for exposure assignment and decisions.

## Completion checklist

- Permanent behavior and ownership are explicit.
- Unsupported clients and delayed work are below the stated retirement threshold.
- Old behavior, adapters, duplicate writes, shadow traffic, and repair machinery are removed or deliberately retained.
- Flag definitions, configuration, tests, dashboards, alerts, and documentation are removed or converted to permanent controls.
- A final check proves the old path is no longer active.

## Boundary with adjacent skills

- Use `observability-design` to design the feature and release signals in detail.
- Use `verification-strategy-design` when the larger question is which methods can falsify all engineering claims.
- Use `migration-planning` when exposure is one part of accepted technical movement through controlled transition states, authority transfer, and retirement. Use `technical-program-orchestration` separately when several workstreams need dependency and integration steering.
- Use `operational-feedback-audit` later to evaluate whether live evidence and controls produced correct operational action.
