---
name: handoff
description: Compact an active agent session into a source-linked handoff a fresh agent can resume. Use for session change, context reset, pause, delegation, or non-obvious re-entry. Preserve current state, evidence, constraints, authority, and next action. Prefer an owning canonical resume surface; use temporary files only for accessible same-environment transfer. Exclude completed work and routine status.
---

# Handoff

Preserve the smallest truthful state that lets a fresh agent continue safely.
Treat the handoff as task-scoped working memory, not as a transcript, status
performance, or second source of truth.

## Preserve scope and safety

- Use the user's stated next-session focus to decide what survives compaction.
  If none is supplied, preserve the current objective and limiting frontier.
- Inspect discoverable current state before writing. Reconcile conversation
  claims with canonical artifacts, repository state, executed evidence, and
  external state available to the session.
- Treat an existing repository-backed change record, specification, issue, or
  program surface that owns continuation as canonical. Persist durable
  objective, decision, and re-entry state there when authorized. Use a separate
  handoff only for session-local context.
- If the owning record is stale and cannot be updated, name the mismatch and
  make reconciliation the first action. Link other canonical artifacts with a
  short relevance note instead of copying their contents.
- Separate completed, observed, inferred, assumed, proposed, unresolved, and
  blocked state. Never convert intent, an unexecuted plan, or a partial result
  into completion.
- Preserve authority boundaries, required approvals, dangerous actions, and
  re-entry conditions. A handoff transfers context, not permission.
- Redact secrets, credentials, tokens, private personal data, and unnecessary
  sensitive material. Preserve a safe retrieval instruction only when the next
  agent is authorized to use it.

## Handoff workflow

1. **Set the continuation boundary.** Name the next agent's objective, expected
   scope, first decision or action, environment, and artifact access.
2. **Recover current truth.** Inspect the latest canonical artifacts, worktree
   or task state, executed checks, unresolved decisions, and recent failures.
   Prefer current evidence over stale conversational claims.
3. **Choose the owning surface.** Use an established canonical resume surface
   for persistent state when one exists and the update is authorized. If it
   cannot be updated, identify the ownership mismatch and limit a parallel
   handoff to the session delta plus reconciliation. Use the full standalone
   form only when no canonical resume surface exists.
4. **Select load-bearing context.** Preserve decisions, constraints, changed
   surfaces, evidence, failed approaches that prevent repetition, important
   unknowns, and the immediate frontier. Drop abandoned discussion and detail
   recoverable cheaply from linked artifacts.
5. **Write the handoff.** Use
   [references/handoff-record.md](references/handoff-record.md) as a flexible
   completion contract. Include suggested skills only when they match a named
   next activity or unresolved specialist judgment not already routed by the
   owning surface.
6. **Choose accessible transport.** Use the exact user-specified path when
   given, but do not move durable state ownership there. Use a uniquely named
   file in the operating system's temporary directory only when the next agent
   can access the same environment and the transfer is ephemeral. For
   cross-environment or unknown access, use an accessible user-approved
   location; if none exists, return the handoff inline and identify transport
   as unresolved. Do not overwrite an unrelated handoff.
7. **Run a cold-start check.** Read the handoff and its canonical links as if
   the conversation were unavailable. Confirm that a fresh agent can identify
   what is true, what remains, what not to redo, which sources to inspect, what
   authority it has, and the first safe next move.
8. **Report the result.** Return the owning surface or handoff path and a
   one-sentence continuation summary. State any material state that could not
   be verified or safely preserved.

If the task is complete and has no continuation state, explain that a handoff
is unnecessary unless the user explicitly wants a completion record.

## Quality gates

- The handoff is bounded to the next session's objective.
- Current state and completion claims match inspected evidence.
- The immediate frontier, next action, owner, authority, and stop conditions
  are explicit where relevant.
- Persistent continuation state remains with its canonical owner; a parallel
  handoff contains only the session delta.
- Canonical artifacts are linked and not paraphrased into competing authority.
- Failed or deferred work is included only when it prevents repeated mistakes
  or changes the next decision.
- Sensitive information is absent or safely routed.
- The next agent can access the continuation surface and resume without the
  original transcript or guesses about what has already been done.

## Reject weak handoffs

- A conversation summary without an executable next frontier is not complete.
- A raw transcript, long chronology, or full diff spends context without
  transferring useful state.
- A polished narrative must not hide contradictory evidence, uncertainty,
  partial completion, or missing authority.
- A list of files without relevance, validity, and current status forces the
  next agent to reconstruct the session.
- Suggested skills are not a substitute for naming the missing decision or
  action each skill would own.
