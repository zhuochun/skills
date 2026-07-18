---
name: service-surface-mapping
description: Rapidly map the critical product, code, runtime, data, dependency, change, observability, recovery, and ownership surfaces of an unfamiliar or brownfield service. Use when inheriting a service, joining on-call, preparing an ownership handover, orienting before a feature change or incident review, or deciding what evidence is still needed to judge change safety. Produce an evidence-ranked orientation map and next probes, not a full architecture, readiness, or risk verdict.
---

# Service Surface Mapping

Build the smallest trustworthy map that lets an engineer navigate an unfamiliar service and ask the next correct question. Optimize for decision readiness, not exhaustive documentation.

## Preserve scope and authority

- Inspect read-only by default. Do not change code, configuration, alerts, ownership, deployments, or production state unless explicitly authorized.
- Start with the user's immediate decision and time budget. Do not turn a feature check into an unbounded codebase study.
- Label evidence as observed, executable, declared, reported, or inferred. Record timestamps and disagreements instead of silently choosing one source.
- Do not declare a service safe, ready, compliant, or transferable from orientation evidence alone. Route focused judgments to the appropriate skill.

## Mapping workflow

1. **Frame the orientation question.** State why the service is being mapped, the decision to unblock, time horizon, production environments, and stop condition.
2. **Identify the service promise.** Describe users or callers, critical workflows, outputs, SLOs or expectations, important populations, and explicitly unsupported behavior in domain language.
3. **Locate canonical entry points.** Find source repositories, build and test commands, deploy units, runtime processes, endpoints, event subscriptions, scheduled jobs, configuration, schemas, and canonical documentation.
4. **Trace critical paths.** Follow at least one representative success path and the path relevant to the user's change or concern across calls, messages, jobs, stores, caches, third parties, and externally visible effects.
5. **Map authority and contracts.** Identify who owns each durable fact, write path, API or event contract, compatibility promise, security boundary, and irreversible effect.
6. **Reconcile runtime reality.** Compare declared diagrams and dependencies with traces, service graphs, traffic, deployments, feature configuration, queues, and recent incidents. Preserve latent code paths that runtime samples may not exercise.
7. **Map operational surfaces.** Record customer-proximate health, diagnostic views, alerts, logs, traces, runbooks, capacity or overload signals, common failure modes, recovery controls, and whether responders can reach them under failure.
8. **Map change surfaces.** Identify release process, flags, dynamic configuration, migrations, consumers, version skew, recent changes, test boundaries, rollback limits, and temporary compatibility machinery.
9. **Map ownership and support.** Record code, product, data, runtime, on-call, dependency, approval, and escalation ownership. Distinguish nominal ownership from demonstrated authority and access.
10. **Walk scenarios.** Rehearse one normal operation, one relevant change, and one failure or recovery scenario. Use the walk to expose missing links, stale evidence, hidden coordination, and unsafe assumptions.
11. **Rank confidence and next probes.** Produce critical surfaces, contradictions, unknowns, immediate hazards, and the cheapest next observations or experts needed. Stop when the named decision can proceed to focused design or evaluation.

Use [references/service-surface-map.md](references/service-surface-map.md) for evidence ranking, fast paths, and the orientation artifact.

## Quality gates

- The map is anchored to a concrete decision and stop condition.
- At least one end-to-end workflow crosses code, runtime, data, and ownership where applicable.
- Declared and observed dependencies are compared rather than blended.
- Data authority, external effects, deployment/configuration controls, and rollback limits are visible.
- Health, diagnosis, alerting, recovery, and escalation entry points are findable by an unfamiliar engineer.
- Every important claim has evidence type, recency, confidence, and owner or next probe.
- Contradictions and unknowns remain explicit.
- The handoff names which focused skill or engineering activity should follow.

## Reject orientation theater

- Do not read every file before identifying the critical paths.
- Do not copy a service catalog or architecture diagram and call it current reality.
- Do not infer runtime topology, write authority, or operational ownership from repository layout alone.
- Do not convert a production-readiness checklist into unsupported pass/fail scoring.
- Do not recommend a redesign before establishing the service promise and real execution paths.
- Do not mistake one quiet observation window for proof that rare, scheduled, or failure paths do not exist.
- Do not let a polished map conceal missing access, stale documentation, or disputed ownership.
