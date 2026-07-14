---
name: audit-operational-feedback
description: Audit whether service telemetry forms an effective operating feedback loop from customer promise through health orientation, diagnosis, ownership routing, recovery control, and post-incident learning. Use for observability reviews, service onboarding, dashboard or alert redesign, noisy paging, missing user-impact signals, slow incident ownership, stale service maps, or production-readiness assessments across request, event, batch, storage, and control-plane systems.
---

# Audit Operational Feedback

Evaluate whether telemetry helps people and automation make correct, timely decisions. Do not equate data collection or dashboard count with operational feedback.

## Preserve authority and data safety

- Audit and recommend by default. Do not change alerts, retention, sampling, routing, or production configuration without explicit authorization.
- Identify telemetry containing personal, customer, security, financial, or regulated data. Apply local access, minimization, retention, and redaction rules.
- Distinguish observed behavior from missing instrumentation. Do not interpret absence of a signal as proof of health.

## Audit workflow

1. **Define the service promise.** State what useful behavior callers or customers expect, who owns it, and which populations or workflows matter.
2. **Write measurement contracts.** For every key signal, name identity, unit, population, time window, success/failure semantics, missing-volume behavior, aggregation, and dimensions. Identify proxy metrics that can remain green while users are harmed.
3. **Evaluate the health entry surface.** Check whether a responder unfamiliar with the implementation can orient from a small, comparable set of customer-proximate signals before opening specialized diagnostics.
4. **Match diagnostic views to questions.** Verify that metrics, distributions, traces, logs, profiles, events, and resource views each answer a stated question. Check tails, recency, cardinality, and asynchronous delay where averages conceal behavior.
5. **Reconstruct runtime structure.** Compare declared dependencies with observed service graphs, request or job context, queues, retries, fanout, deployments, and ownership metadata.
6. **Audit human interruption.** Require each page to represent user or service risk, a distinct diagnostic region, an authorized recipient, and a plausible first action. Route lower-urgency evidence to tickets, reports, or dashboards.
7. **Evaluate alert context and routing.** Check impact, affected slice, owner, recovery state, recent changes, dependency evidence, uncertainty, and drill-down links. Do not require an alert to prove root cause.
8. **Test control-path independence.** Determine whether observation, identity, communication, runbooks, routing, credentials, abort controls, and cleanup remain available during the failures they govern.
9. **Close the learning loop.** Check whether incidents and near misses revise metrics, service metadata, alert rules, dashboards, runbooks, defaults, architecture, and readiness checks.

Use [references/operational-feedback-audit.md](references/operational-feedback-audit.md) for system-specific checks and the report template.

## Quality gates

- Tie the first health surface to a service promise rather than only host resources.
- Make signal semantics and missing-data behavior explicit.
- Trace at least one user-impact path from symptom to owner and control.
- Review the pager as a finite human-attention surface.
- Identify stale topology or metadata and its operational consequence.
- Test the observability and recovery control path against relevant failure domains.
- Connect findings to decisions, owners, and verification—not just more telemetry.

## Reject common anti-patterns

- More telemetry without a decision or owner.
- Lifetime averages for current incidents or hidden tail populations.
- Resource health presented as customer health.
- Exact-cause alarms that miss the wider failure class.
- Paging proxy teams because ownership metadata is absent.
- Dashboards and failover controls hosted only inside the impaired domain.
- Postmortem action items that add signals but never retire misleading ones.
