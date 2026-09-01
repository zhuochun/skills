---
name: controlled-release-design
description: Design controlled exposure for changing behavior through flags, dark launches, canaries, cohorts, kill switches, and release evidence. Use when deployment must be separated from exposure or promotion, abort, mixed states, ownership, and cleanup need explicit control. Use migration-planning as the enclosing plan when an established technical state must move, lose authority, and become retireable.
---

# Controlled Release Design

Turn release from a binary event into governed exposure with observable outcomes, bounded populations, safe controls, and a defined end to temporary machinery.

## Preserve authority

- Design by default; do not create flags, expose cohorts, replay traffic, deploy, change production, or abort without authorization.
- Identify the product decision owner, technical owner, operator, observer, approver where required, and cleanup owner.
- Apply privacy, fairness, security, contractual, and regulatory constraints to cohort selection and telemetry.
- Treat a flag as control over future execution, not automatic reversal of effects that already escaped.

## Design workflow

1. **Define the contract.** State behavior, populations, outcomes, acceptable harm, exposure unit, duration, and distinctions among deployment, availability, experiment assignment, and permanent enablement.
2. **Classify effects and reversibility.** Identify reads, writes, schema or contract changes, messages, money movement, notifications, security decisions, and other effects that disablement cannot undo. Define compensation or fail-forward where rollback is false.
3. **Choose control topology.** Decide where exposure is assigned and enforced. Prefer one propagated authority when independent evaluation could conflict; use local gates only for local controls.
4. **Specify flag semantics.** Define states, defaults, targeting, precedence, propagation and caching, unavailable-control behavior, authorization, audit, owner, expiry, and client visibility or influence.
5. **Design coexistence.** Define old, mixed, and new producer-consumer behavior, including retries, duplication, delay, and compatibility. Inherit data and effect authority; route disputed semantics to their owner and undefined movement or authority transfer to `migration-planning`.
6. **Select exposure steps.** Choose internal users, shadow traffic, opt-in tenants, representative cohorts, regional or cell slices, percentage ramps, or other units based on what isolates consequence and produces useful evidence.
7. **Define promotion evidence.** Name business outcomes, correctness, service, capacity, operational-load, and control-health evidence for promote, hold, or abort. Cite keys and labels; leave signal semantics to `observability-design` and methods to `software-verification`.
8. **Write phase contracts.** Give each phase entry criteria, action, observation window, success, hold, abort, recovery, communication, and owner. Reference evidence contracts. Promotion is an accountable evidence-based decision, not elapsed time.
9. **Design retreat.** Define stop-exposure, kill-switch, rollback, traffic reduction, fail-forward, repair, or compensation paths. Verify that control, observation, credentials, and communications remain available during the targeted failure.
10. **Plan completion.** Define full-adoption evidence, flag and branch removal, stale-client handling, metric and dashboard retirement, documentation updates, deadline, and cleanup verification.

Read [references/controlled-release-design.md](references/controlled-release-design.md) only when release needs formal flag-state, control-topology, phase, or completion contracts.

## Compose with migration planning

Use alone for ordinary deployment-exposure separation. Within `migration-planning`, inherit movement, transitions, invariants, compatibility, effects, data authority, and recovery; own assignment, exposure states, cohorts, promotion, hold, abort, kill controls, and flag retirement.

## Quality gates

- Deployment, exposure, assignment, and permanent enablement remain distinct.
- Exposure has one explicit unit and authoritative assignment model.
- Old, mixed, and new behavior is defined across affected services and durable effects.
- Multi-actor or state exposure includes the smallest self-contained text view of assignment, enforcement, old/mixed/new behavior, promotion, and retreat. Rendering is optional.
- Irreversible effects and compensation are explicit.
- Phases define entry, success, hold, abort, observation, and owner.
- Outcomes, correctness, service, infrastructure, and control health trace by labeled claim to canonical owners.
- Abort controls are reachable, authorized, audited, and sufficiently independent.
- Flags and temporary code have expiry, removal, owner, and verification.

## Reject flag theater

- Flags need a decision and decision-changing evidence; consistent targeting needs authoritative assignment.
- Disablement is not rollback after durable or external effects.
- Percentage ramps may miss tenant, region, workflow, or dependency concentration.
- Elapsed windows without traffic or evidence do not justify promotion.
- Controls must survive the impaired path; permanent flags, duplicate behavior, and cohort telemetry need retirement.
