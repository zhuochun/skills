---
name: migration-planning
description: Plan a survivable technical migration from an established state to an accepted replacement while supported obligations continue. Use when state, traffic, consumers, execution, infrastructure, or authority must move and the old state must become retireable. Own transition states, authority transfer, cutover, retreat or compensation, retireability, and retirement; route target, contract, ownership, and program decisions.
---

# Migration Planning

Turn an accepted target and its preserved obligations into a sequence of
survivable intermediate states. Keep online or offline transition operation
correct while state, traffic, consumers, or authority moves, then end the old
state deliberately.

## Use precise terms

- **Migration:** Move from an established state to an accepted target while
  preserving supported obligations or controlling a bounded interruption.
- **Migration unit:** One replacement relationship with coherent states,
  authority movement, and retirement.
- **Transition state:** One permitted combination of versions,
  representations, paths, operations, and authorities.
- **Authority:** The source allowed to establish facts, accept writes, route
  work, or declare current state.
- **Cutover:** Accountable authority transfer to the target, not deployment or
  exposure alone.
- **Retreat:** Move safely to an earlier or reduced state; use fail-forward,
  repair, or compensation when escaped effects make reversal false.
- **Retireable:** Old obligations and authority are transferred, drained, or
  fenced so removal preserves accepted behavior and support commitments. Any
  retained data, fallback, or compatibility is non-authoritative, bounded,
  owned, and reviewable.
- **Retirement:** Remove the non-authoritative old paths, representations,
  compatibility machinery, or ability to return.

## Own transition state, not neighboring decisions

- Produce a plan by default. Do not execute deployments, migrations,
  destructive effects, traffic changes, cutover, or external writes without
  explicit authorization.
- Keep this skill authoritative for the migration state machine, permitted
  operations and authorities in each state, cutover, retreat or compensation,
  and retirement order. Phases express technical states and gates, not a task
  schedule or percent-complete program plan.
- Consume an accepted target direction and preserved obligations. Route an
  undecided target to the relevant design or architecture evaluation, or to
  `decision-facilitation` for accountable choice clarification and closure.
  Consume compatibility policy, consumer promises,
  and semantic translation from `software-contract-evolution` when a shared
  contract changes; do not redefine them here.
- Route assignment, cohorts, percentage ramps, promotion, hold, abort, and flag
  cleanup to `controlled-release-design`. Route several concurrent or
  interdependent workstreams to `technical-program-orchestration`. Route the
  sustainable service ownership model and ownership handover to
  `service-ownership-design`; consume its accepted operating responsibilities.
- Identify target-decision, transition, execution, observation, approval,
  cutover, retreat, and retirement owners. Do not silently assign teams,
  shorten support promises, or accept residual risk. Name only the accountable
  control roles needed to operate migration gates; do not create a staffing or
  program RACI.
- Respect existing change-management, security, privacy, regulatory, support,
  and incident procedures.

## Planning workflow

1. **Confirm that a migration exists.** Name what established state persists,
   what target state has been accepted, what must move, which online coexistence
   or bounded offline transition states are required, what authority changes,
   and what becomes retireable. Traffic qualifies only when routing, serving,
   execution, infrastructure, or technical authority is replaced—not when a
   cohort is merely exposed to a compatible behavior. If no material state,
   consumer, authoritative-path, execution, infrastructure, or authority
   movement ends in retirement, route the unresolved work to
   `software-change-specification`,
   `controlled-release-design`, or `scoped-change-implementation` as
   appropriate instead of manufacturing a migration plan.
2. **Define the migration contract.** State the migration unit, current and
   target states, affected populations and systems, preserved invariants,
   compatibility and support inputs, exclusions, success, deadline or
   constraint, and consequences of premature cutover or retirement.
3. **Map participants, state, and authority.** Inventory producers, consumers,
   stored representations, executors, caches, queues, replicas, traffic paths,
   control planes, operators, and delayed or stale participants. State who may
   read, write, route, validate, repair, and declare completion today.
