---
name: deep-module-design
description: Decide whether to retain or redesign a software module or interface before implementation. Use when a request asks where a seam belongs, whether duplication should gain one owner, how to deepen a shallow abstraction, make dependencies testable, or add a new variant without leaking policy. Do not use for an accepted implementation or behavior-preserving refactor.
---

# Deep Module Design

Design boundaries that hide consequential knowledge and bound reasoning. Prefer composition when behavior should grow through combinations. Retain the current boundary when it localizes demonstrated pressure or the horizon cannot justify more structure.

## Use precise terms

- **Module:** A responsibility with interface and implementation, not necessarily a class, package, process, or phase.
- **Interface:** What callers must know, including behavior, failures, performance, and lifecycle.
- **Seam:** Where behavior or implementation can vary without editing callers.
- **Hidden decision:** Owned representation, order, algorithm, resource, policy, or lifecycle.
- **Depth:** Hidden useful behavior and complexity per unit of interface burden.
- **Locality:** One meaningful change understood, implemented, and verified in one place.
- **Design horizon:** Lifetime, consumer spread, compatibility exposure, consequence, and reversal cost.

Keep module, bounded context, vertical slice, deployable service, data owner, failure domain, and team boundary distinct unless evidence says they align.

## Compose proportionately

Work read-only. Consume supplied pressure, commitments, specification, assurance, and question. Label material claims **confirmed**, **inferred**, **assumed**, **proposed**, or **unresolved**. Return a retain-or-redesign decision, ownership/interface, material alternative, preserved commitments, rejection gates, implementation implication, invalidated assumptions, and revisit signals. With no demonstrated pressure, explain the adequate current boundary and stop. Reopen only for contradiction or materially different safety, compatibility, data, lifecycle, operations, or migration.

Route disputed meaning to `domain-modeling`; deployment, data authority, failure isolation, or operating ownership to `service-boundary-design`; independent contract coexistence and retirement to `software-contract-evolution`; and a disposable runnable question to `prototype-to-learn`. After acceptance, route structure-only execution to `behavior-preserving-refactoring`, ambiguous behavior to `software-change-specification`, and ready behavior change to `scoped-change-implementation`. Do not duplicate their plans.

## Design workflow

1. **Name pressure, horizon, and locality.** Use planned behavior, repeated change, defects, incidents, performance, meaning search, or test pain. State lifetime, contributor/consumer spread, compatibility, consequence, and reversal cost. Separate essential complexity from structural friction.
2. **Recover intent and commitments.** State the business activity, decisions, invariants, observable behavior, compatibility, and terminology the boundary must preserve. Treat awkward observed behavior as a compatibility commitment until evidence shows it unsupported or an accountable owner authorizes a change. Identify framework vocabulary, accidental state, or current control flow that should not define the model.
3. **Map leaked knowledge.** Find callers sharing representation, order, algorithm, lifecycle, policy, or failure knowledge. Trace code, state, and decisions changing together.
4. **Propose candidate knowledge boundaries.** Place seams around volatile decisions, exclusive state or resource ownership, coherent domain behavior, or reasoning cases that can become local. Classify dependencies by ownership, control, failure and lifecycle semantics, test fidelity, and real production variation. Keep a dependency internal when the module can exercise it credibly. Add a seam when an independently varying collaborator or external contract requires one; do not introduce a port solely for a mock. Do not choose a processing phase or folder convention as a boundary by itself.
5. **Preserve variation evidence.** Distinguish repeated knowledge from orchestration. Keep small duplication while cases may diverge; centralize invariants when divergence is unsafe. Revisit with change evidence.
6. **Compare interfaces.** Include the current shape as a competent candidate that may win. For consequential choices, compare caller burden, hidden knowledge, ownership, interaction, meaning search, failure and lifecycle semantics, compatibility, testability, adoption, and migration cost. Use deletion as a counterfactual: useful hidden complexity should reappear under callers if the boundary vanishes; complexity that simply disappears signals a pass-through, not automatic rejection. Prefer proving public behavior through the proposed interface and owned state. Use internal tests for diagnosis when useful, but do not make private structure the only proof.
7. **Choose growth strategy.** Prefer a **deep interface** when one owner can hide coherent complexity behind a smaller stable contract; prefer a **composable interface** when future workflows should connect bounded components through shared semantics. Deepen repeated glue only after composition stabilizes. Expose only justified orthogonal policies.
8. **Make the contract honest.** Expose correctness assumptions while hiding representation. Specify real ownership, errors, latency, retries, idempotency, ordering, cancellation, cleanup, observability, and lifecycle. Distinguish request-shaped, stream-shaped, and process-shaped work: keep direct work direct, make producer lifecycle explicit for streams, and give durable intermediate state and transitions an owner for long-running work. Treat remoteness as an additional failure-semantic concern, not a workflow shape.
9. **Place correctness, decisions, and effects deliberately.** Move repeated high-cost correctness obligations into types, contracts, tests, defaults, or owned state instead of caller vigilance. Keep dependencies visible. Separate deterministic decisions from I/O where this makes dangerous or complex behavior reviewable, while retaining the module—not extracted helper fragments—as the meaningful behavior surface.
10. **Adopt by change.** Use vertical slices across technical layers. Make the common shared-module path easy while preserving justified advanced access. Migrate incrementally, verify through the production interface, and retire the old owner.

Read [references/module-design-review.md](references/module-design-review.md) only when comparing consequential alternatives, auditing lifecycle or adoption contracts, or producing a durable design record.

## Quality gates

- The current boundary is retained unless demonstrated pressure and the design horizon justify added structure.
- Material redesign requires the smallest self-contained text comparison of current and candidate responsibility, interface, state, control, or dependencies. Mark unchanged commitments, unresolved elements, and proposed status.
- Material claims have evidence status; assumptions and revisit signals are explicit.
- One module owns each claimed decision, mutable representation, or resource.
- Seams follow real dependency ownership or production variation, not test-double convenience.
- Internal interaction exceeds cross-boundary interaction, or remaining coupling is explicit.
- The growth strategy avoids leaked knowledge and option accumulation.
- Interface burden is smaller than hidden behavior and reasoning.
- Request, stream, and process lifecycles are represented honestly; remoteness exposes its additional failure semantics.
- Repeated consequential correctness obligations are structural rather than reminders to callers.
- Callers receive correctness semantics without coordinating internals; production-contract tests and adoption retire obsolete ownership.
- Public behavior can be proven through the interface; internal evidence does not freeze private structure.

## Reject weak abstractions

- Pass-through wrappers and generic managers are not modules without owned behavior or hidden decisions.
- Matching text does not imply shared knowledge or change reason; tiny functions and interfaces may increase meaning search.
- Simple interfaces are shallow when they hide required latency, failure, lifecycle, policy, or performance.
- Streaming, message-based, or process-shaped interfaces are not honest when they erase schema, order, intermediate state, transition ownership, backpressure, security, or errors.
- Do not expose a policy dimension or escape hatch without recurring variation that justifies its support burden.
- Do not impose purity or interaction style as doctrine, leave old authority behind a new layer, or retain temporary machinery without exit.
