---
name: software-change-orchestration
description: Orchestrate one bounded software change from rough intent or an accepted opportunity through proportional specification, specialist design, authorized implementation, independent review, verification, and evidence-based closure. Use when a user wants a resumable repository-backed flow and help selecting the next specialist without remembering the catalog. Keep small reversible discussion inline, choose repository persistence by outcome ownership, and route multi-team delivery to technical-program-execution.
---

# Software Change Orchestration

Keep one software change moving through the smallest useful sequence of decisions, artifacts, actions, and evidence. Maintain continuity without turning the catalog into a mandatory lifecycle or taking ownership from specialist skills.

## Preserve authority and accepted meaning

- Distinguish discussion, repository-record writes, implementation, external-system writes, production actions, destructive actions, and local-history writes. Perform only authorized modes.
- Treat explicit `authorized mode`, `auto mode`, or a goal to execute an accepted bounded change through closure as authorization for repository-record writes, in-scope implementation, internal skill routing, delegated read-only review, and verification. Before implementation, seed or update the smallest repository-backed canonical record with:
  - `Authorized modes: record writes, implementation, delegated review, verification`
  - accepted scope and explicit non-goals;
  - `Escalation conditions: material scope change; new external or production action; destructive action; decision that changes supported behavior`.
- In that mode, do not pause for workflow, skill, reviewer, test, or in-scope remediation approval. Pause only at a recorded escalation condition. External, production, destructive, and local-history actions remain separately authorized. Repository, platform, and safety constraints still apply.
- Preserve the behavior meaning of the originating request, issue, or accepted specification. Do not narrow an outcome into an easier implementation proxy. Escalate when competing interpretations would change supported behavior.
- Treat permission to maintain a canonical record as document authority only unless broader modes are explicit. If a durable record is justified without document authority, ask before substantial specialist analysis; if declined, remain explicitly ephemeral and return a compact copy-ready checkpoint.
- Identify accountable change and interpretation owners. Specialists own their judgments and artifacts; orchestration routes and integrates them. A producer cannot certify its own design, implementation, evidence, release, or residual risk.

## Bound the effort and its record

Define one **change effort** by one outcome, a coherent behavior or risk boundary, and a closure condition. Group slices only when they share the decisions or invariants that determine completion.

- Keep unrelated enhancements and bugs separate unless they are necessary for the active outcome.
- Route unexplained failures to `software-failure-diagnosis`, competing opportunities to product discovery or prioritization, and interdependent multi-team delivery to `technical-program-execution`.

Choose persistence by ownership and re-entry need:

1. **Inline:** Local, reversible work with clear behavior, one owner, no consequential unresolved decision, and a short feedback loop. Keep discussion or a compact implementation contract in the active task and use the appropriate primary executor; create no orchestration directory.
2. **Owning repository:** One repository owns the behavior and its existing specification, issue, design, or change surface is the natural source of truth.
3. **Control repository:** No code repository owns the outcome, or an established product or system repository already coordinates the cross-repository decisions. Link code-local artifacts rather than copying them.
4. **Hybrid:** One control record indexes important specifications, decisions, implementations, or evidence that remain canonical with their owners.

Explicit authorized execution always uses at least one minimal repository-backed record, even when compact. Never create a new control repository, relocate artifacts, or create a directory merely to host one file without authorization and demonstrated need.

Maintain one living canonical work surface:

- Seed accepted outcome, scope, preserved behavior, constraints, authority, and available evidence before substantial specialist analysis when record writes are authorized.
- Integrate each accepted specialist delta before dependent work. Keep rationale only when losing it would cause likely drift; do not append a decision ledger or session transcript.
- Split artifacts only when ownership, audience, size, or review and evidence lifecycle requires independent maintenance. Keep canonical links instead of copies.
- Keep the immediate frontier in the active session during uninterrupted work. Persist a resume point only for a pause, block, handoff, session change, or non-obvious re-entry; re-read the record and worktree before updating it.

Read [references/change-orchestration.md](references/change-orchestration.md) only when repository placement is unclear, multiple artifacts may need independent lifecycles, a compact record form is useful, or the next specialist route is uncertain.

## Set the workflow budget

Derive assurance from consequence, reversibility, ambiguity, compatibility and data exposure, operational reach, coordination, and proof difficulty. File count and diff size are only signals.

- **Compact:** Local, reversible, low-consequence work with an obvious contract. Use one primary skill or executor, focused checks, direct closure, and either inline discussion or one minimal record for authorized execution.
- **Standard:** Several surfaces or a meaningful state, lifecycle, compatibility, or ownership decision. Use one living specification, one primary executor, independent review, focused incremental checks, and one successful closure set.
- **High-assurance:** Security, destructive or hard-to-reverse data, broad compatibility, production control, regulated behavior, or difficult recovery. Add only risk-owned design, transition, release, operational, and verification work.

