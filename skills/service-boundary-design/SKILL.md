---
name: service-boundary-design
description: Design or evaluate whether deployable service boundaries should be kept, split, merged, strengthened, or replaced by an in-process module boundary. Use for microservice proposals, modular-monolith reviews, service sprawl, unclear data ownership, cross-service workflow pain, boundary-related incidents, or service ownership realignment. Ground recommendations in domain meaning, change patterns, data and interface coupling, runtime dependencies, failure propagation, and team operating capacity. Route detailed module ownership and interface design to deep-module-design.
---

# Service Boundary Design

Produce an evidence-backed boundary decision, not a service-count opinion. Treat a bounded context, deployable service, team boundary, data owner, and runtime failure domain as related but distinct structures.

## Preserve authority

- Default to analysis and recommendation. Do not split services, move data, or change ownership unless the user explicitly requests implementation.
- Identify the decision owner, affected service owners, data owners, operators, security partners, and consumers before recommending a material boundary change.
- Mark missing production or organizational evidence as uncertainty. Do not invent traffic, ownership, or failure behavior from code structure alone.

## Compose boundary scopes

- `domain-modeling` owns semantic meaning, rules, invariants, and bounded contexts. This skill consumes that model when deciding how strongly to enforce a boundary.
- This skill owns whether the required enforcement belongs in an existing deployable service, a split or merged service, stronger data or runtime isolation, or an in-process module boundary.
- `deep-module-design` owns the selected in-process module's hidden knowledge, state and resource ownership, interface burden, lifecycle semantics, seams, and incremental adoption. Pass it the demonstrated pressure, preserved commitments, service-level constraints, and the reason physical separation was rejected or deferred.
- `service-ownership-design` owns whether a team and its enabling environment can sustain the resulting production-service responsibility. Do not infer an organization design merely from the preferred deployment shape.

## Gather evidence

Inspect the smallest sufficient set of:

- business capabilities, difficult workflows, invariants, and domain language;
- change history, coordinated releases, and files or repositories that move together;
- synchronous calls, events, bulk paths, shared stores, caches, and projections;
- runtime topology, traces, latency, failure history, and operational ownership;
- security, compliance, scaling, consistency, and recovery requirements;
- team boundaries, on-call coverage, platform maturity, and migration constraints.

Prefer measured runtime behavior and actual change history over declared diagrams. Reconcile disagreements rather than choosing one source silently.

## Review workflow

1. **Frame the decision.** Name the current or candidate deployable boundary, the symptoms or opportunity, the decision horizon, and whether the unresolved choice is between logical modularity, physical deployment, data authority, failure isolation, or operating ownership. If the decision is already purely about an in-process module, route detailed design to `deep-module-design`.
2. **Recover domain intent.** Rewrite solution-shaped proposals as outcomes, constraints, scenarios, and invariants. Identify the language and model that must remain coherent locally.
3. **Map the real boundary.** Inventory every interface: requests, events, schemas, shared tables, files, streams, analytics exports, support paths, and operational controls. Name the authoritative owner of each fact.
4. **Balance forces.** Record forces pushing apart—distinct volatility, scale, security, ownership, reliability, or fault isolation—and forces pulling together—transactions, shared invariants, chatty workflows, data dependency, latency, or coordinated releases.
5. **Test change and failure independence.** Trace representative business changes and failure scenarios through the proposed shape. Check whether the boundary localizes them or merely moves coupling behind the network.
6. **Price the operating model.** Check deployability, observability, incident routing, capacity, compatibility, local development, testing, and on-call readiness. A structurally plausible service can still be operationally premature.
7. **Compare enforcement options.** Include keep the current service boundary, strengthen or introduce an in-process module boundary, and split or merge deployable services when they are plausible. Compare which knowledge and change become local, interface and caller burden, data authority, runtime and operating cost, migration complexity, and reversibility. Do not invent the detailed module interface inside this comparison.
8. **Recommend and route conditionally.** Give a boundary decision, confidence level, decisive evidence, rejected alternatives, risks, prerequisites, and reconsideration signals. When the selected option is logical modularity, hand the pressure, commitments, constraints, and rejection gates to `deep-module-design`; when physical separation is selected, preserve any internal module work as a distinct follow-up rather than assuming the service boundary completes it.

Use [references/boundary-review.md](references/boundary-review.md) for the force matrix and output template.

## Quality gates

Do not complete the review until:

- the important workflow and invariant are explicit;
- data authority and non-API interfaces are visible;
- both disintegration and integration forces are represented;
- at least one change scenario and one failure scenario have been traced;
- runtime and organizational readiness are considered;
- the recommendation distinguishes semantic, code, deployment, data, and team boundaries;
- an in-process module recommendation states the desired locality and preserved service constraints, then routes detailed ownership and interface design to `deep-module-design`;
- unknowns and evidence needed to resolve them are listed.

## Reject weak reasoning

- Do not equate one bounded context with one microservice.
- Do not use line count, repository count, or “single responsibility” alone to set granularity.
- Do not call a shared database harmless without naming write authority and recovery coupling.
- Do not claim blast-radius reduction when all paths still depend on a central entity service or control plane.
- Do not recommend a distributed boundary whose operational prerequisites the organization cannot yet support.
- Do not design a folder, class, package, or generic interface and treat that as proof that the selected logical boundary is deep, local, or adoptable.
