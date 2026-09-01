---
name: architecture-surface-mapping
description: Orient across multiple architecture surfaces of unfamiliar software or trace one bounded end-to-end journey across experience, operations, domain state, systems, data, interfaces, and owners. Use when a decision depends on cross-surface relationships or expected and observed paths disagree. Keep simple lookups direct; route architecture judgment, product discovery, and redesign elsewhere.
---

# Architecture Surface Mapping

Build the smallest trustworthy map needed for the next decision. The subject may be a module, service, subsystem, platform, codebase, or end-to-end capability; avoid exhaustive documentation.

## Choose depth

- When one discoverable owner, file, symbol, command, call path, or test answers the request, perform only that lookup; do not produce a map or load the reference.
- Continue to the mapping workflow only when the decision depends on relationships across multiple applicable surfaces or when the relevant path or authority remains unclear.

## Use a cross-view journey when the path is the subject

When the request centers on one actor-visible outcome rather than broad
orientation, use the same evidence model with a stable journey spine:

- Name the mode as **supplied**, **recovered**, **expected**, or **comparison**.
  Expected paths remain proposed unless an accountable source accepted them.
- Bound the journey by primary actor, starting trigger and state, observable
  completion, audience, and the question the walkthrough must answer.
- Number material steps. Use stable `JNY-*` keys and recheckable `EVD-*`
  evidence only when several representations must align, expected and observed
  paths are compared, or a durable or consequential trace will be reused.
- At each step, connect only applicable experience touchpoints, operational
  work, domain transition, system interaction, data or effect authority,
  interface, owner, visible result, and resulting state. Mark absent views
  rather than inventing them.
- Preserve waiting, retry, duplicate delivery, partial completion, manual
  intervention, cancellation, compensation, and recovery when they change
  what participants can observe or do.
- Route customer need or value to `product-opportunity-discovery`, disputed
  meaning to `domain-modeling`, boundary or contract decisions to their design
  owner, architecture fitness to `architecture-risk-evaluation`, and runnable
  experiments to `prototype-to-learn`.
- Route migration states, authority transfer, and cutover behavior to
  `migration-planning`; leave operating and recovery policy with its
  accountable owner. Do not use one bounded journey to decide
  alternative-futures scenarios.

Read
[references/cross-view-journey-artifacts.md](references/cross-view-journey-artifacts.md)
when producing a matrix, diagram, durable expected-versus-observed overlay, or
facilitated walkthrough.

## Preserve scope and authority

- Inspect read-only by default. Do not change code, configuration, alerts, ownership, deployments, or production state unless explicitly authorized.
- Start with the immediate decision and time budget; do not turn a feature check into an unbounded study.
- Name subject and boundary. Mark surfaces not applicable, unknown, or outside scope instead of forcing a service template.
- Label evidence observed, executable, declared, reported, or inferred; record recency and disagreements. Trace ownership and live state to actual authority, not placement or naming.
- Do not declare the architecture fit, safe, ready, compliant, or transferable from orientation evidence alone. Do not rank improvement investments or propose a redesign before routing focused judgment to its owner.

## Mapping workflow

1. **Frame orientation.** State subject, purpose, decision, scope, horizon, environments, and stop condition.
2. **Identify architectural purpose.** Describe the subject's responsibility or promise, users and callers, critical workflows, outputs, invariants or expectations, and explicitly unsupported behavior in domain language.
3. **Locate entry points.** Find source roots, boundaries, build/test commands, deploy units, processes, endpoints, subscriptions, jobs, configuration, schemas, and canonical docs.
4. **Trace critical paths.** Follow at least one representative success path and the path relevant to the user's change or concern through its consumer-visible outcome. At each boundary, preserve decision-relevant inputs, outputs, filters, gates, authority or durable-state changes, and external effects. At a runtime or library boundary, record scheduling, cancellation, resource ownership, isolation, backpressure, or introspection semantics only when they change the path.
5. **Map authority and contracts.** Identify who owns each durable fact, write path, API or event contract, compatibility promise, security boundary, and irreversible effect.
6. **Reconcile structure.** Compare docs with code, configuration, tests, topology, traces, traffic, queues, and incidents. Preserve latent paths absent from samples.
7. **Map operations where applicable.** Record customer health, diagnostics, alerts, logs, traces, runbooks, capacity, failures, recovery controls, and failure-time reachability. For in-process subjects, trace failure and diagnostics through the containing runtime.
8. **Map change and verification surfaces.** Identify change history, build and release paths, flags, dynamic configuration, migrations, consumers, version skew, test and verification boundaries, rollback limits, and temporary compatibility machinery.
9. **Map ownership and support.** Record code, product, data, runtime, on-call, dependency, approval, and escalation ownership. Distinguish nominal ownership from demonstrated authority and access.
10. **Close scenario paths.** Walk normal and decision-changing change, degraded, failure, or recovery paths to the next usable state or explicit unknown. Include derived state and controls only when consequential.
11. **Challenge coverage and rank next probes.** Distinguish a verified absence from a surface that was not inspected. Turn only gaps that can change the named decision into explicit unknowns and the cheapest next observations or experts. Stop when the decision can proceed to focused design or evaluation.

Read [references/architecture-surface-map.md](references/architecture-surface-map.md) only when a scope-specific fast path, evidence-ranking rubric, scenario-walk form, or durable map is needed, or focused follow-up ownership is unclear.

## Map quality gates

- A concrete decision and stop condition anchor explicit subject and scope.
- A workflow crosses applicable semantic, code, interface, data, runtime, and ownership boundaries.
- Declared, executable, reported, and observed evidence are reconciled.
- Each critical path reaches its consumer-visible outcome and next usable state. Runtime or resource semantics and cross-layer controls stay visible when they change completion, containment, or recovery.
- Material cross-surface relationships require the smallest self-contained text map or flow; rendering may supplement, never replace it.
- Important claims retain evidence type, recency, confidence, and either an owner or next probe.
- Contradictions and uninspected decision-relevant surfaces stay explicit. A health or absence claim names the exercised path, observer, and coverage evidence. Handoff names focused follow-up without adding irrelevant inventory.
- A cross-view journey keeps consistent steps across narrative, lanes, diagrams,
  and branches; data and effect authority remain distinct from transport,
  touchpoint, and screen ownership.

## Reject orientation theater

- Identify critical paths before broad reading; trees, catalogs, and diagrams are not current reality.
- Repository layout does not prove runtime, write authority, or ownership.
- Orientation does not justify readiness scoring, opportunity ranking, or redesign.
- A polished happy path does not validate customer value, domain meaning,
  system correctness, architecture quality, or operational readiness.
- Quiet windows do not disprove rare or failure paths.
- Polish must not conceal missing access, stale docs, or disputed ownership.
