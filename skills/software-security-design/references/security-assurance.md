# Security assurance

Use the applicable sections for sensitive findings, verification obligations,
independent challenge, or standards selection. Authority and readiness remain
in `SKILL.md`; these methods do not establish a passing result.

## Sensitive finding handling

When a design may expose an exploitable weakness, privileged topology,
credential, protected content, or realistic reproduction path:

- identify the intended recipients, their decision role, and the organization's
  applicable classification or disclosure policy before writing details;
- use an approved storage and transport surface with bounded access, retention,
  audit, and deletion ownership; do not assume a chat, issue, pull request,
  build log, or ordinary repository document is suitable;
- separate the broadly shareable impact, affected surface, owner, and repair
  direction from a restricted annex containing only the reproduction detail an
  authorized reviewer needs;
- redact secrets and unnecessary customer or tenant data; use non-sensitive
  identifiers and evidence locators rather than copying payloads;
- name coordinated-disclosure, vendor, legal, privacy, incident, or customer
  communication owners when the finding crosses those authorities; and
- if no safe channel or audience is confirmed, report an abstract finding and
  the blocked restricted follow-up. Do not create the sensitive artifact.

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

## Independent security challenge handoff

For consequential work, make the challenge executable without letting the
producer certify its own design. Record:

- fixed design or candidate snapshot and the decision or gate it will inform;
- included and excluded scope, protected outcomes, prioritized `THR-*` paths,
  `SEC-*` requirements, accepted assumptions, residual risks, and known limits;
- a reviewer distinct from the producer with relevant subject expertise,
  evidence access, and authority to reject or require repair;
- approved handling for sensitive evidence and any active-testing authority,
  isolation, stop, cleanup, and disclosure limits;
- required challenge methods and counterexamples without prescribing the
  reviewer's conclusion;
- findings owner, severity or priority calibration, remediation and exception
  disposition, confirmation method, and the gate that cannot proceed while a
  material finding remains open; and
- an explicit unresolved gate when the reviewer, evidence, or safe channel is
  unavailable.

`specification-review` may challenge artifact integrity and `code-review` may
challenge an implementation diff. Neither is evidence that this subject-matter
security challenge occurred.

## Standards and applicability

- Start with current repository and organizational policy, accepted threat
  models, supported environments, and regulatory obligations.
- Use a current primary standard appropriate to the subject. Examples include
  NIST SSDF for secure-development outcomes, OWASP SAMM for lifecycle practice
  coverage, and an applicable OWASP verification standard for concrete
  application-control requirements.
- For AI, model, or agent systems, consider the current NIST SSDF community
  profile for generative AI and an applicable OWASP LLM verification standard
  alongside general application controls; neither replaces the other.
- Record exact versions when citing requirement identifiers. Recheck versions
  and local applicability before consequential use.
- Treat mappings as evidence organization, not proof of control effectiveness
  or compliance. Preserve requirements that local risk makes stricter than the
  selected baseline.
