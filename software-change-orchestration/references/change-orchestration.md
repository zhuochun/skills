# Software change orchestration reference

Use these forms selectively. The canonical record is a working memory and routing surface, not a mandatory handoff package.

## Contents

- [Knowledge-derived reasoning model](#knowledge-derived-reasoning-model)
- [Select the effort boundary](#select-the-effort-boundary)
- [Select the persistence mode](#select-the-persistence-mode)
- [Canonical change record](#canonical-change-record)
- [Route the current frontier](#route-the-current-frontier)
- [Readiness and closure](#readiness-and-closure)

## Knowledge-derived reasoning model

| Mechanism | Orchestration consequence |
| --- | --- |
| **Context and intent before execution** | Recover outcome, constraints, rationale, and current state before selecting or implementing a solution. |
| **Repository memory steers agent work** | Persist decisions and contracts that must survive the conversation in versioned, searchable work surfaces. |
| **Process models preserve intermediate state** | Make the frontier, completed decisions, blockers, and re-entry conditions explicit when work spans sessions or repositories. |
| **Workflow-native delegation converts activity into impact** | Route work through the repositories, issues, reviews, and evidence surfaces that responsible people already use. |
| **Executable knowledge keeps documentation current** | Prefer keyed contracts, tests, checks, revisions, and canonical links over copied narrative status. |
| **Agentic throughput shifts work toward verification** | Preserve independent review and falsifying evidence rather than treating cheap implementation as completion. |

## Select the effort boundary

A change effort has one outcome and one closure condition. Group slices only when they share the behavior or risk contract that determines whether the outcome is complete.

| Request | Recommended boundary |
| --- | --- |
| Add a dedicated atlas view with navigation, selection, responsive behavior, and corpus-derived geography | One feature effort because the slices realize one user outcome and share layout, state, and evidence decisions. |
| Change one literal copy string with an existing exact test | Inline change; no durable orchestration record. |
| Repair an unexplained browser-test timeout | Diagnose first; use an inline repair contract after cause is supported unless the repair changes broader supported behavior. |
| Add a small page note that crosses persistent state, HTTP behavior, desktop/mobile UI, and focus preservation | One compact owning-repository specification; small UI scope does not make the persistence decisions trivial, but no orchestration directory is needed. |
| Add an atlas to an app repository using a separate knowledge corpus repository | Owning-repository effort in the app: the app owns the user behavior and the corpus is an input, so a control repository is unnecessary. |
| Make several unrelated reader-shell polish fixes | Separate inline changes or separately prioritized efforts; do not create one "reader improvements" dossier. |
| Migrate a shared contract across several repositories and teams | One control-repository effort with linked repository-local artifacts; use `technical-program-execution` for delivery coordination. |

## Select the persistence mode

| Mode | Evidence for selection | Canonical placement |
| --- | --- | --- |
| **Inline** | One repository, one owner, clear behavior, reversible, short-lived, no material open decision | Active task, issue, or compact implementation contract; no new directory |
| **Owning repository** | One repository owns the behavior and future maintainers need the rationale, specification, or evidence | Existing `docs/specs`, `docs/design`, ADR, issue, or repository-native equivalent |
| **Control repository** | No single code repository owns the outcome, or an established product/system repository already coordinates distributed work | Existing control repository using its native effort directory, issue, decision, and index conventions |
| **Hybrid** | Cross-repository outcome with important code-local contracts or evidence | One control record plus canonical links to artifacts kept with each owning repository |

Do not assume `projects/<name>`. Discover the established surface first. If none exists and a durable file is justified, use these defaults unless the user chooses another convention:

```text
# One owning repository, normal effort
docs/changes/YYYYMMDD-<effort-slug>.md

# One owning repository, several independently maintained artifacts
docs/changes/<effort-key>/change.md

# Established control repository
changes/<effort-key>/change.md
```

Prefer one file for a normal effort; create a directory only when several independently maintained artifacts need stable locations. Select the control repository because it owns the cross-repository outcome, decisions, or portfolio context, not merely because the effort reads or modifies more than one repository.

## Canonical change record

Use an existing specification, issue, or decision surface as this record when it can preserve the current state and frontier without becoming confused. The form below is a semantic contract, not a demand for a new `change.md` file.

Adapt this structure to the existing work surface and omit empty sections.

```markdown
# <Outcome-oriented effort title>

- Effort key: <stable key>
- Status: active / blocked / deferred / stopped / completed
- Persistence: owning repository / control repository / hybrid
- Canonical location: <repository and path or issue URL>
- Accountable change owner: <owner or unresolved>
- Authorized modes: discuss / write records / implement / external action / production action

## Destination

- Outcome and why now:
- Behavior or risk boundary:
- Explicit non-goals:
- Closure evidence:
- Consequence of wrong behavior:

## Current contract

- Accepted specification claims and labels:
- Preserved invariants:
- Accepted design or transition decisions:
- Material assumptions and evidence status:

## Current frontier

- Limiting question, decision, action, or evidence:
- Why it limits progress:
- Owning person or skill:
- Smallest next move:
- Work that can proceed independently:

## Decisions and artifacts

| Key and plain-language label | Owner | Canonical location | Status or evidence limit | Implication |
| --- | --- | --- | --- | --- |

## Fog, blockers, and routes

| Unknown or suspected later question | When it becomes actionable | Owner or candidate skill | Blocks what? |
| --- | --- | --- | --- |

## Implementation and evidence

- Authorized slice and implementation location:
- Review findings and disposition:
- Verification claims, results, and limits:
- Operational, release, cleanup, or support state:

## Next move or closure

- Next frontier and reason, or delivered outcome:
- Authority or accountable confirmation required:
- Residual risk and owner:
- Re-entry condition if blocked, deferred, or stopped:
```

## Route the current frontier

| Missing judgment or action | Owning route |
| --- | --- |
| Customer problem, value, or solution direction remains uncertain | `product-opportunity-discovery` |
| Competing opportunities or capacity allocation remain unsettled | `product-opportunity-prioritization` |
| Accepted change is too ambiguous for safe delegation | `software-change-specification` |
| Business terms, rules, or invariants are disputed | `domain-modeling` |
| Module knowledge, state, resources, or interface ownership is unclear | `deep-module-design` |
| Deployment, data authority, failure, or team ownership boundary is unclear | `service-boundary-design` |
| Shared API, schema, event, or protocol compatibility must evolve | `software-contract-evolution` |
| Architecture quality assumptions need scenario challenge | `architecture-risk-evaluation` |
| A consequential or contested choice needs accountable closure | `technical-decision-making` |
| Old, mixed, and target states need survivable sequencing | `high-risk-change-planning` |
| Feature exposure, cohorts, promotion, or kill controls need design | `controlled-release-design` |
| Runtime signal semantics and operational navigation are missing | `observability-design` |
| Claims need falsifying methods, oracles, and evidence limits | `verification-strategy-design` |
| Multi-team dependencies, integration, and replanning need active steering | `technical-program-execution` |
| A fixed bounded change is understood and implementation is authorized | `scoped-change-implementation` |
| Failure cause remains uncertain | `software-failure-diagnosis` |
| A bounded diff needs independent challenge | `code-review` |
| Fixed consequential claims are ready to execute | `verification-execution` |

Routing can loop backward. A code counterexample can reopen the specification or design; a review finding can require implementation or a new decision; inconclusive evidence can require a better method without changing the implementation.

## Readiness and closure

Use these as routing questions, not universal stage gates.

### Implementation readiness

- Is the desired behavior understood at the consequence level of the change?
- Are material product, domain, architecture, contract, security, data, and recovery decisions owned?
- Are non-goals and preserved behavior explicit?
- Is the smallest coherent slice known?
- Is implementation authorized?
- Is the next feedback loop credible for the risk?

### Evidence-based closure

- Was the intended behavior delivered in its owning repositories?
- Were material review findings resolved, accepted, or assigned?
- Were claimed checks actually executed in identified environments?
- Are release, operations, support, cleanup, and residual risk owned?
- Does the canonical record point to current evidence rather than copied snapshots?
- Can a future session understand why the effort is complete, stopped, or ready to resume?
