# Migration Plan

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

| Phase | Entry criteria | Actions | Named evidence obligations | Abort/retreat | Owner |
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
- Named transition claims and required evidence, referencing observability and verification keys with their labels
- Rollback, fail-forward, traffic reduction, and emergency stop
- Control-path and credential availability
- On-call, communications, approvals, and escalation
- Cleanup inventory, retirement owner, and deadline
- Unknowns, experiments, and decision points

## Optional specialized subplans

- Add a controlled-release subplan only when flags, cohorts, traffic, regions, dark launch, or other exposure control matters. It owns assignment, exposure states, promotion, hold, abort, kill controls, and flag retirement.
- Reference observability contracts for signal meaning, correlation, missing-data behavior, and navigation.
- Reference verification strategy entries for methods, oracles, limitations, run points, and renewal.
- Keep this migration plan authoritative for transition states, invariants, data and effect authority, compatibility, cutover, recovery, compensation, and overall cleanup.

Use a namespaced key together with its plain-language label, for example `VER-ledger-conservation — Ledger value is conserved`. The prefix identifies the contract family. Never require a reader to decode a naked ID or search several copied tables for the authoritative version.
