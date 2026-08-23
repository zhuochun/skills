---
name: platform-capability-design
description: Design or review internal platform capabilities that turn repeated engineering work into honest, self-service, supportable paths with useful defaults, guardrails, and escape hatches. Use for developer platforms, paved roads, service templates, platform APIs, ticket-heavy services, or duplicated tooling. Do not use merely to centralize ownership, select a vendor, or prescribe team topology.
---

# Platform Capability Design

Design user leverage, not an infrastructure catalog or central ticket queue. Preserve runtime, cost, failure, quota, ownership, and compliance semantics.

## Platform capability workflow

1. **Identify repeated work.** Name users, jobs, delays, errors, cognitive load, support demand, and workarounds. Prefer observed evidence.
2. **Define the capability boundary.** State the outcome the platform owns, what remains with users, the underlying services it composes, and where lower-level access remains legitimate.
3. **Segment variation.** Separate common needs from domain-specific, high-risk, expert, legacy, or exploratory cases. Standardize only where convergence compounds leverage.
4. **Design around intent.** Use stable organization and domain language. Keep consequential cost, latency, quotas, failure, retries, consistency, location, and traceability visible.
5. **Design self-service.** Cover discovery, provisioning, configuration, policy feedback, deployment, observation, support, change, and retirement. Remove routine platform-team work.
6. **Layer controls.** Prefer explainable guidance and early feedback; use safe defaults and templates for repeated learning; reserve hard guardrails for unacceptable risk. Give every block a reason and remediation path.
7. **Provide escape and escalation.** Define controlled expert paths and accountable review for high-risk exceptions. Record ownership, evidence, and expiry; repeated escape signals poor fit.
8. **Establish the operating contract.** Name capability ownership, availability and support expectations, compatibility policy, dependency responsibilities, incident path, metadata, and lifecycle obligations.
9. **Plan adoption and evolution.** Define a thin usable slice, representative design partners, migration support, success and burden measures, feedback channels, and retirement of replaced paths.

Read [references/platform-capability-design.md](references/platform-capability-design.md) only when a durable capability proposal or review record is needed.

## Quality gates

- Evidence shows repeated work or risk across contexts.
- The interface reduces cognitive load without concealing operations.
- The ordinary path is self-service without tickets.
- Changed multi-step paths include the smallest self-contained text comparison of current work and proposed self-service. Keep hidden operations, controls, escapes, and unresolved ownership visible.
- Defaults, guidance, guardrails, escapes, and escalations have distinct roles.
- Ownership covers build through retirement.
- Adoption measures user outcomes and platform burden.
- Intentional exclusions are explicit.

## Reject weak platform designs

- A renamed service, portal, template repository, or operations queue is not a platform.
- Provider primitives need organization intent and safe composition.
- Golden paths need visible limits and remediation.
- Abstractions must expose consequential quotas, failure, latency, cost, consistency, and ownership.
- Prove usefulness before mandatory migration; accumulation needs retirement, support, and compatibility.

## Completion

Return user-work evidence, capability boundary, interface and lifecycle, controls, escapes, operating contract, thin adoption slice, outcome and burden measures, risks, and unknowns. Keep team structure contextual unless evidence requires an ownership change.
