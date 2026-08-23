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
- Read repository instructions when operating in a repository. Inspect the
  current worktree only when recovered or comparison mode depends on
  current-system evidence. For a supplied or expected walkthrough, inspect only
  supplied and explicitly authorized in-scope sources. Preserve unrelated work.
- Name the trace mode:
  - **supplied** explains and checks a provided picture;
  - **recovered** reconstructs current behavior from evidence;
  - **expected** records an intended journey or makes gaps and alternatives
    inspectable; and
  - **comparison** aligns expected and observed behavior.
- In expected mode, consume accepted outcomes, semantics, constraints, and
  ownership decisions. Propose connective steps only to expose a gap or make
  alternatives inspectable. Do not settle disputed domain meaning, data or
  effect authority, service boundaries, interface contracts, migration states,
  cutover policy, or operating and recovery policy. Stop and route those
  decisions to their specialist or accountable owner.
- Choose a proportional trace form. Apply the stable-trace criteria before the
  compact fallback:
  - use a **stable trace** when several representations must stay aligned,
    expected and observed paths are compared, another artifact will consume the
    trace, or a durable or consequential trace must be rechecked; or
  - otherwise, use a **compact trace** for a low-consequence in-conversation
    walkthrough. Number the steps without requiring `EVD-*` or `JNY-*` keys.
    Mark each distinct claim inline with the applicable label: `[Observed]`,
    `[Executable]`, `[Declared]`, `[Reported]`, `[Inferred]`, `[Proposed]`, or
    `[Unresolved]`. Use a form such as
    `1. [Declared] Actor acts. [Inferred] This may leave state X.` Do not let a
    declared action lend its status to an added state, result, handoff, or
    owner.
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
- Route service boundaries and data or effect authority to
  `service-boundary-design`. Route contract compatibility and coexistence to
  `software-contract-evolution`; leave new interface contracts with the
  accountable design owner, then route accepted ambiguous behavior to
  `software-change-specification`.
- Route migration states, authority transfer, and cutover behavior to
  `migration-planning`. Leave operating and recovery policy with its
  accountable owner.
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
2. **Recover the evidence.** Inspect the evidence allowed by the selected mode:
   relevant experience maps, screens, procedures, domain records, code,
   interfaces, schemas, events, traces, support material, or owner reports. For
   a stable trace, give material sources `EVD-*` keys and record their locator,
   observed-at or effective date, and conflicts.
3. **Create the scenario spine.** Number each material step. Name the acting
   party, intent or trigger, starting condition, action, visible result, and
   resulting journey state. For a stable trace, use `JNY-*` keys and link
   supported claims to `EVD-*` keys. Keep unsupported content inferred,
   proposed, or unresolved.
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
   diagram for interfaces, or a state diagram for lifecycle. Keep numbered step
   references clear in a compact trace and stable keys aligned across every
   representation in a stable trace. Every selected form must be self-contained
   in the available output; prefer a text story, matrix, tree, flow, or diff
   that needs no external renderer. Richer rendering may supplement it.
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
- Consistent step references connect the narrative, lanes, diagrams, and
  branches. Use stable keys for comparison, multiple representations,
  downstream consumption, or durable and consequential traces.
- Each material step identifies the actor, visible result, state transition,
  and system or handoff where those views apply.
- Product, operational, domain, and technical views agree or show their
  contradiction explicitly.
- Data and effect authority remain distinct from transport and screen
  ownership.
- Intermediate and failure states remain visible when work is long-running,
  asynchronous, external, or human-dependent.
- Expected, observed, inferred, and proposed content remain distinguishable.
- Durable or consequential current-state claims retain recheckable evidence
  references and recency; volatile evidence is refreshed before use.
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
- Labeling a target design as proposed does not authorize decisions owned by
  another workflow or accountable owner.
- An attractive walkthrough does not validate customer value, system
  correctness, architecture quality, or operational readiness.

## Completion

Lead with the journey boundary and how to read or continue the walkthrough.
Return the aligned trace, normal and revealing branch paths, evidence labels,
evidence references and recency when the selected form requires them,
contradictions, unresolved owner questions, artifact location when one was
authorized, and focused next routes.
