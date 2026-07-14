---
name: retrospective-redesign
description: Reconsider a completed feature, subsystem, or codebase from first principles using everything learned during implementation and operation. Use when the user asks for retrospective redesign, post-implementation simplification, dead-code or complexity reduction, a "build it again knowing what we know now" review, or a decision between pruning, reshaping, and rebuilding. Treat the current implementation as evidence rather than the assumed solution; derive a simpler target, compare it with the current design, and implement only changes authorized by the request.
---

# Retrospective Redesign

Retain the lessons; re-justify the structure.

Do not begin with local refactors. First extract what the completed work taught, then derive the design that would have been chosen if those lessons were known from the beginning. Only then compare that target with the current implementation and decide whether to prune, reshape, or rebuild.

Load and use `$codebase-design` when designing modules, interfaces, seams, state ownership, and tests.

## Respect the requested mode

- For `discuss`, `review`, `assess`, `propose`, or similar requests, stay read-only and deliver the redesign and comparison.
- For `simplify`, `remove`, `refactor`, `implement`, `apply`, or similar requests, apply behavior-preserving changes within the authorized scope.
- Treat a rebuild, cutover, public-interface break, data migration, or user-visible behavior change as a separate decision. Do not infer approval from a general cleanup request.

## 1. Frame the retrospective

Resolve the feature or subsystem, its completion point or fixed point when available, and the repository instructions that govern it. Bound the evidence surface to the selected behavior, its direct producers and consumers, its public interfaces, and its acceptance tests; widen only when ownership actually crosses that scope. Record the initial worktree state and preserve unrelated changes.

Read the evidence that captures what is now known:

- original and final requirements, specs, issues, and accepted decisions;
- current behavior, implementation, tests, and public interfaces;
- operational failures, performance evidence, user feedback, and real edge cases;
- relevant history, ADRs, domain language, and supported environments.

If the evidence is incomplete, state the uncertainty. Do not invent requirements or preserve behavior merely because code exists for it.

Stop gathering history when more provenance is unlikely to change the target or route. Record the remaining uncertainty instead of turning the retrospective into archaeology.

## 2. Separate learnings from inherited design

Translate the evidence into design-neutral learnings:

- goals and user-visible outcomes;
- invariants and safety properties;
- real failure modes and performance constraints;
- supported use cases and environments;
- behavior that actual consumers depend on;
- assumptions that proved true or false.

Keep current modules, interfaces, names, file layout, state machines, compatibility paths, and abstractions in a separate inherited-design set. They are evidence, not constraints.

Rewrite implementation-shaped observations as requirements. For example, replace "`ReaderService` retains the active snapshot" with "readers always observe one complete committed snapshot, including during refresh failures."

## 3. Derive the first-principles target

Ask:

> If this work restarted today with all current learnings, what is the smallest coherent design that would achieve the accepted outcomes elegantly?

Describe the target's:

- modules and responsibility ownership;
- public interfaces and invariants;
- state ownership and lifecycle;
- request, control, and data flow;
- failure handling and intentionally unsupported behavior;
- behavioral test seams and verification strategy.

Optimize for one owner per behavior and piece of state, deep modules with small interfaces, direct flows, and fewer concepts, representations, branches, states, and coordination seams. Prefer deletion and concentration of ownership over additional abstraction. Do not optimize for line count alone.

Allow any current design choice to survive when it remains the best choice after fresh justification. Convergence is a successful result.

## 4. Compare target and current designs

Report:

- where the current implementation already matches the target;
- removable fat: dead code, unused options, duplicate representations, redundant owners, pass-through modules, obsolete compatibility, speculative hooks, and over-defensive branches;
- structural divergence in ownership, interfaces, state, or data flow;
- useful implementation discoveries missing from the stated requirements;
- behavior changes that must not be smuggled into cleanup.

