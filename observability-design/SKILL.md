---
name: observability-design
description: Design decision-oriented observability for new or changing features, services, and multi-service workflows across business outcomes, service behavior, dependencies, infrastructure, and control paths. Use during feature or architecture design, before rollout, when adding metrics, logs, traces, events, dashboards, alerts, SLOs, or correlation context, or when a feature flag and release plan need explicit operational evidence. Use operational-feedback-audit instead to evaluate an already-running feedback system.
---

# Observability Design

Design the evidence and navigation that people and automation need to operate a change. Produce measurement contracts and decision paths, not a shopping list of telemetry.

## Preserve authority and data safety

- Design and recommend by default. Do not change production instrumentation, alerts, sampling, retention, routing, or access without explicit authorization.
- Identify personal, customer, security, financial, and regulated data before proposing logs, traces, exemplars, or high-cardinality dimensions.
- Name signal and response owners. Telemetry without an owned decision is unfinished design.
- Treat current dashboards and conventions as evidence, not automatically as correct requirements.

## Design workflow

1. **Define the promise and decisions.** State the user or caller outcome, important populations, service-level expectations, and the decisions telemetry must support: release, diagnosis, capacity, recovery, or product intervention.
2. **Map the execution paths.** Trace representative success, degraded, and failure paths across entry points, services, queues, jobs, stores, third parties, and control planes. Include partial completion and asynchronous delay.
3. **Write measurement contracts.** Give every required signal a stable, namespaced key and plain-language label, such as `OBS-settlement-age — Settlement completion age`. Define identity, owner, unit, population, event boundary, success and failure semantics, time window, aggregation, dimensions, expected-volume behavior, and what missing data means. Repeat both key and label whenever the contract is cited; never pass naked IDs.
4. **Layer the signals.** Separate feature or business outcome, service health, dependency behavior, resource or saturation evidence, and control-path health. Do not use infrastructure health as a proxy for customer success.
5. **Choose views by question.** Select metrics, distributions, traces, structured events, logs, profiles, topology, or audits according to the uncertainty each can resolve. State what each view cannot prove.
6. **Design correlation.** Propagate stable request, trace, job, message, tenant, release, version, and feature-exposure context where needed to reconstruct behavior. Preserve context across retries, fanout, queues, and scheduled work.
7. **Design operational navigation.** Create a small customer-proximate health entry surface, then define drill-down paths through affected slices, dependencies, recent changes, traces, logs, and ownership metadata.
8. **Design interruption and control.** Page only on user or service risk with an authorized recipient and plausible action. Route lower-urgency evidence elsewhere. Ensure observation, communication, credentials, disablement, and recovery controls survive the failure they govern.
9. **Supply release evidence.** Identify which named signals and missing-data rules inform baseline, cohort comparison, correctness, business, service, operational-load, and flag-retirement decisions. Leave exposure states and promotion, hold, or abort authority to `controlled-release-design`, and leave verification-method selection to `verification-strategy-design`.
10. **Plan verification and lifecycle.** Specify how instrumentation, semantics, privacy, cardinality, alert routing, and dashboards will be tested; name renewal triggers and retirement criteria for temporary signals.

Use [references/observability-design.md](references/observability-design.md) for system patterns and the design template.

## Quality gates

- Every signal supports a named decision, claim, or diagnostic question.
- Every signal reference repeats its plain-language label and traces to one owning contract.
- Feature outcomes, service health, dependencies, infrastructure, and control paths are distinguished.
- Signal semantics include population, denominator, time window, missing-volume behavior, and ownership.
- Cross-service and asynchronous paths carry enough context to reconstruct partial failure.
- The design includes ordinary, degraded, and failed behavior plus mixed release states where applicable.
- Alerts identify impact, owner, uncertainty, and first action without pretending to prove root cause.
- Privacy, security, cost, sampling, retention, and cardinality risks are explicit.
- Verification, rollout use, and telemetry retirement have owners and criteria.

## Reject observability theater

- Do not equate more logs, dashboards, or spans with better decisions.
- Do not make HTTP success, page rendering, CPU, or process uptime the sole feature-success measure.
- Do not add unbounded identifiers as metric labels.
- Do not require every symptom alert to name the exact cause.
- Do not instrument only the happy path or only one service in a distributed feature.
- Do not let the same failed domain host the only dashboard, flag control, credentials, or runbook needed for recovery.
- Do not claim the design works in operation; route that question to `operational-feedback-audit` after representative runtime evidence exists.
