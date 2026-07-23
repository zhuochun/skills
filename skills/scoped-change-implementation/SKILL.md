---
name: scoped-change-implementation
description: Implement an authorized, bounded software change in coherent vertical slices while preserving repository conventions, unrelated work, supported behavior, and operational controls. Use for a ready feature, enhancement, integration, configuration change, or diagnosed fix requiring surgical, test-backed delivery. Route unexplained failures to software-failure-diagnosis and structure-only changes to behavior-preserving-refactoring.
---

# Scoped Change Implementation

Turn an understood change into maintained software. Keep each step small enough to learn from and complete enough to exercise through a meaningful behavior boundary.

## Preserve scope and authority

- Confirm that implementation is authorized. Treat requests to discuss, diagnose, assess, review, or plan as read-only.
- Be the sole primary executor for a behavior-changing slice. Route pure structure to `behavior-preserving-refactoring`; for mixed work, follow the nominated executor and borrow only necessary neighboring checks.
- Consume accepted scope, claims, design, assurance, and valid evidence. Reopen framing only for contradictory evidence or a decision blocking authorized behavior.
- Read repository instructions, local conventions, relevant decisions, tests, and the current worktree before editing. Preserve unrelated and partially completed user work.
- State the requested outcome, supported behavior, non-goals, hard constraints, and consequential assumptions. Do not silently enlarge a local change into an architecture migration.
- Consume supplied `CHG-*` claims, labels, evidence, non-goals, and unresolved decisions; reconcile contradictions rather than rewriting them. A local reversible change may use a compact inline contract.
- Treat a supplied design or plan as intent and decision context, not permission to ignore contradictory code, runtime, data, or consumer evidence.
- Do not perform production experiments, releases, external writes, destructive operations, or irreversible migrations without explicit authority and safeguards.

## Implementation workflow

1. **Trace the current behavior.** Follow the user or caller path through entry point, decisions, state, effects, dependencies, and observable outcome. Identify the smallest public or operational seam that can prove the requested difference.
2. **Consume or define the contract.** Use supplied claims or owner decisions; reopen only when evidence exposes an uncovered case or contradiction. Otherwise name changed behavior, preserved invariants, consumers, compatibility, controls, evidence, and non-goals. Reconcile code, tests, docs, data, and expectations. Stop only when conflict requires an unauthorized behavior, compatibility, state, security, data, or recovery decision; name the competing outcomes and route to `software-change-specification` or the narrower owning skill. Reference existing claim keys and labels.
3. **Select a coherent vertical slice.** Prefer one user-visible action or business activity that can be exercised end to end. Include only the input, decision, state, effect, output, and interface changes needed to make that slice real. A surgical change minimizes unnecessary coupling and ownership ambiguity, not merely line count.
4. **Choose feedback.** Use `$tdd` for a stable seam and valuable deterministic red-green loop. Otherwise choose the cheapest credible compiler, static, example, contract, visual, migration, performance, or other named check. Do not freeze implementation shape.
5. **Implement through the current owners.** Follow repository-native patterns until evidence justifies changing them. Put each rule, mutable representation, resource, and side effect under one clear owner. Avoid speculative abstractions; preserve small local duplication when variation is still evidence, but never duplicate security, financial, compliance, protocol, or domain invariants whose divergence is unsafe.
6. **Keep dangerous decisions inspectable.** Separate target selection and policy from irreversible effects when this enables dry-run, review, testing, idempotency, or stale-plan protection. Preserve authorization, rollback, compensation, and stop controls required by the change contract.
7. **Verify each slice.** Reuse valid snapshot-matched evidence; run and inspect the narrowest meaningful new check first. Continue only from green evidence; otherwise repair or revert the latest slice before expanding the change. Expand to affected integration, contract, static, build, and repository checks with the surface. Record execution; planned, skipped, or unnecessary reruns are not evidence.
8. **Respond to discovered design mismatch.** If implementation reveals a wrong domain assumption, boundary, public contract, transition state, or safety model, stop expanding the patch. Preserve the counterexample, explain the decision that must be revisited, name the safe state left behind, and route to the smallest appropriate design or planning skill.
9. **Complete ownership and cleanup.** Remove superseded paths, temporary instrumentation, obsolete tests, dead configuration, and migration scaffolding when their exit condition is satisfied and removal is authorized. Do not leave old and new implementations simultaneously authoritative by accident.
10. **Report the implemented change.** Lead with the delivered behavior. List material files or surfaces changed, evidence executed and its limits, deviations from the original design, remaining uncertainty, and any release, operational, or human decision still required.

Read [references/change-execution.md](references/change-execution.md) only when no accepted specification exists and a compact contract is needed, or when a slice record, deviation record, or completion ledger materially improves execution, handoff, or re-entry.

## Quality gates

- Change stays within outcome and non-goals; each slice advances end-to-end behavior or retires named risk.
- Every edited surface contributes to the requested outcome, preservation, evidence, or cleanup.
- The diff follows ownership and conventions or explains deviation.
- A reviewer can recover the behavioral reason for each material edit without unrelated archaeology.
- Checks observe supported behavior or contracts and trace to an executed environment.
- Temporary paths and controls have owners and exits; one authoritative behavior path remains.

## Reject weak implementation

- Short diffs can still create costly exceptions; avoid unrelated rewrites, broad renames, upgrades, and frameworks.
- Deliver one end-to-end behavior before horizontal layers.
- Reject pass-through abstractions and hypothetical configurability.
- Do not hide behavior changes or claim success from compilation, one convenient test, or confidence alone.
