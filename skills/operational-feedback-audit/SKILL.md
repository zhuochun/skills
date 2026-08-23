---
name: operational-feedback-audit
description: Audit whether service telemetry forms an effective operating loop from customer promise through health orientation, diagnosis, ownership routing, recovery control, and learning. Use for observability reviews, service onboarding, dashboard or alert redesign, noisy paging, missing user-impact signals, slow ownership, stale service maps, or production-readiness assessment across common workload types.
---

# Operational Feedback Audit

Evaluate whether telemetry helps people and automation make correct, timely decisions. Do not equate data collection or dashboard count with operational feedback.

## Preserve authority and data safety

- Audit and recommend by default. Do not change alerts, retention, sampling, routing, or production configuration without explicit authorization.
- Apply local access, minimization, retention, and redaction to personal, customer, security, financial, or regulated telemetry.
- Distinguish observed behavior from missing instrumentation. Do not interpret absence of a signal as proof of health.

## Audit workflow

1. **Define the service promise.** State what useful behavior callers or customers expect, who owns it, and which populations or workflows matter.
2. **Test measurement contracts.** Reconstruct each key signal's identity, unit, population, window, success and failure, missing volume, aggregation, dimensions, and owner. Missing contracts, semantic mismatch, or untraceable signals are findings; do not invent replacements.
3. **Evaluate the health entry surface.** Check whether a responder unfamiliar with the implementation can orient from a small, comparable set of customer-proximate signals before opening specialized diagnostics.
4. **Match views to questions.** Verify that metrics, distributions, traces, logs, profiles, events, and resources answer stated questions. Check tails, recency, cardinality, and asynchronous delay.
5. **Reconstruct runtime structure.** Compare declared dependencies with observed service graphs, request or job context, queues, retries, fanout, deployments, and ownership metadata.
6. **Audit interruption.** Each page needs user or service risk, a diagnostic region, authorized recipient, and plausible first action. Route lower urgency elsewhere.
7. **Evaluate alert context and routing.** Check impact, affected slice, owner, recovery state, recent changes, dependency evidence, uncertainty, and drill-down links. Do not require an alert to prove root cause.
8. **Test control-path independence.** Determine whether observation, identity, communication, runbooks, routing, credentials, abort controls, and cleanup remain available during the failures they govern.
9. **Close the learning loop.** Check whether incidents and near misses revise metrics, service metadata, alert rules, dashboards, runbooks, defaults, architecture, and readiness checks.

Read [references/operational-feedback-audit.md](references/operational-feedback-audit.md) only when the audit needs system-specific health shapes, signal-conformance or human-alarm checks, runtime reconstruction, or a formal report.

## Quality gates

- Anchor health to service promise with explicit signal and missing-data semantics.
- Distinguish intended, deployed, observed, and inferred meaning; preserve counterexamples.
- When the operating loop spans several components or owners, include the smallest self-contained text comparison of declared and observed paths from promise through signal, diagnosis, routing, control, and learning. Keep missing links explicit rather than inventing replacements.
- Trace user impact to owner and control; treat paging as finite attention.
- Name stale topology consequences and test recovery controls against failure domains.
- Findings connect to decisions, owners, and verification, not telemetry volume.

## Reject common anti-patterns

- Reject ownerless telemetry, lifetime averages for current tails, and resource health as customer health.
- Exact-cause alarms may miss the class; absent metadata does not justify paging proxies.
- Dashboards and controls must survive the impaired domain.
- Retire misleading signals; report contract defects and route design deltas to `observability-design`.
