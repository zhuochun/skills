---
name: high-risk-change-planning
description: Plan high-risk API, schema, data, service, infrastructure, authorization, or production-behavior changes as staged, observable, and reversible transitions. Use for migrations, breaking contracts, destructive operations, large rollouts, storage replacement, traffic moves, or changes requiring coexistence, approval, rollback, compensation, or coordinated consumer adoption.
---

# High-Risk Change Planning

Turn a proposed end state into a sequence of survivable intermediate states. Optimize for controlled learning, bounded blast radius, and an explicit end to temporary migration machinery.

## Preserve authority

- Produce a plan by default. Do not execute deployments, migrations, destructive effects, traffic changes, or external writes without explicit authorization.
- Identify decision, execution, approval, observation, and rollback owners. Do not assign teams silently.
- Respect existing change-management, security, privacy, regulatory, and incident procedures.

## Planning workflow

1. **Define the change contract.** State the current state, desired state, affected users and systems, invariants, compatibility promises, success criteria, and deadline.
2. **Classify irreversible effects.** Identify data loss, external messages, money movement, security exposure, client-visible semantics, and downstream facts that rollback cannot undo.
3. **Separate plan from effect.** For dangerous work, make target selection and policy decisions reviewable before execution. Require version checks, idempotency, authorization, and stale-plan protection at apply time.
4. **Design coexistence.** Add the new form before removing the old where possible. Choose adapters, additive contracts, replication, shadow reads, dual comparison, cohort routing, facades, or temporary translation according to the change class.
5. **Define phases.** Use explicit introduction, validation, limited adoption, expansion, authoritative cutover, and cleanup phases. Give every phase entry criteria, actions, evidence, abort conditions, and owner.
6. **Build the evidence loop.** Define customer-proximate health, correctness invariants, compatibility checks, performance limits, operational load, and uncertainty. State what each signal cannot prove.
7. **Design retreat.** Specify rollback, disablement, traffic reduction, fail-forward, or compensation. Verify that observation, credentials, cleanup, and control paths survive the failure being managed.
8. **Bound coordination.** Inventory consumer order, old/new version combinations, data authority, freezes, communications, and support requirements. Prefer local migrations over synchronized flag days.
9. **Plan cleanup.** Name removal criteria, deprecation telemetry, deadline, and owner for flags, adapters, duplicate paths, temporary stores, and documentation.

Use [references/change-plan.md](references/change-plan.md) for change-specific patterns and the plan template.

## Quality gates

Require all of the following before calling the plan ready:

- old, mixed, and new states have defined behavior;
- irreversible effects and compensations are explicit;
- every phase has measurable entry, success, and abort criteria;
- correctness and customer health are both observed;
- rollback or fail-forward has been tested at an appropriate level;
- the control path is independent enough for the targeted failure class;
- ownership, communications, and escalation are named;
- temporary compatibility machinery has retirement criteria.

## Reject false safety

- A feature flag is not a rollback if data or external effects already escaped.
- Dual writes are not safe without authority, ordering, repair, and divergence handling.
- A dry run does not prove the effect path has the same permissions or behavior.
- A canary tests current sampled conditions, not every failure mode.
- “Backward compatible” is incomplete until producer and consumer version combinations are stated.
- A migration is not complete while the old path remains unknowingly active.
