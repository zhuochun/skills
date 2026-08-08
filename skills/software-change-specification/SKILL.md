---
name: software-change-specification
description: Specify an accepted but behaviorally ambiguous software change before implementation by recovering current and desired behavior, scope, invariants, affected surfaces, acceptance claims, and unresolved decisions. Use when implementers would otherwise invent consequential behavior. Do not use to review a fixed candidate; use specification-review. Keep small clear changes in scoped-change-implementation; route unresolved specialist decisions to their owners.
---

# Software Change Specification

Turn an intended software change into a reviewable behavioral contract that an implementer can follow without guessing what matters. Specify the change, not the patch.

## Preserve authority and flow

- Work read-only by default. Do not edit code, authorize implementation, assign teams, promise delivery, or approve release merely because the specification is ready.
- Identify the accountable change owner and the domain, product, consumer, security, privacy, data, and operational owners needed for consequential interpretations. The agent can propose a readiness classification; accountable humans confirm disputed meaning and residual risk.
- Recover evidence from the request, current behavior, code, tests, contracts, decisions, telemetry, incidents, and named stakeholders. Mark material statements as confirmed, inferred, assumed, proposed, or unresolved instead of manufacturing certainty.
- Match depth to uncertainty, consequence, reversibility, and coordination cost. Let a local reversible change proceed through the compact inline contract in `scoped-change-implementation`; use this skill when clarification has decision value.
- Use the user's existing issue, plan, conversation, or repository artifact. When orchestration supplies a canonical surface and record-write authority, update that surface with the owned specification delta; otherwise return an inline or read-only result as authorized. Never create a second handoff record.
- Keep opportunity selection, domain meaning, architecture design, contract evolution, rollout, verification methods, and implementation with their canonical owners. Reference their decisions by stable key and plain-language label when present rather than copying entire artifacts.
- A delivery target or request for an “implementation-ready” result does not authorize the specifier to resolve missing domain, architecture, compatibility, security, data, or recovery decisions. Produce a conditional partial specification and `not ready` result when those owners have not decided.
- Inspect discoverable behavior and evidence before asking the change owner. Even without an interactive exchange, expose specification-relevant ambiguity, assumptions, unknowns, and missing authority rather than silently completing the contract.

## Clarify and stress-test interactively

- Use interactive clarification when the user asks to grill, challenge, or stress-test the change, or when material owner-controlled ambiguity blocks a useful specification.
- Ask only questions that can change desired or preserved behavior, examples, boundaries, invariants, failure semantics, acceptance claims, or readiness. Route product, domain, architecture, contract, security, data, recovery, and transition decisions to their owners.
- Partition questions by both behavioral dependency and disclosure dependency. Batch a low-sensitivity frontier only when its answers remain independently understandable. Serialize when a prior answer should shape the next example, ambiguity needs adaptive follow-up, trust, power, or sensitive disclosure affects candor, or a gating answer changes which contract questions remain relevant.
- After each batch, update the behavioral model and suppress questions answered by repository evidence or prior responses. Challenge the clarified model with disagreement-rich examples and failure cases before declaring readiness.

## Specification workflow

