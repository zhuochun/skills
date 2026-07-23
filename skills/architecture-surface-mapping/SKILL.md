---
name: architecture-surface-mapping
description: Map the critical purpose, semantic, code, interface, data, runtime, dependency, change, verification, observability, recovery, and ownership surfaces of unfamiliar software. Use for brownfield orientation, service inheritance, change preparation, capability tracing, or ownership handover. Produce evidence-ranked navigation and next probes, not an assessment, redesign, readiness score, or risk verdict.
---

# Architecture Surface Mapping

Build the smallest trustworthy map that lets an engineer navigate an unfamiliar software subject and ask the next correct question. Treat architecture as the lens, not a fixed level: the subject may be a module, service, subsystem, platform, codebase, or end-to-end capability. Optimize for decision readiness, not exhaustive documentation.

## Preserve scope and authority

- Inspect read-only by default. Do not change code, configuration, alerts, ownership, deployments, or production state unless explicitly authorized.
- Start with the user's immediate decision and time budget. Do not turn a feature check into an unbounded codebase study.
- Name subject and boundary. Mark surfaces not applicable, unknown, or outside scope instead of forcing a service template.
- Label evidence as observed, executable, declared, reported, or inferred. Record timestamps and disagreements instead of silently choosing one source.
- Do not declare the architecture fit, safe, ready, compliant, or transferable from orientation evidence alone. Do not rank improvement investments or propose a redesign before routing focused judgment to its owner.

## Mapping workflow

1. **Frame orientation.** State subject, purpose, decision, scope, horizon, environments, and stop condition.
2. **Identify architectural purpose.** Describe the subject's responsibility or promise, users and callers, critical workflows, outputs, invariants or expectations, and explicitly unsupported behavior in domain language.
3. **Locate entry points.** Find source roots, module or process boundaries, build and test commands, deploy units, runtime processes, endpoints, subscriptions, jobs, configuration, schemas, and canonical docs.
4. **Trace critical paths.** Follow at least one representative success path and the path relevant to the user's change or concern across calls, messages, jobs, stores, caches, third parties, and externally visible effects.
5. **Map authority and contracts.** Identify who owns each durable fact, write path, API or event contract, compatibility promise, security boundary, and irreversible effect.
6. **Reconcile structure.** Compare docs with code, configuration, tests, build and deployment topology, traces, service graphs, traffic, queues, and incidents. Preserve latent paths absent from samples.
7. **Map operations where applicable.** Record customer health, diagnostics, alerts, logs, traces, runbooks, capacity, failures, recovery controls, and failure-time reachability. For in-process subjects, trace failure and diagnostics through the containing runtime.
8. **Map change and verification surfaces.** Identify change history, build and release paths, flags, dynamic configuration, migrations, consumers, version skew, test and verification boundaries, rollback limits, and temporary compatibility machinery.
9. **Map ownership and support.** Record code, product, data, runtime, on-call, dependency, approval, and escalation ownership. Distinguish nominal ownership from demonstrated authority and access.
10. **Walk scenarios.** Rehearse normal operation, relevant change, and failure or recovery to expose missing links, stale evidence, hidden coordination, and unsafe assumptions.
11. **Rank confidence and next probes.** Produce critical surfaces, contradictions, unknowns, immediate hazards, and the cheapest next observations or experts needed. Stop when the named decision can proceed to focused design or evaluation.

Read [references/architecture-surface-map.md](references/architecture-surface-map.md) only when a scope-specific fast path, evidence-ranking rubric, scenario-walk form, or durable map is needed, or focused follow-up ownership is unclear.

## Quality gates

- A concrete decision and stop condition anchor explicit subject and scope.
- A workflow crosses applicable semantic, code, interface, data, runtime, and ownership boundaries.
- Declared, executable, reported, and observed evidence are reconciled.
- Data authority, effects, controls, rollback, health, diagnosis, recovery, and escalation are findable where applicable.
- Important claims retain evidence type, recency, confidence, and either an owner or next probe.
- Contradictions and unknowns stay explicit; handoff names focused follow-up.

## Reject orientation theater

- Identify critical paths before broad reading; trees, catalogs, and diagrams are not current reality.
- Repository layout does not prove runtime, write authority, or ownership.
- Orientation does not justify readiness scoring, opportunity ranking, or redesign.
- Quiet windows do not disprove rare or failure paths.
- Polish must not conceal missing access, stale docs, or disputed ownership.
