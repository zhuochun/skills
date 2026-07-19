---
name: software-change-specification
description: Specify a bounded software change before implementation by recovering its intent, current and desired behavior, scope, non-goals, invariants, affected surfaces, constraints, acceptance claims, and unresolved decisions. Use when an accepted feature, integration, diagnosed fix, migration slice, or consequential configuration change is too ambiguous, assumption-heavy, or cross-boundary to implement safely from a ticket alone; especially before delegating work to an agent, engineer, or multiple teams. Keep small reversible changes in the lightweight contract of scoped-change-implementation, and route unresolved product, domain, architecture, contract, diagnosis, or transition decisions to their owning skills.
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

## Specification workflow

1. **Frame the change decision.** State the requested outcome, why it matters now, request and decision authority, target users or callers, affected environment, deadline or obligation, and consequence of getting it wrong. Separate an accepted product or technical direction from permission to implement it.
2. **Recover current behavior.** Trace the relevant user or caller path through inputs, decisions, state, effects, outputs, contracts, and operating controls. Distinguish documented intent, observed behavior, supported behavior, accidental behavior, and unknown behavior. Do not let the requested solution become the only description of the problem.
3. **Separate requirement from solution.** Classify each material statement as desired outcome or behavior, hard constraint, accepted design decision, proposed implementation, or open question. Preserve mandated implementation constraints with their source and rationale; reopen unverified prescriptions as options. Do not promote a proposed baseline, familiar pattern, or agent recommendation into the change contract unless the accountable owner has accepted it.
4. **Map the affected surface.** Name the product journey, entry points, domain decisions, state authorities, data lifecycle, consumers, APIs or events, permissions, dependencies, failure and recovery paths, telemetry, release controls, and ownership boundaries that could change or must remain stable. Record evidence confidence and omit irrelevant template fields.
5. **Probe behavior with examples.** Start with ordinary positive and negative cases, expose the domain-relevant input/state/action/output structure, then vary meaningful boundaries, ordering, identity, timing, retries, failures, and permissions. When several roles may disagree, collect expected outcomes independently before converging. Treat scenarios as probes until the accountable owner resolves the rule; retain only representative cases as durable acceptance claims.
6. **Define the change contract.** State confirmed desired behavior, preserved behavior, invariants, validation and authorization rules, state transitions and authority, effects, error and failure semantics, compatibility expectations, quality constraints, recovery expectations, and explicit non-goals. Where an owning decision is unresolved, state the obligation and conditional alternatives without selecting one; keep dependent claims conditional. Describe what must be true without prescribing file edits, service ownership, protocol shape, migration policy, or implementation choreography.
7. **Bound coherent delivery.** Identify the smallest useful end-to-end behavior slice and any independently valuable follow-on slices. Name prerequisites and cross-slice invariants, but leave multi-workstream sequencing and live dependency steering to `technical-program-orchestration`, and leave old-to-mixed-to-new transition phases to `migration-planning`.
8. **Name acceptance claims.** Give each consequential claim a stable key and plain-language label, such as `CHG-refund-once — One approved refund produces at most one transfer`. State the behavior and representative conditions that make the claim meaningful. Do not select test methods, environments, or production signals here; route those to `verification-strategy-design` and `observability-design`.
9. **Resolve or route uncertainty.** Resolve only questions within this skill's behavioral-specification authority. For each other material unknown, state why it matters, the decision owner, the smallest probe or specialist skill needed, and whether implementation can proceed around it. Do not convert every unknown into a gate, do not bury an unresolved domain, contract, security, data, or recovery decision inside an assumption, and do not answer it merely to complete the specification.
10. **Make readiness explicit.** Return `ready`, `ready with owned follow-through`, or `not ready`, with the evidence basis and accountable confirmation still required. A ready specification means an implementer should not need to invent consequential behavior; it does not prove the design, authorize implementation, or certify release.

Read [references/change-specification.md](references/change-specification.md) when selecting specification depth, structuring the compact output, or distinguishing probes from durable claims.

