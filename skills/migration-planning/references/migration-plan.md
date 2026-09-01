# Migration plan reference

Use these forms inside the active specification, migration record, or program
surface. They are reasoning aids, not mandatory separate documents.

## Knowledge-derived reasoning model

| Mechanism | Migration consequence |
| --- | --- |
| **Parallel Change Enables Safe Migration** | Separate introduction, movement, and removal so old and new forms can coexist while dependencies drain. |
| **Intermediate States Preserve Mixed-Version Correctness** | Define allowed reads, writes, deletes, validation, and visibility while old and new executors share state. |
| **Retirement Requires Risk-Specific Exit Evidence** | Gate removal by consumer drainage, representative behavior, state reconciliation, and stale-authority fencing rather than elapsed time. |
| **Compatible Growth Preserves Software Contracts** | Consume an explicit compatibility and deprecation policy; do not invent contract meaning inside the migration sequence. |
| **Reversibility Preserves Adaptive Capacity** | Keep retreat, narrowing, repair, or compensation available while evidence accumulates, then retire temporary optionality. |
| **Expose Boundaries Before Physical Extraction** | Treat migration as enforcement of an accepted logical and operational boundary, not a substitute for selecting one. |
| **Anti-Corruption Translation Preserves Local Models** | Use an owned translation boundary when old and target meanings differ; preserve the semantic decision supplied by contract or domain design. |
| **Durable Handoff Defines Acknowledgment Boundaries** | Move acknowledgment or progress only after another durable boundary owns recovery, replay, or retry. |

## Migration eligibility gate

Answer all five questions before creating a migration plan:

- What established technical state continues to carry obligations?
- What accepted target state will replace or supersede it?
- Which consumers, authoritative traffic path, state, executors,
  infrastructure, or technical authority must move?
- Which transition states are required: online coexistence, shadow or dual
  operation, frozen/offline movement, repair, validation, or cutover?
- What old authority, representation, or path becomes retireable afterward?

If no material state, consumer, authoritative-path, execution, infrastructure,
or authority movement ends in retirement, route according to the unresolved work to
`software-change-specification`, `controlled-release-design`, or
`scoped-change-implementation`. If the target or contract semantics are still
undecided, route upstream before sequencing the migration.

Traffic movement qualifies here only when routing, serving, execution,
infrastructure, or technical authority is replaced. Cohort assignment, version
exposure, and later removal of compatible old application code do not qualify
by themselves.

## Authority and state inventory

| Participant or representation | Current reads | Current writes or effects | Current authority | Target role | Stale-participant risk |
| --- | --- | --- | --- | --- | --- |

Include producers, consumers, stored data, replicas, caches, queues, batch jobs,
offline clients, old binaries, traffic routers, control planes, repair tools,
and operators when relevant.

## Transition-state model

| State | Live versions and representations | Permitted reads, writes, deletes, validation, visibility, and routing | Authority | Preserved invariants | Entry evidence | Exit or retreat |
| --- | --- | --- | --- | --- | --- | --- |
| Current established state | | | | | | |
| Introduced but non-authoritative | | | | | | |
| Transition: mixed, shadowed, frozen/offline, repairing, or validating | | | | | | |
| Target authoritative | | | | | | |
| Old state retired | | | | | | |

Add or remove states according to the migration. Useful intermediate states may
be delete-only, write-only, validation-only, shadowed, dual-maintained,
backfilled but hidden, limited-authority, or fenced. Name the invariant that
earns each state; do not copy a generic phase ladder.

## Pattern prompts by migration class

### Contract adoption

- Consume the actual contract, compatibility matrix, support policy,
  translation, and retirement claims from `software-contract-evolution`.
- Prevent new adoption of the old form and preserve unobservable consumers as
  explicit uncertainty.

### Schema, representation, or data migration

- Name the authoritative representation in every state.
- Make backfill, repair, and cleanup resumable and safe under concurrent writes.
- Define ordering, divergence handling, reconciliation, and stale-writer
  fencing before dual maintenance.

### Service, traffic, or runtime migration

- Preserve an old authoritative path while the target path proves itself when
  the risk permits.
- Price translation, dependency load, failure propagation, control-plane
  availability, and the accepted operating responsibilities required by the
  move.

### Storage or infrastructure replacement

- Validate durability, recovery, consistency, capacity, credentials, quotas,
  observability, and operational tooling separately.
- Replay representative traffic or queries where safe and isolate target writes
  until their authority is explicit.

### Event or pipeline migration

- State who owns a record before and after each acknowledgment, offset commit,
  checkpoint, or output write.
- Preserve replay, ordering, idempotency, and repair across old and target
  processors.

## State-gate template

| Transition | Entry criteria | Authorized actions | Named evidence obligations | Hold or abort | Retreat, repair, fail-forward, or compensation | Owner |
| --- | --- | --- | --- | --- | --- | --- |

Use evidence keys with their plain-language labels, for example
`VER-ledger-conservation — Ledger value is conserved`. Never copy another
skill's complete evidence or signal contract into this table.

## Retirement evidence

| Obligation being retired | Representative evidence |
| --- | --- |
| Consumer compatibility | Known and inferred consumer drainage, new-use prevention, support exceptions |
| Behavioral authority | Representative old/target comparison and investigated mismatches |
| Stored state | Backfill completion, invariant reconciliation, repair and cleanup evidence |
| Write or executor authority | Leases, fencing, deployment bounds, permission removal, stale-tool checks |
| Operational recovery | Backup/restore, failover or failback, control and credential availability |

Retire in dependency order. A deadline coordinates work; it does not replace
evidence that the old obligation is safe to remove. Preserve transition signals
and evidence artifacts through the final stability window and any audit or
retention obligation before cleaning them up.

An old state is **retireable** when its supported obligations and authority have
been transferred, drained, or fenced strongly enough that removal would
preserve accepted behavior and support commitments. Physical removal may lag
because of retention, audit, or bounded fallback obligations. Any retained
copy, data, or compatibility path must be non-authoritative, explicitly owned,
bounded in purpose, and governed by a review trigger.

## Composition

- Keep this plan authoritative for transition states, operations, authority,
  cutover, retreat or compensation, retirement order, and overall cleanup.
- Nest `controlled-release-design` only for exposure assignment and decisions.
- Link `observability-design` and `software-verification` contracts.
- Let `technical-program-orchestration` coordinate workstreams and integration
  without copying the state model into a schedule.
