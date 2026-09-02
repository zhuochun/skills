---
name: software-security-design
description: Design a risk-proportionate secure-by-design contract before implementation. Use for threat modeling or when attacker-controlled inputs, protected data or effects, identity, secrets, dependencies, tenant boundaries, privileged operations, or unsafe defaults create material security decisions. Produce threat paths, security requirements, control ownership, secure defaults, verification obligations, and residual risks; route implementation, independent review, and risk acceptance.
---

# Software Security Design

Turn security concerns into an inspectable design contract that ordinary
delivery work can implement and verify without inventing threat or control
policy.

## Preserve authority and proportionality

- Work read-only. Do not modify code, configuration, infrastructure,
  dependencies, credentials, or production state merely because a security
  design is ready.
- Identify the accountable security owner and risk acceptor. Preserve product,
  domain, privacy, legal, compliance, data, operational, and support decisions
  with their owners.
- Treat accepted behavior and architecture as inputs, not proof of safety.
  Reopen them only when a credible threat path contradicts a required security
  outcome or makes the accepted design unsafe.
- Use current repository policy and applicable primary standards. Record the
  standard, version, profile, and applicability; do not claim compliance from
  a partial mapping or generic checklist.
- Match depth to attacker control, asset sensitivity, privilege, exposure,
  blast radius, reversibility, and detection or recovery difficulty. Let a
  contained local change proceed without a formal threat model when its
  security behavior is already governed and unchanged.
- Label material statements **confirmed**, **inferred**, **assumed**,
  **proposed**, or **unresolved**. Accountable humans accept residual risk.

## Security design workflow

1. **Frame the security decision.** State the subject, lifecycle stage,
   environments, protected outcomes and assets, users and operators, exposure,
   accountable owners, risk tolerance, accepted behavior, and non-goals.
2. **Map the security surface.** Trace entry points, attacker-controlled data,
   identities, trust and tenant boundaries, privileges, protected state and
   effects, secrets, dependencies, build and deployment paths, update paths,
   telemetry, and recovery controls. Omit irrelevant surfaces.
3. **Construct credible threat paths.** For each material path, name the actor
   capability, precondition, entry or trust crossing, action, affected asset or
   security outcome, existing control, and evidence. Include alternate,
   fallback, administrative, support, and direct-interface paths when they can
   bypass the normal flow.
4. **Choose the design response.** Prefer eliminating hazardous behavior or
   reducing exposed authority before adding detection. Then choose preventive,
   containment, detection, and recovery controls for distinct failure modes.
   Explain tradeoffs and remaining assumptions.
5. **Define security requirements.** Give each consequential requirement a
   stable key and plain-language label, such as `SEC-refund-authority — Only an
   approved finance actor can execute a refund`. State the protected outcome,
   applicable actors and states, enforcement boundary, deny or failure
   behavior, and preserved availability or usability obligations.
6. **Design secure defaults and ownership.** Make the ordinary path carry the
   safer behavior. Minimize privilege and exposed surface; enforce policy at
   the boundary that owns protected data or effects; give secrets, keys,
   policy, security state, controls, and exceptions explicit owners and
   lifecycles.
7. **Cover components and delivery.** State provenance, integrity, support,
   update, vulnerability-response, build, deployment, configuration, and
   retirement obligations for security-relevant dependencies and artifacts.
   Do not invent procurement or organizational policy.
8. **Create verification obligations.** Map each material threat and `SEC-*`
   requirement to evidence that could falsify the control claim. Preserve
   negative and abuse paths, alternate entry points, mixed states, and method
   limits; leave method and oracle design to `software-verification`.
9. **Challenge bypass and degradation.** Recheck fallback and recovery paths,
   cached or delegated authority, cross-tenant access, partial failure,
   resource exhaustion, unsafe defaults, version skew, logging and error
   disclosure, control unavailability, and operator access. Retain only
   plausible paths supported by the subject and threat frame.
10. **Report the design disposition.** Return the security frame, surface and
    threat paths, `SEC-*` requirements, control ownership and defaults,
    verification obligations, unresolved owner decisions, residual risks, and
    `ready for accountable decision`, `ready with owned follow-through`, or
    `not ready`. A produced design is not independent certification.

Read [references/security-design-and-assurance.md](references/security-design-and-assurance.md)
when selecting risk prompts, secure-coding obligations, standards, or
verification methods for a material security surface.

## Compose without taking over

- Consume `CHG-*` behavior claims from `software-change-specification` and
  return `SEC-*` security obligations without rewriting product behavior.
- Route disputed module ownership to `deep-module-design`, supported contract
  evolution to `software-contract-evolution`, and unresolved accountable risk
  choices to `decision-facilitation`.
- Route authorized behavior changes to `scoped-change-implementation`. The
  implementer owns code shape and must stop when implementation exposes an
  unowned security decision.
- Send fixed specifications to `specification-review` for artifact-integrity
  challenge and implemented candidates to `code-review`. Consequential work
  also needs an independent security challenge by an accountable reviewer who
  can reject the design or candidate.
- Route claim-to-method and evidence execution to `software-verification`.
  Security design defines the required outcome and threat boundary, not a
  passing result or release decision.

## Quality gates

- Protected outcomes, attacker capabilities, trust boundaries, and exposure
  are explicit enough to bound credible threat paths.
- Each material threat has a disposition, owner, evidence status, and linked
  requirement or accepted residual risk.
- Each `SEC-*` requirement names its enforcement authority, failure behavior,
  secure default, lifecycle, and falsifiable outcome where applicable.
- Controls reduce, prevent, contain, detect, or recover from a named path;
  defense in depth addresses distinct failures rather than duplicated theater.
- Alternate and degraded paths cannot silently bypass stronger primary-path
  controls.
- Readiness preserves unresolved product, architecture, privacy, compliance,
  operational, and risk-acceptance authority.

## Reject security theater

- Do not substitute a vulnerability taxonomy, scanner result, compliance
  mapping, authentication feature, encryption label, or long checklist for a
  subject-specific threat and control trace.
- Do not demand every control for every change, equate internal with trusted,
  or assume a hidden client control protects a server effect.
- Do not prescribe custom cryptography, collect secrets for analysis, expose
  exploit details beyond the authorized audience, or perform active testing
  without explicit authority and safeguards.
- Do not mark the design secure, compliant, verified, or accepted. State the
  exercised scope, evidence limits, residual risk, and accountable next use.

## Completion

Return a compact, evidence-ranked security design with threat paths, `SEC-*`
requirements, secure defaults, control and exception ownership, verification
obligations, unresolved routes, residual risks, and an explicit disposition.
