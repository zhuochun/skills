---
name: software-change-orchestration
description: Orchestrate a bounded software change across sessions from rough intent or an accepted opportunity through proportional specification, specialist design and evaluation, authorized implementation, independent review, verification, and evidence-based closure. Use when a user wants one resumable flow, an evolving repository-backed specification or work surface, and help selecting the next appropriate skill without remembering the catalog; especially for a feature or change effort that crosses several decisions or work modes but does not yet require multi-team program execution. Keep small reversible changes inline, use either an owning repository or an existing control repository for durable state, and route multi-team delivery to technical-program-execution.
---

# Software Change Orchestration

Keep one software change moving through the smallest useful sequence of decisions, artifacts, actions, and evidence. Maintain continuity without turning the catalog into a mandatory lifecycle or taking ownership from the specialized skills.

## Preserve authority and canonical ownership

- Distinguish discussion, repository-document writes, code changes, external-system writes, and production actions. Perform only the modes the user authorized.
- Treat an explicit `authorized mode`, `auto mode`, or goal to execute an accepted bounded change through closure as pre-authorization for repository-record writes, in-scope implementation, internal skill routing, delegated read-only review, and verification. Before implementation, seed or update the smallest repository-backed canonical specification or change record with `Authorized modes: record writes, implementation, delegated review, verification`, the accepted scope and explicit non-goals, and the escalation conditions. Compact work may use a short existing README, issue mirror, or specification section; it still needs a durable record in authorized execution, but never a directory or large template merely for ceremony.
- In that mode, do not pause for workflow, skill, test, or subagent approval. Pause for the user only when progress requires a material scope change, a new external or production action, a destructive action, or an accountable decision that changes supported behavior. Handle ordinary failed checks, review findings, and in-scope remediation autonomously without claiming closure. This mode does not override repository, platform, or safety constraints.
- Authorized execution does not permit translating an accepted outcome into a narrower implementation proxy. Preserve the originating request, issue, or accepted specification's behavior meaning in the canonical record before deriving implementation claims. If plausible interpretations would materially change supported behavior, use the recorded behavior-decision escalation rather than choosing the easiest interpretation.
- Treat an explicit statement permitting canonical specification or change-record writes as repository-document authority only. When durable persistence is justified but a custom invocation does not grant that authority, ask before substantial specialist analysis. If the user declines, continue only as explicitly ephemeral discussion and return a compact copy-ready checkpoint; do not imply that the effort is resumable from repository state.
- Identify the accountable change owner and the owners of material product, domain, architecture, contract, security, data, operational, and risk interpretations. Facilitate and recommend; do not manufacture approval.
- Let each specialized skill own its artifact and judgment. Route work to that skill, preserve its stable keys and plain-language labels, and link its result rather than copying it into an orchestration document.
- Expect specialist skills to be explicit-only and absent from the initial model context. Before applying a routed workflow, resolve its sibling `../<skill-name>/SKILL.md` from this skill's directory and read the full contract; do not reconstruct it from the route label. If the skill is unavailable, preserve the named route and ask for explicit `$skill-name` invocation rather than approximating its workflow.
- Keep independent challenge independent. A producing or implementing pass must not use this skill to certify its own design, code, evidence, release, or residual risk.
- Use the repository, issue tracker, decision log, and documentation surfaces where the work already lives. Prefer an existing specification or issue as the living canonical work surface when it can absorb the accepted contract, evidence, and any durable handoff state without confusion. Do not create a parallel reporting system merely to host orchestration fields.

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

## Maintain a living specification

For owning-repository, control-repository, and hybrid efforts, create or update the smallest viable canonical specification or work surface before substantial specialist analysis once repository-document writes are authorized. Seed only the accepted destination, boundaries, preserved behavior, known constraints, current status, and available evidence; do not wait for the design to look complete.

