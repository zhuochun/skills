# Software change orchestration reference

Use these forms selectively. The main skill owns authority, posture, composition, evidence validity, and closure semantics. This reference supplies placement examples, a compact record form, and the complete routing table.

## Knowledge-derived reasoning model

| Mechanism | Orchestration consequence |
| --- | --- |
| **Context and intent before execution** | Recover outcome, constraints, rationale, and current state before selecting or implementing a solution. |
| **Repository memory steers agent work** | Persist decisions and contracts that must survive the conversation in versioned, searchable work surfaces. |
| **Process models preserve intermediate state** | Preserve the frontier and re-entry conditions when work pauses or crosses sessions and owners; keep uninterrupted work inline. |
| **Workflow-native delegation converts activity into impact** | Route work through the repositories, issues, reviews, and evidence surfaces people already use. |
| **Executable knowledge keeps documentation current** | Prefer keyed contracts, checks, revisions, and canonical links over copied status narrative. |
| **Agentic throughput shifts work toward verification** | Preserve independent challenge and falsifying evidence rather than treating cheap implementation as completion. |

## Select the effort boundary

A change effort has one outcome and one closure condition. Group slices only when they share the behavior or risk contract that determines completion.

| Request | Recommended boundary |
| --- | --- |
| Add an atlas view with navigation, selection, responsive behavior, and corpus-derived geography | One feature effort because the slices realize one user outcome and share state, layout, and evidence decisions. |
| Change one literal string with an existing exact test | Inline change; no orchestration directory. |
| Repair an unexplained browser timeout | Diagnose first; implement only after cause is supported. |
| Add a small page note crossing persistent state, HTTP behavior, desktop/mobile UI, and focus | One compact owning-repository specification; no orchestration directory. |
| Add an app feature that consumes a separate corpus repository | Owning-repository effort in the app when it owns the user behavior. |
| Make unrelated shell-polish fixes | Separate inline changes or separately prioritized efforts. |
| Migrate a shared contract across repositories and teams | One control-repository effort with linked local artifacts; use `technical-program-orchestration` for delivery coordination. |

## Place durable state

| Mode | Evidence for selection | Canonical placement |
| --- | --- | --- |
| **Inline** | Clear, reversible, short-lived discussion or implementation contract | Active task or existing issue; no new directory |
| **Owning repository** | One repository owns the behavior and future maintainers need the contract or rationale | Existing specification, design, ADR, issue, or repository-native equivalent |
| **Control repository** | No code repository owns the outcome or an established product/system repository coordinates it | Existing control repository using native change and decision conventions |
| **Hybrid** | Distributed outcome with important locally owned contracts or evidence | One control record linking canonical artifacts kept with each owner |

When no convention exists and a file is justified, prefer one flat record:

```text
docs/changes/YYYYMMDD-<effort-key>.md       # owning repository
changes/YYYYMMDD-<effort-key>.md            # established control repository
```

Use a directory only when at least two artifacts need different owners, audiences, or review and evidence lifecycles:

```text
<changes-root>/YYYYMMDD-<effort-key>/
|-- change.md          # thin status, optional resume state, and canonical links
|-- specification.md   # only when this location owns the specification
|-- verification.md    # only when evidence needs an independent lifecycle
`-- decisions/         # only when several decisions need separate lifecycles
```

Do not relocate an existing specification merely to make the directory self-contained. Reading or modifying several repositories does not itself justify a control repository.

## Compact canonical record

Adapt this semantic form to the existing work surface and omit empty sections. Keep the originating request, issue, or accepted specification linked or faithfully represented.

```markdown
# <Outcome-oriented title>

- Status: active / blocked / deferred / stopped / completed
- Canonical location: <repository path or issue URL>
- Accountable change owner: <owner or unresolved>
- Assurance and workflow budget: compact / standard / high-assurance; <bounded composition>
- Authorized modes: <modes>
- Escalation conditions: <conditions>

## Outcome and boundaries

- Originating request or accepted source:
- Outcome and behavior or risk boundary:
- Preserved behavior and explicit non-goals:
- Consequence of wrong behavior:
- Closure evidence:

## Accepted contract

- Desired behavior, examples, or specification claims:
- Accepted design, ownership, compatibility, or transition decisions:
- Material assumptions, unresolved decisions, and important rationale:

## Linked work and evidence

| Artifact or claim | Owner | Snapshot or environment | Status, result, or validity limit | Canonical location |
| --- | --- | --- | --- | --- |

## Closure or resume

- Delivered or current state:
- Review and verification evidence and limits:
- Operations, support, cleanup, and residual risk:
- Resume from, authority required, and re-entry condition: <only for pause, block, or handoff>
```

Keep the immediate frontier in the active session during uninterrupted work. A completed record does not need a resume section.

## Route the limiting frontier

| Missing judgment or action | Owning route |
| --- | --- |
| Customer problem, value, or solution direction remains uncertain | `product-opportunity-discovery` |
| Competing opportunities or capacity allocation remain unsettled | `product-opportunity-prioritization` |
| Accepted change is too ambiguous for safe delegation | `software-change-specification` |
| Business terms, rules, or invariants are disputed | `domain-modeling` |
| Module knowledge, state, resources, or interface ownership is unclear | `deep-module-design` |
| One behavior, state, UI, or interaction question needs a disposable runnable artifact | `prototype-to-learn` |
| Deployment, data authority, failure, or team boundary is unclear | `service-boundary-design` |
| Shared API, schema, event, or protocol compatibility must evolve | `software-contract-evolution` |
| Architecture quality assumptions need scenario challenge | `architecture-risk-evaluation` |
| A consequential or contested choice needs accountable clarification, challenge, or closure | `decision-facilitation` |
| Supported obligations must move to an accepted replacement through controlled transition states, with old authority intended to become retireable | `migration-planning` |
| Feature exposure, cohorts, promotion, or kill controls need design | `controlled-release-design` |
| Runtime signal semantics and operational navigation are missing | `observability-design` |
| Claims need falsifying methods, oracles, and evidence limits | `verification-strategy-design` |
| Several concurrent or interdependent workstreams need dependency, integration, and constraint steering | `technical-program-orchestration` |
| A fixed behavior change is understood and authorized | `scoped-change-implementation` |
| An authorized structural change must preserve supported behavior | `behavior-preserving-refactoring` |
| Failure cause remains uncertain | `software-failure-diagnosis` |
| A bounded diff needs independent challenge | `code-review` |
| Fixed consequential claims are ready to execute | `verification-execution` |

Routing can loop backward. Code can reopen specification or design; review can reopen implementation or a decision; inconclusive evidence can require a better method without changing implementation.

## Readiness and closure checks

Use these as routing questions, not universal stages.

Implementation is ready when desired and preserved behavior are understood, material decisions are owned, non-goals are explicit, one coherent slice is known, implementation is authorized, and its feedback loop is credible.

Closure requires delivered behavior in the owning repositories, resolved or owned applicable findings, focused independent confirmation after material review remediation, executed evidence on the final candidate or still-valid matching evidence, and owned operations and cleanup. When durable state was justified, the canonical record must explain completion or re-entry without copied status prose.
