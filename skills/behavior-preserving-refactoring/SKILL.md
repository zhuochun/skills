---
name: behavior-preserving-refactoring
description: Improve software structure while preserving supported observable behavior, compatibility, and operational semantics. Use for an authorized module redesign, legacy seam, abstraction extraction or collapse, ownership move, coupling reduction, or learned-architecture consolidation without intended behavior change. Route intentional behavior changes to scoped-change-implementation and undecided retrospective redesign to retrospective-architecture-review.
---

# Behavior-Preserving Refactoring

Change structure without hiding a support-policy decision. Use evidence to preserve valuable behavior, small green steps to retain control, and the emerging design to replace—not duplicate—old ownership.

## Preserve behavior and authority

- Confirm that structural implementation is authorized. For discuss, assess, or redesign requests, remain read-only and route to the relevant design skill.
- Be the sole primary executor for an authorized behavior-preserving slice. Do not wrap it in `scoped-change-implementation`; route only intentional behavior change there.
- Classify the requested effect rather than trusting words such as cleanup, compatibility, simplification, or refactor. A change to accepted inputs, returned values, errors or fallbacks, ordering or precedence, state transitions, data meaning, compatibility or support, or operational semantics is not behavior-preserving.
- Route an accepted semantic change to `scoped-change-implementation`; route unresolved behavior or support policy to `software-change-specification` or its accountable owner. Split mixed work so the structural slice has an explicit preservation boundary.
- When orchestration supplies accepted scope, design, preserved commitments, assurance posture, and valid evidence, consume them and produce the structural implementation delta. Recheck only contradictions or missing facts that block safe equivalence.
- Define observable behavior and compatibility before editing. Declared, tested, observed, and inferred evidence may disagree.
- Ask the accountable owner to decide intentional retirements or behavior changes. Split those changes into an explicit `$scoped-change-implementation` contract rather than smuggling them into refactoring.
- Preserve unrelated work, repository conventions, data, public interfaces, failure semantics, performance obligations, and operational controls unless the authorized scope says otherwise.
- Do not treat existing tests as complete support policy or existing implementation details as automatically contractual.

## Refactoring workflow

1. **Frame the structural pressure.** Name the repeated change, leaked knowledge, ownership confusion, meaning-search, test pain, or consolidation need that justifies refactoring. State the intended structural improvement and the behavior that must remain stable.
2. **Build the commitment set.** Use accepted specifications or owner decisions unless evidence exposes an uncovered case or contradiction. Reconcile docs, interfaces, consumers, tests, production, incidents, and code. Mark behavior **preserve**, **explicit retirement decision required**, or **unresolved**. Stop only for an unauthorized consequential support or compatibility choice; name competing outcomes and the smallest decision without encoding either.
3. **Establish a trusted baseline.** Reuse credible snapshot-matched evidence or run the fastest existing behavior signal. Without seams, characterize through the broadest owned boundary that exercises valuable behavior. Control nondeterminism only enough for repeatability without changing the mechanism.
4. **Choose the next seam.** Consume a `$deep-module-design` result when one exists. Otherwise choose a small boundary around one hidden decision, coherent behavior, state owner, resource, or effect. Avoid extracting an interface merely because a class, phase, or mock boundary is available.
5. **Refactor green to green.** Make one structural move, run the narrow trusted signal, and keep green or undo. Prefer reviewable, reversible rename, move, inline, extract, value, redirection, or interface narrowing.
6. **Transfer ownership deliberately.** Move behavior, state, representation, and lifecycle responsibility together when they form one decision boundary. If old and new paths must coexist, name the authoritative path, synchronization or comparison rule, and removal condition. Do not leave two owners making the same decision.
7. **Evolve evidence.** Keep durable tests on behavior and public contracts. As seams appear, move confidence from broad characterization to faster unit, component, contract, or integration evidence; retain broad cases protecting end-to-end risk.
8. **Check nonfunctional equivalence proportionately.** Inspect performance, concurrency, ordering, resource lifecycle, failure handling, observability, data shape, and operational procedures when callers or operators rely on them. Use `$verification-execution` for consequential equivalence claims or separately authored evidence.
9. **Remove superseded structure.** Delete old implementations, pass-through layers, temporary adapters, obsolete mocks, duplicated state, flags, and migration scaffolding after callers move and exit evidence passes. A wrapper around the old authority is not completed refactoring.
10. **Report preserved and changed structure.** Lead with the new ownership and interface shape. State behavior evidence, intentional differences, unresolved commitments, removed paths, remaining temporary machinery, and the limits of equivalence demonstrated.

Read [references/refactoring-control.md](references/refactoring-control.md) only when a durable commitment set, green-step plan, evidence-migration record, or equivalence record is useful.

## Quality gates

- Structural pressure and preserved behavior are explicit; retirements remain accountable.
- The requested effect is classified before editing; no semantic or support change is hidden inside structural wording.
- A credible baseline detects regressions and each step is attributable.
- One-owner knowledge, state, resource, or lifecycle boundaries improve.
- Durable tests observe behavior, not moved implementation.
- Old authority and coexistence are removed or have exits.
- Equivalence claims name exercised functional and operational dimensions.

## Reject unsafe refactoring

- Behavior changes, schema migrations, dependency replacements, and support reductions are not refactors.
- Surface accidental disputed behavior for decision; broad characterization must enable a seam or reduce risk.
- Do not rewrite behavior tests for new internals or batch many moves into one failure.
- New abstractions must remove old representation knowledge.
- Unit tests alone cannot prove affected consumer, data, concurrency, performance, failure, or operational equivalence.
