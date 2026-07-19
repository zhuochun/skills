# Skill composition guide

Use these examples when a request spans several decisions or artifacts. They
are optional routes through the catalog, not a mandatory lifecycle or
universal stage-gate process.

## Common compositions

### Resumable bounded software change

```text
software-change-orchestration
  -> keep a tiny reversible change inline, or obtain document-write authority and seed one living canonical specification
  -> derive compact, standard, or high-assurance posture and bound full skill workflows, artifacts, review, and verification
  -> keep the immediate frontier in session and route it to software-change-specification or the smallest owning specialist
  -> integrate each accepted result into the specification before dependent implementation
  -> loop through clarification, design, evaluation, or decision only as evidence requires
  -> choose one primary executor: behavior-preserving-refactoring for pure structure, scoped-change-implementation for intended behavior
  -> independent code-review consumes snapshot-matched producer evidence and runs focused challenges
  -> verification design preserves upstream claims; execution fills missing or invalidated evidence
  -> remediate in scope, confirm affected findings, then run one successful closure set on the final candidate snapshot
  -> loop back on counterexamples, or close with reusable evidence and residual ownership
```

Use the owning repository when one repository owns the behavior, even if it consumes another repository's data. Use an established control repository only for genuinely distributed ownership. Compact discussion normally stays inline; compact authorized execution uses one minimal record but no orchestration directory. Standard work normally uses one living specification. High-assurance work uses several artifacts only when they need independent lifecycles. Persist a resume point only for a pause, block, handoff, session change, or non-obvious re-entry.

In authorized or auto mode, write the authorized modes, accepted scope and non-goals, and the four escalation conditions into the smallest canonical record before implementation. Proceed without workflow approval, but preserve the originating behavior meaning and escalate material scope, external or production action, destructive action, or a decision changing supported behavior.

### Product opportunity to delivery

```text
product-opportunity-discovery
  <-> product-opportunity-prioritization when opportunities or bets compete
  -> domain-modeling when business meaning, rules, or invariants need design
  -> service-boundary-design and deep-module-design when structure is in question
  -> software-change-specification when an accepted change remains too ambiguous for safe delegation
  -> technical-program-execution when accepted delivery spans teams or workstreams
  -> co-design observability, verification, and controlled release when applicable
  -> scoped-change-implementation in coherent vertical slices
  -> code-review and verification-execution
  -> accountable promotion and product-outcome review
  -> discovery and prioritization reopen when evidence contradicts the bet
```

An opportunity can be stopped, reframed, or left in discovery without entering delivery. Mandatory security, regulatory, contractual, reliability, or end-of-life work can enter the feasible portfolio without masquerading as a customer opportunity, but its authority and proportional scope must remain explicit.

### New or changing business capability

```text
domain-modeling
  -> service-boundary-design, when deployment/data/ownership is in question
  -> software-contract-evolution, when a shared API, event, schema, protocol, or library contract changes
  -> deep-module-design
  -> architecture-risk-evaluation, when consequences justify it
  -> technical-decision-making
  -> software-change-specification, when the accepted change needs a bounded implementation-ready behavior contract
  -> technical-program-execution, when delivery spans teams or workstreams
  -> high-risk-change-planning, when transition risk justifies it
  -> co-design observability, verification, and controlled release when they apply
  -> scoped-change-implementation in coherent vertical slices
  -> code-review
  -> verification-execution for the required claim set
  -> accountable promotion, abort, or risk decision
  -> operational-feedback-audit after release
```

### Feature spanning multiple services

```text
domain-modeling
  -> service-boundary-design
  -> software-contract-evolution for changed APIs, events, schemas, protocols,
     translations, consumer adoption, and retirement obligations
  -> technical-program-execution for the outcome, delivery topology,
     vertical slices, dependencies, integration, and decision cadence
  -> deep-module-design in each affected codebase
  -> co-design:
       observability-design for end-to-end and component evidence
       controlled-release-design for authoritative assignment and mixed states
       verification-strategy-design for claims, methods, and oracles
  -> scoped-change-implementation in each affected codebase
  -> code-review for each bounded change and the composed workflow
  -> verification-execution for local and end-to-end claims
  -> accountable promotion or abort
  -> operational-feedback-audit after representative use
```

Do not let each service independently decide feature exposure when the workflow requires a consistent cohort. Assign once, propagate context, observe end-to-end outcomes, and retain local kill controls only where they govern distinct hazardous effects.

### Shared API, event, or schema evolution

```text
domain-modeling, when meaning or context differs across participants
  -> software-contract-evolution for the actual contract, compatibility matrix,
     translation, deprecation, consumer adoption, and retirement evidence
  -> technical-program-execution, when migration spans teams or consumer groups
  -> high-risk-change-planning, when coexistence, state, irreversible effects,
     cutover, or recovery make the transition consequential
  -> observability-design and verification-strategy-design for named evidence
  -> scoped-change-implementation, code-review, and verification-execution
  -> accountable support, promotion, and retirement decisions
```

Do not remove the old contract because a deadline elapsed or current telemetry is quiet. Match exit evidence to the obligation being retired: consumer drainage, behavioral comparison, state reconciliation, or fencing of stale executors.

### Inheriting a brownfield service

