---
name: software-security-design
description: Design or revise a change-level secure-by-design contract across delivery. Use for threat modeling or when attacker-controlled inputs, protected data or effects, identity, secrets, dependencies, tenant boundaries, privilege, AI agents, or unsafe defaults create material security decisions. Produce prioritized threat paths, security requirements, secure defaults, control ownership, assurance obligations, and residual-risk routes; exclude organization-wide security-program assessment.
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
- For every plausibly applicable surface, retain a threat path or record why it
  is not applicable or material, the supporting evidence and confidence, and
  what change would reopen it. Rank retained paths by consequence, reach,
  attacker feasibility, exposure, detectability or recovery difficulty, and
  evidence confidence without inventing numeric precision.
- Label material statements **confirmed**, **inferred**, **assumed**,
  **proposed**, or **unresolved**. Accountable humans accept residual risk.
- Confirm the intended audience and approved handling surface before including
  sensitive weakness or reproduction detail. When no safe channel exists,
  report the minimum abstract weakness, consequence, owner, and restricted
  follow-up needed; never place secrets in the design artifact.

## Security design workflow

1. **Frame the security decision.** State the subject, lifecycle stage,
   environments, protected outcomes and assets, users and operators, exposure,
   accountable owners, risk tolerance, accepted behavior, and non-goals.
2. **Map the security surface.** Trace entry points, attacker-controlled data,
   identities, trust and tenant boundaries, privileges, protected state and
   effects, secrets, dependencies, build and deployment paths, update paths,
   telemetry, and recovery controls. Omit irrelevant surfaces.
3. **Construct and prioritize credible threat paths.** For each material path,
   name the actor capability, precondition, entry or trust crossing, action,
   and affected asset or security outcome. Record consequence and reach,
   feasibility and exposure, existing control and evidence, confidence,
   priority, and disposition. Include alternate, fallback, administrative,
   support, and direct-interface paths when they can bypass the normal flow.
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
10. **Prepare independent challenge.** For consequential work, name a reviewer
    distinct from the producer with relevant expertise, evidence access, and
    authority to reject or require repair. Fix the artifact snapshot, review
    scope and limits, material threats and claims, safe evidence channel,
    required findings disposition, and confirmation gate. If the reviewer or
    channel is unavailable, leave that assurance gate unresolved.
11. **Report the design disposition.** Use the Completion contract below and
    select one defined disposition.

Use dispositions precisely:

- **Ready for accountable decision:** evidence is sufficient for named humans
  to decide unresolved controls or risks; this is not implementation readiness.
- **Ready for implementation with named assurance gates:** accountable humans
  accepted all material security rules and residual risks, and owners, timing,
  safe evidence handling, verification, and required independent challenge are
  fixed. This does not itself authorize implementation or release.
- **Not ready:** a material protected outcome, threat, current-state fact,
  enforcement boundary, owner, safe handling route, or required reviewer is
  unresolved enough that the next proposed action could choose unsafe behavior.

For a material security surface, read only the applicable references:

- General risk prompts or secure-coding handoff:
  [references/security-design-and-assurance.md](references/security-design-and-assurance.md).
- Models, retrieval, memory, plugins, or agent tools affecting the threat path:
  [references/ai-agent-security.md](references/ai-agent-security.md).
- Sensitive findings, verification obligations, independent challenge, or standards:
  [references/security-assurance.md](references/security-assurance.md).

Combine branches when the subject needs them; an AI path can also need general
controls and assurance. Read only the relevant assurance sections.

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
  challenge and implemented candidates to `code-review`. Neither substitutes
  for the fixed independent security challenge required for consequential work.
- Route organization-wide security-program maturity, governance, or compliance
  assessment to the accountable security or compliance owner. Use
  `research-synthesis` only when the missing work is cross-standard evidence.
- Route claim-to-method and evidence execution to `software-verification`.
  Security design defines the required outcome and threat boundary, not a
  passing result or release decision.

## Quality gates

- Protected outcomes, attacker capabilities, trust boundaries, and exposure
  are explicit enough to bound credible threat paths.
- Plausibly applicable surfaces are included or have an evidence-backed
  exclusion and reopening condition; retained threats have a relative priority.
- Each material threat has a disposition, owner, evidence status, and linked
  requirement or accepted residual risk.
- Each `SEC-*` requirement names its enforcement authority, failure behavior,
  secure default, lifecycle, and falsifiable outcome where applicable.
- Controls reduce, prevent, contain, detect, or recover from a named path;
  defense in depth addresses distinct failures rather than duplicated theater.
- Alternate and degraded paths cannot silently bypass stronger primary-path
  controls.
- Consequential work has an executable, safely handled independent-challenge
  handoff or remains not ready for the dependent action.
- Readiness preserves unresolved product, architecture, privacy, compliance,
  operational, and risk-acceptance authority.

## Reject security theater

- Do not substitute a vulnerability taxonomy, scanner result, compliance
  mapping, authentication feature, encryption label, or long checklist for a
  subject-specific threat and control trace.
- Do not demand every control for every change, equate internal with trusted,
  or assume a hidden client control protects a server effect.
- Do not prescribe custom cryptography, collect secrets for analysis, put
  sensitive findings in an unapproved channel, expose more exploit detail than
  the authorized reviewer needs, or perform active testing without explicit
  authority and safeguards.
- Do not mark the design secure, compliant, verified, or accepted. State the
  exercised scope, evidence limits, residual risk, and accountable next use.

## Completion

Return a compact security design with the security frame, included surfaces,
prioritized threat paths, evidence-backed exclusions, `SEC-*` requirements, secure defaults, control and exception
ownership, safely handled findings, verification and independent-challenge
obligations, unresolved routes, residual risks, and a defined disposition.