1. **Frame the change decision.** State the requested outcome, why it matters now, request and decision authority, target users or callers, affected environment, deadline or obligation, and consequence of getting it wrong. Separate an accepted product or technical direction from permission to implement it.
2. **Recover current behavior.** Trace the relevant user or caller path through inputs, decisions, state, effects, outputs, contracts, and operating controls. Distinguish documented intent, observed behavior, supported behavior, accidental behavior, and unknown behavior. Do not let the requested solution become the only description of the problem.
3. **Separate requirement from solution.** Classify each material statement as desired outcome or behavior, hard constraint, accepted design decision, proposed implementation, or open question. Preserve mandated implementation constraints with their source and rationale; reopen unverified prescriptions as options. Do not promote a proposed baseline, familiar pattern, or agent recommendation into the change contract unless the accountable owner has accepted it.
4. **Map the affected surface.** Name the product journey, entry points, domain decisions, state authorities, data lifecycle, consumers, APIs or events, permissions, dependencies, failure and recovery paths, telemetry, release controls, and ownership boundaries that could change or must remain stable. Record evidence confidence and omit irrelevant template fields.
5. **Probe behavior with examples.** Start with ordinary positive and negative cases, expose the domain-relevant input/state/action/output structure, then vary meaningful boundaries, ordering, identity, timing, retries, failures, and permissions. When several roles may disagree, collect expected outcomes independently before converging. Treat scenarios as probes until the accountable owner resolves the rule; retain only representative cases as durable acceptance claims.
6. **Define the change contract.** State confirmed desired behavior, preserved behavior, invariants, validation and authorization rules, state transitions and authority, effects, error and failure semantics, compatibility expectations, quality constraints, recovery expectations, and explicit non-goals. Where an owning decision is unresolved, state the obligation and conditional alternatives without selecting one; keep dependent claims conditional. Describe what must be true without prescribing file edits, service ownership, protocol shape, migration policy, or implementation choreography.
7. **Bound coherent delivery.** Identify the smallest useful end-to-end behavior slice and any independently valuable follow-on slices. Name prerequisites and cross-slice invariants, but leave multi-workstream sequencing and live dependency steering to `technical-program-orchestration`, and leave accepted replacement-state movement, authority transfer, cutover, retireability, and retirement to `migration-planning`.
8. **Name acceptance claims.** Give each consequential claim a stable key and plain-language label, such as `CHG-refund-once — One approved refund produces at most one transfer`. State the behavior and representative conditions that make the claim meaningful. Do not select test methods, environments, or production signals here; route those to `verification-strategy-design` and `observability-design`.
9. **Resolve or route uncertainty.** Resolve only questions within this skill's behavioral-specification authority. For each other material unknown, state why it matters, the decision owner, the smallest probe or specialist skill needed, and whether implementation can proceed around it. Do not convert every unknown into a gate, do not bury an unresolved domain, contract, security, data, or recovery decision inside an assumption, and do not answer it merely to complete the specification.
10. **Make readiness explicit.** Return `ready`, `ready with owned follow-through`, or `not ready`, with the evidence basis and accountable confirmation still required. A ready specification means an implementer should not need to invent consequential behavior; it does not prove the design, authorize implementation, or certify release.

Read [references/change-specification.md](references/change-specification.md) when selecting specification depth, structuring the compact output, or distinguishing probes from durable claims.

## Compose without taking over

- Consume an orchestration-supplied request, scope, claims, evidence status, and
  bounded question. Preserve source meaning, reopen only contradictions or
  blocking ambiguity, and return only the behavior-contract and readiness
  delta. Orchestration owns continuity, persistence, and frontier selection.
- Send a fixed consequential candidate to `specification-review` when an
  independent ambiguity, contradiction, loophole, and readiness judgment is
  warranted. Apply accepted repairs here; the reviewer does not rewrite the
  contract or settle routed decisions.
- Leave opportunity investment to product discovery or prioritization; domain
  meaning to `domain-modeling`; structure to `service-boundary-design` or
  `deep-module-design`; and unexplained failure to
  `software-failure-diagnosis`.
- Leave compatibility and deprecation to `software-contract-evolution`;
  transition states to `migration-planning`; release controls to
  `controlled-release-design`; signals to `observability-design`; evidence
  methods to `verification-strategy-design`; and multi-workstream flow to
  `technical-program-orchestration`.
- Send intentional behavior changes to `scoped-change-implementation` and
  structure-only work to `behavior-preserving-refactoring`. Do not create a
  second orchestration record or invent behavior to make either route ready.

## Quality gates

- Recover the outcome and authority independently of the requested
  implementation shape.
- Distinguish current, desired, preserved, accidental, and unknown behavior.
  Use disagreement-rich examples and separate probes from durable claims.
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

Return a compact change frame, evidence-ranked current and desired behavior, clarified examples, affected surface, change contract, scope and non-goals, `CHG-*` acceptance claims with labels, unresolved decisions and routes, smallest coherent slice, and readiness classification. State what an implementer may rely on, what they must not infer, and which accountable confirmation remains.
