---
name: architecture-surface-mapping
description: Rapidly map the critical purpose, semantic, code, interface, data, runtime, dependency, change, verification, observability, recovery, and ownership surfaces of an unfamiliar module, service, subsystem, platform, codebase, or end-to-end capability. Use when orienting to brownfield software, inheriting or operating a service, preparing a change or ownership handover, tracing an unfamiliar capability, or deciding what evidence is still needed before focused design or evaluation. Produce an evidence-ranked architecture orientation and next probes, not an architecture assessment, redesign, readiness score, or risk verdict.
---

# Architecture Surface Mapping

Build the smallest trustworthy map that lets an engineer navigate an unfamiliar software subject and ask the next correct question. Treat architecture as the lens, not a fixed level: the subject may be a module, service, subsystem, platform, codebase, or end-to-end capability. Optimize for decision readiness, not exhaustive documentation.

## Preserve scope and authority

- Inspect read-only by default. Do not change code, configuration, alerts, ownership, deployments, or production state unless explicitly authorized.
- Start with the user's immediate decision and time budget. Do not turn a feature check into an unbounded codebase study.
- Name the subject of orientation and its boundary. Mark a surface as not applicable, unknown, or outside scope rather than forcing every subject into a production-service template.
- Label evidence as observed, executable, declared, reported, or inferred. Record timestamps and disagreements instead of silently choosing one source.
- Do not declare the architecture fit, safe, ready, compliant, or transferable from orientation evidence alone. Do not rank improvement investments or propose a redesign before routing focused judgment to its owner.

## Mapping workflow

1. **Frame the orientation question.** State the subject, why it is being mapped, the decision to unblock, scope boundary, time horizon, relevant environments, and stop condition.
2. **Identify architectural purpose.** Describe the subject's responsibility or promise, users and callers, critical workflows, outputs, invariants or expectations, and explicitly unsupported behavior in domain language.
3. **Locate canonical entry points.** Find the applicable source roots, module or process boundaries, build and test commands, deploy units, runtime processes, endpoints, event subscriptions, scheduled jobs, configuration, schemas, and canonical documentation.
4. **Trace critical paths.** Follow at least one representative success path and the path relevant to the user's change or concern across calls, messages, jobs, stores, caches, third parties, and externally visible effects.
5. **Map authority and contracts.** Identify who owns each durable fact, write path, API or event contract, compatibility promise, security boundary, and irreversible effect.
6. **Reconcile declared, executable, and observed structure.** Compare diagrams and documentation with code, configuration, tests, build and deployment topology, traces, service graphs, traffic, queues, and recent incidents where applicable. Preserve latent paths that runtime samples may not exercise.
7. **Map operational surfaces where applicable.** Record customer-proximate health, diagnostic views, alerts, logs, traces, runbooks, capacity or overload signals, common failure modes, recovery controls, and whether responders can reach them under failure. For an in-process subject, trace how its failures and diagnostics surface through the containing runtime.
8. **Map change and verification surfaces.** Identify change history, build and release paths, flags, dynamic configuration, migrations, consumers, version skew, test and verification boundaries, rollback limits, and temporary compatibility machinery.
9. **Map ownership and support.** Record code, product, data, runtime, on-call, dependency, approval, and escalation ownership. Distinguish nominal ownership from demonstrated authority and access.
10. **Walk scenarios.** Rehearse one normal operation, one relevant change, and one failure or recovery scenario at the chosen scope. Use the walks to expose missing links, stale evidence, hidden coordination, and unsafe assumptions.
11. **Rank confidence and next probes.** Produce critical surfaces, contradictions, unknowns, immediate hazards, and the cheapest next observations or experts needed. Stop when the named decision can proceed to focused design or evaluation.

Use [references/architecture-surface-map.md](references/architecture-surface-map.md) for evidence ranking, scope-specific fast paths, and the orientation artifact.

## Quality gates

- The map is anchored to a concrete decision and stop condition.
- The subject and scope boundary are explicit; non-applicable surfaces are distinguished from unknown ones.
- At least one representative workflow crosses the applicable semantic, code, interface, data, runtime, and ownership boundaries.
- Declared, executable, reported, and observed evidence are reconciled rather than blended.
- Data authority, external effects, deployment/configuration controls, and rollback limits are visible.
- Health, diagnosis, recovery, and escalation entry points are findable at the containing operational level where applicable.
- Every important claim has evidence type, recency, confidence, and owner or next probe.
- Contradictions and unknowns remain explicit.
- The handoff names which focused skill or engineering activity should follow.

## Reject orientation theater

- Do not read every file before identifying the critical paths.
- Do not copy a repository tree, service catalog, or architecture diagram and call it current reality.
- Do not infer runtime topology, write authority, or operational ownership from repository layout alone.
- Do not convert a production-readiness checklist into unsupported pass/fail scoring.
- Do not rank architecture opportunities or recommend a redesign before establishing purpose and real execution paths.
- Do not mistake one quiet observation window for proof that rare, scheduled, or failure paths do not exist.
- Do not let a polished map conceal missing access, stale documentation, or disputed ownership.