4. **Model explicit transition states.** Define the allowed versions,
   representations, reads, writes, deletes, validation, visibility, routing,
   and authority in each state. Use intermediate delete-only, write-only,
   shadow, dual-maintained, backfilled, or fenced states only when their
   invariants justify them.
5. **Classify irreversible effects.** Identify lost or transformed data,
   external messages, money movement, security or authorization changes,
   client-visible semantics, and downstream facts that rollback cannot undo.
   Separate reversible control actions from repair and compensation.
6. **Choose migration mechanisms.** Prefer compatible introduction before
   removal when possible. Select adapters, replication, backfill, shadow reads,
   comparison, facades, translation, traffic movement, or stronger isolation
   according to the actual state and authority risks; do not apply every
   pattern by default.
7. **Define state gates.** Give each state transition entry conditions,
   authorized actions, named evidence obligations, observation window, success,
   hold or abort conditions, retreat or fail-forward route, and owner. Treat a
   calendar milestone as a coordination aid, not proof that the state is safe.
8. **State evidence obligations.** Name the invariants and transition claims
   that need evidence, such as consumer drainage, representative behavior
   agreement, state reconciliation, stale-writer fencing, recovery, and control
   availability. Reference observability and verification contracts by stable
   key and plain-language label; do not duplicate their signal semantics,
   methods, or oracles.
9. **Design retreat and control survival.** Specify the last safely reversible
   state, rollback or traffic reduction where truthful, and fail-forward,
   repair, or compensation after irreversible effects. Verify that observation,
   credentials, communications, and emergency controls survive the failure
   being managed.
10. **Gate cutover, retireability, and retirement separately.** Transfer
    authority only when its gate passes. After retireability evidence passes,
    remove or fence old writes, active representations, consumers,
    compatibility paths, permissions, tooling, and telemetry in dependency
    order using evidence matched to the harm of premature removal. Fence stale
    executors. Keep retained data, inactive fallbacks, or compatibility
    non-authoritative and give each an owner, bounded purpose, and review
    trigger.

Use [references/migration-plan.md](references/migration-plan.md) when testing
migration eligibility, selecting state patterns, or writing the state and
retirement gates.

## Compose specialized controls

- Consume accepted behavior and invariants from
  `software-change-specification` when one exists, and contract semantics,
  compatibility, translation, deprecation, and support from
  `software-contract-evolution` when a shared contract changes.
- Nest `controlled-release-design` only for exposure assignment, cohorts,
  promotion, hold, abort, kill controls, and flag cleanup. It does not own
  data, routing, or effect authority.
- Let `technical-program-orchestration` own workstreams, dependencies,
  integration, forecasts, and replanning; let `observability-design` own
  signals and `verification-strategy-design` own methods and oracles.
- Keep one flow. Link stable keys and labels rather than copying neighboring
  plans. Create a distinct migration plan only when its state and retirement
  knowledge needs an independent owner or lifecycle.

## Quality gates

Require all of the following before calling the plan ready:

- Define a genuine migration unit and current-to-transition-to-target movement.
  Consume accepted target, contract, and support decisions.
- Define participants, operations, representations, visibility, and authority
  in every state. Make irreversible effects and compensations explicit.
- Give every transition measurable entry, success, hold or abort, retreat or
  fail-forward, evidence, and ownership criteria.
- Keep release, observability, and verification details canonical and
  traceable. Decide cutover, retireability, and retirement separately.
- Test retreat, repair, fail-forward, or compensation proportionately. Keep
  controls independent enough for the targeted failure.
- Name ownership, communications, and escalation. Give old authority and
  temporary compatibility retirement criteria, and fence stale participants.

## Reject false migrations and safety

- A large or risky change, project schedule, workstream map, milestone
  sequence, or code removal is not a migration without technical movement,
  authority transfer, and retirement.
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

Return one migration contract and state model containing the accepted target
inputs, current and target authority, explicit transition states,
state-transition gates, irreversible effects, evidence obligations, cutover and
retreat logic, retireability conditions, retirement order, owners, unresolved
decisions, and routed specialist work.
State whether the request is a genuine migration, not ready because an upstream
decision is missing, or better owned as change specification, scoped
implementation, controlled release, contract evolution, or program
orchestration.
