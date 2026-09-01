---
name: migration-planning
description: Plan a survivable technical migration from an established state to an accepted replacement while supported obligations continue. Use when state, traffic, consumers, execution, infrastructure, or authority must move and the old state must become retireable. Own transition states, authority transfer, cutover, retreat or compensation, retireability, and retirement; route target, contract, ownership, and program decisions.
---

# Migration Planning

Turn an accepted target and preserved obligations into survivable intermediate
states. Keep transition operation correct while state, traffic, consumers, or
authority moves, then end the old state deliberately.

## Use precise terms

- **Migration:** Move from an established state to an accepted target while
  preserving supported obligations or controlling a bounded interruption.
- **Migration unit:** One replacement with coherent states, authority movement,
  and retirement.
- **Transition state:** One permitted combination of versions,
  representations, paths, operations, and authorities.
- **Authority:** The source allowed to establish facts, accept writes, route
  work, or declare current state.
- **Cutover:** Accountable authority transfer to the target, not deployment or
  exposure alone.
- **Retreat:** Move safely to an earlier or reduced state; use fail-forward,
  repair, or compensation when escaped effects make reversal false.
- **Retireable:** Old obligations and authority are transferred, drained, or
  fenced; retained data, fallback, or compatibility is non-authoritative,
  bounded, owned, and reviewable.
- **Retirement:** Remove the non-authoritative old paths, representations,
  compatibility machinery, or ability to return.

## Own transition state, not neighboring decisions

- Plan by default; do not deploy, migrate, cause destructive effects, move
  traffic, cut over, or write externally without authorization.
- Own the migration state machine, per-state operations and authority, cutover,
  retreat or compensation, and retirement order. Phases are technical states
  and gates, not a schedule.
- Consume an accepted target and preserved obligations. Route an undecided
  target to design, architecture evaluation, or `decision-facilitation`.
  Consume shared-contract compatibility, promises, and translation from
  `software-contract-evolution`; do not redefine them.
- Route assignment, cohorts, percentage ramps, promotion, hold, abort, and flag
  cleanup to `controlled-release-design`. Route several concurrent or
  interdependent workstreams to `technical-program-orchestration`. Route the
  sustainable service ownership model and ownership handover to
  `service-ownership-design`; consume its accepted operating responsibilities.
- Identify target-decision, transition, execution, observation, approval,
  cutover, retreat, and retirement owners. Do not assign teams, shorten support
  promises, or accept residual risk. Avoid a staffing/program RACI.
- Respect existing change-management, security, privacy, regulatory, support,
  and incident procedures.

## Planning workflow

1. **Confirm a migration.** Name current and accepted target states, what moves,
   required coexistence or bounded offline states, authority change, and what
   becomes retireable. Traffic counts only when routing, serving, execution,
   infrastructure, or technical authority is replaced. Without movement ending
   in retirement, route to `software-change-specification`,
   `controlled-release-design`, or `scoped-change-implementation`.
2. **Define the migration contract.** State the migration unit, current and
   target states, affected populations and systems, preserved invariants,
   compatibility and support inputs, exclusions, success, deadline or
   constraint, and consequences of premature cutover or retirement.
3. **Map participants, state, and authority.** Inventory producers, consumers,
   representations, executors, caches, queues, replicas, traffic/control paths,
   operators, and stale participants. State who may read, write, route,
   validate, repair, and declare completion.
4. **Model explicit transition states.** Define the allowed versions,
   representations, reads, writes, deletes, validation, visibility, routing,
   and authority in each state. Use intermediate delete-only, write-only,
   shadow, dual-maintained, backfilled, or fenced states only when their
   invariants justify them.
5. **Classify irreversible effects.** Identify data loss/transformation,
   messages, money movement, security changes, client semantics, and downstream
   facts rollback cannot undo. Separate reversal, repair, and compensation.
