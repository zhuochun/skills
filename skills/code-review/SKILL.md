---
name: code-review
description: Review a proposed or completed software change against its intent, constraints, supported behavior, evidence, and future change cost without modifying it. Use for working-tree, commit, branch, pull-request, generated-code, migration, or configuration review before merge or release. Route whole-architecture scenarios to architecture-risk-evaluation and portfolio diagnosis to architecture-assessment.
---

# Code Review

Judge the change, not the author's narrative or the volume of activity. Recover enough intent and surrounding behavior to find consequential disagreements while keeping findings proportional, local, and actionable.

## Preserve reviewer independence and scope

- Work read-only. Do not edit files, resolve findings, stage changes, publish comments, approve, merge, or release unless the user separately authorizes that action.
- Establish the review range: working tree, staged changes, commit, branch against merge base, pull request, or named artifact. Preserve the exact base and head identities when available.
- Recover intent, acceptance, non-goals, repository instructions, decisions, and evidence. Compare canonical scope with the originating request or specification; flag silent narrowing to an easier proxy. Missing intent limits review, not licenses invention.
- When orchestration supplies an accepted contract, assurance posture, exact candidate snapshot, and evidence index, consume them without repeating the producer's framing. Challenge them when the diff or surrounding repository evidence contradicts the claim.
- Inspect the artifact and enough surrounding code, tests, schemas, configuration, consumers, runtime, and history for context. Do not widen into codebase assessment.
- Keep generation and judgment distinct. Independence requires fresh judgment, complete diff inspection, risk-path tracing, distinct evidence or criteria, and authority to reject—not a different role label or automatic repetition of every producer command.

## Clarify without negotiating the review

- Inspect the diff, repository evidence, and supplied intent independently before asking the author or owner. Even without an interactive exchange, surface material ambiguity, assumptions, evidence gaps, and review limitations.
- Ask only questions that can change judgment. Batch low-sensitivity independent questions; serialize when an answer changes interpretation or scope, ambiguity needs follow-up, sensitivity affects candor, or a gate controls relevance.
- When the user asks to grill, challenge, or stress-test the change, deepen counterexample search across behavior boundaries, invariants, failure paths, mixed states, and evidence validity. Do not turn the exchange into co-authoring the change, negotiating findings, or coaching the author toward answers that make the review pass.
- Treat unanswered questions as explicit limitations or findings according to their demonstrated consequence; never invent intent to avoid a conditional review outcome.

## Review workflow

1. **Pin scope and intent.** Record snapshot, change, desired behavior, non-goals, commitments, and cost of error. Exclude unrelated changes unless they affect reviewed behavior.
2. **Read the diff as a behavioral claim.** Summarize what the change actually adds, removes, redirects, or makes authoritative. Trace important paths from input through decisions, state, effects, outputs, and cleanup rather than reviewing hunks as isolated syntax.
3. **Check specification fit.** Compare implementation with requested outcomes, edge cases, support policy, and explicit constraints. Identify missing behavior, unintended behavior, scope creep, and requirements satisfied only superficially.
4. **Check correctness and contracts.** Proportionately examine invariants, authorization, validation, data authority, compatibility, order, concurrency, retries, idempotency, failures, resource lifecycle, cleanup, security, privacy, and controls. For runtime-affecting changes, trace latency, capacity, dependency failure, cancellation, observability, control paths, and recovery.
5. **Check change locality and ownership.** Ask whether the change puts knowledge, state, representation, and effects under clear owners or spreads a new rule through flags, helpers, layers, and consumers. Flag dual authority, hidden dependencies, pass-through abstractions, speculative generality, and repeated unsafe invariants. Recommend proportionate durable enforcement for recurring consequential findings instead of permanent reviewer memory.
6. **Check meaning and maintainability.** Evaluate whether names, interfaces, tests, layout, and rationale let the next maintainer recover purpose and constraints. Distinguish necessary complexity from noise, and current readability from likely future change amplification.
7. **Evaluate evidence, not volume.** Match checks to snapshot, environment, method, risk, and falsifiable behavior; inspect raw results when useful. Challenge tautologies, implementation-coupled tests, missing consumer or failure evidence, stale snapshots, and unrun claims. Rerun broadly or use `$verification-execution` only when evidence is invalid, incomplete, suspicious, or inadequate.
8. **Challenge independently.** Seek counterexamples at changed boundaries and mixed states. Use repository tools when safe and read-only, but do not create findings from generic preference, style already enforced by tooling, or hypothetical architecture unrelated to the change.
9. **Prioritize findings.** Rank by demonstrated consequence, reach, reversibility, and confidence. For each actionable finding, name the affected behavior, evidence, impact, and smallest credible repair direction. Keep uncertainty visible and phrase questions as questions.
10. **Report review outcome.** Lead with findings ordered by severity, each anchored to the tightest file and line. Then state assumptions, evidence run, residual risks, and whether no actionable findings were found. A clean review means no findings within the inspected scope and evidence—not certification of the entire system.

## Calibrate and structure findings

- **Critical:** Credible severe user, data, money, security, compliance, or availability harm; merge or release should stop pending accountable resolution.
- **High:** Material incorrect behavior, contract break, data risk, unsafe failure, or broad realistic regression.
- **Medium:** Bounded defect or structural decision likely to impose meaningful maintenance, reliability, or compatibility cost.
- **Low:** Local issue worth fixing but unlikely to affect important behavior or change economics.
- Lower confidence instead of inflating severity. A high-consequence question without a demonstrated path is residual risk or an evidence gap, not automatically critical.
- For each finding, include severity and confidence, tight location, changed behavior or assumption, evidence or counterexample, impact, why current evidence misses it, and the smallest repair direction.
- Separate evidence the reviewer executed from checks merely claimed and not independently run.

## Quality gates

- Range and intent are reproducible; findings arise from changed behavior, not taste.
- Each finding names evidence, impact, and repair direction without implementation.
- Severity reflects consequence and reach; missing evidence differs from incorrectness.
- Affected behavior, contracts, data, failures, operations, ownership, and maintainability are covered.
- The report can honestly state when no actionable findings were found.

## Reject review theater

- Small diffs, many tests, formatting, and plausible prose do not replace behavior tracing.
- Exclude style taste, speculative cases, and unrelated pre-existing problems.
- Generated code deserves equal scrutiny; generated tests are not proof.
- Repetition is not independence; full-suite reruns need a risk, validity, or snapshot reason.
- Tie architecture concerns to change impact, lead with consequential behavior, and never approve release for its owner.
