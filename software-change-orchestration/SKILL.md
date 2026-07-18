---
name: software-change-orchestration
description: Orchestrate a bounded software change across sessions from rough intent or an accepted opportunity through proportional specification, specialist design and evaluation, authorized implementation, independent review, verification, and evidence-based closure. Use when a user wants one resumable flow, durable repository-backed context, and help selecting the next appropriate skill without remembering the catalog; especially for a feature or change effort that crosses several decisions or work modes but does not yet require multi-team program execution. Keep small reversible changes inline, use either an owning repository or an existing control repository for durable state, and route multi-team delivery to technical-program-execution.
---

# Software Change Orchestration

Keep one software change moving through the smallest useful sequence of decisions, artifacts, actions, and evidence. Maintain continuity without turning the catalog into a mandatory lifecycle or taking ownership from the specialized skills.

## Preserve authority and canonical ownership

- Distinguish discussion, repository-document writes, code changes, external-system writes, and production actions. Perform only the modes the user authorized.
- Identify the accountable change owner and the owners of material product, domain, architecture, contract, security, data, operational, and risk interpretations. Facilitate and recommend; do not manufacture approval.
- Let each specialized skill own its artifact and judgment. Route work to that skill, preserve its stable keys and plain-language labels, and link its result rather than copying it into an orchestration document.
- Keep independent challenge independent. A producing or implementing pass must not use this skill to certify its own design, code, evidence, release, or residual risk.
- Use the repository, issue tracker, decision log, and documentation surfaces where the work already lives. An existing specification or issue may be the canonical change record when it can also expose status, evidence, and the current frontier. Do not create a parallel reporting system merely to host orchestration fields.

## Bound the change effort

Define one **change effort** by one outcome, a coherent behavior or risk boundary, and a closure condition. It may contain several related feature slices when they serve the same outcome and share material decisions or invariants. Do not use a whole product, repository, or roadmap as the boundary merely because the word "project" is convenient.

- Keep an unrelated enhancement or bug as a separate effort unless resolving it is necessary for the active outcome.
- Route an unexplained bug to `software-failure-diagnosis`; after the cause is supported, use a compact implementation contract or `software-change-specification` according to remaining ambiguity and consequence.
- Route competing opportunities and investment choices to `product-opportunity-discovery` or `product-opportunity-prioritization` before treating them as one accepted change.
- Route delivery that spans interdependent teams or workstreams to `technical-program-execution`. Continue to reference the same change contracts and evidence keys without becoming a second program plan.

## Select the persistence mode

Choose the lightest mode that preserves the context likely to outlive the current conversation:

1. **Inline mode:** Use for a local, reversible change with one owner, clear behavior, no consequential unresolved decision, and a short feedback loop. Keep the compact contract in the active task and proceed through `scoped-change-implementation`; create no orchestration directory.
2. **Owning-repository mode:** Use when one repository clearly owns the behavior and its existing design, specification, or change directory is the natural source of truth. A feature can read, write, or depend on other repositories and still belong here when one repository owns the user-visible behavior and closure. Follow local naming and placement conventions.
3. **Control-repository mode:** Use when no single repository owns the outcome or a product/system control repository already holds the relevant cross-repository decisions. Keep the canonical change record there and link code-local artifacts by repository, revision or branch, and path or URL. A change may touch several repositories and still belong in one clearly owning repository. Do not copy owned artifacts into the control repository.

Use a hybrid when warranted: one control record may index specifications, decisions, implementations, and evidence that remain canonical in their owning repositories. Never create a new control repository or relocate existing artifacts without explicit authorization.

Read [references/change-orchestration.md](references/change-orchestration.md) when selecting the persistence mode, forming the change record, or routing the next missing artifact.

## Run the orchestration loop

