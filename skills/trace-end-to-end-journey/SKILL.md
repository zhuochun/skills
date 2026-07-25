---
name: trace-end-to-end-journey
description: Recover, explain, or propose one bounded end-to-end journey across user-visible touchpoints, participating actors, operational handoffs, domain transitions, systems, data, and interfaces. Use for cross-view walkthroughs, supplied diagrams, current-versus-expected flow comparisons, or journeys whose product and technical pictures disagree. Exclude customer-only journey mapping, alternative-futures scenario planning, architecture evaluation, and runnable prototyping.
---

# Trace End-to-End Journey

Produce one evidence-labeled journey trace that keeps the experience,
operational, domain, system, and interface pictures aligned. Make the journey
easy to walk without presenting an inferred picture as established truth.

## Preserve scope and authority

- Confirm whether the user wants analysis, an in-conversation walkthrough, or
  an authorized durable artifact. Keep discussion and review read-only.
- Read repository instructions, the current worktree, supplied pictures, and
  the smallest relevant evidence set before tracing. Preserve unrelated work.
- Name the trace mode:
  - **supplied** explains and checks a provided picture;
  - **recovered** reconstructs current behavior from evidence;
  - **expected** proposes or records an intended journey; and
  - **comparison** aligns expected and observed behavior.
- Label consequential content as observed, executable, declared, reported,
  inferred, proposed, or unresolved. Do not fill an evidence gap with a clean
  arrow.
- If the primary request is excluded, stop this workflow and name the missing
  owner. For a mixed request, complete only an independently useful journey
  trace. Do not perform the excluded work under a hypothetical label.
- Preserve accountable ownership. The trace exposes relationships and
  contradictions; it does not approve product value, domain meaning,
  architecture fitness, operational policy, or implementation.

## Keep neighboring owners distinct

- Route customer need, emotion, pain, opportunity, adoption, or value
  hypotheses to `product-opportunity-discovery`. A customer journey can supply
  the experience lane without completing this cross-view trace. Carry supplied
  or observed customer evidence into that lane; do not invent emotional
  hypotheses.
- Route disputed terms, rules, events, states, or invariants to
  `domain-modeling`. Use accepted or explicitly proposed domain transitions in
  the trace.
- Route broad orientation to unfamiliar current software to
  `architecture-surface-mapping`. This skill owns one bounded outcome path, not
  a complete architecture map.
- Route quality-risk judgment and consequential architecture scenarios to
  `architecture-risk-evaluation`.
- Route a runnable behavior or interface experiment to `prototype-to-learn`.
  Route prose that explains an already accepted trace to `technical-writing`.
- Exclude alternative-futures scenario planning. Do not generate future worlds,
  assign probabilities, score strategies, or choose a cross-future option.
  Route accountable strategic closure to `decision-facilitation`. Normal,
  rejection, timeout, cancellation, and recovery paths are branches within one
  journey, not alternative external worlds.

## Build the cross-view trace

1. **Frame the journey.** State the outcome, primary actor, starting trigger,
   observable completion, scope boundary, audience, trace mode, and question
   the walkthrough must answer.
2. **Recover the evidence.** Inspect relevant experience maps, screens,
   procedures, domain records, code, interfaces, schemas, events, traces,
   support material, and owner reports. Give material sources stable `EVD-*`
   keys and record their location, observed-at or effective date, and conflicts.
3. **Create the scenario spine.** Give each material step a stable `JNY-*` key.
   Name the acting party, intent or trigger, starting condition, action,
   visible result, and resulting journey state. Link supported claims to their
   `EVD-*` keys; keep unsupported content inferred, proposed, or unresolved.
4. **Align the views.** For each step, connect applicable experience
   touchpoints, human or operational work, domain transitions, systems, data,
   interfaces, external effects, and ownership. Mark a lane not applicable
   instead of inventing content.
5. **Trace every crossing.** Name producer and consumer, interaction type,
   message or fact, authority, timing, acknowledgement, and externally visible
   effect. Keep manual, synchronous, asynchronous, batch, and third-party
   handoffs distinguishable.
6. **Expose time and partial progress.** Show durable intermediate state,
   waiting, retries, duplicate delivery, holds, timeouts, human intervention,
   compensation, and recovery where they change what participants can observe
   or do.
7. **Add revealing branches.** Select the smallest rejection, cancellation,
   failure, or repair paths that challenge the normal journey. Do not enumerate
   every theoretical edge case.
8. **Render for the question.** Use a short story for comprehension, a
   cross-view matrix for alignment, a flowchart for actor flow, a sequence
   diagram for interfaces, or a state diagram for lifecycle. Keep stable step
   keys across every representation.
9. **Walk the trace.** Explain one coherent segment at a time. In an
   interactive walkthrough, invite corrections at consequential gaps and
   update the shared trace before continuing.
10. **Challenge and return.** Recheck start and completion, authority,
    intermediate state, invisible work, interface semantics, branches, and
    evidence status. Return contradictions, unknowns, owner questions, and the
    next specialist route without certifying the trace yourself.

Read
[references/cross-view-journey-artifacts.md](references/cross-view-journey-artifacts.md)
when producing a matrix, diagram, durable map, or facilitated walkthrough.

## Quality gates

- One bounded outcome and explicit start and completion control the trace.
- Stable step keys connect the narrative, lanes, diagrams, and branches.
- Each material step identifies the actor, visible result, state transition,
  and system or handoff where those views apply.
- Product, operational, domain, and technical views agree or show their
  contradiction explicitly.
- Data and effect authority remain distinct from transport and screen
  ownership.
- Intermediate and failure states remain visible when work is long-running,
  asynchronous, external, or human-dependent.
- Expected, observed, inferred, and proposed content remain distinguishable.
- Material current-state claims retain recheckable evidence references and
  recency; volatile evidence is refreshed before consequential use.
- Relevant owners can challenge the steps they own before consequential use.

## Reject weak traces

- A customer-only touchpoint map is not a cross-view journey trace.
- A component diagram without actor intent and visible outcomes is not a
  journey.
- A happy path that erases waiting, partial completion, or recovery is
  misleading.
- Parallel diagrams without shared step keys conceal disagreement.
- Exhaustive boxes and arrows do not compensate for unknown authority or
  invented domain behavior.
- Labeling customer, future, or strategy invention as hypothetical does not
  bring excluded work into scope.
- An attractive walkthrough does not validate customer value, system
  correctness, architecture quality, or operational readiness.

## Completion

Lead with the journey boundary and how to read or continue the walkthrough.
Return the aligned trace, normal and revealing branch paths, evidence labels,
evidence references and recency for material claims, contradictions, unresolved
owner questions, artifact location when one was authorized, and focused next
routes.
