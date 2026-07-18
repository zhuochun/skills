---
name: deep-module-design
description: Design or improve software module boundaries and interfaces so demonstrated change stays local, hidden knowledge has one owner, domain intent remains visible, and behavior is testable through honest contracts. Use when shaping a module, deepening a shallow abstraction, choosing between a deep or composable interface, locating a seam, reducing meaning search or leaked representation, separating decisions from effects, organizing vertical slices, or comparing module alternatives before implementation.
---

# Deep Module Design

Design boundaries that hide consequential knowledge and bound reasoning. A deep module is one strong answer; a composable interface may be better when future behavior should grow through combinations rather than feature accretion.

## Use precise terms

- **Module:** A design responsibility with an interface and implementation; it need not equal a class, package, runtime process, or control-flow phase.
- **Interface:** Everything callers must know: operations, values, invariants, failures, ordering, configuration, performance, and lifecycle.
- **Seam:** A place where behavior or implementation can vary without editing callers there.
- **Hidden decision:** A representation, format, ordering, algorithm, resource, policy, or lifecycle fact owned behind the interface.
- **Depth:** Useful behavior and complexity hidden per unit of interface burden.
- **Locality:** The degree to which one meaningful change can be understood, implemented, and verified in one place.

Keep module, bounded context, vertical slice, deployable service, data owner, failure domain, and team boundary distinct unless evidence says they align.

## Compose proportionately

When orchestration supplies an accepted pressure, commitment set, canonical specification, assurance posture, and bounded design question, consume them rather than repeating product framing or closure planning. Reopen an upstream claim only when repository evidence contradicts it or the missing detail prevents an honest boundary.

For compact and standard local decisions, default the durable result to a concise design delta: pressure, selected ownership and interface, materially different alternative when one affects the choice, preserved commitments, rejection gates, and implementation implication. Expand the analysis only when alternatives have materially different safety, compatibility, data, lifecycle, operational, or migration consequences. Return the design delta and invalidated assumptions; do not produce another complete change plan.

## Design workflow

1. **Name the pressure and desired locality.** Use planned behavior, repeated changes, defects, incidents, performance constraints, meaning-search cost, or test pain. Classify the pressure as essential problem complexity, accidental structural friction, or both; do not invent an abstraction for hypothetical reuse.
2. **Recover intent and commitments.** State the business activity, decisions, invariants, observable behavior, compatibility, and terminology the boundary must preserve. Identify framework vocabulary, accidental state, or current control flow that should not define the model.
3. **Map leaked knowledge and interaction.** Find callers that know the same representation, ordering, format, algorithm, lifecycle, policy, or failure behavior. Trace which code, state, and decisions interact or change strongly together and which cross-boundary relationships are genuinely weaker.
4. **Propose candidate knowledge boundaries.** Place seams around volatile decisions, exclusive state or resource ownership, coherent domain behavior, or reasoning cases that can become local. Do not choose a processing phase, folder convention, or test mock as a boundary by itself.
5. **Preserve variation evidence.** Distinguish repeated knowledge from repeated orchestration. Keep small duplication temporarily when cases may diverge; centralize security, financial, compliance, protocol, or domain invariants when divergence is unsafe. Revisit duplication once change patterns are visible.
6. **Compare materially different interfaces.** Include the current shape as a competent baseline. Compare at least two candidates when the decision is consequential by caller burden, hidden knowledge, exclusive ownership, interaction strength, meaning search, failure and lifecycle semantics, compatibility, testability, and migration cost.
7. **Choose the growth strategy.** Prefer a **deep interface** when one owner can absorb substantial coherent complexity behind a smaller stable capability contract. Prefer a **composable interface** when a shared exchange contract can preserve needed semantics and future workflows should grow by connecting bounded components. Promote repeated glue into a deeper higher-level capability only after the composition proves stable.
8. **Make the contract honest.** Expose assumptions callers need for correctness while hiding representation they do not. Specify ownership, errors, latency, retries, idempotency, ordering, cancellation, resource cleanup, observability, and producer or subscription lifecycle where they are real. Default ordinary request-shaped work to direct synchronous or suspending results unless the lifecycle is genuinely asynchronous or streaming.
9. **Place decisions and effects deliberately.** Keep dependencies visible. Separate deterministic decisions from I/O where this makes dangerous or complex behavior reviewable, while retaining the module—not extracted helper fragments—as the meaningful behavior surface.
10. **Organize and adopt by change.** Use a vertical slice when one business activity changes across technical layers. Provide safe defaults and explicit escape hatches where needed. Migrate callers incrementally, verify through the production interface, and retire the replaced abstraction rather than leaving a new wrapper around the old owner.

Use [references/module-design-review.md](references/module-design-review.md) for the knowledge-derived reasoning model, alternative comparison, boundary checks, and design record.

## Quality gates

- A demonstrated pressure justifies the boundary and states which changes should become local.
- One module owns each hidden decision, mutable representation, or resource that the design claims to contain.
- Internal interaction is meaningfully stronger than cross-boundary interaction, or the remaining cross-boundary coupling is explicit.
- The selected deep or composable strategy explains how future behavior grows without leaking hidden knowledge or accumulating options.
- The interface burden is smaller than the useful behavior and reasoning complexity it contains.
- Callers receive all semantics needed for correctness without coordinating internal phases.
- Tests exercise meaningful behavior through the production contract, and adoption retires obsolete ownership.

## Reject weak abstractions

- A pass-through wrapper, generic manager, repository, helper, engine, or dependency-injection interface is not a module without a precise hidden decision or owned behavior.
- Matching text is not enough reason to share code; ask whether the callers share knowledge and change for the same reason.
- Tiny functions and many interfaces can increase meaning search and reasoning combinations instead of improving modularity.
- A simple-looking interface is not deep if it hides latency, failure, lifecycle, policy, or performance facts callers require.
- A byte stream, message, callback, or event surface is not composable when it erases schema, ordering, backpressure, security, or error semantics.
- Do not force purity, vertical slices, synchronization, or streaming as doctrine; use each where it makes the relevant boundary more honest and self-reinforcing.
- Do not add a new layer that leaves the old abstraction authoritative or retain temporary migration machinery without an exit condition.
