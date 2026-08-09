---
name: deep-module-design
description: Decide whether to retain or redesign software module boundaries so demonstrated change stays local, hidden knowledge has one owner, and interfaces remain honest and testable. Use when shaping modules, deepening abstractions, locating seams, reducing meaning search or leaked representation, separating decisions from effects, choosing deep versus composable growth, or explaining an existing boundary before implementation.
---

# Deep Module Design

Design boundaries that hide consequential knowledge and bound reasoning. A deep module is one strong answer; a composable interface may be better when future behavior should grow through combinations rather than feature accretion. Retaining the current boundary is correct when it already localizes the demonstrated pressure or the design horizon does not justify more structure.

## Use precise terms

- **Module:** A responsibility with interface and implementation, not necessarily a class, package, process, or phase.
- **Interface:** Everything callers must know: operations, values, invariants, failures, ordering, configuration, performance, and lifecycle.
- **Seam:** A place where behavior or implementation can vary without editing callers there.
- **Hidden decision:** Representation, order, algorithm, resource, policy, or lifecycle owned behind an interface.
- **Depth:** Useful behavior and complexity hidden per unit of interface burden.
- **Locality:** The degree to which one meaningful change can be understood, implemented, and verified in one place.
- **Design horizon:** Expected lifetime, contributor and consumer spread, compatibility exposure, consequence of misunderstanding, and cost of reversal.

Keep module, bounded context, vertical slice, deployable service, data owner, failure domain, and team boundary distinct unless evidence says they align.

## Compose proportionately

Work read-only: inspect and design, but do not modify the target or implement the result. Consume supplied pressure, commitments, specification, assurance, and bounded question. Label material claims **confirmed**, **inferred**, **assumed**, **proposed**, or **unresolved**. Return a retain-or-redesign decision, ownership and interface, material alternative, preserved commitments, rejection gates, implementation implication, invalidated assumptions, and revisit signals. If no change pressure is demonstrated or the current owner and interface already localize it, explain that boundary and stop without inventing a module. Reopen only for contradictory evidence, a fact blocking an honest boundary, or materially different safety, compatibility, data, lifecycle, operations, or migration.

Route disputed business meaning to `domain-modeling`; route deployment, data authority, failure isolation, or operating ownership to `service-boundary-design`. Keep interface shape and behavior-preservation commitments here. Route coexistence, versioning, deprecation, adoption, or retirement policy for independently evolving producers, consumers, or stored state to `software-contract-evolution`. Route one behavior, state, or interface question needing a disposable runnable artifact to `prototype-to-learn`. Once the design is accepted, route structure-only execution to `behavior-preserving-refactoring`; route an intentional but ambiguous behavior change through `software-change-specification`, or a ready bounded change to `scoped-change-implementation`. Do not duplicate their change plan.

## Design workflow

1. **Name pressure, horizon, and desired locality.** Use planned behavior, repeated change, defects, incidents, performance, meaning search, or test pain. State the expected lifetime, contributor and consumer spread, compatibility exposure, and cost of misunderstanding or reversal. Separate essential complexity from structural friction; avoid hypothetical reuse and long-lived machinery for disposable work.
2. **Recover intent and commitments.** State the business activity, decisions, invariants, observable behavior, compatibility, and terminology the boundary must preserve. Treat awkward observed behavior as a compatibility commitment until evidence shows it unsupported or an accountable owner authorizes a change. Identify framework vocabulary, accidental state, or current control flow that should not define the model.
3. **Map leaked knowledge and interaction.** Find callers sharing representation, order, format, algorithm, lifecycle, policy, or failure knowledge. Trace code, state, and decisions that interact or change together.
4. **Propose candidate knowledge boundaries.** Place seams around volatile decisions, exclusive state or resource ownership, coherent domain behavior, or reasoning cases that can become local. Do not choose a processing phase, folder convention, or test mock as a boundary by itself.
5. **Preserve variation evidence.** Distinguish repeated knowledge from repeated orchestration. Keep small duplication temporarily when cases may diverge; centralize security, financial, compliance, protocol, or domain invariants when divergence is unsafe. Revisit duplication once change patterns are visible.
6. **Compare interfaces.** Include the current shape as a competent candidate that may win. For consequential choices, compare caller burden, hidden knowledge, ownership, interaction, meaning search, failure and lifecycle semantics, compatibility, testability, adoption, and migration cost.
7. **Choose the growth strategy.** Prefer a **deep interface** when one owner can absorb substantial coherent complexity behind a smaller stable capability contract. Prefer a **composable interface** when a shared exchange contract can preserve needed semantics and future workflows should grow by connecting bounded components. Promote repeated glue into a deeper higher-level capability only after the composition proves stable. For recurring specialized constraints, preserve a safe default and expose only orthogonal replaceable policies; do not make every mechanism configurable.
8. **Make the contract honest.** Expose correctness assumptions while hiding representation. Specify real ownership, errors, latency, retries, idempotency, ordering, cancellation, cleanup, observability, and lifecycle. Distinguish request-shaped, stream-shaped, and process-shaped work: keep direct work direct, make producer lifecycle explicit for streams, and give durable intermediate state and transitions an owner for long-running work. Treat remoteness as an additional failure-semantic concern, not a workflow shape.
9. **Place correctness, decisions, and effects deliberately.** Move repeated high-cost correctness obligations into types, contracts, tests, defaults, or owned state instead of caller vigilance. Keep dependencies visible. Separate deterministic decisions from I/O where this makes dangerous or complex behavior reviewable, while retaining the module—not extracted helper fragments—as the meaningful behavior surface.
10. **Organize and adopt by change.** Use a vertical slice when one business activity changes across technical layers. For shared modules, make the common path easy to understand and trust while preserving an explicit advanced or lower-level path where justified. Migrate callers incrementally, verify through the production interface, and retire the replaced abstraction rather than leaving a new wrapper around the old owner.

Read [references/module-design-review.md](references/module-design-review.md) only when comparing consequential alternatives, auditing lifecycle or adoption contracts, or producing a durable design record.

## Quality gates

- The current boundary is retained unless demonstrated pressure and the design horizon justify added structure.
- Material claims have evidence status; assumptions and revisit signals are explicit.
- One module owns each claimed decision, mutable representation, or resource.
- Internal interaction exceeds cross-boundary interaction, or remaining coupling is explicit.
- The growth strategy avoids leaked knowledge and option accumulation.
- Interface burden is smaller than hidden behavior and reasoning.
- Request, stream, and process lifecycles are represented honestly; remoteness exposes its additional failure semantics.
- Repeated consequential correctness obligations are structural rather than reminders to callers.
- Callers receive correctness semantics without coordinating internals; production-contract tests and adoption retire obsolete ownership.

## Reject weak abstractions

- Pass-through wrappers and generic managers are not modules without owned behavior or hidden decisions.
- Matching text does not imply shared knowledge or change reason; tiny functions and interfaces may increase meaning search.
- Simple interfaces are shallow when they hide required latency, failure, lifecycle, policy, or performance.
- Streaming, message-based, or process-shaped interfaces are not honest when they erase schema, order, intermediate state, transition ownership, backpressure, security, or errors.
- Do not expose a policy dimension or escape hatch without recurring variation that justifies its support burden.
- Do not impose purity or interaction style as doctrine, leave old authority behind a new layer, or retain temporary machinery without exit.
