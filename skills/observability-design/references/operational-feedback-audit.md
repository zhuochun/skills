# Operational Feedback Audit Reference

## Choose the health shape by system type

### Request/response service

Start with demand, unsuccessful or degraded outcomes, latency distributions, and business success. Break out ownership-relevant routes, clients, tenants, dependencies, and releases.

### Event, queue, or stream system

Include accepted versus completed work, end-to-end age, backlog, redelivery, poison or dead-letter traffic, ordering or duplication effects, and downstream usefulness. A healthy consumer process does not prove timely business completion.

### Batch or scheduled job

Include expected starts, completion by deadline, freshness, coverage, partial output, retries, and downstream availability. Missing execution must not look like zero errors.

### Storage or data service

Include successful operations, latency by operation class, correctness or durability indicators, replication/recovery state, capacity and saturation, and customer-visible data completeness.

### Control plane or reconciler

Include desired-versus-observed convergence, queue age, reconciliation failures, stale authority, propagation lag, and the health of the independent control path.

### Agent or tool-using system

Audit control activation, execution trajectory, artifact or output result, and customer or business outcome semantics. Check whether traces localize recurring failures to model, context, prompt, tool, router, policy, or harness ownership. Check whether reviewed production failures update the owned evaluation or regression surface, fallback rules, or staged-authority decisions. Report missing links; do not design or certify the evaluation suite inside this audit.

## Contract recovery and conformance

| Signal key and label | Intended contract and source | Deployed or inferred semantics | Runtime counterexample or deviation | Decision consequence | Required design delta and owner |
| --- | --- | --- | --- | --- | --- | --- |

Recover the contract from the observability design, code, telemetry configuration, dashboards, alert queries, and owner accounts. Keep intended, deployed, observed, and inferred meanings distinct. If no intended contract exists, record that absence; do not create a normative replacement inside the audit.

Ask whether each aggregate can hide a customer cohort, route, region, dependency, tail, or collapsed denominator. Preserve the concrete incident, query, page, or decision that falsified the contract, then route the required delta to `observability-design`.

When callers disagree with central health, compare client-to-target observations for the same operation and time window. Failures concentrated on one target, one observer, or selected pairs suggest different service, client, or path investigations; they do not establish cause. Check whether failed requests also prevent telemetry delivery, making the missing observations systematically optimistic.

## Human-alarm gate

Require a credible answer to every question:

- What service promise or imminent risk is represented?
- Does this condition require action now?
- Who is both responsible and authorized to act?
- What is the first safe action or diagnostic region?
- Does another alarm already cover the same failure class?
- Should this be a page, ticket, report, dashboard, or machine-consumed signal?
- What uncertainty must remain visible?

## Runtime reconstruction

Trace one affected request, event, or job through:

- entry and correlation identity;
- synchronous dependencies and retries;
- queues, fanout, scheduled work, and delayed effects;
- data stores, caches, and third parties;
- deployment and configuration changes;
- owning teams and escalation paths.

## Report

1. Service promise, populations, and ownership
2. Current health entry surface
3. Measurement-contract conformance, counterexamples, and required design deltas
4. Diagnostic-view and runtime-context gaps
5. Alarm portfolio and routing findings
6. Control-path dependencies and failure-domain risks
7. Learning-loop and governance gaps
8. Prioritized changes with owner, expected decision improvement, cost, and verification
9. Signals or dashboards to retire
10. Unknowns and evidence needed
