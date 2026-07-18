---
name: scoped-change-implementation
description: Implement an authorized, bounded software change in coherent vertical slices while preserving repository conventions, unrelated work, supported behavior, and explicit operational controls. Use when a feature, enhancement, integration, configuration change, or already-diagnosed fix is ready to implement; especially when the user asks for a surgical change, minimal scope, plan execution, test-backed delivery, or incremental end-to-end progress. Route unexplained failures to software-failure-diagnosis and structure-only behavior preservation to behavior-preserving-refactoring.
---

# Scoped Change Implementation

Turn an understood change into maintained software. Keep each step small enough to learn from and complete enough to exercise through a meaningful behavior boundary.

## Preserve scope and authority

- Confirm that implementation is authorized. Treat requests to discuss, diagnose, assess, review, or plan as read-only.
- Read repository instructions, local conventions, relevant decisions, tests, and the current worktree before editing. Preserve unrelated and partially completed user work.
- State the requested outcome, supported behavior, non-goals, hard constraints, and consequential assumptions. Do not silently enlarge a local change into an architecture migration.
- When a `software-change-specification` result exists, consume its `CHG-*` claims with their plain-language labels, evidence status, non-goals, and unresolved decisions. Reconcile contradictions with current repository evidence instead of silently rewriting the specification. Do not require a separate specification for a local reversible change whose compact contract can be resolved safely in this workflow.
- Treat a supplied design or plan as intent and decision context, not permission to ignore contradictory code, runtime, data, or consumer evidence.
- Do not perform production experiments, releases, external writes, destructive operations, or irreversible migrations without explicit authority and safeguards.

## Implementation workflow

1. **Trace the current behavior.** Follow the user or caller path through entry point, decisions, state, effects, dependencies, and observable outcome. Identify the smallest public or operational seam that can prove the requested difference.
2. **Consume or define the change contract.** Use existing `CHG-*` claims when supplied. Otherwise name the behavior to add or alter, invariants to preserve, affected consumers, compatibility expectations, required controls, completion evidence, and explicit non-goals. If consequential behavior, authority, contract, state, security, data, or recovery meaning remains ambiguous, stop before editing and route to `software-change-specification` or the narrower owning design skill. Reference existing `CHG-*`, `VER-*`, `OBS-*`, or release contracts by key and plain-language label when present.
3. **Select a coherent vertical slice.** Prefer one user-visible action or business activity that can be exercised end to end. Include only the input, decision, state, effect, output, and interface changes needed to make that slice real. A surgical change minimizes unnecessary coupling and ownership ambiguity, not merely line count.
4. **Choose the feedback loop.** Use `$tdd` when behavior can be stated through a stable seam and a fast deterministic red-green loop is valuable. Otherwise choose the cheapest credible feedback for the contract: compiler or static checks, examples, contract tests, visual comparison, migration rehearsal, performance measurement, or another named verification method. Do not add tests whose only purpose is to freeze the implementation shape.
5. **Implement through the current owners.** Follow repository-native patterns until evidence justifies changing them. Put each rule, mutable representation, resource, and side effect under one clear owner. Avoid speculative abstractions; preserve small local duplication when variation is still evidence, but never duplicate security, financial, compliance, protocol, or domain invariants whose divergence is unsafe.
6. **Keep dangerous decisions inspectable.** Separate target selection and policy from irreversible effects when this enables dry-run, review, testing, idempotency, or stale-plan protection. Preserve authorization, rollback, compensation, and stop controls required by the change contract.
7. **Verify after every slice.** Run the narrowest meaningful check first, inspect the result, and either continue from green evidence or repair the latest step. Expand to affected integration, contract, static, build, and repository checks only as the change surface grows. Record what was actually executed; do not convert a planned or skipped check into evidence.
8. **Respond to discovered design mismatch.** If implementation reveals a wrong domain assumption, boundary, public contract, transition state, or safety model, stop expanding the patch. Preserve the counterexample, explain the decision that must be revisited, and route to the smallest appropriate design or planning skill.
9. **Complete ownership and cleanup.** Remove superseded paths, temporary instrumentation, obsolete tests, dead configuration, and migration scaffolding when their exit condition is satisfied and removal is authorized. Do not leave old and new implementations simultaneously authoritative by accident.
10. **Report the implemented change.** Lead with the delivered behavior. List material files or surfaces changed, evidence executed and its limits, deviations from the original design, remaining uncertainty, and any release, operational, or human decision still required.

Use [references/change-execution.md](references/change-execution.md) for the knowledge-derived execution model, change contract, slice record, and deviation format.

## Quality gates

- The change remains inside an explicit outcome and non-goal boundary.
- Each slice produces meaningful end-to-end progress or reduces a named implementation risk.
- The diff is coherent with existing ownership and repository conventions, or the deviation is explained.
- Tests and checks observe supported behavior or explicit contracts rather than incidental choreography.
- Every claimed result traces to evidence actually run in a named environment.
- Temporary paths and controls have owners and exit conditions.
- The final implementation leaves one understandable authoritative behavior path.

## Reject weak implementation

- Do not call a change surgical merely because the diff is short; local exceptions can increase system-wide change cost.
- Do not rewrite neighboring code, rename broad surfaces, upgrade dependencies, or introduce frameworks without demonstrated need.
- Do not implement every layer horizontally before one behavior works end to end.
- Do not add pass-through wrappers, generic helpers, flags, or configuration points for hypothetical reuse.
- Do not hide changed behavior inside refactoring, generated files, formatting, or cleanup.
- Do not claim success from compilation, one convenient unit test, or the implementer's own confidence when the contract crosses other evidence boundaries.
