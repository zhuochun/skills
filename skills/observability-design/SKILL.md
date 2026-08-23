---
name: observability-design
description: Design decision-oriented observability for new or changing features, services, and multi-service workflows across outcomes, behavior, dependencies, infrastructure, and control paths. Use before rollout or when adding signals, dashboards, alerts, SLOs, correlation, or release evidence. Use operational-feedback-audit to evaluate whether an already-running feedback system works in practice.
---

# Observability Design

Design the evidence and navigation needed to operate a change. Produce measurement contracts and decision paths, not a telemetry shopping list.

## Preserve authority and data safety

- Recommend by default; do not change production instrumentation, alerts, sampling, retention, routing, or access without authorization.
- Identify personal, customer, security, financial, and regulated data before proposing telemetry or high-cardinality dimensions.
- Name signal and response owners; telemetry without an owned decision is unfinished.
- Treat current dashboards and conventions as evidence, not requirements.

## Design workflow

1. **Define promise and decisions.** State the user or caller outcome, important populations, service expectations, and supported decisions: release, diagnosis, capacity, recovery, or product intervention.
2. **Map the execution paths.** Trace representative success, degraded, and failure paths across entry points, services, queues, jobs, stores, third parties, and control planes. Include partial completion and asynchronous delay.
3. **Write measurement contracts.** Give each signal a stable key and label; define owner, unit, population, event boundary, success and failure, window, aggregation, dimensions, expected volume, and missing-data meaning. Cite by key and label.
4. **Layer the signals.** Separate feature or business outcome, service health, dependency behavior, resource or saturation evidence, and control-path health. Do not use infrastructure health as a proxy for customer success.
5. **Choose views by question.** Select metrics, distributions, traces, structured events, logs, profiles, topology, or audits for the uncertainty they resolve; state what they cannot prove.
6. **Design correlation.** Propagate stable request, trace, job, message, tenant, release, version, and feature-exposure context where needed to reconstruct behavior. Preserve context across retries, fanout, queues, and scheduled work.
7. **Design navigation.** Start with a small customer-proximate health surface, then drill into affected slices, dependencies, recent changes, traces, logs, and owners.
8. **Design interruption and control.** Page only on user or service risk with an authorized recipient and plausible action. Route lower-urgency evidence elsewhere. Ensure observation, communication, credentials, disablement, and recovery controls survive the failure they govern.
9. **Supply release evidence.** Name signals and missing-data rules for baseline, cohorts, correctness, business, service, load, and flag retirement. Route exposure decisions to `controlled-release-design` and methods to `verification-strategy-design`.
10. **Plan lifecycle.** Specify tests for instrumentation, semantics, privacy, cardinality, routing, and dashboards; name renewal triggers and retirement criteria.

Read [references/observability-design.md](references/observability-design.md) only for multi-service or workload-specific signal patterns, or when producing a durable observability design.

## Quality gates

- Signals support named decisions and trace by key and label to one contract.
- Outcomes, service, dependencies, infrastructure, and controls stay distinct.
- Semantics cover population, denominator, window, missing volume, and owner.
- Cross-service paths reconstruct ordinary, degraded, failed, and mixed-release behavior.
- Multi-component execution or navigation includes the smallest self-contained text view linking outcomes, signals, dependencies, controls, and owners. Mark proposals and unknown paths; rendering is optional.
- Alerts name impact, owner, uncertainty, and first action without claiming cause.
- Data safety, cost, sampling, retention, cardinality, verification, rollout, and retirement are owned.

## Reject observability theater

- More telemetry is not better decisions; infrastructure health is not feature success.
- Reject unbounded metric labels and exact-cause requirements for symptom alerts.
- Cover failure and distributed paths; recovery controls must survive the failed domain.
- Design cannot prove effectiveness; route representative runtime evidence to `operational-feedback-audit`.
