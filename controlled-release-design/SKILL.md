---
name: controlled-release-design
description: Design feature flags, staged exposure, dark launches, canaries, cohort rollouts, kill switches, and release evidence for new or changing behavior, including features spanning multiple services. Use when deployment must be separated from user exposure, a team needs business, service, and infrastructure guardrails, or release control, mixed-version behavior, abort, ownership, and flag cleanup must be explicit. Use high-risk-change-planning for the larger migration or irreversible transition plan.
---

# Controlled Release Design

Turn release from a binary event into governed exposure with observable outcomes, bounded populations, safe controls, and a defined end to temporary machinery.

## Preserve authority

- Design the release mechanism and plan by default. Do not create flags, expose cohorts, replay traffic, deploy, change production configuration, or abort a release without explicit authorization.
- Identify the product decision owner, technical owner, operator, observer, approver where required, and cleanup owner.
- Apply privacy, fairness, security, contractual, and regulatory constraints to cohort selection and telemetry.
- Treat a flag as control over future execution, not automatic reversal of effects that already escaped.

## Design workflow

1. **Define the release contract.** State the behavior, eligible population, excluded populations, success outcomes, acceptable harm, exposure unit, duration, and distinction between deployment, availability, experiment assignment, and permanent enablement.
2. **Classify effects and reversibility.** Identify reads, writes, schema or contract changes, messages, money movement, notifications, security decisions, and other effects that disablement cannot undo. Define compensation or fail-forward where rollback is false.
3. **Choose the control topology.** Decide where exposure is assigned and enforced. Prefer one authoritative assignment propagated across services when independent evaluation could create inconsistent behavior; add local gates only for genuinely local controls.
4. **Specify flag semantics.** Define states, defaults, targeting rules, precedence, propagation delay, cache behavior, unavailable-control behavior, authorization, audit, owner, expiry, and whether clients can observe or influence assignment.
5. **Design coexistence.** State valid old, mixed, and new producer/consumer combinations, data authority, retries, duplicate execution, delayed work, and compatibility. Use additive contracts or shadow paths where needed.
6. **Select exposure steps.** Choose internal users, shadow traffic, opt-in tenants, representative cohorts, regional or cell slices, percentage ramps, or other units based on what isolates consequence and produces useful evidence.
7. **Define evidence.** Pair customer or business outcomes with correctness invariants, service health, dependency behavior, capacity, operational load, and control health. Specify denominators, baselines, comparison windows, important slices, and uncertainty.
8. **Write phase contracts.** Give each phase entry criteria, action, observation window, success, hold, abort, recovery, communication, and owner. Promotion must be a decision based on evidence, not elapsed time alone.
9. **Design retreat.** Define stop-exposure, kill-switch, rollback, traffic reduction, fail-forward, repair, or compensation paths. Verify that control, observation, credentials, and communications remain available during the targeted failure.
10. **Plan completion.** Define full-adoption evidence, flag and branch removal, stale-client handling, metric and dashboard retirement, documentation updates, deadline, and cleanup verification.

Use [references/controlled-release-design.md](references/controlled-release-design.md) for control patterns and the release contract template.

## Quality gates

- Deployment, exposure, experiment assignment, and permanent enablement are not conflated.
- Exposure has one explicit unit and authoritative assignment model.
- Old, mixed, and new behavior is defined across every affected service and durable effect.
- Irreversible effects and compensations are explicit.
- Every phase has entry, success, hold, abort, observation, and ownership criteria.
- Business outcomes, correctness, service health, infrastructure, and control health are all considered.
- Abort controls are reachable, authorized, audited, and independent enough for the failure class.
- The flag and temporary code have expiry, removal criteria, owner, and verification.

## Reject flag theater

- Do not add a flag without a decision it controls and evidence that changes that decision.
- Do not let each service independently hash or target the same user when consistency matters.
- Do not call disablement rollback after data, messages, money, or external effects escaped.
- Do not ramp only by percentage when one tenant, region, workflow, or dependency dominates risk.
- Do not promote because the observation window ended while traffic was absent or evidence was missing.
- Do not make the flag service, dashboard, or kill switch depend solely on the impaired path.
- Do not leave permanent flags, duplicate behavior, or cohort-specific telemetry without a retirement decision.
