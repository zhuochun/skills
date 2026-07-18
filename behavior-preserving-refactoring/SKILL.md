---
name: behavior-preserving-refactoring
description: Improve the internal structure of an existing software capability while preserving its supported observable behavior, compatibility, and operational semantics. Use when implementing an authorized module redesign, opening seams in legacy code, extracting or collapsing abstractions, moving ownership, reducing coupling or meaning-search, or consolidating learned architecture without intentionally changing product behavior. Use scoped-change-implementation for requested behavior changes and retrospective-redesign when the target design is still undecided.
---

# Behavior-Preserving Refactoring

Change structure without hiding a support-policy decision. Use evidence to preserve valuable behavior, small green steps to retain control, and the emerging design to replace—not duplicate—old ownership.

## Preserve behavior and authority

- Confirm that structural implementation is authorized. For discuss, assess, or redesign requests, remain read-only and route to the relevant design skill.
- Define the observable behavior and compatibility boundary before editing. Treat declared, tested, observed, and inferred behavior as evidence; do not assume they agree.
- Ask the accountable owner to decide intentional retirements or behavior changes. Split those changes into an explicit `$scoped-change-implementation` contract rather than smuggling them into refactoring.
- Preserve unrelated work, repository conventions, data, public interfaces, failure semantics, performance obligations, and operational controls unless the authorized scope says otherwise.
- Do not treat existing tests as complete support policy or existing implementation details as automatically contractual.

## Refactoring workflow

1. **Frame the structural pressure.** Name the repeated change, leaked knowledge, ownership confusion, meaning-search, test pain, or consolidation need that justifies refactoring. State the intended structural improvement and the behavior that must remain stable.
2. **Build the commitment set.** Reconcile documentation, public interfaces, consumer behavior, tests, production evidence, incidents, and current code. Mark material behavior **preserve**, **explicit retirement decision required**, or **unresolved**. Do not proceed across an unresolved high-consequence difference.
3. **Establish a trusted baseline.** Run the fastest credible existing behavior signal. Where seams are absent, add focused characterization through the broadest owned boundary that can exercise valuable behavior. Control time, randomness, state, and external dependencies only enough to make the signal repeatable without changing the mechanism.
4. **Choose the next seam.** Consume a `$deep-module-design` result when one exists. Otherwise choose a small boundary around one hidden decision, coherent behavior, state owner, resource, or effect. Avoid extracting an interface merely because a class, phase, or mock boundary is available.
5. **Refactor green to green.** Make one behavior-preserving structural move, run the narrow trusted signal, and either keep the green state or undo the latest move. Prefer moves that remain reviewable and reversible: rename, move, inline, extract, introduce value, redirect caller, or narrow interface.
6. **Transfer ownership deliberately.** Move behavior, state, representation, and lifecycle responsibility together when they form one decision boundary. If old and new paths must coexist, name the authoritative path, synchronization or comparison rule, and removal condition. Do not leave two owners making the same decision.
7. **Evolve the evidence topology.** Keep durable tests on stable behavior and public contracts. As clearer seams appear, move appropriate confidence from broad characterization into faster unit, component, contract, or integration evidence. Retain only broad cases that continue to protect end-to-end risk.
8. **Check nonfunctional equivalence proportionately.** Inspect performance, concurrency, ordering, resource lifecycle, failure handling, observability, data shape, and operational procedures when callers or operators rely on them. Use `$verification-execution` for consequential equivalence claims or separately authored evidence.
9. **Remove superseded structure.** Delete old implementations, pass-through layers, temporary adapters, obsolete mocks, duplicated state, flags, and migration scaffolding after callers move and exit evidence passes. A wrapper around the old authority is not completed refactoring.
10. **Report preserved and changed structure.** Lead with the new ownership and interface shape. State behavior evidence, intentional differences, unresolved commitments, removed paths, remaining temporary machinery, and the limits of equivalence demonstrated.

Use [references/refactoring-control.md](references/refactoring-control.md) for the knowledge-derived model, commitment set, green-step plan, evidence migration, and equivalence record.

## Quality gates

- A demonstrated structural pressure justifies the work.
- Supported behavior and intentional retirement decisions are distinguishable.
- A credible baseline can detect meaningful regressions at the chosen boundary.
- Every step is small enough to attribute a failure to the latest structural move.
- The refactoring strengthens one-owner knowledge, state, resource, or lifecycle boundaries.
- Durable tests observe behavior rather than the implementation being moved.
- Old authority and temporary coexistence are removed or have explicit exit conditions.
- Equivalence claims state which functional and operational dimensions were actually exercised.

## Reject unsafe refactoring

- Do not call a behavior change, schema migration, dependency replacement, or support-policy reduction a refactor.
- Do not preserve every accidental behavior forever; surface disputed behavior for an accountable decision.
- Do not add broad characterization that never enables a smaller seam or useful risk reduction.
- Do not rewrite tests to match the new internals when the same supported behavior should still pass.
- Do not combine many structural moves into one red batch and debug the batch afterward.
- Do not introduce a new abstraction while leaving callers dependent on the old representation or sequencing knowledge.
- Do not claim equivalence from unit tests alone when consumers, data, concurrency, performance, failure, or operations are materially affected.