```text
service-surface-mapping
  -> domain-modeling, service-boundary-design, or deep-module-design for the discovered problem
  -> verification-strategy-design for characterization and change claims
  -> software-failure-diagnosis when an observed failure is still unexplained
  -> behavior-preserving-refactoring for an authorized structure-only repair
  -> observability-design when prospective evidence is missing
  -> operational-feedback-audit when the live response loop needs evaluation
  -> controlled-release-design before the first consequential feature rollout
```

Orientation should stop once the immediate decision can move into focused work. It need not document the entire service.

### Existing codebase with recurring friction

```text
codebase-architecture-assessment
  -> service-surface-mapping, when one unfamiliar service needs runtime and ownership orientation
  -> domain-modeling, for semantic confusion
  -> service-boundary-design, for deployment/data/ownership coupling
  -> deep-module-design, for local structure and interfaces
  -> behavior-preserving-refactoring for authorized structural execution
  -> high-risk-change-planning, only for consequential transition work
```

Use this route when the decision is which structural opportunity deserves attention first. If one completed design is already selected and material implementation or operational learning has changed its premises, start with `retrospective-architecture-review` instead of running a second broad assessment.

### Contested technical choice

```text
architecture-risk-evaluation, when assumptions need technical analysis
  -> technical-decision-making
  -> technical-program-execution, when execution spans teams or workstreams
  -> high-risk-change-planning
  -> co-design verification, observability, and optional controlled release
  -> scoped-change-implementation
  -> code-review and verification-execution
```

### Active production incident

```text
incident-response-coordination
  -> stabilize customer impact and establish delegated workstreams
  -> software-failure-diagnosis for uncertain technical cause
  -> scoped-change-implementation for an authorized repair
  -> code-review and verification-execution as urgency and consequence allow
  -> controlled recovery, stability evidence, and accountable closure
  -> incident-learning after restoration
```

The incident commander owns response priorities, risk decisions, and closure. The coordinator keeps mitigation, diagnosis, communications, and recovery coherent; it does not replace technical workstream owners or perform the later learning review during active response.

### Bug, regression, or performance failure

```text
software-failure-diagnosis
  -> scoped-change-implementation, only when repair is authorized
  -> code-review
  -> verification-execution when the repair has broader claims
  -> incident-learning when the failure carries operational or organizational learning
```

### Behavior-preserving structural change

```text
deep-module-design for a current design question, or retrospective-architecture-review when accumulated learning leaves the target undecided
  -> behavior-preserving-refactoring
  -> code-review
  -> verification-execution when equivalence is consequential
  -> accountable decision on any intentional behavior retirement
```

### Platform and service operating model

```text
platform-capability-design
  -> service-capacity-engineering
  -> service-ownership-design
  -> architecture-risk-evaluation
  -> technical-decision-making
```

### Incident-driven renewal

```text
incident-response-coordination, during an active incident
  -> incident-learning after restoration
  -> operational-feedback-audit for detection, diagnosis, paging, or routing gaps
  -> observability-design for signal-contract gaps
  -> verification-strategy-design for escaped behavior or evidence gaps
  -> software-failure-diagnosis for an unresolved technical cause
  -> verification-execution for a defined regression or resilience claim
  -> domain-modeling, codebase-architecture-assessment, deep-module-design,
     or service-boundary-design for focused model or structure gaps
  -> service-capacity-engineering for overload and recovery gaps
  -> controlled-release-design or high-risk-change-planning for rollout gaps
  -> service-ownership-design or technical-decision-making for authority gaps
  -> update a runbook, automation, or local process directly when sufficient
  -> retrospective-architecture-review only when accumulated learning creates a material foundational design question
```

One incident may produce several independent branches. Do not force every finding through retrospective architecture review or through one serial workflow.

### Retrospective architecture review by scale

```text
module or capability
  -> deep-module-design as the primary lens
  -> behavior-preserving-refactoring for an authorized structure-only route

service or subsystem
  -> service-boundary-design when deployment, data, failure, or ownership is involved
  -> architecture-risk-evaluation for consequential quality claims
  -> scoped-change-implementation or behavior-preserving-refactoring after the target is accepted

multi-service system or wider estate
  -> architecture-risk-evaluation
  -> technical-decision-making for accountable closure when needed
  -> high-risk-change-planning, scoped implementation, change review,
     and independent verification execution before consequential cutover
```

The retrospective architecture reviewer works read-only on one selected completed design and activates only when implementation, repeated change, operation, support, or ownership has produced a material knowledge delta. It does not discover or rank a general codebase improvement portfolio and does not provide a generic second attempt for a weak first design pass. It compares the current or minimally consolidated design as a competent baseline, may recommend retain or quarantine when change would outrun evidence, and names the focused follow-up skills needed for deeper design, scoped implementation, behavior-preserving refactoring, controlled release, or verification. The accountable human confirms support-policy changes, route selection, cutover, and residual-risk acceptance. Builder-run checks may support the decision but do not become an independent equivalence verdict merely because the same agent reports them.

These are routing examples, not mandatory stage gates.

## Applying the collection in a large organization

1. Start read-only on a completed or pending real decision.
2. Bind the skill to local repositories, domain language, ADRs, ownership, telemetry, incidents, policies, and supported environments.
3. Preserve the decision owner, affected owners, operators, evidence owners, and risk acceptor.
4. Increase scenario breadth, independent evaluation, and retained evidence with consequence and irreversibility.
5. Measure improved decisions and avoided failure, not report length.
6. Review a skill after incidents, platform or governance changes, and repeated user workarounds.
