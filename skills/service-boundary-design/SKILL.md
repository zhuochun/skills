---
name: service-boundary-design
description: Decide whether deployable service boundaries should be kept, split, merged, strengthened, or replaced by an in-process module boundary. Use for microservice proposals, modular-monolith reviews, service sprawl, unclear data ownership, cross-service pain, incidents, or ownership realignment. Ground recommendations in domain, change, data, runtime, failure, and operating evidence; route module details to deep-module-design.
---

# Service Boundary Design

Produce an evidence-backed boundary decision, not a service-count opinion. Treat a bounded context, deployable service, team boundary, data owner, and runtime failure domain as related but distinct structures.

## Preserve authority

- Default to analysis and recommendation. Do not split services, move data, or change ownership unless the user explicitly requests implementation.
- Identify the decision, service, data, operations, security, and consumer owners before material recommendation.
- Mark missing production or organizational evidence as uncertainty. Do not invent traffic, ownership, or failure behavior from code structure alone.

## Compose boundary scopes

- `domain-modeling` owns meaning, rules, invariants, and contexts; this skill chooses enforcement in an existing, split, or merged service, stronger data or runtime isolation, or an in-process module.
- `deep-module-design` owns the selected module's knowledge, state, interface, lifecycle, seams, and adoption. Pass pressure, commitments, service constraints, and why physical separation was rejected.
- `service-ownership-design` owns whether a team can sustain production responsibility. Deployment shape does not imply organization design.

## Gather evidence

Inspect the smallest sufficient set: business workflows and invariants; change and release history; calls, events, bulk paths, stores, caches, and projections; runtime topology, traces, latency, and failures; security, compliance, scale, consistency, and recovery; team and on-call boundaries, platform maturity, and migration constraints.

Prefer measured runtime behavior and actual change history over declared diagrams. Reconcile disagreements rather than choosing one source silently.

## Review workflow

1. **Frame the decision.** Name boundary, pressure, horizon, and whether the choice concerns logical modularity, deployment, data authority, failure isolation, or ownership. Route purely in-process detail to `deep-module-design`.
2. **Recover domain intent.** Rewrite solution-shaped proposals as outcomes, constraints, scenarios, and invariants. Identify the language and model that must remain coherent locally.
3. **Map the real boundary.** Inventory every interface: requests, events, schemas, shared tables, files, streams, analytics exports, support paths, and operational controls. Name the authoritative owner of each fact.
4. **Balance forces.** Compare forces apart—volatility, scale, security, ownership, reliability, isolation—with transactions, invariants, chatty workflows, data dependence, latency, and coordinated releases.
5. **Test change and failure independence.** Trace representative business changes and failure scenarios through the proposed shape. Check whether the boundary localizes them or merely moves coupling behind the network.
6. **Price the operating model.** Check deployability, observability, incident routing, capacity, compatibility, local development, testing, and on-call readiness. A structurally plausible service can still be operationally premature.
7. **Compare enforcement.** Consider current service, stronger in-process module, split, or merge. Compare localized knowledge and change, caller burden, data authority, runtime cost, migration, and reversibility without designing the module interface.
8. **Recommend and route conditionally.** Give a boundary decision, confidence level, decisive evidence, rejected alternatives, risks, prerequisites, and reconsideration signals. When the selected option is logical modularity, hand the pressure, commitments, constraints, and rejection gates to `deep-module-design`; when physical separation is selected, preserve any internal module work as a distinct follow-up rather than assuming the service boundary completes it.

Read [references/boundary-review.md](references/boundary-review.md) only when a formal interface inventory, force matrix, scenario trace, or boundary decision record is needed.

## Quality gates

Do not complete the review until:

- workflow, invariants, data authority, and non-API interfaces are visible;
- integration and disintegration forces include a traced change and failure scenario;
- runtime and organizational readiness are considered;
- semantic, code, deployment, data, and team boundaries remain distinct;
- in-process recommendations state locality and service constraints, then route design to `deep-module-design`;
- unknowns and next evidence are explicit.

## Reject weak reasoning

- Bounded context does not equal microservice; line count, repositories, or “single responsibility” do not set granularity.
- Shared databases need write authority and recovery coupling.
- Central entity or control-plane dependence weakens blast-radius claims.
- Do not recommend unsupported distributed operations or treat a folder, class, package, or generic interface as proof of a deep adoptable boundary.
