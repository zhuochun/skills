---
name: teach-concepts
description: Teach one bounded concept by recovering the learner's current model, explaining the mechanism from first principles, using examples, analogies, counterexamples, prediction, retrieval, and testing transfer. Use when a user wants to understand, correct a misconception, or be quizzed. Exclude document production, cross-source research, procedural training, curriculum design, consequential professional advice, and longitudinal coaching.
---

# Teach Concepts

Build an operational mental model that the learner can reconstruct, use, and
revise. Recognition, fluent explanation, and one correct answer do not by
themselves demonstrate understanding.

## Preserve learning and source boundaries

- Let the learner's intended use and starting model control depth, vocabulary,
  examples, and checks. Inspect supplied context before asking questions.
- Use a compact explanation when the user wants a direct answer. Offer a check
  without forcing a quiz or withholding the useful explanation.
- Use an interactive sequence when the user asks to be taught, quizzed, or
  helped through a misconception. Ask one question at a time when each answer
  should shape the next teaching move.
- Preserve the learner's selection, explanation, evaluation, and adaptation.
  Use read-only lookup or an in-response example when it creates room for that
  reasoning.
- Use stable, low-consequence background knowledge with calibrated uncertainty
  when freshness or exact attribution does not control the lesson.
- Inspect supplied or authoritative sources when a claim is disputed, current
  or version-specific, consequential, or attribution-sensitive. Route a
  bounded cross-source evidence question to `research-synthesis`.
- Treat stateful setup as task execution. Do not create files, install
  dependencies, configure systems, or perform other state changes unless the
  user explicitly authorizes those effects and the owning specialist executes
  them.
- Do not turn concept teaching into professional advice, regulated
  applicability, performance evaluation, curriculum design, document
  production, procedural certification, or a long-term development plan.

## Teaching workflow

1. **Frame the concept.** Name the concept, intended use, relevant context,
   learner starting point, interaction preference, and success signal. State
   reasonable assumptions when an immediate answer is more useful than a
   question.
2. **Probe the current model.** When diagnosis will change the explanation,
   ask for a prediction, example, distinction, or causal account. Prefer
   observable reasoning over confidence ratings.
3. **Locate prerequisites.** Separate an unfamiliar term from a missing
   dependency, causal link, representation, or existing misconception. Repair
   only the prerequisite that blocks the current concept.
4. **Construct the model.** Explain the problem the concept solves, relevant
   entities or state, relationships, mechanism, conditions, outcomes, and
   limits. Introduce the minimum vocabulary needed to reason.
5. **Trace a concrete case.** Walk one representative example step by step.
   Connect every important outcome to the mechanism rather than only naming
   the pattern.
6. **Vary the representation.** Use a diagram, analogy, counterexample, or
   contrasting case when it exposes structure. State the mapping and where it
   breaks; analogy generates understanding, not factual evidence.
7. **Elicit reconstruction.** Ask the learner to explain, predict, distinguish,
   or solve without copying the answer. Match the check to the intended use,
   not to trivia that is easy to grade.
8. **Repair the model.** Diagnose the smallest gap shown by the response.
   Change the representation, example, or prerequisite instead of repeating
   the same explanation more loudly.
9. **Test transfer.** Change the surface details, scale, boundary condition, or
   neighboring case. Ask what happens and why. Treat recall without transfer
   as partial understanding.
10. **Close proportionately.** State what the learner can now explain or use,
    what remains uncertain, and the smallest next application or prerequisite.
    Do not invent mastery evidence when no learner response was available.

## Route neighboring outcomes

- Route a durable technical tutorial, explanation, reference, or other reader
  artifact to `technical-writing`; route other durable artifacts to their
  applicable writing owner. A live teaching exchange is not documentation.
- Route a cross-source comparison or contested factual foundation to
  `research-synthesis`; teaching does not establish source truth.
- Route repeated real-work practice, feedback, delegation, and independence to
  `technical-growth-coaching`.
- Route task execution or procedural instruction to its owning specialist.
  Explain a prerequisite concept here only when that is the actual gap.

## Quality gates

- The explanation fits the learner's intended use and current model.
- The concept is represented as a mechanism with conditions and limits, not
  only as a definition or label.
- Examples, analogies, and counterexamples expose structure without hiding
  where the comparison fails.
- Retrieval or transfer evidence supports any learning claim; absent evidence
  remains explicit.
- Interaction creates decision-relevant learning rather than performative
  questioning or avoidable friction.
- Facts, assumptions, interpretations, and unresolved uncertainty remain
  distinguishable.

## Reject weak teaching

- Do not mistake information volume, simplified wording, or learner agreement
  for understanding.
- Do not answer every reasoning step for the learner and then claim transfer.
- Do not quiz unexplained material, use trick questions, or keep asking
  questions after the learner requested a direct answer.
- Do not let a vivid analogy replace the actual mechanism or its boundaries.
- Do not certify expertise, readiness, safety, or professional competence from
  one teaching exchange.

## Completion

For a compact explanation, return the concept, mechanism, representative
example, important boundary, and an optional check. For an interactive session,
also preserve the learner's current model, observed misconception repair,
retrieval or transfer evidence, remaining gap, and next learning move.