## Compose without taking over

- When orchestration supplies the originating request, accepted scope and non-goals, existing claims, evidence status, and a bounded specification question, consume them instead of repeating the whole change frame. Preserve source meaning, reopen only contradictions or blocking ambiguity, and return the behavior-contract and readiness delta.
- `software-change-orchestration` owns cross-session continuity, persistence, and selection of the current frontier. This skill owns one bounded change specification inside that flow and does not create an orchestration record by itself.
- `product-opportunity-discovery` and `product-opportunity-prioritization` own whether an opportunity or bet deserves investment; this skill specifies one accepted software change.
- `domain-modeling` owns disputed vocabulary, rules, invariants, and semantic contexts. This skill consumes resolved meaning and exposes unresolved meaning rather than deciding it silently.
- `service-boundary-design` and `deep-module-design` own structural boundaries and interfaces. This skill records accepted design constraints and the behavior they must support; it does not assign service authority or select an interface to make the specification look implementable.
- `software-contract-evolution` owns shared contract compatibility, versioning, translation, deprecation, and retirement. This skill records affected consumers, the compatibility obligation, and unresolved decision, then cites the evolution result; it does not choose a versioning or event-shape policy.
- `software-failure-diagnosis` owns an unexplained failure. After causal support exists, this skill can define the corrected behavior and regression boundary before authorized repair.
- `controlled-release-design`, `migration-planning`, `observability-design`, and `verification-strategy-design` own release controls, transition phases, measurement contracts, and falsifying evidence methods respectively.
- `technical-program-orchestration` owns multi-workstream dependency, integration, and constraint flow. `scoped-change-implementation` consumes the change specification and owns code changes, feedback loops, deviations, and cleanup.
- Route pure structure-only work to `behavior-preserving-refactoring`; do not invent desired behavior merely to make a refactoring look like a feature.

## Quality gates

- The underlying outcome and authority are recoverable without relying on the requested implementation shape.
- Current, desired, preserved, accidental, and unknown behavior are not conflated.
- Concrete examples include meaningful disagreement-rich boundaries, not only happy paths, and probes are distinguished from durable claims.
- Scope, non-goals, affected consumers and state, hard constraints, compatibility, failure behavior, and ownership are explicit in proportion to risk.
- Acceptance claims describe observable behavior or properties rather than files, functions, mocks, or implementation steps.
- Every consequential assumption is visible, owned, and either tolerable for implementation or routed before implementation.
- Unaccepted architecture, authority, protocol, compatibility, security, data, and recovery options remain visibly proposed or unresolved; none appear as settled contract language.
- The smallest coherent slice creates useful behavior without forcing unrelated architecture or rollout work into the specification.
- Readiness is evidence-calibrated and does not impersonate implementation authorization, verification, or release approval.

## Reject specification theater

- Do not reformat a ticket and call it a specification.
- Do not turn a stakeholder's screen, schema, endpoint, or technology request into an unquestioned requirement.
- Do not treat a list of Given-When-Then scenarios as complete merely because it looks precise.
- Do not make acceptance criteria restate the proposed code structure or test choreography.
- Do not require every field, diagram, scenario type, or specialist skill for every change.
- Do not produce a near-diff implementation plan, exhaustive file inventory, test strategy, rollout plan, or migration sequence under a new heading.
- Do not fill blocking decisions with “recommended defaults” when the user asked for a specification rather than a design recommendation.
- Do not copy product, domain, architecture, contract, or operational artifacts into a second source of truth.
- Do not mark a change ready while consequential meaning, authority, compatibility, security, data, or recovery questions remain ownerless.
- Do not block a cheap reversible change merely to complete a document, or let a thin specification legitimize a consequential change.

## Completion

Return a compact change frame, evidence-ranked current and desired behavior, clarified examples, affected surface, change contract, scope and non-goals, `CHG-*` acceptance claims with labels, unresolved decisions and routes, smallest coherent slice, and readiness classification. State what an implementer may rely on, what they must not infer, and which accountable confirmation remains.
