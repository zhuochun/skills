---
name: software-change-specification
description: Specify an accepted but ambiguous software change before implementation by recovering current and desired behavior, scope, invariants, affected surfaces, acceptance claims, and unresolved decisions. Use when implementers would otherwise invent consequential behavior. Do not use to review a fixed candidate; use specification-review. Keep small clear changes in scoped-change-implementation; route unresolved specialist decisions to their owners.
---

# Software Change Specification

Turn an intended change into a reviewable behavioral contract an implementer can follow without guessing. Specify the change, not the patch.

## Preserve authority and flow

- Work read-only by default. Do not edit code, authorize implementation, assign teams, promise delivery, or approve release merely because the specification is ready.
- Identify the change owner and needed domain, product, consumer, security, privacy, data, and operational owners. Humans confirm disputed meaning and residual risk.
- Recover evidence from the request, current behavior, code, tests, contracts, decisions, telemetry, incidents, and named stakeholders. Mark material statements as confirmed, inferred, assumed, proposed, or unresolved instead of manufacturing certainty.
- Match depth to uncertainty, consequence, reversibility, and coordination. Keep local reversible changes in `scoped-change-implementation`; use this skill when clarification has decision value.
- Use the existing issue, plan, conversation, or artifact. Update an orchestration-supplied canonical surface only with record-write authority; otherwise return inline. Never create a second handoff record.
- Keep opportunity selection, domain meaning, architecture design, contract evolution, rollout, verification methods, and implementation with their canonical owners. Reference their decisions by stable key and plain-language label when present rather than copying entire artifacts.
- “Implementation-ready” does not authorize missing domain, architecture, compatibility, security, data, or recovery decisions. Return a conditional partial specification and `not ready` when owners have not decided.
- Inspect discoverable behavior before asking the owner. Expose relevant ambiguity, assumptions, unknowns, and missing authority even without interaction.

## Clarify and stress-test interactively

- Use interactive clarification when the user asks to grill, challenge, or stress-test the change, or when material owner-controlled ambiguity blocks a useful specification.
- Ask only questions changing behavior, examples, boundaries, invariants, failure semantics, acceptance claims, or readiness. Route specialist decisions to their owners.
- Partition questions by behavioral and disclosure dependency. Batch independent low-sensitivity questions; serialize adaptive, sensitive, or gating ones.
- After each batch, update the behavioral model and suppress questions answered by repository evidence or prior responses. Challenge the clarified model with disagreement-rich examples and failure cases before declaring readiness.

## Specification workflow

1. **Frame the decision.** State outcome, urgency, request and decision authority, users/callers, environment, obligation, and consequence. Separate accepted direction from implementation permission.
2. **Recover current behavior.** Trace the relevant user or caller path through inputs, decisions, state, effects, outputs, contracts, and operating controls. Distinguish documented intent, observed behavior, supported behavior, accidental behavior, and unknown behavior. Do not let the requested solution become the only description of the problem.
3. **Separate requirement from solution.** Classify each material statement as desired outcome or behavior, hard constraint, accepted design decision, proposed implementation, or open question. Preserve mandated implementation constraints with their source and rationale; reopen unverified prescriptions as options. Do not promote a proposed baseline, familiar pattern, or agent recommendation into the change contract unless the accountable owner has accepted it. Do not demote behavior that the accountable owner explicitly accepted because repository evidence exposes an implementation consequence. Keep the accepted behavior confirmed and route only a genuinely uncovered decision.
4. **Map affected surfaces.** Name relevant journey, entry points, domain decisions, state authority, data lifecycle, consumers, contracts, permissions, dependencies, trust or tenant boundaries, attacker-controlled inputs, protected effects, failure/recovery, telemetry, release controls, and owners. Record confidence; omit irrelevant fields.
5. **Probe with examples.** Start with positive and negative cases, then vary boundaries, order, identity, timing, retries, failures, permissions, direct entry points, and unsafe defaults. Collect disagreeing roles independently. Treat scenarios as probes until an owner resolves the rule; retain only representative acceptance cases. When credible abuse paths or security controls remain undecided, route them to `software-security-design` instead of inventing threat or control policy.
6. **Define the change contract.** State confirmed desired behavior, preserved behavior, invariants, validation and authorization rules, state transitions and authority, effects, error and failure semantics, compatibility expectations, quality constraints, recovery expectations, and explicit non-goals. Preserve accepted `SEC-*` requirements, enforcement boundaries, secure defaults, and exception behavior from `software-security-design`. Where an owning decision is unresolved, state the obligation and conditional alternatives without selecting one; keep dependent claims conditional. Describe what must be true without prescribing file edits, service ownership, protocol shape, migration policy, or implementation choreography.
7. **Bound delivery.** Identify the smallest useful end-to-end slice and independent follow-ons. Name prerequisites and cross-slice invariants; route workstream steering to `technical-program-orchestration` and replacement-state movement to `migration-planning`.
8. **Name acceptance claims.** Give each consequential claim a stable key and plain-language label, such as `CHG-refund-once — One approved refund produces at most one transfer`. State the behavior and representative conditions that make the claim meaningful. Do not select test methods, environments, or production signals here; route those to `software-verification` and `observability-design`.
9. **Route uncertainty.** For each material unknown outside behavioral-specification authority, state why it matters, owner, smallest probe/skill, and whether work can proceed. Do not gate every unknown, hide decisions as assumptions, or invent closure.
10. **Make readiness explicit.** Return `ready`, `ready with owned follow-through`, or `not ready`, with the evidence basis and accountable confirmation still required. A ready specification means an implementer should not need to invent consequential behavior; it does not prove the design, authorize implementation, or certify release.

