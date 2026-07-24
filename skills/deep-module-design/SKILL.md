---
name: deep-module-design
description: Design software module boundaries and interfaces that localize demonstrated change, give hidden knowledge one owner, preserve domain intent, and expose honest testable contracts. Use when shaping modules, deepening abstractions, locating seams, reducing meaning search or leaked representation, separating decisions from effects, choosing deep versus composable interfaces, or comparing module alternatives before implementation.
---

# Deep Module Design

Design boundaries that hide consequential knowledge and bound reasoning. A deep module is one strong answer; a composable interface may be better when future behavior should grow through combinations rather than feature accretion.

## Use precise terms

- **Module:** A responsibility with interface and implementation, not necessarily a class, package, process, or phase.
- **Interface:** Everything callers must know: operations, values, invariants, failures, ordering, configuration, performance, and lifecycle.
- **Seam:** A place where behavior or implementation can vary without editing callers there.
- **Hidden decision:** Representation, order, algorithm, resource, policy, or lifecycle owned behind an interface.
- **Depth:** Useful behavior and complexity hidden per unit of interface burden.
- **Locality:** The degree to which one meaningful change can be understood, implemented, and verified in one place.

Keep module, bounded context, vertical slice, deployable service, data owner, failure domain, and team boundary distinct unless evidence says they align.

## Compose proportionately

Consume supplied pressure, commitments, specification, assurance, and bounded question. Return ownership and interface, material alternative, preserved commitments, rejection gates, implementation implication, and invalidated assumptions. Reopen only for contradictory evidence, a fact blocking an honest boundary, or materially different safety, compatibility, data, lifecycle, operations, or migration. Route one behavior, state, or interface question that needs a disposable runnable artifact to `prototype-to-learn`. Do not duplicate the change plan.

## Design workflow

1. **Name pressure and desired locality.** Use planned behavior, repeated change, defects, incidents, performance, meaning search, or test pain. Separate essential complexity from structural friction; avoid hypothetical reuse.
2. **Recover intent and commitments.** State the business activity, decisions, invariants, observable behavior, compatibility, and terminology the boundary must preserve. Identify framework vocabulary, accidental state, or current control flow that should not define the model.
3. **Map leaked knowledge and interaction.** Find callers sharing representation, order, format, algorithm, lifecycle, policy, or failure knowledge. Trace code, state, and decisions that interact or change together.
4. **Propose candidate knowledge boundaries.** Place seams around volatile decisions, exclusive state or resource ownership, coherent domain behavior, or reasoning cases that can become local. Do not choose a processing phase, folder convention, or test mock as a boundary by itself.
5. **Preserve variation evidence.** Distinguish repeated knowledge from repeated orchestration. Keep small duplication temporarily when cases may diverge; centralize security, financial, compliance, protocol, or domain invariants when divergence is unsafe. Revisit duplication once change patterns are visible.
6. **Compare interfaces.** Include the current shape as a competent baseline. For consequential choices, compare candidates by caller burden, hidden knowledge, ownership, interaction, meaning search, failure and lifecycle semantics, compatibility, testability, and migration cost.
7. **Choose the growth strategy.** Prefer a **deep interface** when one owner can absorb substantial coherent complexity behind a smaller stable capability contract. Prefer a **composable interface** when a shared exchange contract can preserve needed semantics and future workflows should grow by connecting bounded components. Promote repeated glue into a deeper higher-level capability only after the composition proves stable.
8. **Make the contract honest.** Expose correctness assumptions while hiding representation. Specify real ownership, errors, latency, retries, idempotency, ordering, cancellation, cleanup, observability, and lifecycle. Default request-shaped work to direct results unless genuinely asynchronous or streaming.
9. **Place decisions and effects deliberately.** Keep dependencies visible. Separate deterministic decisions from I/O where this makes dangerous or complex behavior reviewable, while retaining the module—not extracted helper fragments—as the meaningful behavior surface.
10. **Organize and adopt by change.** Use a vertical slice when one business activity changes across technical layers. Provide safe defaults and explicit escape hatches where needed. Migrate callers incrementally, verify through the production interface, and retire the replaced abstraction rather than leaving a new wrapper around the old owner.

Read [references/module-design-review.md](references/module-design-review.md) only when comparing consequential alternatives, auditing lifecycle contracts, or producing a durable design record.

## Quality gates

- Demonstrated pressure names the changes to localize.
- One module owns each claimed decision, mutable representation, or resource.
- Internal interaction exceeds cross-boundary interaction, or remaining coupling is explicit.
- The growth strategy avoids leaked knowledge and option accumulation.
- Interface burden is smaller than hidden behavior and reasoning.
- Callers receive correctness semantics without coordinating internals; production-contract tests and adoption retire obsolete ownership.

## Reject weak abstractions

- Pass-through wrappers and generic managers are not modules without owned behavior or hidden decisions.
- Matching text does not imply shared knowledge or change reason; tiny functions and interfaces may increase meaning search.
- Simple interfaces are shallow when they hide required latency, failure, lifecycle, policy, or performance.
- Streams, messages, callbacks, or events are not composable when they erase schema, order, backpressure, security, or errors.
- Do not impose purity or interaction style as doctrine, leave old authority behind a new layer, or retain temporary machinery without exit.
