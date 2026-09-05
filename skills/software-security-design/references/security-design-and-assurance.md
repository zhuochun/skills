# Security risk prompts and coding handoff

Use only the sections needed for the subject. These prompts expose common
security reasoning surfaces; they are not a universal compliance checklist.

## Threat-path record

Record for each material path:

- stable `THR-*` key and plain-language label;
- actor capability, precondition, entry or trust crossing, action, and affected
  asset or security outcome;
- consequence and reach, including affected users, tenants, data, effects, or
  operating capability;
- attacker feasibility, required access or effort, exposure, detectability or
  recovery difficulty, and uncertainty;
- existing preventive, containment, detection, and recovery controls with
  evidence and confidence;
- relative priority and disposition: eliminate, reduce, contain, detect,
  recover, transfer, or propose residual-risk acceptance; and
- requirement, control, exception, risk owner, review trigger, and residual risk.

For every plausibly applicable surface without a retained path, record the
surface, non-applicability or below-materiality rationale, supporting evidence
and confidence, accountable owner when disputed, and change that reopens it.
Do not use a low-confidence omission as proof that no threat exists.

Distinguish an external attacker, authenticated user, tenant administrator,
operator, compromised dependency, service identity, and accidental misuse only
when their capabilities change the path. “Untrusted” describes control over an
input or action, not the actor's organizational label.

## Risk prompts by surface

### Inputs, parsing, and outputs

- Identify who controls each value, its encoding and canonical form, size and
  nesting limits, parser transitions, and final interpreter or sink.
- Distinguish validation from context-specific parameterization or output
  encoding. Validate before expensive allocation or side effects when input
  can exhaust resources or change authority.
- Trace files, paths, URLs, redirects, templates, queries, commands,
  deserialization, uploads, archives, and rendered content only when the
  subject exposes those sinks.

### Identity, sessions, authorization, and tenants

- Trace every route that establishes, preserves, delegates, recovers, or
  revokes authority. A stronger primary factor does not repair an equivalent
  weak fallback.
- Evaluate actor, action, resource, tenant, and context at the server-controlled
  boundary before protected data or effects leave it. Client visibility is a
  usability projection, not enforcement.
- Check direct entry points, batch and administrative paths, object-level and
  field-level access, confused-deputy paths, cached decisions, impersonation,
  revocation, and partial-response leakage when applicable.

### Secrets and cryptography

- Keep secrets out of source, prompts, logs, errors, fixtures, generated
  artifacts, and client-visible configuration. Define storage, access,
  rotation, revocation, expiry, and emergency-recovery ownership.
- Name the required property—confidentiality, integrity, authenticity,
  freshness, or non-replay—before selecting a mechanism. Use approved,
  maintained primitives and protocols; do not design custom cryptography.
- Preserve key separation, scoped credentials, and a usable control path when
  the primary environment is degraded.

### State, workflows, and privileged effects

- Trace replay, duplicate delivery, order, concurrency, time-of-check versus
  time-of-use, stale authority, approval, cancellation, compensation, and
  partial completion where they can change protected outcomes.
- Separate deterministic target and policy selection from privileged,
  destructive, financial, or external effects when this makes review, dry-run,
  idempotency, or stale-plan rejection possible.
- Minimize privilege duration and scope. Preserve an explicit owner and audit
  path for exceptions, break-glass access, and support operations.

### Dependencies, build, and software supply chain

- Record direct and transitive component provenance, integrity, supported
  versions, update ownership, vulnerability status, and retirement constraints
  in proportion to exposure.
- Treat dependency addition, build scripts, generators, plugins, package
  registries, CI identities, and release artifacts as authority-bearing changes
  when they can execute code or alter shipped output.
- Prefer reproducible, policy-enforced build paths and maintained components.
  A clean known-vulnerability scan does not prove component behavior safe.

### Configuration, deployment, telemetry, and response

- Make the normal installed and deployed path secure without customer repair.
  Inspect debug modes, sample credentials, network binding, permissive fallbacks,
  error detail, security headers, storage permissions, and administrative
  exposure only where applicable.
- Ensure logs and traces support detection and investigation without leaking
  credentials, tokens, protected content, or cross-tenant data. Define access,
  retention, integrity, redaction, and missing-signal behavior.
- Give vulnerability intake, severity and reachability assessment, remediation,
  advisory, update, incident, and recurrence-prevention work accountable owners.

## Secure-coding handoff

For each changed trust boundary, give implementation the smallest applicable
set of obligations:

- accepted `SEC-*` requirement and threat path;
- authoritative validation, authorization, and effect boundary;
- approved framework or library mechanism and its guarantee limit;
- secure default and controlled exception path;
- sensitive data, credential, and logging constraints;
- dependency, build, deployment, and configuration constraints;
- required negative, abuse, and regression claims; and
- the condition that requires implementation to stop and reopen the design.

Do not prescribe a generic vulnerability list when the language, framework,
runtime, and exposed sinks are unknown. Prefer repository-owned secure APIs,
linters, templates, dependency policy, and platform defaults that encode
repeated failure knowledge in the ordinary path.
