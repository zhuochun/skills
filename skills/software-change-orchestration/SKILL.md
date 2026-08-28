---
name: software-change-orchestration
description: Orchestrate one bounded software change when accepted decisions, evidence, and resume state must remain coherent across sessions, artifacts, or specialist owners. Keep clear uninterrupted work with its primary owner; do not use this as a default goal loop or mandatory path through specialists. Route interdependent multi-workstream delivery to technical-program-orchestration.
---

# Software Change Orchestration

Move one software change through the smallest useful set of decisions, artifacts, actions, and evidence without creating a mandatory lifecycle or taking specialist ownership.

## Preserve authority and accepted meaning

- Distinguish discussion, repository-record writes, implementation, external-system writes, production actions, destructive actions, and local-history writes. Perform only authorized modes.
- Treat explicit `authorized mode`, `auto mode`, or a goal to execute an accepted
  bounded change through closure as authorization for record writes, in-scope
  implementation, internal routing, delegated read-only review, and verification.
  Before implementation, when resumability or artifact ownership requires durable state, seed or update the smallest repository-backed record with:
  - `Authorized modes: record writes, implementation, delegated review, verification`
  - accepted scope and explicit non-goals;
  - `Escalation conditions: material scope change; new external or production action; destructive action; decision that changes supported behavior`.
- In that mode, continue without workflow, reviewer, test, or in-scope remediation
  approval until an escalation condition occurs. External, production, destructive,
  and local-history actions remain separately authorized; repository and safety constraints still apply.
- Preserve the originating behavior meaning. Escalate competing
  interpretations that change supported behavior instead of narrowing the
  outcome to an easier implementation.
- Treat record permission as document authority only. Without it, ask before
  durable specialist analysis; if declined, stay ephemeral and return a
  copy-ready checkpoint.
- Identify accountable change and interpretation owners. Specialists own their
  judgments; orchestration routes and integrates them. Producers cannot certify their own design, implementation,
  evidence, release, or residual risk.

## Bound the effort and its record

Define one **change effort** by one outcome, coherent behavior or risk boundary,
and closure condition. Group only slices sharing completion decisions or
invariants. Exclude unrelated work. Route unexplained failures to `software-failure-diagnosis`, competing
opportunities to product discovery or prioritization, and interdependent
workstreams to `technical-program-orchestration`.

Choose persistence by ownership and re-entry need:

1. **Inline:** Keep clear, local, reversible work in the active task with its
   primary executor; create no orchestration directory.
2. **Owning repository:** Use its existing issue, specification, design, or
   change surface when one repository owns the behavior.
3. **Control repository:** Use an established cross-repository outcome surface
   when no code repository owns the outcome. Link code-local artifacts.
4. **Hybrid:** Let one control record index artifacts that remain canonical
   with their owners.

Resumable, multi-artifact, or non-obvious re-entry work requires one existing or
minimal repository-backed surface. Keep clear uninterrupted work inline even
when implementation is authorized. Do not create a control repository, relocate
artifacts, or create a one-file directory without authorization and demonstrated
need.

When durable state is justified, maintain one living canonical work surface:

- Seed outcome, scope, preserved behavior, constraints, authority, and evidence
  before substantial specialist analysis.
- Integrate accepted specialist deltas before dependent work. Retain only
  rationale needed to prevent drift; do not append a ledger or transcript.
- Split artifacts only for independent ownership, audience, size, review, or
  evidence lifecycles; link rather than copy them.
- Keep the immediate frontier in session. Persist it only for a pause, block,
  handoff, session change, or non-obvious re-entry; reread current state first.

Read [references/change-orchestration.md](references/change-orchestration.md) only when repository placement is unclear, multiple artifacts may need independent lifecycles, a compact record form is useful, or the next specialist route is uncertain.

## Set the workflow budget

Derive assurance from consequence, reversibility, ambiguity, compatibility and data exposure, operational reach, coordination, and proof difficulty. File count and diff size are only signals.

- **Compact:** Local, reversible, low-consequence work with an obvious contract. Use one primary skill or executor, focused checks, and direct inline closure. Reuse or create one minimal record only when ownership or re-entry actually requires durable state.
- **Standard:** Several surfaces or a meaningful state, lifecycle, compatibility, or ownership decision. Use one living specification, one primary executor, independent review, focused incremental checks, and one successful closure set.
- **High-assurance:** Security, destructive or hard-to-reverse data, broad compatibility, production control, regulated behavior, or difficult recovery. Add only risk-owned design, transition, release, operational, and verification work.

The **workflow budget** limits full specialist workflows, primary executors, durable artifacts, independent passes, and repeated verification. Derive it automatically and revise it only when evidence changes consequence or proof burden. Artifact shape follows independent knowledge ownership, not posture alone.