- Integrate each accepted specialist result into the section it changes before implementation or another downstream action depends on it. Preserve important rationale and rejected alternatives beside the selected contract only when they prevent likely drift or regression; do not append a generic decision ledger or session transcript.
- Let the specification grow with the effort. Split out a decision record, detailed design, transition plan, or verification artifact only when its size, owner, audience, or review and evidence lifecycle makes independent maintenance useful. Keep the main specification canonical and link the complementary artifact.
- Keep the immediate frontier in the active session or goal during uninterrupted work. Persist a short resume point only before a pause, handoff, blocked state, session change, or other non-obvious re-entry. Remove transient routing state at closure while retaining durable follow-up conditions.
- Treat a Codex goal or thread as execution state, not repository memory. It may point to the canonical specification but must not replace it.
- Re-read the canonical work surface and material worktree state before updating it. Integrate concurrent changes rather than overwriting another session's accepted state.

## Set the assurance posture and workflow budget

Derive the posture from consequence, reversibility, ambiguity, compatibility and data exposure, operational reach, coordination, and proof difficulty. Raw file count and diff size are signals, not the deciding rule.

- **Compact:** Local, reversible, low-consequence work with an obvious contract. Use one primary skill or executor, inline state for discussion or one minimal repository-backed record for authorized execution, focused checks, and direct closure. Do not create an orchestration directory.
- **Standard:** Several surfaces or a meaningful state, lifecycle, compatibility, or ownership decision. Use one living specification, at most one substantial design route at a time, one primary executor, independent review, focused incremental checks, and one successful closure run on the final candidate snapshot.
- **High-assurance:** Security, destructive or hard-to-reverse data change, broad compatibility, production control, regulated behavior, or difficult recovery. Add only the independently owned design, transition, release, operational, and verification artifacts and evidence required by those risks.

Treat the workflow budget as a limit on coordination overhead: the number of full specialist workflows, primary executors, durable artifacts, independent passes, and breadth of repeated verification justified before the next decision. Derive it automatically and revise it only when new evidence changes the consequence or proof burden. Do not invoke a full downstream skill merely to borrow one useful check.

Artifact shape follows independently maintained knowledge, not the posture label alone. Compact work normally stays inline; standard work normally uses one living specification; high-assurance work may justify a directory only when at least two artifacts need distinct owners, audiences, or review and evidence lifecycles.

## Compose by owned deltas

Give each routed skill the accepted scope and non-goals, canonical specification and relevant keys, selected design or unresolved question, authorized modes, assurance posture, valid evidence, and the exact judgment or action it owns.

- Require the routed skill to consume accepted upstream context rather than repeat discovery, framing, or closure criteria.
- Let it challenge an upstream fact only when current repository evidence contradicts it or a missing fact blocks its owned task.
- Require it to produce only its owned delta: the new decision, implementation, finding, evidence, invalidation, blocker, or smallest next move.
- Keep one primary owner for the current move. Borrow a named check from a neighboring skill when useful; do not stack the neighbor's complete workflow around the primary owner.

## Reuse snapshot-bound evidence

Maintain a compact active evidence index rather than repeating command narratives across skills. Bind each entry to a claim, command or method, result, environment when material, raw evidence location when available, and candidate snapshot identity. Prefer a commit identity when a coherent milestone commit already exists and local-history writes are authorized; otherwise use a base revision plus a working-tree or diff fingerprint. Do not create commits merely to mark skill transitions.

Consume existing evidence when its snapshot, environment, method, and claim still match. Invalidate only the claims affected by later code, tests, fixtures, configuration, data, or environment changes. A reviewer may inspect and challenge producer evidence without rerunning it automatically. Require broader independent execution only when the evidence is stale, incomplete, suspicious, mismatched, high-consequence, or changed by remediation.

## Run the orchestration loop