Read [references/change-specification.md](references/change-specification.md) when selecting specification depth, structuring the compact output, or distinguishing probes from durable claims.

## Compose without taking over

- Consume orchestration-supplied scope, claims, evidence, and question. Preserve
  meaning, reopen only contradictions or blockers, and return the contract and
  readiness delta. Orchestration owns continuity and frontier selection.
- Send a fixed consequential candidate to `specification-review` for independent
  ambiguity, contradiction, loophole, and readiness judgment. Apply accepted
  repairs here; the reviewer does not rewrite or settle routed decisions.
- Leave investment to product discovery; meaning to `domain-modeling`;
  structure to `service-boundary-design` or `deep-module-design`; and unexplained failure to
  `software-failure-diagnosis`.
- Leave security threat and control decisions to `software-security-design`;
  compatibility and deprecation to `software-contract-evolution`;
  transition states to `migration-planning`; release controls to
  `controlled-release-design`; signals to `observability-design`; evidence
  methods to `software-verification`; and multi-workstream flow to
  `technical-program-orchestration`.
- Send intentional behavior changes to `scoped-change-implementation` and
  structure-only work to `behavior-preserving-refactoring`. Do not create a
  second orchestration record or invent behavior to make either route ready.

## Quality gates

- Recover the outcome and authority independently of the requested
  implementation shape.
- Distinguish current, desired, preserved, accidental, and unknown behavior.
  Use disagreement-rich examples and separate probes from durable claims.
- Multi-decision, state, effect, or owner change requires the smallest
  self-contained text flow, table, or diff. Label current, desired, preserved,
  and unresolved behavior without prescribing implementation.
- Make scope, non-goals, affected consumers and state, constraints,
  compatibility, failures, ownership, and consequential assumptions explicit
  in proportion to risk.
- Express acceptance claims as observable behavior or properties. Keep
  unaccepted architecture, authority, protocol, security, data, and recovery
  choices proposed or unresolved.
- Define the smallest useful coherent slice. Calibrate readiness to evidence
  without implying implementation authority, verification, or release
  approval.

## Reject specification theater

- Do not reformat a ticket or accept a requested screen, schema, endpoint, or
  technology as the behavioral contract.
- Do not treat precise-looking scenarios, code-shaped acceptance criteria, or
  complete-looking templates as sufficient evidence.
- Do not produce a near-diff plan, exhaustive inventory, test strategy,
  rollout plan, or migration sequence.
- Do not fill blocking decisions with defaults, copy neighboring artifacts, or
  mark ownerless consequential questions ready.
- Do not block a cheap reversible change for document completeness or let a
  thin specification legitimize a consequential change.

## Completion

Return a compact frame, evidence-ranked current/desired behavior, examples, affected surface, contract, scope/non-goals, labeled `CHG-*` claims, unresolved decisions/routes, coherent slice, and readiness. State what implementers may rely on, must not infer, and still need confirmed.
