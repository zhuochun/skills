# Safe Change Plan

## Select patterns by change class

### API or event contract

- Prefer additive fields and tolerant readers.
- State supported producer/consumer version combinations.
- Measure use of deprecated forms before removal.
- Preserve semantic compatibility, not only parseability.

### Schema or data meaning

- Name the authoritative representation in every phase.
- Backfill idempotently and record checkpoints.
- Compare invariants, counts, samples, and business outcomes.
- Define divergence repair and write ordering before dual writes.

### Service or traffic migration

- Route by cohort, tenant, endpoint, or percentage.
- Preserve an old authoritative path while the new path proves itself.
- Compare latency, errors, correctness, dependency load, and support burden.
- Test failback without relying on the impaired path.

### Storage or infrastructure replacement

- Validate durability, recovery, performance, and operational tooling separately.
- Replay realistic traffic or queries where safe.
- Verify backup, restore, replication, and consistency before promotion.
- Include quota, capacity, credentials, and control-plane dependencies.

### Destructive or external effect

- Generate a serializable plan before applying it.
- Require target scope, policy basis, state version, and reviewer-visible diff.
- Make apply idempotent or deduplicated.
- Define compensation where rollback is impossible.

## Phase template

| Phase | Entry criteria | Actions | Evidence | Abort/retreat | Owner |
| --- | --- | --- | --- | --- | --- |
| 0. Baseline | | | | | |
| 1. Introduce | | | | | |
| 2. Validate/shadow | | | | | |
| 3. Limited adoption | | | | | |
| 4. Expand | | | | | |
| 5. Cut over authority | | | | | |
| 6. Remove old path | | | | | |

## Required plan sections

- Scope, invariants, affected populations, and exclusions
- Dependencies and consumer/version matrix
- Irreversible effects and compensation
- Correctness, customer-health, performance, and operator-load signals
- Rollback, fail-forward, traffic reduction, and emergency stop
- Control-path and credential availability
- On-call, communications, approvals, and escalation
- Cleanup inventory, retirement owner, and deadline
- Unknowns, experiments, and decision points