1. **Establish the operating mode.** Confirm whether the user wants discussion, repository-document maintenance, implementation, review, verification, or some combination. Treat "discuss," "specify," "design," and "review" as read-only for code and external systems unless separately authorized. If durable persistence becomes justified and document-write authority is absent, request it before a context-heavy specialist pass.
2. **Load the current truth.** Read applicable repository guidance, the existing change record or issue, relevant specifications and decisions, current code and tests, and material worktree state. On resumption, verify that referenced branches, revisions, pull requests, paths, and assumptions still match reality. Distinguish specified, accepted, implemented at a revision, integrated into the target, verified in an environment, and released; none implies the next automatically.
3. **State the destination.** Capture the outcome, why it matters, behavior or risk boundary, explicit non-goals, closure evidence, accountable owner, and consequence of being wrong. If these are too uncertain to bound an accepted software change, route to product opportunity work rather than inventing a feature contract.
4. **Choose effort depth and persistence.** Select inline, owning-repository, control-repository, or hybrid mode from consequence, ambiguity, duration, coordination, and likely reuse. Explain any durable artifact before creating it. For a durable mode with write authority, seed or update the living canonical work surface now rather than after design or implementation. Authorized execution always uses at least the smallest repository-backed record and writes its authority, scope, non-goals, and escalation boundary before implementation.
5. **Set the workflow budget and frontier.** Derive compact, standard, or high-assurance posture; name the primary owner for the current move, artifact allowance, evidence reuse, and closure breadth. Then ask what material question, decision, action, or evidence most limits safe progress now. Keep later uncertainty as a short fog list; do not pre-create a complete stage plan for work whose shape depends on unresolved decisions.
6. **Route one bounded move.** Use the smallest owning skill that can retire the frontier uncertainty. Common routes include `software-change-specification` for an accepted but ambiguous behavior change, `domain-modeling` for disputed meaning, `deep-module-design` or `service-boundary-design` for structural ownership, `software-contract-evolution` for shared compatibility, `architecture-risk-evaluation` for consequential quality assumptions, and `technical-decision-making` for accountable closure.
7. **Integrate without duplicating.** Write accepted results through to the relevant specification sections before a downstream action depends on them. Preserve evidence status, contract keys and labels, implications, invalidated assumptions, and linked artifacts. Persist the next frontier only when durable re-entry requires it. Extend an existing specification or issue when it remains the best record; create a separate orchestration record only when no existing artifact can preserve the cross-artifact state cleanly. Keep generic decision ledgers, debate transcripts, session diaries, and copied specialist templates out of durable state.
8. **Test implementation readiness.** Require an understood behavior contract, owned material decisions, explicit non-goals, authorization, and risk-proportionate feedback. Use `verification-strategy-design`, `observability-design`, `controlled-release-design`, or `high-risk-change-planning` only when their uncertainties are material; do not require them as stages.
9. **Implement through one primary executor.** Before implementation, re-read the canonical specification and confirm that accepted behavior, design, non-goals, authorized slice, and material evidence are current. Route a pure structural change with preserved supported behavior to `behavior-preserving-refactoring`; route an intended observable behavior change to `scoped-change-implementation`. For a mixed change, split explicit slices when practical or name one primary executor and borrow only the necessary checks from the other contract. Never wrap a pure refactor in the full scoped-implementation workflow. If code or runtime evidence contradicts the specification or design, preserve the counterexample, stop expansion, and update or reopen the owning contract rather than silently revising history.
10. **Challenge independently and proportionately.** Route the final bounded change to `code-review` with its exact snapshot, accepted contract, and valid evidence index. Independence requires fresh judgment and authority to reject, not automatic repetition of every producer command. Use focused challenge first; use `verification-execution` or broader reruns only when the posture, evidence limits, remediation, or changed snapshot warrants them. Integrate finding dispositions, new evidence, invalidations, and contract changes into the owning specification or linked evidence artifact. When remediation changes reviewed code or behavior, obtain focused independent confirmation of the affected findings on the new snapshot; do not repeat the entire review unless its other judgments were invalidated.
11. **Run closure once per final candidate.** After all in-scope remediation, execute one successful risk-proportionate closure set against the final candidate snapshot. Failed attempts do not count, and relevant code, test, fixture, configuration, data, or environment changes create a new candidate for affected claims. Reuse still-valid evidence rather than rerunning it because another skill started.
12. **Close or stop deliberately.** Record delivered behavior, evidence actually observed, accepted deviations, support and operating ownership, cleanup, unresolved risk, and accountable closure. Mark stopped or deferred efforts with the reason and re-entry condition. Preserve stable paths; move artifacts to an archive location only when the repository already uses that convention or the user requests it.

