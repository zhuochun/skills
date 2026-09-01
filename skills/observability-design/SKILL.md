---
name: observability-design
description: Design or audit decision-oriented observability across outcomes, behavior, dependencies, infrastructure, ownership, and control paths. Use before rollout for signals, dashboards, alerts, SLOs, correlation, or release evidence, and after representative operation to test whether telemetry supports orientation, diagnosis, routing, recovery, and learning. Exclude live incident command and verification verdicts.
---

# Observability Design

Design the evidence and navigation needed to operate a change, or audit whether
the deployed signal-to-decision-to-action loop works. Produce measurement
contracts and runtime counterexamples, not a telemetry shopping list.

## Preserve authority and data safety

- Recommend by default; do not change production instrumentation, alerts, sampling, retention, routing, or access without authorization.
- Identify personal, customer, security, financial, and regulated data before
  proposing, querying, copying, retaining, or reporting telemetry. During audit
  and output, apply local access, minimization, retention, and redaction
  requirements.
- Name signal and response owners; telemetry without an owned decision is unfinished.
- Treat current dashboards and conventions as evidence, not requirements.

## Design prospective observability

1. **Define promise and decisions.** State the user or caller outcome, important populations, service expectations, and supported decisions: release, diagnosis, capacity, recovery, or product intervention.
2. **Map the execution paths.** Trace representative success, degraded, and failure paths across entry points, services, queues, jobs, stores, third parties, and control planes. Include partial completion and asynchronous delay.
3. **Write measurement contracts.** Give each signal a stable key and label; define owner, unit, population, event boundary, success and failure, window, aggregation, dimensions, expected volume, and missing-data meaning. Cite by key and label.
4. **Layer the signals.** Separate feature or business outcome, service health, dependency behavior, resource or saturation evidence, and control-path health. Do not use infrastructure health as a proxy for customer success.
5. **Choose views by question.** Select metrics, distributions, traces, structured events, logs, profiles, topology, or audits for the uncertainty they resolve; state what they cannot prove.
6. **Design correlation.** Propagate stable request, trace, job, message, tenant, release, version, and feature-exposure context where needed to reconstruct behavior. Preserve context across retries, fanout, queues, and scheduled work.
7. **Design navigation.** Start with a small customer-proximate health surface, then drill into affected slices, dependencies, recent changes, traces, logs, and owners.
8. **Design interruption and control.** Page only on user or service risk with an authorized recipient and plausible action. Route lower-urgency evidence elsewhere. Ensure observation, communication, credentials, disablement, and recovery controls survive the failure they govern.
9. **Supply release evidence.** Name signals and missing-data rules for baseline, cohorts, correctness, business, service, load, and flag retirement. Route exposure decisions to `controlled-release-design` and methods and oracles to `software-verification`.
10. **Plan lifecycle.** Specify tests for instrumentation, semantics, privacy, cardinality, routing, and dashboards; name renewal triggers and retirement criteria.

Read [references/observability-design.md](references/observability-design.md) only for multi-service or workload-specific signal patterns, or when producing a durable observability design.

## Audit operational feedback

Use audit mode only after representative operation or when current telemetry,
paging, diagnosis, routing, or recovery behavior is the subject.

1. **Recover the promise and contract.** Reconstruct intended signal identity,
   unit, population, window, success and failure, missing volume, aggregation,
   dimensions, decision, and owner. Missing contracts are findings; do not
   invent and certify replacements inside the audit.
2. **Test health orientation.** Check whether an unfamiliar responder can
   start from a small customer-proximate surface and reach affected slices,
   dependencies, recent changes, evidence, and owners.
3. **Compare deployed and observed meaning.** Preserve runtime counterexamples,
   stale topology, hidden asynchronous delay, retry or fanout behavior, and
   collapsed cohorts. Distinguish intended, deployed, observed, and inferred
   semantics.
4. **Audit interruption and routing.** Require each page to represent current
   user or service risk, an authorized recipient, a useful diagnostic region,
   and a plausible first action. Route lower urgency elsewhere.
5. **Test control-path independence.** Check whether observation, identity,
   communication, credentials, disablement, recovery, cleanup, and ownership
   routing survive the failures they govern.
6. **Close the learning loop.** Determine whether incidents and near misses
   revise contracts, alerts, service metadata, dashboards, runbooks, defaults,
   verification cases, architecture, or readiness checks.
7. **Return owned deltas.** Prioritize contract defects, runtime
   counterexamples, misleading signals to retire, design changes, owners, and
   verification needs. Audit findings do not approve their own replacement.

Read
[references/operational-feedback-audit.md](references/operational-feedback-audit.md)
for system-specific health shapes, signal conformance, human-alarm checks,
runtime reconstruction, or a formal audit report.

## Quality gates

- Signals support named decisions and trace by key and label to one contract.
- Outcomes, service, dependencies, infrastructure, and controls stay distinct.
- Semantics cover population, denominator, window, missing volume, and owner.
- Cross-service paths reconstruct ordinary, degraded, failed, and mixed-release behavior.
- Multi-component execution or navigation includes the smallest self-contained text view linking outcomes, signals, dependencies, controls, and owners. Mark proposals and unknown paths; rendering is optional.
- Alerts name impact, owner, uncertainty, and first action without claiming cause.
- Data safety, cost, sampling, retention, cardinality, verification, rollout, and retirement are owned.
- Audit mode preserves contract absence and concrete runtime counterexamples,
  and routes each accepted delta to its design, verification, or operating owner.

## Reject observability theater

- More telemetry is not better decisions; infrastructure health is not feature success.
- Reject unbounded metric labels and exact-cause requirements for symptom alerts.
- Cover failure and distributed paths; recovery controls must survive the failed domain.
- Prospective design cannot prove live effectiveness; audit representative
  operation before claiming that responders can detect, diagnose, route, or
  recover correctly.
