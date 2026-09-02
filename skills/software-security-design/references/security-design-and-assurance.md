# Security design and assurance reference

Use only the sections needed for the subject. These prompts expose common
security reasoning surfaces; they are not a universal compliance checklist.

## Threat-path record

Record one row for each material path:

| Key and label | Actor capability and precondition | Entry or trust crossing | Action and affected asset | Existing controls and evidence | Required response, owner, and residual risk |
| --- | --- | --- | --- | --- | --- |
| `THR-* — plain-language label` | | | | | |

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

## Security verification methods

Choose methods for the uncertainty they can falsify. Combine them only when
they cover distinct failure modes.

| Method | Strongest use | Important boundary |
| --- | --- | --- |
| Threat-model and architecture challenge | Missing paths, misplaced trust, control ownership, unsafe defaults | Does not prove implementation or runtime behavior |
| Manual code review | Context-sensitive data flow, authorization, state and control logic | Reviewer coverage and expertise are bounded |
| SAST or language analysis | Known source and data-flow patterns at scale | False positives, framework modeling, and runtime configuration |
| Component and provenance analysis | Known dependency, license, origin, integrity, and update risks | Known-data freshness and exploit reachability |
| Secret scanning | Known credential patterns and accidental disclosure | Unknown formats, history, runtime stores, and already-compromised secrets |
| Configuration or infrastructure analysis | Declared exposure, privilege, policy, and unsafe settings | Live drift, inherited controls, and runtime identity |
| Unit, integration, and contract tests | Fixed allow/deny, validation, encoding, state, and alternate-entry properties | Threats or properties omitted from the oracle |
| Property-based or fuzz testing | Parser, state-space, boundary, and generated-input failures | Reachability and oracle quality |
| DAST or protocol testing | Exercised deployed interfaces and runtime controls | Unreached paths, states, roles, and environment differences |
| Penetration or adversarial testing | Chained, context-sensitive bypasses under an explicit threat frame | Time-boxed sample; clean results do not certify absence |
| Runtime signals and incident evidence | Actual abuse, control activation, and escaped paths | Reactive, population-bound, and dependent on signal integrity |

For every selected method, fix the threat or `SEC-*` claim, candidate snapshot,
environment, attacker capability, inputs, oracle, stop condition, isolation,
evidence location, and validity limit before execution. Active testing against
external or production systems requires explicit authorization.

## Standards and applicability

- Start with current repository and organizational policy, accepted threat
  models, supported environments, and regulatory obligations.
- Use a current primary standard appropriate to the subject. Examples include
  NIST SSDF for secure-development outcomes, OWASP SAMM for lifecycle practice
  coverage, and an applicable OWASP verification standard for concrete
  application-control requirements.
- Record exact versions when citing requirement identifiers. Recheck versions
  and local applicability before consequential use.
- Treat mappings as evidence organization, not proof of control effectiveness
  or compliance. Preserve requirements that local risk makes stricter than the
  selected baseline.
