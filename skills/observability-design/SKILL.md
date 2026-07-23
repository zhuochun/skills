---
name: observability-design
description: Design decision-oriented observability for new or changing features, services, and multi-service workflows across outcomes, behavior, dependencies, infrastructure, and control paths. Use before rollout or when adding signals, dashboards, alerts, SLOs, correlation, or release evidence. Use operational-feedback-audit to evaluate whether an already-running feedback system works in practice.
---

# Observability Design

Design the evidence and navigation that people and automation need to operate a change. Produce measurement contracts and decision paths, not a shopping list of telemetry.

## Preserve authority and data safety

- Design and recommend by default. Do not change production instrumentation, alerts, sampling, retention, routing, or access without explicit authorization.
- Identify personal, customer, security, financial, and regulated data before proposing telemetry or high-cardinality dimensions.
- Name signal and response owners. Telemetry without an owned decision is unfinished design.
- Treat current dashboards and conventions as evidence, not automatically as correct requirements.

## Design workflow

1. **Define the promise and decisions.** State the user or caller outcome, important populations, service-level expectations, and the decisions telemetry must support: release, diagnosis, capacity, recovery, or product intervention.
2. **Map the execution paths.** Trace representative success, degraded, and failure paths across entry points, services, queues, jobs, stores, third parties, and control planes. Include partial completion and asynchronous delay.
3. **Write measurement contracts.** Give each signal a stable namespaced key and label. Define identity, owner, unit, population, event boundary, success and failure, window, aggregation, dimensions, expected volume, and missing-data meaning. Repeat key and label when cited.
4. **Layer the signals.** Separate feature or business outcome, service health, dependency behavior, resource or saturation evidence, and control-path health. Do not use infrastructure health as a proxy for customer success.
5. **Choose views by question.** Select metrics, distributions, traces, structured events, logs, profiles, topology, or audits according to the uncertainty each can resolve. State what each view cannot prove.
6. **Design correlation.** Propagate stable request, trace, job, message, tenant, release, version, and feature-exposure context where needed to reconstruct behavior. Preserve context across retries, fanout, queues, and scheduled work.
7. **Design operational navigation.** Create a small customer-proximate health entry surface, then define drill-down paths through affected slices, dependencies, recent changes, traces, logs, and ownership metadata.
8. **Design interruption and control.** Page only on user or service risk with an authorized recipient and plausible action. Route lower-urgency evidence elsewhere. Ensure observation, communication, credentials, disablement, and recovery controls survive the failure they govern.
9. **Supply release evidence.** Name signals and missing-data rules for baseline, cohorts, correctness, business, service, load, and flag retirement. Leave exposure decisions to `controlled-release-design` and methods to `verification-strategy-design`.
10. **Plan verification and lifecycle.** Specify how instrumentation, semantics, privacy, cardinality, alert routing, and dashboards will be tested; name renewal triggers and retirement criteria for temporary signals.

Read [references/observability-design.md](references/observability-design.md) only for multi-service or workload-specific signal patterns, or when producing a durable observability design.

## Quality gates

- Signals support named decisions and trace by key and label to one contract.
- Outcomes, service, dependencies, infrastructure, and controls stay distinct.
- Semantics cover population, denominator, window, missing volume, and owner.
- Cross-service paths reconstruct ordinary, degraded, failed, and mixed-release behavior.
- Alerts name impact, owner, uncertainty, and first action without claiming cause.
- Data safety, cost, sampling, retention, cardinality, verification, rollout, and retirement are owned.

## Reject observability theater

- More telemetry is not better decisions; infrastructure health alone is not feature success.
- Reject unbounded metric labels and exact-cause requirements for symptom alerts.
- Cover failure and distributed paths; recovery controls must survive the failed domain.
- Design cannot prove operational effectiveness; route representative runtime evidence to `operational-feedback-audit`.