During uninterrupted work, keep the immediate frontier in the active session. Before a pause, handoff, blocked state, or session change, leave a proportionate resume point recoverable from the canonical work surface. Do not require one skill or one document per session.

## Quality gates

- The effort has one bounded outcome and closure condition rather than a repository-sized aspiration.
- Persistence is proportional: trivial work has no orchestration folder, while long-lived or distributed work has durable, discoverable state.
- A durable effort seeds its living canonical work surface before substantial specialist analysis and writes accepted results through before dependent implementation.
- One canonical work surface carries the evolving accepted contract and links rather than duplicates independently owned artifacts.
- Transient routing stays in the active session; durable handoff state is recorded only when re-entry would otherwise be ambiguous.
- The derived assurance posture and workflow budget prevent stacked full-strength skills, duplicate executors, and unjustified artifacts or reruns.
- The canonical scope preserves the behavior meaning of the originating request or accepted source; it does not silently narrow an outcome into a convenient implementation proxy.
- Each routed skill consumes accepted upstream state and returns only its owned delta, contradictions, invalidated evidence, blockers, and smallest next move.
- Evidence is reusable only for matching claims, snapshots, methods, and material environments; invalidation is scoped rather than global.
- Pure structural and intended behavior changes have mutually exclusive primary executors by default.
- Artifact state distinguishes specification, acceptance, implementation, target integration, environment-specific verification, and release.
- The selected next skill owns the actual missing judgment or action.
- Optional catalog composition remains conditional on demonstrated uncertainty, consequence, or coordination need.
- Specification readiness, implementation authorization, review findings, verification evidence, release authority, and residual-risk acceptance remain distinct.
- Resumption begins from current repository and artifact evidence, not stale orchestration prose alone.
- Closure reports outcome evidence and remaining ownership instead of declaring success from completed stages.

## Reject orchestration theater

- A fixed sequence that invokes every design, planning, implementation, and verification skill.
- Running `behavior-preserving-refactoring` and `scoped-change-implementation` as stacked executors for the same pure structural slice.
- Repeating accepted framing, full-suite evidence, or closure reporting merely because control moved to another skill or reviewer.
- A `projects/` directory for every typo, local bug, or reversible change.
- One giant record for unrelated improvements that happen to affect the same product or repository.
- A control repository that becomes a stale duplicate of code-local specifications, decisions, tests, or operational evidence.
- Delaying the first justified durable write until implementation begins, the context is already long, or the session is ending.
- A generic decision ledger that duplicates accepted scope and design instead of updating the living specification.
- Status prose, skill-call history, or meeting notes that do not preserve a decision, contract, evidence limit, or next action.
- Reopening accepted decisions without new evidence, or hiding changed decisions by overwriting their rationale.
- Treating document completion as implementation readiness or implemented code as proof that the intended outcome is correct.
- Continuing orchestration after a specialized owner, accountable human, or safety boundary has required a stop.

## Distinguish blockers from process debt

Do not advance past missing authority, materially ambiguous supported behavior, unsafe state or ownership, failed required verification, or unresolved actionable review findings. In authorized mode, investigate and remediate these autonomously while they remain inside the accepted scope; escalate only under the four recorded conditions.

Do not block the whole effort on optional narrative, nonessential metrics, still-valid evidence not yet rerun, artifact polish, or a recommended check whose claim is already covered by stronger evidence. Record a limitation only where it narrows a claimed result or future action.

## Completion

Return or update the bounded outcome, persistence mode and canonical location, current contract, artifact and evidence links, active-session frontier, next owning skill or action, authority still required, and completion condition. Include a durable re-entry point only when work is pausing, blocked, or changing hands. If no durable record is justified, say why the inline path is sufficient.