6. **Choose migration mechanisms.** Prefer compatible introduction before
   removal when possible. Select adapters, replication, backfill, shadow reads,
   comparison, facades, translation, traffic movement, or stronger isolation
   according to the actual state and authority risks; do not apply every
   pattern by default.
7. **Define state gates.** Give each transition entry, authorized actions,
   evidence, observation window, success, hold/abort, retreat/fail-forward, and
   owner. Calendar milestones do not prove safety.
8. **State evidence obligations.** Name evidenced invariants and claims, such as
   consumer drainage, behavior agreement, reconciliation, stale-writer fencing,
   recovery, and control availability. Reference observability and verification
   contracts by key and label; do not duplicate semantics or methods.
9. **Design retreat and control survival.** Specify the last safely reversible
   state, rollback or traffic reduction where truthful, and fail-forward,
   repair, or compensation after irreversible effects. Verify that observation,
   credentials, communications, and emergency controls survive the failure
   being managed.
10. **Gate cutover, retireability, and retirement separately.** Transfer
    authority only after its gate. Then remove or fence old writes,
    representations, consumers, compatibility, permissions, tooling, and
    telemetry in dependency order with risk-matched evidence. Fence stale
    executors; bound, own, and review anything retained.

Use [references/migration-plan.md](references/migration-plan.md) when testing
migration eligibility, selecting state patterns, or writing the state and
retirement gates.

## Compose specialized controls

- Consume accepted behavior from `software-change-specification` and shared
  contract semantics, compatibility, translation, deprecation, and support from
  `software-contract-evolution`.
- Nest `controlled-release-design` only for exposure assignment, cohorts,
  promotion, hold, abort, kill controls, and flag cleanup. It does not own
  data, routing, or effect authority.
- `technical-program-orchestration` owns workstreams and replanning;
  `observability-design` owns signals; `software-verification` owns
  methods and oracles.
- Keep one flow. Link stable keys and labels rather than copying neighboring
  plans. Create a distinct migration plan only when its state and retirement
  knowledge needs an independent owner or lifecycle.

## Quality gates

Require all of the following before calling the plan ready:

- Define a genuine migration unit and current-to-transition-to-target movement.
  Consume accepted target, contract, and support decisions.
- Define participants, operations, representations, visibility, and authority
  in every state. Make irreversible effects and compensations explicit.
- Keep one smallest self-contained text view from current through transition,
  target, and retirement. Label authority, unchanged obligations, gates, and
  unresolved states; do not depend on rendering.
- Give every transition measurable entry, success, hold or abort, retreat or
  fail-forward, evidence, and ownership criteria.
- Keep release, observability, and verification details canonical and
  traceable. Decide cutover, retireability, and retirement separately.
- Test retreat, repair, fail-forward, or compensation proportionately. Keep
  controls independent enough for the targeted failure.
- Name ownership, communications, and escalation. Give old authority and
  temporary compatibility retirement criteria, and fence stale participants.

## Reject false migrations and safety

- Large change, schedules, workstreams, milestones, and code removal are not
  migration without technical movement, authority transfer, and retirement.
- Data deletion without a replacement representation is destructive work, not
  migration. Specify, authorize, execute, and verify it without inventing a
  target state.
- A flag, canary, or percentage ramp is controlled exposure unless it governs
  a real state or authority transition.
- A feature flag is not a rollback if data or external effects already escaped.
- Dual writes require authority, ordering, repair, and divergence handling.
- A dry run does not prove effect-path permissions or behavior; a canary covers
  sampled conditions, not every failure mode.
- “Backward compatible” requires explicit producer-consumer version
  combinations.
- A migration is not complete while the old path remains unknowingly active.

## Completion

Return one migration contract and state model: accepted target, current/target
authority, transition states and gates, irreversible effects, evidence, cutover,
retreat, retireability, retirement order, owners, unknowns, and routed work.
State whether this is a migration, awaits an upstream decision, or belongs to
change specification, implementation, release, contract evolution, or program
orchestration.
