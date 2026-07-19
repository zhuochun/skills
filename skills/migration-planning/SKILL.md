---
name: migration-planning
description: Design a survivable technical migration when consumers, authoritative traffic, stored state, execution, infrastructure, or technical authority must move from an established state carrying supported obligations to an accepted replacement, with the old state intended to lose authority and become retireable. Use for database or storage replacement, online or offline schema or representation migration, service or authoritative traffic moves, runtime or platform replacement, and contract adoption after compatibility policy is decided. Own current-to-transition-to-target states, authority transfer, cutover, retreat or compensation, evidence-gated retireability, and retirement. Do not use when staged exposure, a bounded software change, or a destructive operation has no replacement-state movement and retireability goal. Also do not use to choose the target, define contract semantics, change organizational or service ownership, or coordinate multiple workstreams.
---

# Migration Planning

Turn an accepted target and its preserved obligations into a sequence of
survivable intermediate states. Keep online or offline transition operation
correct while state, traffic, consumers, or authority moves, then end the old
state deliberately.

## Use precise terms

- **Migration:** Movement from an established technical state to an accepted
  target while supported obligations continue or a bounded interruption is
  explicitly controlled.
- **Migration unit:** One replacement relationship whose transition states,
  authority movement, and retirement can be planned coherently.
- **Transition state:** One permitted combination of live versions,
  representations, paths, operations, and authorities.
- **Authority:** The source allowed to establish a fact, accept a write, route
  work, or declare a state current.
- **Cutover:** The accountable transfer of authority to the target state; it is
  not merely deploying or exposing new code.
- **Retreat:** A safe move to an earlier or reduced state. When escaped effects
  make reversal false, use fail-forward, repair, or compensation explicitly.
- **Retireable:** The old state's supported obligations and authority have been
  transferred, drained, or fenced so their removal would preserve accepted
  behavior and support commitments. Retained data, inactive fallback copies,
  or compatibility may remain only when non-authoritative, bounded, explicitly
  owned, and subject to a review trigger.
- **Retirement:** Accountable removal of the now-non-authoritative old
  representations, paths, compatibility machinery, or ability to return after
  retireability has been established.

## Own transition state, not neighboring decisions

- Produce a plan by default. Do not execute deployments, migrations,
  destructive effects, traffic changes, cutover, or external writes without
  explicit authorization.
- Keep this skill authoritative for the migration state machine, permitted
  operations and authorities in each state, cutover, retreat or compensation,
  and retirement order. Phases express technical states and gates, not a task
  schedule or percent-complete program plan.
- Consume an accepted target direction and preserved obligations. Route an
  undecided target to the relevant design, architecture evaluation, or
  technical decision skill. Consume compatibility policy, consumer promises,
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

- `software-change-specification` may define the accepted behavior delta and
  invariants. Create a distinct migration plan only when transition-state,
  movement, authority, and retirement knowledge needs its own owner or
  lifecycle.
- `software-contract-evolution` owns actual contract semantics, compatibility
  matrices, translation obligations, deprecation policy, and consumer support.
  This skill consumes those commitments and sequences their transition.
- `controlled-release-design` is an optional nested subplan for exposure
  assignment, cohorts, promotion, hold, abort, kill controls, and flag cleanup.
  This plan may name which technical participants or populations are permitted
  in a state, but it consumes their assignment and promotion policy. Controlled
  release does not own data, routing, or effect authority.
- `technical-program-orchestration` owns workstream drivers, dependencies,
  integration contracts, shared constraints, forecasts, and replanning. It
  links the migration plan without turning transition states into a project
  schedule.
- `observability-design` owns signal semantics, correlation, navigation, and
  missing-data behavior. `verification-strategy-design` owns methods, oracles,
  evidence limits, execution points, and renewal.
- Keep composed work in the existing flow. Reference stable keys with their
  plain-language labels instead of copying neighboring plans.

## Quality gates

Require all of the following before calling the plan ready:

- a genuine current-to-transition-to-target movement and migration unit are
  explicit;
- the target direction and relevant contract or support decisions are accepted
  inputs rather than silently decided by the migration planner;
- every transition state defines permitted participants, operations,
  representations, visibility, and authority;
- irreversible effects and compensations are explicit;
- every state transition has measurable entry, success, hold or abort, retreat
  or fail-forward, and ownership criteria;
- specialized evidence, release, and observability details have one canonical
  owner and remain traceable from the master transition;
- cutover, retireability, and retirement are separate evidence-based decisions;
- retreat, repair, fail-forward, or compensation has been tested at an
  appropriate level;
- the control path is independent enough for the targeted failure class;
- ownership, communications, and escalation are named;
- temporary compatibility machinery and old authority have retirement criteria,
  and stale participants cannot silently restore them.

## Reject false migrations and safety

- A large, risky, or destructive change is not automatically a migration. Name
  the technical movement, transition states, authority transfer, and
  retirement.
- Deleting or purging data without a replacement representation is a
  destructive operation, not a migration. Give it proportionate specification,
  authorization, execution, and verification without inventing a target state.
- A project schedule, workstream map, or milestone sequence is not a migration
  state model.
- A feature flag, canary, or percentage ramp is controlled exposure unless it
  also governs a real state or authority transition.
- Removing old application code after compatible cohort exposure does not by
  itself turn that release into a migration.
- A feature flag is not a rollback if data or external effects already escaped.
- Dual writes are not safe without authority, ordering, repair, and divergence
  handling.
- A dry run does not prove the effect path has the same permissions or behavior.
- A canary tests current sampled conditions, not every failure mode.
- “Backward compatible” is incomplete until producer and consumer version
  combinations are stated.
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