When complexity could affect the target, route, or proposed change, judge it by what it protects now, not by when it was added. Weigh the behavior or invariant it protects and its credible fault model against its cost and the risk of change. Provenance is evidence, not a verdict; missing justification warrants investigation, not deletion. Risk raises the proof required to remove protection; it does not by itself justify adding it. Do not mistake distinct failure coverage or defense in depth for duplication.

Choose one primary route for the requested scope. Local exceptions may be reported as secondary or deferred candidates without changing the overall verdict.

### Prune

Use when the essential modules, ownership, interfaces, and flow already converge. Remove demonstrated dead or unwanted code and collapse redundant paths without redesigning the core.

### Reshape

Use when the goals agree but ownership, interfaces, state, or flow differ, and bounded replacement through stable seams is cheaper and safer than rebuilding.

### Rebuild

Use when the foundational model or flow differs and adapting the current structure would preserve more accidental complexity than replacement. Prefer a parallel implementation, explicit equivalence checks, cutover plan, and rollback path. Do not delete the working implementation before the replacement is verified and the cutover is authorized.

Base the route on migration economics, behavioral risk, proof of equivalence, temporary dual-system cost, and the amount of accidental complexity each path retains. Do not recommend a rebuild merely because a clean design looks attractive.

## 5. Apply the authorized path

Before changing code, run the relevant baseline verification. If the baseline fails, distinguish pre-existing failures and do not claim behavior preservation without evidence.

For destructive or irreversible changes, refresh identity, configuration, and other safety-critical preconditions immediately before mutation; order changes to preserve a safe state under partial failure; then verify postconditions.

- For **prune**, delete proven dead paths and simplify duplicated or unnecessary machinery in coherent slices.
- For **reshape**, establish the target seam, migrate one vertical behavior slice at a time, verify it, then remove the replaced path.
- For **rebuild**, keep the existing path working while constructing and verifying the replacement; stop before cutover unless the user authorized it.

After each slice, run the narrowest useful behavioral checks. Finish with the repository's full relevant verification and diff/format checks. Preserve unrelated worktree changes.

Treat code as dead only when it has no required contract, production consumer, runtime discovery path, or supported operational use. Tests alone are neither proof that code is live nor proof that it is dead.

## 6. Report the result

Lead with the verdict and route: **prune**, **reshape**, or **rebuild**. Then report:

1. learned requirements and constraints;
2. the first-principles target design;
3. comparison with the current implementation;
4. changes applied or the recommended migration path;
5. verification evidence and behavior-preservation status;
6. complexity removed or expected to disappear, plus the justification for any changed or disputed hardening;
7. deferred behavior changes, uncertain contracts, and remaining risks.

Measure structural reduction with concepts, owners, interfaces, states, branches, representations, modules, and test seams. Use line-count reduction only as secondary evidence.

For read-only work, run proportionate baseline checks when practical and report what they cover, what remains unverified, and any behavior bugs discovered; do not imply that a proposed target has been proven equivalent. For applied work, verify preserved behavior in proportion to risk.

Stop when the requested analysis or authorized migration is complete, replaced paths are removed where safe, the applicable verification above is complete, and remaining opportunities require behavior changes, speculative requirements, or disproportionate migration cost.

## Guardrails

- Consult the current implementation and its direct behavior paths fully within the resolved scope, but do not let its shape become the assumed target or use "consult fully" as permission for a repo-wide sweep.
- Do not turn retrospective redesign into an unbounded repository cleanup; follow the selected ownership paths only.
- Do not call a behavior change, interface break, or support-policy change a simplification.
- For non-public, statically discoverable interfaces, do not preserve compatibility solely for hypothetical consumers. For public, plugin-based, reflection/config-driven, or otherwise non-enumerable consumers, require an explicit support-policy decision before removal.
- Do not add extensibility, indirection, or configuration without a demonstrated variant.
- Do not replace straightforward code with a more fashionable abstraction.
- Do not rebuild when the first-principles target substantially converges with the current design; prune the fat and keep the sound structure.