The **workflow budget** limits coordination overhead: full specialist workflows, primary executors, durable artifacts, independent passes, and repeated verification breadth. Derive it automatically and revise it only when evidence changes the consequence or proof burden. Artifact shape follows independently maintained knowledge, not the posture label alone.

## Compose by owned deltas

Give a routed skill the originating request, accepted scope and non-goals, canonical location and stable keys, selected decisions or unresolved question, authorized modes, assurance posture, valid evidence, and the exact judgment or action it owns.

Require it to:

- consume accepted upstream context instead of repeating discovery, framing, or closure planning;
- challenge upstream state only when evidence contradicts it or a missing fact blocks honest work;
- return only its owned decision, implementation, finding, evidence, invalidation, blocker, or smallest next move.

Keep one primary owner for the current move. Borrow a named check from a neighboring skill when useful; do not wrap the primary owner in another complete workflow.

## Reuse snapshot-bound evidence

Maintain a compact active evidence index. Bind each entry to a claim, method, result, candidate snapshot, material environment, raw evidence location when available, and validity limit. A coherent milestone commit is a strong snapshot identity only when local-history writes are authorized; otherwise use the base revision plus a working-tree or diff fingerprint. Do not commit merely to mark skill transitions.

Reuse evidence while its claim, snapshot, method, and material environment still match. Invalidate only affected claims after relevant code, tests, fixtures, configuration, data, or environment changes. Documentation-only changes normally preserve runtime evidence. Reviewers may inspect and challenge producer evidence without rerunning it automatically; execute more when evidence is stale, incomplete, suspicious, mismatched, high-consequence, explicitly independent, or invalidated by remediation.

## Run the orchestration loop

1. **Load authority and current truth.** Confirm authorized modes; read repository guidance, originating intent, canonical records, decisions, code, tests, evidence, and material worktree state. Distinguish specified, accepted, implemented, integrated, verified, released, and closed.
2. **State the destination.** Capture outcome, behavior or risk boundary, non-goals, preserved commitments, closure evidence, accountable owner, and consequence of error. Route unresolved opportunity selection rather than inventing a feature contract.
3. **Choose persistence and budget.** Select inline, owning-repository, control-repository, or hybrid mode and compact, standard, or high-assurance posture. Seed the canonical record immediately when required and authorized.
4. **Route the limiting frontier.** Send one bounded question or action to the smallest owning skill. Use `software-change-specification` for ambiguous accepted behavior, domain or design skills for disputed meaning or ownership, contract evolution for compatibility, and accountable decision-making for consequential closure.
5. **Integrate the delta.** Update the owning specification section, evidence status, stable keys and labels, implications, and invalidated assumptions. Do not duplicate the specialist artifact or persist transient routing without a re-entry need.
6. **Test implementation readiness.** Require understood behavior, owned material decisions, explicit non-goals, authorization, and risk-proportionate feedback. Add verification, observability, release, or transition design only when their uncertainty is material.
7. **Use one executor.** Route a pure structural change with preserved supported behavior to `behavior-preserving-refactoring`; route an intended observable behavior change to `scoped-change-implementation`. Split a mixed change or nominate one primary executor and borrow only the other contract's needed checks. Reopen the owning decision when code contradicts the accepted contract.
8. **Challenge and close proportionately.** Send the final bounded candidate, accepted contract, and valid evidence index to `code-review`. After in-scope remediation, obtain focused independent confirmation of affected findings and run one successful risk-proportionate closure set on the final candidate. Reuse unaffected evidence.
9. **Close or stop deliberately.** Record delivered behavior, observed evidence and limits, accepted deviations, operational and support ownership, cleanup, residual risk, and accountable closure. For stopped or deferred work, record why and the re-entry condition.

## Gates and stop conditions

Do not advance past missing authority, materially ambiguous supported behavior, unsafe state or ownership, failed required verification, or unresolved actionable review findings. In authorized mode, investigate and remediate these autonomously while they remain inside the accepted scope; escalate only under the four recorded conditions.

Do not block the effort on optional narrative, nonessential metrics, still-valid evidence not rerun, artifact polish, or a weaker check already covered by stronger evidence. Record a limitation only where it narrows a claimed result or future action.

Reject:

- fixed stage sequences, stacked executors, or full specialist workflows invoked only to borrow one check;
- canonical records that narrow the originating behavior or duplicate owned specifications, decisions, tests, or evidence;
- orchestration directories, generic ledgers, session diaries, and status prose without a decision, contract, evidence limit, or re-entry value;
- repeated framing, review, full-suite execution, or closure reporting merely because control moved to another skill;
- closure inferred from document completion, implementation, test volume, or the producer's confidence;
- continued orchestration after an accountable owner, specialist, or safety boundary requires a stop.

## Completion

Return or update the bounded outcome, canonical location, accepted contract, relevant artifact and evidence links, current frontier or delivered state, authority still required, and completion or re-entry condition. If discussion remains inline, say why no durable record is needed.