1. **Establish the operating mode.** Confirm whether the user wants discussion, a durable record, implementation, review, verification, or some combination. Treat "discuss," "specify," "design," and "review" as read-only for code and external systems unless separately authorized.
2. **Load the current truth.** Read applicable repository guidance, the existing change record or issue, relevant specifications and decisions, current code and tests, and material worktree state. On resumption, verify that referenced branches, revisions, pull requests, paths, and assumptions still match reality. Distinguish specified, accepted, implemented at a revision, integrated into the target, verified in an environment, and released; none implies the next automatically.
3. **State the destination.** Capture the outcome, why it matters, behavior or risk boundary, explicit non-goals, closure evidence, accountable owner, and consequence of being wrong. If these are too uncertain to bound an accepted software change, route to product opportunity work rather than inventing a feature contract.
4. **Choose effort depth and persistence.** Select inline, owning-repository, control-repository, or hybrid mode from consequence, ambiguity, duration, coordination, and likely reuse. Explain any durable artifact before creating it.
5. **Find the current frontier.** Ask what material question, decision, artifact, action, or evidence most limits safe progress now. Keep later uncertainty as a short fog list; do not pre-create a complete stage plan for work whose shape depends on unresolved decisions.
6. **Route one bounded move.** Use the smallest owning skill that can retire the frontier uncertainty. Common routes include `software-change-specification` for an accepted but ambiguous behavior change, `domain-modeling` for disputed meaning, `deep-module-design` or `service-boundary-design` for structural ownership, `software-contract-evolution` for shared compatibility, `architecture-risk-evaluation` for consequential quality assumptions, and `technical-decision-making` for accountable closure.
7. **Integrate without duplicating.** Update the canonical work surface with the result, evidence status, decision or contract keys and labels, canonical location, implications, invalidated assumptions, and next frontier. Extend an existing specification or issue when it remains the best record; create a separate orchestration record only when no existing artifact can preserve the cross-artifact state cleanly. Keep debate transcripts, session diaries, and copied specialist templates out of durable state.
8. **Test implementation readiness.** Require an understood behavior contract, owned material decisions, explicit non-goals, authorization, and risk-proportionate feedback. Use `verification-strategy-design`, `observability-design`, `controlled-release-design`, or `high-risk-change-planning` only when their uncertainties are material; do not require them as stages.
9. **Implement through the owned contract.** When authorized, route the ready bounded slice to `scoped-change-implementation`. If code or runtime evidence contradicts the specification or design, preserve the counterexample, stop expansion, and move the frontier back to the owning decision rather than silently revising history.
10. **Challenge and verify.** Route the bounded change to `code-review` and execute fixed consequential claims through `verification-execution` when warranted. Treat findings, failed claims, and inconclusive evidence as graph updates that may return the effort to specification, design, planning, or implementation.
11. **Close or stop deliberately.** Record delivered behavior, evidence actually observed, accepted deviations, support and operating ownership, cleanup, unresolved risk, and accountable closure. Mark stopped or deferred efforts with the reason and re-entry condition. Preserve stable paths; move artifacts to an archive location only when the repository already uses that convention or the user requests it.

At the end of each session, leave the next frontier recoverable from the canonical work surface. Do not require one skill or one document per session.

## Quality gates

- The effort has one bounded outcome and closure condition rather than a repository-sized aspiration.
- Persistence is proportional: trivial work has no orchestration folder, while long-lived or distributed work has durable, discoverable state.
- One canonical work surface identifies the current frontier and links rather than duplicates owned artifacts.
- Artifact state distinguishes specification, acceptance, implementation, target integration, environment-specific verification, and release.
- The selected next skill owns the actual missing judgment or action.
- Optional catalog composition remains conditional on demonstrated uncertainty, consequence, or coordination need.
- Specification readiness, implementation authorization, review findings, verification evidence, release authority, and residual-risk acceptance remain distinct.
- Resumption begins from current repository and artifact evidence, not stale orchestration prose alone.
- Closure reports outcome evidence and remaining ownership instead of declaring success from completed stages.

## Reject orchestration theater

- A fixed sequence that invokes every design, planning, implementation, and verification skill.
- A `projects/` directory for every typo, local bug, or reversible change.
- One giant record for unrelated improvements that happen to affect the same product or repository.
- A control repository that becomes a stale duplicate of code-local specifications, decisions, tests, or operational evidence.
- Status prose, skill-call history, or meeting notes that do not preserve a decision, contract, evidence limit, or next action.
- Reopening accepted decisions without new evidence, or hiding changed decisions by overwriting their rationale.
- Treating document completion as implementation readiness or implemented code as proof that the intended outcome is correct.
- Continuing orchestration after a specialized owner, accountable human, or safety boundary has required a stop.

## Completion

Return or update the bounded outcome, persistence mode and canonical location, current contract and accepted decisions, artifact and evidence index, current frontier, next owning skill or action, authority still required, and completion or re-entry condition. If no durable record is justified, say why the inline path is sufficient.
