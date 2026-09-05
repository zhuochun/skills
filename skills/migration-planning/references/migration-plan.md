# Migration plan reference

Use these forms inside the active specification, migration record, or program
surface. They are reasoning aids, not mandatory separate documents.

Apply the entrypoint's migration eligibility gate before using these forms.

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
  checkpoint, or output write. Advance progress only after another durable
  boundary owns recovery, replay, or retry.
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

Physical retirement may lag retireability for retention, audit, or bounded
fallback obligations. Apply the entrypoint's ownership and review limits to
every retained copy, datum, or compatibility path.
