---
name: code-review
description: Review a proposed or completed software change against its intent, constraints, supported behavior, evidence, and future change cost without modifying it. Use for working-tree, commit, branch, pull-request, generated-code, migration, or configuration review before merge or release. Route whole-architecture scenarios to architecture-risk-evaluation and portfolio diagnosis to architecture-assessment.
---

# Code Review

Judge the change, not its narrative or activity volume. Recover enough intent and surrounding behavior to find consequential, local, actionable disagreements.

## Preserve reviewer independence and scope

- Work read-only. Do not edit files, resolve findings, stage changes, publish comments, approve, merge, or release unless the user separately authorizes that action.
- Establish the review range: working tree, staged changes, commit, branch against merge base, pull request, or named artifact. Preserve the exact base and head identities when available.
- Recover intent, acceptance, non-goals, repository instructions, decisions, and evidence. Flag silent narrowing from canonical scope to an easier proxy; missing intent limits review rather than licensing invention.
- When orchestration supplies an accepted contract, assurance posture, exact candidate snapshot, and evidence index, consume them without repeating the producer's framing. Challenge them when the diff or surrounding repository evidence contradicts the claim.
- Inspect the artifact and enough surrounding code, tests, schemas, configuration, consumers, runtime, and history for context. Do not widen into codebase assessment.
- Keep generation and judgment distinct. Independence requires fresh judgment, complete diff inspection, risk-path tracing, distinct evidence or criteria, and authority to reject—not a different label or automatic repetition of producer commands.
- Judge **contract fit**—accepted intent and non-goals—and **engineering integrity**—correctness, repository constraints, evidence, and future change cost—separately before ranking all findings by consequence.

## Clarify without negotiating the review

- Inspect the diff, evidence, and intent before asking the author or owner. Surface material ambiguity, assumptions, evidence gaps, and limitations even without an interactive exchange.
- Ask only decision-changing questions. Batch independent low-sensitivity questions; serialize when an answer changes interpretation or scope, needs follow-up, affects candor, or gates relevance.
- When the user asks to grill, challenge, or stress-test the change, deepen counterexample search across behavior boundaries, invariants, failure paths, mixed states, and evidence validity. Do not turn the exchange into co-authoring the change, negotiating findings, or coaching the author toward answers that make the review pass.
- Treat unanswered questions as explicit limitations or findings according to their demonstrated consequence; never invent intent to avoid a conditional review outcome.

## Review workflow

1. **Pin scope and intent.** Record snapshot, change, desired behavior, non-goals, commitments, and cost of error. Exclude unrelated changes unless they affect reviewed behavior.
2. **Read the diff as a behavioral claim.** Summarize what it adds, removes, redirects, or makes authoritative. Trace important paths from input through decisions, state, effects, outputs, and cleanup.
3. **Check specification fit.** Compare implementation with requested outcomes, edge cases, support policy, and explicit constraints. Identify missing behavior, unintended behavior, scope creep, and requirements satisfied only superficially.
4. **Check correctness and contracts.** Proportionately examine invariants, authorization, validation, data authority, compatibility, ordering, concurrency, retries, idempotency, failures, lifecycle, cleanup, security, privacy, and controls. For runtime changes, trace latency, capacity, dependency failure, cancellation, observability, control paths, and recovery.
5. **Check locality and ownership.** Determine whether knowledge, state, representation, and effects have clear owners or a new rule spreads through flags, helpers, layers, and consumers. Flag dual authority, hidden dependencies, pass-through abstractions, speculative generality, and repeated unsafe invariants; recommend proportionate durable enforcement for recurring consequential findings.
6. **Check meaning and maintainability.** Evaluate whether names, interfaces, tests, layout, and rationale let the next maintainer recover purpose and constraints. Distinguish necessary complexity from noise, and current readability from likely future change amplification.
7. **Evaluate evidence, not volume.** Map each changed behavior and failure promise to evidence that would fail if it broke. Before reporting a gap, construct a realistic uncovered counterexample. Confirm failure-path tests reject unexpected success and cannot satisfy themselves with an assertion or sentinel. Match checks to snapshot, environment, method, risk, and falsifiable behavior; challenge tautologies, implementation-coupled tests, stale snapshots, and unrun claims. Rerun broadly or use `$software-verification` only when evidence is invalid, incomplete, suspicious, or inadequate.
8. **Challenge independently.** Seek counterexamples at changed boundaries and mixed states. Use repository tools when safe and read-only, but do not create findings from generic preference, style already enforced by tooling, or hypothetical architecture unrelated to the change.
9. **Prioritize findings.** Rank both lenses by demonstrated consequence, reach, reversibility, and confidence. For each actionable finding, name the affected behavior, evidence, impact, and smallest credible repair direction; keep uncertainty and questions explicit.
10. **Report review outcome.** Lead with findings ordered by severity, each anchored to the tightest file and line. Then state assumptions, evidence run, residual risks, and whether no actionable findings were found. A clean review means no findings within the inspected scope and evidence—not certification of the entire system.

## Calibrate and structure findings

- **Critical:** Credible severe user, data, money, security, compliance, or availability harm; merge or release should stop pending accountable resolution.
- **High:** Material incorrect behavior, contract break, data risk, unsafe failure, or broad realistic regression.
- **Medium:** Bounded defect or structural decision likely to impose meaningful maintenance, reliability, or compatibility cost.
- **Low:** Local issue worth fixing but unlikely to affect important behavior or change economics.
- Lower confidence instead of inflating severity. A high-consequence question without a demonstrated path is residual risk or an evidence gap, not automatically critical.
- Include severity, confidence, tight location, changed behavior or assumption, evidence or counterexample, impact, why current evidence misses it, and the smallest repair direction.
- Separate evidence the reviewer executed from checks merely claimed and not independently run.

## Quality gates

- Range and intent are reproducible; findings arise from changed behavior, not taste.
- Contract fit and engineering integrity are judged separately, then ranked together.
- Each finding names evidence or a realistic counterexample, impact, and repair direction without implementation.
- Severity reflects consequence and reach; missing evidence remains distinct from incorrectness.
- Behavior, contracts, data, failures, operations, ownership, and maintainability receive proportionate coverage.

## Reject review theater

- Small diffs, many tests, formatting, and plausible prose do not replace behavior tracing.
- Exclude style taste, speculative cases, and unrelated pre-existing problems; generated code deserves equal scrutiny, and generated tests are not proof.
- Tie architecture concerns to change impact and never approve release for its owner.
