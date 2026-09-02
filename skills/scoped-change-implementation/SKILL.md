---
name: scoped-change-implementation
description: Implement a ready, authorized, bounded feature, enhancement, integration, configuration change, or causally supported fix in coherent vertical slices while preserving conventions, unrelated work, behavior, and controls. Fix authority does not establish cause; route unexplained failures to software-failure-diagnosis, pure structure to behavior-preserving-refactoring, and disposable learning to prototype-to-learn.
---

# Scoped Change Implementation

Turn an understood change into maintained software through small steps that exercise meaningful behavior boundaries.

## Preserve scope and authority

- Confirm that implementation is authorized. Treat requests to discuss, diagnose, assess, review, or plan as read-only.
- Treat authorization, bounded scope, and causal readiness as separate gates. Route even a small fix with an unexplained symptom to `software-failure-diagnosis` first.
- Route a disposable behavior, state, UI, or interaction artifact to `prototype-to-learn`; do not harden exploratory code accidentally.
- Be the sole primary executor for a behavior-changing slice. Route pure structure to `behavior-preserving-refactoring`; for mixed work, follow the nominated executor and borrow only necessary neighboring checks.
- Consume accepted scope, claims, design, assurance, and valid evidence. Reopen framing only for contradictory evidence or a decision blocking authorized behavior.
- Read repository instructions, local conventions, relevant decisions, tests, and the current worktree before editing. Preserve unrelated and partially completed user work.
- State the outcome, supported behavior, non-goals, hard constraints, and consequential assumptions. Do not enlarge a local change into an architecture migration.
- Consume supplied `CHG-*` claims, labels, evidence, non-goals, and unresolved decisions; reconcile contradictions rather than rewriting them. A local reversible change may use a compact inline contract.
- A supplied design or plan is intent and decision context, not permission to ignore contradictory code, runtime, data, or consumer evidence.
- Do not perform production experiments, releases, external writes, destructive operations, or irreversible migrations without explicit authority and safeguards.

## Implementation workflow

1. **Trace the current behavior.** Follow the user or caller path through entry point, decisions, state, effects, dependencies, and observable outcome. Identify the smallest public or operational seam that can prove the requested difference.
2. **Consume or define the contract.** Use supplied claims or owner decisions; reopen only for an uncovered case or contradiction. Otherwise name changed behavior, preserved invariants, consumers, compatibility, controls, evidence, and non-goals. Reconcile code, tests, docs, data, and expectations. Preserve supplied `SEC-*` requirements and threat boundaries. Stop when conflict requires an unauthorized behavior, compatibility, state, security, data, or recovery decision; name competing outcomes and route to `software-change-specification`, `software-security-design`, or the narrower owner. Preserve existing claim keys and labels.
   - Prove each requested behavioral distinction is executable from information at its decision seam. Name the observable input, state, event, or capability separating outcomes that must differ.
   - If required states are indistinguishable there, stop and identify the missing signal, contract rule, or owner decision. Do not invent a heuristic, broaden acceptance, or weaken an invariant.
   - Keep moving on routine implementation choices whose outcomes remain inside the accepted contract; lack of a prescribed code shape is not behavioral ambiguity.
3. **Select a vertical slice.** Prefer one user-visible action or business activity exercised end to end. Include only needed input, decision, state, effect, output, and interface changes. Surgical means minimal coupling and ownership ambiguity, not line count.
4. **Choose feedback.** Use test-driven development for a stable, valuable deterministic loop; otherwise choose the cheapest credible named check. A failure-path check must reject unexpected success, distinguish promised system failure from a test assertion or sentinel, and assert required error, state, and effects. Do not freeze implementation shape.
5. **Implement through current owners.** Follow repository patterns until evidence justifies change. Give each rule, mutable representation, resource, and effect one owner. Avoid speculative abstractions; local duplication may preserve variation, but never duplicate security, financial, compliance, protocol, or domain invariants whose divergence is unsafe.
   - At each changed trust boundary, identify who controls the input, the parser or interpreter it reaches, the output context, and the protected effect. Use repository or framework safe APIs and defaults; validate before interpretation or costly allocation, parameterize or encode for the destination, and authorize actor, action, resource, and context at the effect-owning boundary.
   - Keep secrets and protected data out of source, prompts, logs, errors, fixtures, and client-visible configuration. Use approved maintained cryptography; treat changed dependencies, build scripts, privileged configuration, and security-control bypasses as reviewed surfaces.
   - Apply only relevant secure-coding checks. A checklist does not replace an accepted threat model or authorize a new control policy.
6. **Keep dangerous decisions inspectable.** Separate target selection and policy from irreversible effects when this enables dry-run, review, testing, idempotency, or stale-plan protection. Preserve authorization, rollback, compensation, and stop controls required by the change contract.
7. **Verify each slice.** Reuse snapshot-matched evidence and run the narrowest meaningful new check first. Continue only from green evidence; otherwise repair or revert before expanding. Add affected integration, contract, static, build, security, and repository checks. Trace material `SEC-*` requirements to executed negative or abuse-path evidence; route broader method and oracle design to `software-verification`. Record execution; planned or skipped checks are not evidence.
8. **Respond to design mismatch.** For a wrong domain assumption, boundary, public contract, transition state, or safety model, stop expanding. Preserve the counterexample, decision to revisit, safe state, and smallest appropriate route.
9. **Complete ownership and cleanup.** Remove superseded paths, temporary instrumentation, obsolete tests, dead configuration, and migration scaffolding when their exit condition is satisfied and removal is authorized. Do not leave old and new implementations simultaneously authoritative by accident.
10. **Report the implemented change.** Lead with the delivered behavior. List material files or surfaces changed, evidence executed and its limits, deviations from the original design, remaining uncertainty, and any release, operational, or human decision still required.

Read [references/change-execution.md](references/change-execution.md) only when no accepted specification exists and a compact contract is needed, or when a slice record, deviation record, or completion ledger materially improves execution, handoff, or re-entry.

## Quality gates

- Change stays within outcome and non-goals; every edit advances end-to-end behavior, preservation, evidence, cleanup, or named risk retirement.
- The diff follows ownership and conventions or explains deviation.
- A reviewer can recover the behavioral reason for each material edit without unrelated archaeology.
- Checks observe supported behavior or contracts and trace to an executed environment.
- Failure-path checks reject unexpected success and distinguish the promised system failure from test-generated failure.
- Every required behavior branch has an available discriminating signal, or the change stops with the missing information or decision named.
- Changed trust boundaries preserve accepted `SEC-*` requirements, secure defaults, authorization, sensitive-data handling, dependency controls, and explicit exceptions where applicable.
- Temporary paths and controls have owners and exits; one authoritative behavior path remains.

## Reject weak implementation

- Short diffs can still create costly exceptions; avoid unrelated rewrites, broad renames, upgrades, and frameworks. Deliver one end-to-end behavior before horizontal layers.
- Reject pass-through abstractions and hypothetical configurability.
- Do not hide behavior changes or claim success from compilation, one convenient test, or confidence alone.
