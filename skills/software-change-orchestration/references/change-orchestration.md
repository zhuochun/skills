# Software change orchestration reference

Use these forms selectively. The canonical work surface is a living specification and repository memory, not a mandatory handoff package or session transcript.

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
# One owning repository, one maintained record
docs/changes/YYYYMMDD-<effort-key>.md

# Established control repository, one maintained record
changes/YYYYMMDD-<effort-key>.md

# Expanded effort in either repository type
<changes-root>/YYYYMMDD-<effort-key>/
|-- change.md          # Thin status, optional resume state, and canonical-link index
|-- specification.md   # Optional when this location owns the specification
|-- verification.md    # Optional strategy, results, and evidence limits
`-- decisions/         # Optional when several decisions need separate lifecycles
```

Use the flat form when one file is enough; never create a directory solely to contain `change.md`. Use the expanded form only when at least two independently maintained artifacts need stable locations or different review and revision lifecycles. In that form, keep `change.md` thin: current status, resume state when needed, closure state, and links to the canonical specification, decisions, implementation slices, and evidence.

Split an artifact when its size, owner, audience, review cadence, or evidence lifecycle makes independent maintenance useful. A long product or software specification and a verification record are common candidates, but do not relocate or duplicate them merely to make the directory self-contained. For example, if an application already keeps a long specification under `docs/specs`, leave it there and link to it from the change record. Select a control repository because it owns the cross-repository outcome, decisions, or portfolio context, not merely because the effort reads or modifies more than one repository.

## Select the assurance posture and workflow budget

Derive the posture rather than asking the user to classify the change unless consequence or authority remains ambiguous.

| Posture | Typical evidence | Composition and artifact default |
| --- | --- | --- |
| **Compact** | Local, reversible, clear supported behavior, narrow consequence | One primary skill or executor; inline discussion or one minimal record for authorized execution; focused check; no directory |
| **Standard** | Several surfaces or meaningful state, lifecycle, compatibility, or ownership | One living specification; at most one substantial design route at a time; one primary executor; independent review; one final closure set |
| **High-assurance** | Security, destructive or hard-to-reverse data, broad compatibility, production control, regulation, or difficult recovery | Add only risk-owned design, transition, release, operational, and verification artifacts and independent evidence |

The workflow budget limits full skill workflows, executors, durable artifacts, independent passes, and verification breadth. It is not a token, time, or command quota. File count and diff size may inform the posture but never outweigh consequence, reversibility, ambiguity, coordination, and proof difficulty.

Do not infer a directory directly from the posture. Use a directory only when multiple artifacts need separate owners, audiences, or review and evidence lifecycles.

## Use authorized execution mode

When the user says `authorized mode`, `auto mode`, or establishes a goal to execute an accepted bounded change through closure, record:

```markdown
- Authorized modes: record writes, implementation, delegated review, verification
- Accepted scope and explicit non-goals: <canonical specification sections or links>
- Escalation conditions: material scope change; new external or production action; destructive action; decision that changes supported behavior
```

Proceed without pausing for workflow selection, specialist use, fresh read-only reviewers, ordinary tests, or in-scope remediation. A failed check or review finding blocks closure but does not require user interruption while remediation remains inside the accepted contract. Follow repository, platform, and safety constraints throughout.

Write this boundary into the smallest repository-backed canonical specification or change record before implementation begins. Reuse an appropriate existing specification, issue mirror, or README section when available. Compact means the record stays short and no orchestration directory is created; it does not mean authorized execution remains only in chat or goal state.

Keep the originating request, issue, or accepted specification linked or faithfully represented beside the derived scope. Do not turn outcome language such as durability, compatibility, visibility, or recovery into a narrower code-level proxy merely because that proxy is easy to test. When competing interpretations would change supported behavior, escalate that decision under the recorded behavior-change condition.

## Reuse evidence and snapshots

Keep a compact active evidence index in the goal, canonical work surface, CI, or a linked verification artifact according to the persistence need. Each reusable entry identifies the claim, command or method, result, candidate snapshot, material environment, and raw evidence location when available.

