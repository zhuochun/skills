# Observability Design Reference

Use only the sections relevant to the system and decision.

## Design artifact

### 1. Promise and decision frame

- Feature or service promise:
- Important workflows and populations:
- Expected volume and timing:
- Owners and responders:
- Decisions telemetry must support:
- Explicitly out of scope:

### 2. Execution-path map

For each representative path, record:

| Step | Component or owner | Input and output | Sync, async, or batch | Failure or partial-completion behavior | Correlation carried |
| --- | --- | --- | --- | --- | --- |

Include the customer entry point, authoritative write, queue or scheduler, important dependency, externally visible effect, and recovery control when present.

### 3. Measurement contracts

| Signal | Layer | Decision or claim | Unit and population | Success/failure semantics | Window and aggregation | Dimensions | Missing data means | Owner |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |

Useful layers:

- **Outcome:** customer, caller, or business result; include opposing metrics that expose gaming or hollow success.
- **Service:** rate, errors, latency, success, work completion, freshness, or backlog appropriate to the workload.
- **Dependency:** caller- and server-side behavior, timeout, retry, rejection, circuit, and version evidence.
- **Resource:** utilization, saturation, exhaustion, queueing, and headroom used to explain service behavior.
- **Control:** telemetry pipeline, identity, routing, flag service, deploy system, rollback, credentials, and runbook availability.

### 4. Navigation and interruption

Define:

1. the first health view an unfamiliar responder opens;
2. the affected-population and release/cohort slices;
3. links into traces, logs, events, profiles, topology, and recent changes;
4. the owner and escalation route;
5. which conditions page, create a ticket, annotate a release, or remain exploratory.

For every page, record the user or service risk, distinct diagnostic region, authorized recipient, first action, suppression or grouping behavior, and recovery signal.

### 5. Verification and release use

| Claim | Pre-release check | Runtime evidence | Baseline or comparator | Hold/abort threshold | Evidence owner |
| --- | --- | --- | --- | --- | --- |

Verify emission, semantics, expected-volume behavior, trace continuity, label cardinality, redaction, retention, dashboard queries, alert routing, links, and control-path reachability. A synthetic event can verify plumbing; it does not prove production representativeness.

## Multi-service feature rules

- Define one end-to-end outcome contract before adding per-service diagnostics.
- Make one component authoritative for exposure assignment where inconsistent cohort decisions would break behavior; propagate the assignment rather than reevaluating it independently.
- Attach release, version, and exposure context at the entry point and preserve it across calls, messages, retries, jobs, and writes.
- Observe mixed-version combinations, partial completion, fanout amplification, retry multiplication, duplicate effects, and delayed consumers.
- Keep component dashboards, but provide an end-to-end path that does not require responders to guess the service order.

## Workload-specific prompts

### Request/response

Observe request rate, success/error semantics, latency distributions, caller and route, dependency timeouts/retries, payload classes, and end-to-end trace continuity.

### Event and queue

Observe accepted, published, delivered, processed, rejected, duplicated, expired, and dead-lettered work; queue age and depth; producer/consumer lag; retry age; ordering key; and correlation across redelivery.

### Batch and scheduled work

Observe scheduled, started, completed, partially completed, skipped, stale, and late work; input/output counts; checkpoint age; critical stage duration; and safe restart behavior.

### Data and external effects

Observe authoritative writes, conflicts, repair, divergence, idempotency, irreversible messages or money movement, audit access, and the delay between acceptance and durable effect.

### Control plane

Observe desired versus applied state, propagation delay, stale agents, rejected updates, partial rollout, credential or identity failure, and the availability of disablement and recovery controls.

## Design boundary

This artifact says what evidence and navigation should exist. It does not certify that responders use it correctly or that incidents become visible. After representative operation, use `operational-feedback-audit` to test the live signal-to-decision-to-action loop and feed findings back into this design.
