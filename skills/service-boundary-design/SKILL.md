---
name: service-boundary-design
description: Decide whether deployable service boundaries should be kept, split, merged, strengthened, or replaced by an in-process module boundary. Use for microservice proposals, modular-monolith reviews, service sprawl, unclear data ownership, cross-service pain, incidents, or ownership realignment. Ground recommendations in domain, change, data, runtime, failure, and operating evidence; route module details to deep-module-design.
---

# Service Boundary Design

Produce an evidence-backed boundary decision, not a service-count opinion. Keep context, service, team, data authority, and failure domain distinct.

## Preserve authority

- Analyze by default; do not split services, move data, or change ownership without authorized implementation.
- Identify the decision owner and the service, data, operations, security, or consumer owners whose commitments the candidate affects. Keep unknown authority explicit.
- Mark missing production or organizational evidence as uncertainty. Do not invent traffic, ownership, or failure behavior from code structure alone.

## Compose boundary scopes

- `domain-modeling` owns meaning, rules, invariants, and contexts; this skill chooses service, data/runtime, or in-process enforcement.
- `deep-module-design` owns the selected module's knowledge, state, interface, lifecycle, seams, and adoption. Pass pressure, commitments, service constraints, and why physical separation was rejected.
- `service-ownership-design` owns whether a team can sustain production responsibility. Deployment shape does not imply organization design.

## Gather evidence

Start with required repository guidance, the affected workflow, its state owner, and
the proposed enforcement change. Name the unresolved assumption before expanding
investigation; read evidence that could change the boundary decision. Use targeted
sections and reuse inspected facts unless incomplete, contradictory, or stale.

Inspect history for disputed intent or change coupling, runtime evidence for load or
failure claims, and organizational evidence for operating ownership. Prefer observed
evidence over declared diagrams where they disagree. Missing consequential evidence
requires a conditional result, not a broader search without a decision question.

## Review workflow

1. **Frame the decision.** Name boundary, pressure, horizon, and whether the choice concerns logical modularity, deployment, data authority, failure isolation, or ownership. Route purely in-process detail to `deep-module-design`.
2. **Recover domain intent.** Rewrite solution-shaped proposals as outcomes, constraints, scenarios, and invariants. Identify the language and model that must remain coherent locally.
3. **Map the real boundary.** Trace interfaces and shared state that cross or constrain
   the candidate boundary, including non-API data and control paths. Name each fact's
   authoritative owner. Expand the inventory when a dependency could change the decision.
4. **Balance forces.** Compare forces apart—volatility, scale, security, ownership, reliability, isolation—with transactions, invariants, chatty workflows, data dependence, latency, and coordinated releases.
5. **Test change and failure independence.** Trace representative business changes and failure scenarios through the proposed shape. Check whether the boundary localizes them or merely moves coupling behind the network.
6. **Price the operating change.** For a changed deployment or operating boundary,
   check affected deployment, observability, incident, capacity, compatibility, testing,
   and on-call commitments. For an in-process choice, explain why chosen enforcement
   fits and what pressure would invalidate it. A plausible service may be operationally premature.
7. **Compare enforcement.** Consider current service, stronger module, split, or merge across localized knowledge and change, caller burden, data authority, runtime cost, migration, and reversibility. Do not design the module interface.
8. **Recommend and route conditionally.** Give the decision, confidence, decisive evidence, rejected alternatives, risks, prerequisites, and revisit signals. For logical modularity, hand pressure, commitments, constraints, and rejection gates to `deep-module-design`. For physical separation, keep internal module work as a distinct follow-up.

Read the relevant section of [references/boundary-review.md](references/boundary-review.md)
when unresolved coupling, competing forces, or a requested formal record needs it.
Do not load the worksheet merely because a boundary decision is being made.

## Quality gates

Complete the owned decision when:

- the affected workflow, invariants, data authority, and decision-bearing non-API interfaces are visible;
- integration and disintegration forces include a traced change and failure scenario;
- materially different options include the smallest self-contained text comparison of service or module shape, data authority, runtime/failure boundaries, and operating ownership; rendering is optional;
- affected runtime and organizational commitments are supported or explicitly unresolved;
- semantic, code, deployment, data, and team boundaries remain distinct;
- in-process recommendations state locality and service constraints, then route design to `deep-module-design`;
- unknowns and next evidence are explicit.

## Reject weak reasoning

- Bounded context does not equal microservice; line count, repositories, or “single responsibility” do not set granularity.
- Shared databases need write authority and recovery coupling.
- Central entity or control-plane dependence weakens blast-radius claims.
- Do not recommend unsupported distributed operations or treat a folder, class, package, or generic interface as proof of a deep adoptable boundary.
