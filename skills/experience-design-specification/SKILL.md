---
name: experience-design-specification
description: Design a reviewable user experience for an intended outcome through user-facing concepts, task flows, information hierarchy, interaction states, feedback, and recovery. Use before implementation when people would otherwise invent consequential UX choices. Route opportunity validation to product discovery, fixed-candidate review to specification-review, and small clear edits directly to implementation.
---

# Experience Design Specification

Specify how people understand and accomplish a bounded task. Produce a usable
design proposal whose choices, evidence, and unresolved dependencies are visible.

## Preserve scope and authority

- Inspect available product evidence, existing screens, behavior, design systems,
  content, constraints, and prior decisions before asking questions. Distinguish
  observed behavior from accepted intent and proposed improvements.
- Work read-only by default and return inline. Use an existing design or change
  record when writing is authorized; do not create a parallel specification.
- Identify the intended users, circumstances, outcome, design decision owner,
  and constraints. Missing user research limits confidence; it does not prevent
  a labeled design hypothesis or justify invented personas and findings.
- Preserve accepted domain, security, privacy, and operational rules. Propose
  how their effects are communicated; do not settle disputed rules through UI
  defaults or promise capabilities the system does not support.
- Design authority does not authorize implementation, customer contact,
  experiments, publication, or a claim that the experience is validated.
- Match depth to the decision. For a small clear label or spacing change, give
  the direct recommendation or route authorized execution without a full spec.

## Design workflow

1. **Frame the task.** Name who is trying to do what, where they start, what
   they know, and how they recognize completion. Recover the underlying task
   even when the request names a screen. Keep accepted constraints intact.
   Identify target environments and the input, window, access, connectivity,
   and interruption conditions that can change the task. Do not infer native
   behavior from screen size or assume desktop means mouse-only. Recover missing
   consequential context or keep dependent choices conditional. Read
   [references/platform-adaptation.md](references/platform-adaptation.md) when
   native navigation, lifecycle, multiple surfaces, or adaptive layouts matter,
   before choosing the flow. Omit dimensions that do not affect this decision.
2. **Recover the current experience.** Trace the relevant entry, decisions,
   actions, feedback, and exit from available evidence. Inspect rendered screens
   when available and relevant; state when only code, documents, or descriptions
   were inspected. Include meaningful interruptions and cross-surface handoffs.
3. **Clarify the user-facing concepts.** Name each concept's purpose, visible
   state, actions, and a short scenario connecting action to outcome. Check
   overloaded purposes, inconsistent terminology, missing reversals, and
   surprising coupled effects. Route disputed business meaning to
   `domain-modeling`; preserve its accepted rules in the experience.
4. **Compare material alternatives.** Where a consequential choice is open,
   compare plausible flows or representations against the same task and
   constraints. Explain differences in comprehension, effort, control, and
   recovery. Do not manufacture alternatives for an already settled detail.
   For a consequential choice, connect what the person must perceive and
   understand to their decision, the action's state change, and the feedback
   that lets them verify the outcome. Use this explanation to justify the
   choice; familiarity with a pattern alone is insufficient.
5. **Specify the proposed flow.** Show the smallest self-contained flow, state
   table, or annotated wireframe that makes the design inspectable. Label
   current, proposed, preserved, and unresolved elements. Connect entry, actions,
   transitions, completion, and the branches that can change the design.
   Across environments, preserve shared task and concept invariants while making
   consequential differences in navigation, input, layout, and continuity
   explicit. Use the same flow or table; do not add a platform matrix unless
   it exposes a missing decision. Consistency does not require identical controls.
6. **Design information and interaction together.** Put needed comparisons and
   consequences where the user makes the decision. Specify primary and
   supporting information, labels, control purpose, and feedback. Reuse available
   patterns and primitives; explain departures. Reduce unnecessary navigation
   without hiding necessary context or removing deliberate user control.
7. **Resolve meaningful states.** Specify what users see, can do, and retain
   during relevant loading, empty, validation, failure, permission, interruption,
   and success states. Distinguish unavailable data from an empty result and
   pending work from completion. Describe cancel, retry, undo, or re-entry only
   where supported or explicitly proposed; identify dependent system decisions.
8. **Check access and context.** Specify applicable keyboard navigation, visible
   focus and focus return, reading order, accessible names, status feedback,
   and alternatives to pointer-only interaction. Explain how hierarchy and task
   access survive relevant narrow layouts and content variation. Read
   [references/interaction-checks.md](references/interaction-checks.md) for web
   forms, composite controls, dynamic feedback, or responsive layouts. Apply the
   target platform's access conventions for native experiences; do not claim
   conformance from a specification or screenshot.
9. **Challenge the design.** Walk representative success and failure scenarios
   through the proposal. Ask whether a problem comes from the task framing,
   conceptual model, presentation, or implementation. Keep designer walkthroughs
   distinct from observed user evidence. Name the smallest next observation that
   could overturn a consequential assumption; route its execution when needed.
   Exercise the context changes that threaten the proposed behavior, such as
   Back, resize, input changes, interruption, or window close. Check both what
   changes and what remains intact; a static layout comparison cannot establish
   continuity. Select only relevant probes rather than a fixed device inventory.
10. **State disposition.** Return a proposed design ready for owner review,
    a conditional proposal, or a blocked dependent slice. Identify what is
    accepted, proposed, assumed, and unresolved; give each consequential unknown
    an owner, consequence, and next decision. Do not mark unresolved behavior
    ready merely because every screen has been drawn.

## Compose without duplicate ownership

- `product-opportunity-discovery` owns customer opportunity, value, adoption,
  and usability hypotheses and their research evidence. This skill owns the
  experience proposal those hypotheses inform. Return contrary design evidence
  to discovery without rerunning opportunity selection for every flow.
- `software-change-specification` owns the broader behavior delta and readiness
  of a bounded software change. It consumes accepted experience decisions;
  neither owner maintains a second copy of the other's authoritative contract.
- `architecture-surface-mapping` connects the experience to operations, systems,
  data, and owners. This skill proposes the user experience, not that topology.
- `prototype-to-learn` builds an authorized disposable artifact for a named
  design uncertainty. Supply the question, candidate behavior, and fidelity
  limits; use returned observations to revise the proposal.
- `specification-review` independently checks a fixed proposal's integrity;
  it does not establish usability or accessibility. Route engineering evidence
  methods and execution to `software-verification` and maintained changes to
  `scoped-change-implementation`.
- Keep domain meaning with `domain-modeling` and threat/control decisions with
  `software-security-design`. An unresolved specialist decision blocks only
  the dependent design slice. State missing owners rather than inventing policy.

## Reject weak results

- Reject a screen inventory without a task path or a happy path that conceals
  consequential state, permissions, external effects, or recovery obligations.
- Do not use visual polish, fewer clicks, familiar widgets, or passing mechanical
  checks as proof of comprehension, task success, or accessibility.
- Do not infer operational behavior from a static mockup or claim user testing
  from a designer walkthrough. Keep illustrative content labeled.
- Keep product language about the user's task. Expose implementation detail only
  when it helps the user make a meaningful decision.
- Do not turn this workflow into a universal UX audit, brand system, research
  program, implementation plan, or mandatory document template.

## Completion

Return the task frame, evidence limits, inspectable proposed experience,
decision rationale, material interaction and access behavior, and disposition.
Include consequential environment differences and continuity expectations.
Include alternatives and open decisions only where they change the design.
Distinguish owner acceptance, design confidence, and observed validation.