## Compose by owned deltas

Give a routed skill the request, accepted scope and non-goals, canonical location and stable keys, selected decisions or unresolved question, authorized modes, assurance posture, valid evidence, and exact owned judgment or action.

Require it to:

- consume accepted upstream context instead of repeating discovery, framing, or closure planning;
- challenge upstream state only when evidence contradicts it or a missing fact blocks honest work;
- return only its owned decision, implementation, finding, evidence, invalidation, blocker, or smallest next move.

Keep one primary owner for the current move. Borrow named checks without wrapping that owner in another workflow.

## Reuse snapshot-bound evidence

Maintain a compact evidence index binding each entry to claim, method, result, candidate snapshot, material environment, raw evidence location when available, and validity limit. Use a milestone commit as identity only when local-history writes are authorized; otherwise use the base revision plus a worktree or diff fingerprint. Do not commit to mark skill transitions.

Reuse evidence while claim, snapshot, method, and material environment match. Invalidate only affected claims after relevant code, tests, fixtures, configuration, data, or environment changes; documentation-only changes normally preserve runtime evidence. Reviewers need not rerun producer evidence automatically. Execute more when it is stale, incomplete, suspicious, mismatched, high-consequence, explicitly independent, or invalidated.

## Run the orchestration loop

1. **Load authority and truth.** Confirm authorized modes; read repository guidance, intent, canonical records, decisions, code, tests, evidence, and material worktree state. Distinguish `specified`, `accepted`, `implemented`, `integrated`, `verified`, `released`, and `closed`.
2. **State the destination.** Capture outcome, behavior or risk boundary, non-goals, preserved commitments, closure evidence, accountable owner, and consequence of error. Route unresolved opportunity selection rather than inventing a feature contract.
3. **Choose persistence and budget.** Select `inline`, `owning-repository`, `control-repository`, or `hybrid` mode and `compact`, `standard`, or `high-assurance` posture. Seed a canonical record only when ownership or re-entry requires it and record writes are authorized.
4. **Route the limiting frontier.** Send one bounded question or action to the smallest owning skill. Use `software-change-specification` for ambiguous accepted behavior, `prototype-to-learn` for a disposable runnable answer to one behavior, state, UI, or interaction question, domain or design skills for disputed meaning or ownership, contract evolution for compatibility, and accountable decision-making for consequential closure.
5. **Integrate the delta.** Update the owning specification section, evidence status, stable keys and labels, implications, and invalidated assumptions. Do not duplicate specialist artifacts or persist transient routing without re-entry need.
6. **Test implementation readiness.** Require understood behavior, owned
   material decisions, explicit non-goals, authorization, and risk-proportionate
   feedback. When misunderstanding could propagate materially, send the fixed
   candidate to `specification-review` and integrate accepted repairs before
   implementation. Add verification, observability, release, or transition
   design only when their uncertainty is material.
7. **Use one executor.** Route a pure structural change with preserved supported behavior to `behavior-preserving-refactoring`; route an intended observable behavior change to `scoped-change-implementation`. Split a mixed change or nominate one primary executor and borrow only the other contract's needed checks. Reopen the owning decision when code contradicts the accepted contract.
8. **Challenge and close proportionately.** Use `code-review` when consequence, uncertainty, novelty, an explicit request, or the workflow budget requires independent challenge. Otherwise close compact work through the primary executor's focused observable checks. After material review remediation, obtain focused independent confirmation and run one successful risk-proportionate closure set. Reuse unaffected evidence.
9. **Close or stop deliberately.** Record delivered behavior, observed evidence and limits, accepted deviations, operational and support ownership, cleanup, residual risk, and accountable closure. For stopped or deferred work, record why and the re-entry condition.

## Gates and stop conditions

Do not advance past missing authority, materially ambiguous supported behavior,
unsafe state or ownership, failed required verification, or unresolved
applicable actionable review findings. In authorized mode, investigate and remediate
in-scope failures; escalate only at the four recorded conditions.

Do not block on optional narrative, polish, nonessential metrics, valid evidence
not rerun, or a weaker check already covered by stronger evidence. Record only claim- or action-limiting gaps.

Reject:

- fixed stages, stacked executors, or full workflows invoked for one check;
- records that narrow originating behavior or duplicate owned artifacts;
- orchestration directories, ledgers, diaries, or status prose without
  decision, evidence, or re-entry value;
- repeated framing, review, full-suite execution, or closure reporting caused
  only by a skill transition;
- closure inferred from documents, implementation, test volume, or producer
  confidence;
- continuation after an accountable owner, specialist, or safety boundary
  requires a stop.

## Completion

Return or update the bounded outcome, canonical location, accepted contract, relevant artifact and evidence links, current frontier or delivered state, authority still required, and completion or re-entry condition.
