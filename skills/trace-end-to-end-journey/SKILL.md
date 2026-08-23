---
name: trace-end-to-end-journey
description: Recover, explain, or propose one bounded end-to-end journey across user-visible touchpoints, participating actors, operational handoffs, domain transitions, systems, data, and interfaces. Use for cross-view walkthroughs, supplied diagrams, current-versus-expected flow comparisons, or journeys whose product and technical pictures disagree. Exclude customer-only journey mapping, alternative-futures scenario planning, architecture evaluation, and runnable prototyping.
---

# Trace End-to-End Journey

Produce one evidence-labeled trace aligning experience, operations, domain,
system, and interface views without presenting inference as truth.

## Preserve scope and authority

- Confirm whether the user wants analysis, an in-conversation walkthrough, or
  an authorized durable artifact. Keep discussion and review read-only.
- Follow repository instructions. Inspect the worktree only for recovered or
  comparison mode; otherwise use supplied and authorized sources. Preserve
  unrelated work.
- Name the trace mode:
  - **supplied** explains and checks a provided picture;
  - **recovered** reconstructs current behavior from evidence;
  - **expected** records an intended journey or makes gaps and alternatives
    inspectable; and
  - **comparison** aligns expected and observed behavior.
- In expected mode, consume accepted outcomes, semantics, constraints, and
  ownership. Propose connective steps only to expose gaps or alternatives; route
  disputed meaning, authority, boundaries, contracts, migration, cutover, and
  operating/recovery policy to their owners.
- Choose a proportional form; apply stable-trace criteria before the compact fallback:
  - use a **stable trace** when several representations must stay aligned,
    expected and observed paths are compared, another artifact will consume the
    trace, or a durable or consequential trace must be rechecked; or
  - otherwise, use a numbered **compact trace** without mandatory keys. Label
    each distinct claim `[Observed]`, `[Executable]`, `[Declared]`, `[Reported]`,
    `[Inferred]`, `[Proposed]`, or `[Unresolved]`; do not let one labeled action
    lend status to an added state, result, handoff, or owner.
- Label consequential content as observed, executable, declared, reported,
  inferred, proposed, or unresolved. Do not fill an evidence gap with a clean
  arrow.
- If the primary request is excluded, stop and name its owner. For mixed work,
  complete only an independently useful trace; hypothetical labels do not widen scope.
- Preserve accountable ownership. The trace exposes relationships and
  contradictions; it does not approve product value, domain meaning,
  architecture fitness, operational policy, or implementation.

## Keep neighboring owners distinct

- Route customer need, emotion, pain, opportunity, adoption, or value to
  `product-opportunity-discovery`. A customer journey may supply the experience
  lane; never invent emotional hypotheses.
- Route disputed terms, rules, events, states, or invariants to
  `domain-modeling`. Use accepted or explicitly proposed domain transitions in
  the trace.
- Route service boundaries and authority to `service-boundary-design`, contract
  coexistence to `software-contract-evolution`, new contracts to their design
  owner, and accepted ambiguous behavior to `software-change-specification`.
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
- Exclude alternative-futures planning: do not generate worlds, probabilities,
  strategy scores, or cross-future choices. Route strategic closure to
  `decision-facilitation`. Failure/recovery paths are branches within one journey.

## Build the cross-view trace

1. **Frame the journey.** State the outcome, primary actor, starting trigger,
   observable completion, scope boundary, audience, trace mode, and question
   the walkthrough must answer.
2. **Recover evidence.** Inspect mode-allowed maps, screens, procedures, domain
   records, code, contracts, events, traces, support, or reports. For a stable
   trace, key material sources `EVD-*` with locator, date, and conflicts.
3. **Create the spine.** Number material steps; name actor, intent/trigger,
   starting condition, action, visible result, and resulting state. Stable traces
   use `JNY-*` linked to `EVD-*`; label unsupported content.
4. **Align the views.** For each step, connect applicable experience
   touchpoints, human or operational work, domain transitions, systems, data,
   interfaces, external effects, and ownership. Mark a lane not applicable
   instead of inventing content.
5. **Trace crossings.** Name producer, consumer, interaction, message/fact,
   authority, timing, acknowledgement, and visible effect. Distinguish manual,
   synchronous, asynchronous, batch, and third-party handoffs.
6. **Expose time and partial progress.** Show durable intermediate state,
   waiting, retries, duplicate delivery, holds, timeouts, human intervention,
   compensation, and recovery where they change what participants can observe
   or do.
7. **Add revealing branches.** Select the smallest rejection, cancellation,
   failure, or repair paths that challenge the normal journey. Do not enumerate
   every theoretical edge case.
8. **Render for the question.** Choose story, cross-view matrix, flowchart,
   sequence, or state diagram. Keep numbered steps or stable keys aligned across
   representations. Every form must be self-contained; external rendering may
   supplement it.
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
- Consistent steps connect narrative, lanes, diagrams, and branches. Use stable
  keys for comparisons, multiple representations, downstream use, or durable traces.
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

Lead with journey boundary and reading guide. Return the aligned trace, normal
and revealing branches, evidence labels/references/recency as required,
contradictions, owner questions, authorized artifact location, and next routes.
