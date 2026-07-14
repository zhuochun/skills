---
name: design-platform-capabilities
description: Design or review internal platform capabilities that turn repeated engineering work into honest, self-service, supportable paths with useful defaults, guardrails, and escape hatches. Use for internal developer platforms, paved roads, service templates, deployment or data capabilities, platform APIs, ticket-heavy infrastructure services, duplicated team tooling, or platform proposals that need product and operating boundaries. Do not use merely to centralize ownership, select a vendor, or prescribe a platform-team topology without demonstrated user work.
---

# Design Platform Capabilities

Design leverage for platform users, not a catalog of infrastructure or a central ticket queue. Preserve the runtime, cost, failure, quota, ownership, and compliance semantics users need for sound judgment.

## Platform capability workflow

1. **Identify repeated user work.** Name the user groups, jobs, delays, errors, cognitive load, support demand, and local workarounds. Prefer observed repetition over roadmap speculation.
2. **Define the capability boundary.** State the outcome the platform owns, what remains with users, the underlying services it composes, and where lower-level access remains legitimate.
3. **Segment variation.** Separate stable common needs from domain-specific, high-risk, expert, legacy, or exploratory cases. Standardize only where convergence creates compounding leverage.
4. **Design the interface around intent.** Expose organization and domain language where it is stable. Keep cost, latency, quotas, failure, retries, consistency, location, and traceability visible when they affect decisions.
5. **Design the self-service path.** Specify discovery, provisioning, configuration, policy feedback, deployment, observation, support, change, and retirement. Remove routine platform-team work from the normal path.
6. **Layer controls.** Prefer explainable guidance and early feedback; use safe defaults and templates for repeated learning; reserve hard guardrails for unacceptable risk. Give every block a reason and remediation path.
7. **Provide escape and escalation.** Define controlled expert paths, exception ownership, expiry, and evidence captured from repeated exceptions. An escape hatch is feedback about capability fit, not a permanent shadow platform.
8. **Establish the operating contract.** Name capability ownership, availability and support expectations, compatibility policy, dependency responsibilities, incident path, metadata, and lifecycle obligations.
9. **Plan adoption and evolution.** Define a thin usable slice, representative design partners, migration support, success and burden measures, feedback channels, and retirement of replaced paths.

Use [references/platform-capability-design.md](references/platform-capability-design.md) to produce the capability proposal or review.

## Quality gates

- Evidence shows repeated work or risk across more than one user context.
- The interface reduces user cognitive load without concealing operational truth.
- The ordinary path is self-service and does not require a platform ticket.
- Defaults, guidance, guardrails, and escape hatches have different declared roles.
- Ownership covers build, operation, support, compatibility, migration, and retirement.
- Adoption measures user outcomes and platform burden, not only sign-ups or resources created.
- The proposal names cases it intentionally does not absorb.

## Reject weak platform designs

- Renaming a shared service, portal, template repository, or operations queue as a platform.
- Provider primitives exposed without organization-specific intent or safe composition.
- Golden paths enforced through hidden limits or unexplained denial.
- Abstractions that hide quotas, failure, latency, cost, consistency, or ownership.
- Mandatory migration before the capability proves useful to representative teams.
- Feature accumulation without retirement, support capacity, or compatibility policy.

## Completion

Return the user-work evidence, capability boundary, interface and lifecycle, control layers, escape path, operating contract, thin adoption slice, success and burden measures, risks, and unknowns. Keep platform team structure as a contextual recommendation unless the evidence genuinely requires an ownership change.