A coherent milestone commit is a strong snapshot identity when local-history writes are separately authorized and the repository permits intermediate commits. Commit at meaningful green implementation boundaries, not at every skill transition, documentation update, or test command. Without commit authority, use the base revision plus a diff or working-tree fingerprint.

Reuse evidence only while its claim, candidate snapshot, method, and material environment remain valid. Invalidate the smallest affected set after changes. Documentation-only edits normally preserve runtime evidence; relevant code, tests, fixtures, configuration, data, or environment changes may not. Require a broader rerun when risk or invalidation warrants it, not merely because work moved to another skill.

## Maintain the living specification

For owning-repository, control-repository, and hybrid efforts, create or update the smallest viable canonical work surface once repository-document writes are authorized and before substantial specialist analysis. Start with accepted facts only; incomplete sections are expected while the effort is active.

Update the owning section when an accepted result changes scope, behavior, invariants, design, transition, implementation slices, or verification claims. Preserve rationale and rejected alternatives beside the selected contract only when losing them would make drift or regression likely. Do not create a generic decision ledger or copy the discussion into the repository.

Keep the immediate next move in the active session or goal during uninterrupted work. Add a short status or resume note only when work pauses, becomes blocked, changes hands or sessions, or otherwise cannot be safely re-entered from the accepted specification. Remove transient routing state at closure while retaining durable follow-up or reopening conditions.

Before every update, re-read the canonical artifact and relevant worktree state. If another session changed it, integrate the current accepted state rather than overwriting it.

## Canonical change record

Use an existing specification, issue, or design surface as this record when it can preserve the evolving accepted contract without becoming confused. The form below is a semantic contract, not a demand for a new `change.md` file or a rigid section layout. In an expanded effort, keep any `change.md` thin and leave detailed content in its owning linked artifacts.

Adapt this structure to the existing work surface and omit empty sections.

```markdown
# <Outcome-oriented effort title>

- Effort key: <stable key>
- Status: active / blocked / deferred / stopped / completed
- Persistence: owning repository / control repository / hybrid
- Canonical location: <repository and path or issue URL>
- Accountable change owner: <owner or unresolved>
- Assurance posture and workflow budget: compact / standard / high-assurance; <bounded composition>
- Authorized modes: discuss / record writes / implementation / delegated review / verification / external action / production action
- Escalation conditions: <when authorized mode applies>
- Baseline revision or evidence date: <when material>

## Outcome and boundaries

- Outcome and why now:
- Behavior or risk boundary:
- Explicit non-goals:
- Closure evidence:
- Consequence of wrong behavior:

## Accepted contract

- Desired behavior, examples, or specification claims:
- Preserved invariants:
- Accepted design, ownership, or transition contract:
- Important rationale or rejected alternatives that prevent likely drift:
- Material assumptions and evidence status:

## Implementation slices

- Authorized slice and implementation location:
- Dependencies and feedback loop:
- Deviations or counterexamples that changed the contract:

## Related artifacts

| Artifact or claim | Owner | Canonical location | Status or evidence limit | Implication |
| --- | --- | --- | --- | --- |

## Active evidence

| Claim | Snapshot and environment | Method | Result or evidence link | Validity limit |
| --- | --- | --- | --- | --- |

## Verification and closure

- Review findings and dispositions:
- Verification claims, results, and limits:
- Operational, release, cleanup, support, and residual-risk state:
- Delivered outcome or accountable closure:

## Resume state

Omit during uninterrupted work and after closure. Include only for a pause, handoff, blocked state, or non-obvious re-entry:

- Resume from and why:
- Authority or confirmation still required:
- Re-entry condition:
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
| A fixed bounded behavior change is understood and implementation is authorized | `scoped-change-implementation` |
| An authorized structural change must preserve supported behavior | `behavior-preserving-refactoring` |
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
- Were material review findings resolved, accepted, or assigned, with focused independent confirmation when remediation changed the reviewed code or behavior?
- Were claimed checks actually executed in identified environments?
- Does one successful closure set apply to the final candidate snapshot, with still-valid earlier evidence reused rather than repeated?
- Are release, operations, support, cleanup, and residual risk owned?
- Does the canonical record point to current evidence rather than copied snapshots?
- Can a future session understand why the effort is complete, stopped, or ready to resume?
