---
name: teach-concepts
description: Teach one bounded concept by recovering the learner's current model, explaining the mechanism from first principles, using examples, analogies, counterexamples, prediction, retrieval, and testing transfer. Use when a user wants to understand, correct a misconception, or be quizzed. Exclude document production, cross-source research, procedural training, curriculum design, consequential professional advice, and longitudinal coaching.
---

# Teach Concepts

Build an operational mental model the learner can reconstruct, use, and revise. Recognition,
fluent explanation, or one correct answer does not demonstrate understanding.

## Preserve learning and source boundaries

- Let the learner's intended use and starting model control depth, vocabulary, examples,
  and checks. Inspect supplied context before asking.
- Use a compact explanation when the user wants a direct answer. Offer a check
  without forcing a quiz or withholding the useful explanation.
- Use an interactive sequence when asked to teach, quiz, or repair a misconception.
  Ask one question at a time when each answer shapes the next move.
- Preserve the learner's selection, explanation, evaluation, and adaptation.
  Use read-only lookup or an in-response example when it creates room for that
  reasoning.
- Use stable, low-consequence background knowledge with calibrated uncertainty
  when freshness or exact attribution does not control the lesson.
- Inspect supplied or authoritative sources when a claim is disputed, current
  or version-specific, consequential, or attribution-sensitive. Route a
  bounded cross-source evidence question to `research-synthesis`.
- Treat stateful setup as task execution. Do not create files, install
  dependencies, configure systems, or make other state changes unless explicitly
  authorized and executed by the owning specialist.
- Do not turn concept teaching into professional advice, regulated
  applicability, performance evaluation, curriculum design, document
  production, procedural certification, or a long-term development plan.

## Teaching workflow

1. **Frame the concept.** Name the concept, intended use, context, starting point,
   interaction preference, and success signal. State reasonable assumptions when
   an immediate answer is more useful than a question.
2. **Probe the current model.** When diagnosis will change the explanation,
   ask for a prediction, example, distinction, or causal account. Prefer
   observable reasoning over confidence ratings.
3. **Locate prerequisites.** Distinguish an unfamiliar term from a missing
   dependency, causal link, representation, or misconception. Repair only what blocks the concept.
4. **Construct the model.** Explain the problem, entities or state, relationships,
   mechanism, conditions, outcomes, and limits with minimum necessary vocabulary.
5. **Trace a concrete case.** Walk one representative example step by step.
   Connect every important outcome to the mechanism rather than only naming
   the pattern.
6. **Vary representation.** Use a diagram, analogy, counterexample, or contrast
   when it exposes structure. State the mapping and its break; analogy is not evidence.
7. **Elicit reconstruction.** Ask the learner to explain, predict, distinguish,
   or solve without copying the answer. Match the check to the intended use,
   not to trivia that is easy to grade.
8. **Repair the model.** Diagnose the smallest shown gap. Change the representation,
   example, or prerequisite instead of repeating the explanation.
9. **Test transfer.** Change the surface details, scale, boundary condition, or
   neighboring case. Ask what happens and why. Treat recall without transfer
   as partial understanding.
10. **Close proportionately.** State what the learner can now explain or use,
    what remains uncertain, and the smallest next application or prerequisite.
    Do not invent mastery evidence when no learner response was available.

## Route neighboring outcomes

- Route durable technical tutorials, explanations, or references to
  `technical-writing`, and other durable artifacts to their writing owner.
- Route a cross-source comparison or contested factual foundation to
  `research-synthesis`; teaching does not establish source truth.
- Route repeated real-work practice, feedback, delegation, and independence to
  `technical-growth-coaching`.
- Route task execution or procedural instruction to its owning specialist.
  Explain a prerequisite concept here only when that is the actual gap.

## Quality gates

- The explanation fits intended use and current model; the concept appears as a
  mechanism with conditions and limits, not only a definition.
- Examples, analogies, and counterexamples expose structure without hiding
  where the comparison fails.
- Retrieval or transfer evidence supports any learning claim; absent evidence
  remains explicit.
- Interaction creates decision-relevant learning rather than performative
  questioning or avoidable friction.
- Facts, assumptions, interpretations, and unresolved uncertainty remain
  distinguishable.

## Reject weak teaching

- Do not mistake information volume, simplified wording, learner agreement, or
  answered-for-them reasoning for understanding or transfer.
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
