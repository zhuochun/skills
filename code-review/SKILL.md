---
name: code-review
description: Review a proposed or completed software change against its stated intent, repository constraints, supported behavior, evidence, and future change cost, producing prioritized actionable findings without modifying the target. Use for working-tree, commit, branch, pull-request, generated-code, migration, configuration, or mixed software changes when the user wants code review, implementation review, maintainability review, regression-risk review, or an independent challenge before merge or release. Use architecture-risk-evaluation for whole-architecture scenarios and codebase-architecture-assessment for portfolio-wide diagnosis.
---

# Code Review

Judge the change, not the author's narrative or the volume of activity. Recover enough intent and surrounding behavior to find consequential disagreements while keeping findings proportional, local, and actionable.

## Preserve reviewer independence and scope

- Work read-only. Do not edit files, resolve findings, stage changes, publish comments, approve, merge, or release unless the user separately authorizes that action.
- Establish the review range: working tree, staged changes, commit, branch against merge base, pull request, or named artifact. Preserve the exact base and head identities when available.
- Recover the change intent, acceptance criteria, non-goals, repository instructions, relevant decisions, and claimed evidence. Treat missing intent as a review limitation, not permission to invent a specification.
- Inspect the changed artifact and enough surrounding code, tests, schemas, configuration, consumers, runtime semantics, and history to evaluate the diff in context. Do not turn a change review into an unbounded codebase assessment.
- Keep generation and judgment distinct. The reviewer may use tool-backed checks and fresh context, but a different role label without different criteria, evidence, or permission to reject does not create independence.

## Review workflow

1. **Pin scope and intent.** Record base/head or working-tree state, commits, change description, desired behavior, non-goals, compatibility and operational commitments, and consequence if wrong. Note unrelated changes and exclude them unless they affect the reviewed behavior.
2. **Read the diff as a behavioral claim.** Summarize what the change actually adds, removes, redirects, or makes authoritative. Trace important paths from input through decisions, state, effects, outputs, and cleanup rather than reviewing hunks as isolated syntax.
3. **Check specification fit.** Compare implementation with requested outcomes, edge cases, support policy, and explicit constraints. Identify missing behavior, unintended behavior, scope creep, and requirements satisfied only superficially.
4. **Check correctness and contract risk.** Examine invariants, authorization, validation, data authority, compatibility, ordering, concurrency, retries, idempotency, failure semantics, resource lifecycle, cleanup, security, privacy, and operator controls in proportion to the change.
5. **Check change locality and ownership.** Ask whether the change puts knowledge, state, representation, and effects under clear owners or spreads a new rule through flags, helpers, layers, and consumers. Flag dual authority, hidden dependencies, pass-through abstractions, speculative generality, and repeated unsafe invariants.
6. **Check meaning and maintainability.** Evaluate whether names, interfaces, tests, layout, and rationale let the next maintainer recover purpose and constraints. Distinguish necessary complexity from noise, and current readability from likely future change amplification.
7. **Evaluate evidence, not test volume.** Map tests and executed checks to the behavior and risks they can falsify. Look for tautological assertions, implementation-coupled tests, absent consumer evidence, unexercised failure paths, stale snapshots, and claimed checks not actually run. Use `$verification-execution` when the user asks the reviewer to execute a broader evidence strategy.
8. **Challenge independently.** Seek counterexamples at changed boundaries and mixed states. Use repository tools when safe and read-only, but do not create findings from generic preference, style already enforced by tooling, or hypothetical architecture unrelated to the change.
9. **Prioritize findings.** Rank by demonstrated consequence, reach, reversibility, and confidence. For each actionable finding, name the affected behavior, evidence, impact, and smallest credible repair direction. Keep uncertainty visible and phrase questions as questions.
10. **Report review outcome.** Lead with findings ordered by severity, each anchored to the tightest file and line. Then state assumptions, evidence run, residual risks, and whether no actionable findings were found. A clean review means no findings within the inspected scope and evidence—not certification of the entire system.

Use [references/change-review.md](references/change-review.md) for the knowledge-derived review model, risk lenses, severity calibration, and finding format.

## Quality gates

- The reviewed range and intent are explicit and reproducible.
- Findings arise from the change and relevant surrounding behavior, not generic taste.
- Each finding names evidence, impact, and a repair direction without implementing it.
- Severity reflects consequence and reach rather than rhetorical confidence.
- Supported behavior, consumer contracts, data, failure, and operations receive attention when affected.
- Review distinguishes missing evidence from proven incorrectness.
- Automated or agent-generated changes receive the same ownership and maintainability scrutiny as human changes.
- The report can honestly say when no actionable findings were found.

## Reject review theater

- Do not reward a small diff, many tests, clean formatting, or plausible explanation without tracing behavior.
- Do not flood the report with style preferences, speculative edge cases, or pre-existing problems unrelated to the change.
- Do not assume generated code is lower quality or that passing generated tests prove it correct.
- Do not ask every reviewer or tool to repeat the same criteria and call the repetition independent evidence.
- Do not collapse a whole-codebase architecture concern into an inline finding without showing how this change worsens it.
- Do not hide a consequential behavioral issue below numerous minor maintainability notes.
- Do not approve or reject release on behalf of the accountable owner.
