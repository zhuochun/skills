---
name: codebase-design
description: Design or improve software modules, interfaces, seams, and internal structure so real change stays local, domain intent remains visible, and behavior is testable through stable contracts. Use when shaping a new module, deepening a shallow abstraction, deciding where a seam belongs, reducing meaning search or hidden coupling, separating decisions from effects, organizing vertical slices, or comparing alternative interfaces before implementation.
---

# Codebase Design

Design deep modules: substantial, coherent behavior behind a smaller interface placed at a seam that follows real change pressure. Optimize for leverage for callers, locality for maintainers, and testability through the same contract production uses.

## Use precise terms

- **Module:** Any unit with an interface and implementation, from a function to a package or tier-spanning slice.
- **Interface:** Everything callers must know: operations, values, invariants, failure modes, ordering, configuration, performance, and lifecycle.
- **Seam:** A place where behavior can vary without editing callers at that place.
- **Adapter:** A concrete implementation connected at a seam.
- **Depth:** Useful behavior and complexity hidden per unit of interface burden.
- **Locality:** The degree to which one business or technical change can be understood, implemented, and verified in one place.

Keep bounded contexts, deployable services, and team boundaries distinct from module seams unless evidence says they align.

## Design workflow

1. **Name the change pressure.** Use planned behavior, recent changes, defects, incidents, performance constraints, or test pain. Do not invent abstractions for hypothetical reuse alone.
2. **Recover domain intent.** State the business activity, decisions, invariants, and terminology the design must reveal. Identify accidental state or framework vocabulary obscuring the model.
3. **Map knowledge and coupling.** Find callers that know the same representation, ordering, format, algorithm, lifecycle, policy, or remote failure behavior. Identify code that changes together but lives apart.
4. **Choose the seam.** Place it around a coherent responsibility or volatile design decision, not merely a phase in control flow. Require a real variation, ownership, test, or change-locality benefit.
5. **Design it at least twice.** Produce meaningfully different interfaces and compare caller burden, hidden complexity, locality, failure semantics, compatibility, and migration cost.
6. **Deepen the interface.** Prefer fewer capability-oriented operations, domain values, useful defaults, and complete lifecycle ownership. Hide representation and orchestration that callers do not need.
7. **Make effects explicit.** Keep dependencies visible. Separate deterministic decisions from I/O where it makes dangerous or complex behavior reviewable, while keeping the module—not extracted helper fragments—as the meaningful test surface.
8. **Choose organization by change.** Use vertical slices when one business activity changes across technical layers. Share code only when multiple slices demonstrably change for the same reason.
9. **Define contracts honestly.** Include remote latency, retries, idempotency, ordering, cancellation, streaming ownership, resource cleanup, errors, and observability when they are part of correct use.
10. **Plan adoption.** Preserve compatibility where necessary, migrate callers incrementally, and specify tests at the interface. Avoid adding a new layer that leaves the old abstraction in control.

Use [references/module-design-review.md](references/module-design-review.md) for comparison and review prompts.

## Quality gates

- The interface is smaller and more stable than the behavior it enables.
- The seam follows a demonstrated change, knowledge, ownership, or verification boundary.
- Callers do not coordinate internal steps that the module can own.
- The interface exposes required semantics without leaking representation.
- Tests can verify meaningful behavior through the production interface.
- Side effects and remote failure semantics are visible where correctness needs them.
- The migration replaces or retires obsolete structure instead of layering indefinitely.

## Reject weak abstractions

- A pass-through wrapper is not deep merely because it has an interface.
- One adapter does not justify a speculative plugin architecture without another real source of variation.
- Tiny functions are not automatically good modules when understanding requires bouncing among many of them.
- Dependency injection is not a design goal; use it where a real seam benefits callers, tests, or ownership.
- Generic repositories, managers, helpers, and engines often hide domain intent; require a precise responsibility.
