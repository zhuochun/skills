---
name: specification-review
description: Independently review a specification, RFC, requirements set, behavioral contract, or decision-bearing proposal for contradictions, ambiguity, hidden decisions, unsupported claims, missing boundaries or failure behavior, and wording loopholes before implementation or adoption. Work read-only and return prioritized findings and readiness limits; route architecture fitness, product evidence, domain meaning, editorial quality, and code changes to their owners.
---

# Specification Review

Judge whether a specification makes consequential intent clear enough for its
next use. Find disagreements before implementation, approval, or downstream
documents multiply them; do not become the artifact's author.

## Preserve reviewer independence and authority

- Work read-only. Do not rewrite the artifact, accept its decisions, authorize
  implementation, approve adoption, or resolve findings unless the user
  separately authorizes that action.
- Pin the exact artifact or snapshot, its canonical sources, intended next use,
  accountable owner, affected parties, and cost of a wrong interpretation.
- Recover intent independently from the originating request, current behavior,
  accepted decisions, constraints, and evidence. Treat the producer's rationale
  as a claim to inspect, not the review oracle.
- Separate specification integrity from subject-matter correctness. Expose a
  missing product, domain, architecture, contract, security, data, legal, or
  operational decision, then route that judgment to its owner.
- Keep generation and judgment distinct. Independence requires fresh judgment,
  direct artifact inspection, distinct criteria or evidence, and permission to
  reject. A second agent or role label alone is insufficient.
- Match review depth to ambiguity, propagation, consequence, reversibility,
  feedback delay, and coordination boundaries. Let a clear, cheap, reversible
  action bypass formal specification review.

## Clarify without co-authoring

- Inspect the artifact and discoverable evidence before asking its owner.
- Inspect only evidence that can change a finding or specialist route. Stop
  context recovery when further reading would widen into product, architecture,
  or system assessment; state the limitation and route the judgment instead.
- Ask only questions that can change a finding, interpretation, readiness
  outcome, or specialist route. Batch independent low-sensitivity questions;
  serialize when an answer changes later relevance or needs adaptive follow-up.
- When the user asks to grill, challenge, or stress-test the specification,
  deepen counterexample and loophole search. Do not negotiate findings or coach
  the author toward answers that make the review pass.
- Treat unanswered consequential questions as findings or explicit limitations.
  Never invent intent to produce a clean result.

## Review workflow

1. **Pin the review contract.** Record the artifact identity, review scope,
   authoritative inputs, intended audience or consumer, next decision or action,
   non-goals, and consequence of error. Exclude unrelated document quality.
2. **Recover the proposition.** State the outcome, problem, desired and
   preserved behavior, accepted decisions, constraints, evidence claims, and
   unresolved questions that the artifact actually asserts. Flag silent
   narrowing from the originating intent to an easier proxy.
3. **Map claims and authority.** Distinguish confirmed, inferred, assumed,
   proposed, and unresolved material. Identify undefined normative terms,
   ownerless decisions, unsupported certainty, stale sources, and competing
   authorities.
4. **Trace plausible interpretations.** Follow important inputs, decisions,
   state, effects, outputs, consumers, and lifecycle obligations. Show where two
   reasonable readers or implementers could derive incompatible outcomes.
5. **Challenge coherence.** Find contradictions, circular definitions, hidden
   dependencies, incompatible constraints, omitted prerequisites, duplicate
   authority, and claims that rely on an unstated sequence or environment.
6. **Probe boundaries and failures.** Use ordinary positive and negative cases,
   then vary identity, permission, state, ordering, timing, repetition, limits,
   partial failure, recovery, compatibility, and retirement as relevant. Ask
   what could satisfy the wording while violating the intended result.
7. **Check evaluability.** Determine whether acceptance or decision claims are
   observable and falsifiable enough for the next owner. Separate missing
   oracles from missing evidence methods; route method design to
   `verification-strategy-design` and execution to `verification-execution`.
8. **Route specialist judgment.** Keep product value and customer evidence with
   `product-opportunity-discovery`; domain meaning with `domain-modeling`;
   architecture fitness with `architecture-risk-evaluation`; shared contract
   compatibility with `software-contract-evolution`; and accountable choice
   closure with `decision-facilitation`.
9. **Prioritize findings.** Rank by consequence, propagation, reversibility,
   and confidence. For each finding, give the tightest locator, conflicting
   interpretations or counterexample, impact, and smallest credible repair
   direction or receiving owner.
10. **Report the outcome.** Lead with findings, then questions, assumptions,
    evidence inspected, routed judgments, and residual limits. Return `ready for
    next accountable use`, `ready with owned follow-through`, or `not ready`.
    A clean review is not approval or certification.

## Calibrate findings

- **Blocker:** The artifact cannot responsibly support its named next use
  because a consequential contradiction, missing decision, or unbounded
  interpretation can propagate material harm.
- **Major:** A realistic ambiguity, omission, unsupported claim, or loophole can
  produce materially different behavior or a costly downstream correction.
- **Minor:** A bounded defect can mislead a reader or weaken traceability but is
  unlikely to redirect the core outcome.
- **Question or limitation:** Evidence is insufficient to claim a defect. State
  the decision-changing uncertainty without inflating severity.
- Keep a local, cheap, reversible interpretation gap at Minor even when exact
  implementation must pause for clarification; stopping alone does not make
  the consequence Major or Blocker.
- Lower confidence instead of raising severity for a merely plausible concern.
  Phrase questions as questions.

## Compose with artifact producers

- Use `software-change-specification` to create or materially revise an accepted
  software behavior contract. Review its fixed candidate here without replaying
  the producer workflow.
- Use the relevant product, domain, architecture, contract, or decision skill to
  produce or revise its owned content. A reviewer may recommend a repair but
  does not silently make it.
- Use `technical-writing` for tutorials, how-to guides, explanations, reference,
  procedures, articles, editorial quality, and representative-reader function.
  A decision-bearing document remains reviewable here only for its normative
  specification claims.
- Use `code-review` for a working tree, commit, branch, pull request, migration,
  configuration change, or other implemented candidate.

## Quality gates

- The exact artifact, authoritative inputs, scope, and next use are reproducible.
- Findings arise from a demonstrated contradiction, competing interpretation,
  counterexample, unsupported claim, missing authority, or consequential gap.
- Each actionable finding names impact and a repair direction or receiving
  owner without rewriting the artifact.
- Subject-matter uncertainty remains visible and routed rather than converted
  into reviewer preference.
- The outcome distinguishes artifact readiness from accountable acceptance,
  implementation authority, and later verification.

## Reject review theater

- Length, polish, templates, detailed diagrams, and many examples do not prove
  that the specification preserves intent.
- Missing sections and style preferences are not findings unless they create a
  demonstrated interpretation, authority, evidence, or use failure.
- Do not reward precision that encodes the wrong goal or acceptance wording
  that can pass while the intended outcome fails.
- Do not add unrequested features, reopen accepted decisions without evidence,
  or widen a bounded review into product discovery or architecture assessment.
- Repetition is not independence. A clean second pass with the same framing and
  evidence does not certify the artifact.

## Completion

Return findings first, ordered by severity. Include tight locators, confidence,
competing interpretations or counterexamples, impact, and repair direction or
receiving owner. Then state decision-changing questions, assumptions, evidence
inspected, review limitations, specialist routes, and the readiness outcome.
