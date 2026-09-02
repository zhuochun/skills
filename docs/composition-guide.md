# Skill composition guide

Use these examples when a request spans several decisions or artifacts. They
are optional routes through the catalog, not a mandatory lifecycle or
universal stage-gate process.

Compose only when the evidence or consequence demands another owner. Reuse
accepted results, keep uncertainty visible, and stop when the smallest credible
workflow has answered the decision.

Before composing, name the subject of interest, the missing decision lens, and
the work or coordination unit separately. Terms such as service, platform,
product, architecture, change, and program can cross those axes; see the
[scope vocabulary](skill-boundaries.md#scope-vocabulary). Compose because the
request needs several owned decisions, not because one term sounds larger than
another.

## Choose an interaction mode

Start with the lightest mode that can answer the request:

- **Direct specialist:** Use one skill as an independent starting point when it
  owns the decision, artifact, or action. It inspects available evidence and
  returns its own useful result without requiring a prior skill invocation.
- **Peer lenses:** Apply two or more skills as distinct judgments on the same
  subject when their findings should coexist or disagree. Compare the findings
  without making one skill the producer or authority for another. A shared
  context does not create independent certification.
- **Dependent handoff:** Let a downstream skill consume another owner's result
  only when its work genuinely depends on that decision, evidence, or artifact.
  Preserve whether the result is proposed, accepted, or unresolved, who has
  authority, and the remaining uncertainty.
- **Reflective application:** Apply a skill's lens to the current session, the
  skill collection, a plan, a workflow, or an output to improve how the work
  proceeds. Treat the result as self-challenge, not independent review or
  certification.

A skill can route work or return a useful partial or not-ready result when a
genuine evidence, authority, or subject-state prerequisite is missing. Mix
modes as needed, but do not turn optional peer or reflective use into a required
sequence.

## Common compositions

### Intentional end-to-end goal pursuit

```text
goal-pursuit
  -> compact parent goal contract and proportional system-level pursuit model
  -> one meaningful checkpoint owned by the smallest sufficient available specialist, tool, or bounded subgoal
  -> compare checkpoint evidence with the parent outcome and revise the route
  -> transfer detailed continuity to software-change-orchestration or multi-workstream steering to technical-program-orchestration only when their topology appears
  -> close only from outcome-level evidence, verified terminal failure, justified abandonment, infeasibility, or an authority boundary
```

Use `goal-pursuit` only as an explicit entry point when the user wants the agent
to keep selecting and adapting moves toward one non-trivial outcome. It does not
become the canonical owner of specialist artifacts, a bounded change record, or
a technical program surface. A host `/goal` runtime may preserve continuation;
the skill supplies the pursuit model and evidence loop inside that lifetime.
Clear reversible work can still move directly to one executor after a compact
micro-plan.

### Research evidence into specialist judgment

```text
research-synthesis for the bounded cross-source question
  + architecture-surface-mapping when applicability depends on how a current software subject actually works
  -> product-opportunity-discovery for customer opportunity and product-value learning
  -> domain-modeling, architecture-risk-evaluation, or another specialist for subject-matter judgment
  -> decision-facilitation when accountable weighting and closure are still needed
```

A bounded cross-source request for papers, reports, standards, official guidance, or competing evidence can stop after `research-synthesis`. Do not require a downstream decision workflow merely because the brief may inform one later. Conversely, do not let external literature substitute for current-system traces, direct customer evidence, local domain authority, regulated applicability judgment, causal diagnosis, or designed and executed verification when those evidence surfaces control the decision.

### Evidence into learner understanding

```text
supplied, inspected, or research-synthesized subject evidence
  -> teach-concepts for one learner-specific mental model, explanation, reconstruction, and transfer check
  -> technical-growth-coaching when capability needs repeated representative work, feedback, delegation, and independence
  -> technical-writing when the requested durable reader artifact is technical
```

`teach-concepts` can stop after a compact explanation or one bounded interactive learning loop. It preserves learner reasoning and tests use of the concept without claiming expertise from one exchange. Source truth remains with supplied evidence, `research-synthesis`, or the accountable subject owner; a factual dispute is not repaired by clearer teaching.

### Technical evidence into a reader artifact

```text
research-synthesis, specialist decision artifact, implementation evidence, or operational knowledge
  -> technical-writing when an explicit reader needs a tutorial, how-to guide, explanation, reference, procedure, runbook, or technical article
  -> source or domain owner challenge for consequential claims
  -> representative reader walk-through or proportionate execution check for functional quality
```

Let the upstream owner decide the product, domain, architecture, operational, support, or evidence claim. `technical-writing` selects the reader function, preserves provenance and uncertainty, shapes the reading path, and verifies commands, examples, links, and task success. Route `SKILL.md` authoring to `skill-creator` rather than composing technical writing as a second authoring contract.

### Specification before downstream use

```text
product, domain, architecture, contract, decision, or software-change producer
  -> fixed specification, RFC, requirements set, behavioral contract, or decision-bearing proposal
  -> specification-review for independent artifact-integrity findings and readiness limits
  -> producer or accountable owner applies accepted repairs
  -> specialist evaluation only where a finding exposes a substantive unresolved judgment
  -> implementation, adoption, or decision when the accountable owner accepts the remaining limits
```

Use `specification-review` when ambiguity can propagate into consequential
downstream work. It finds contradictions, competing interpretations, hidden
decisions, unsupported claims, missing boundaries or failure behavior, and
wording loopholes without rewriting the candidate. A small clear reversible
action can bypass the pass. Editorial documents remain with `technical-writing`,
architecture fitness with `architecture-risk-evaluation`, and code candidates
with `code-review`.

### Resumable bounded software change

```text
software-change-orchestration
  -> keep clear uninterrupted work inline, or obtain document-write authority and seed one living canonical specification when ownership or re-entry requires durable state
  -> derive compact, standard, or high-assurance posture and bound full skill workflows, artifacts, review, and verification
  -> keep the immediate frontier in session and route it to software-change-specification or the smallest owning specialist
  -> integrate each accepted result into the specification before dependent implementation
  -> use specification-review on a fixed candidate when misunderstanding could propagate materially
  -> loop through clarification, design, evaluation, or decision only as evidence requires
  -> choose one primary executor: behavior-preserving-refactoring for pure structure, scoped-change-implementation for intended behavior
  -> use independent code-review when consequence, uncertainty, novelty, an explicit request, or the workflow budget requires it
  -> software-verification freezes claims, methods, and oracles before execution fills missing or invalidated evidence
  -> remediate applicable findings in scope, confirm material review repairs, then run one successful closure set on the final candidate snapshot
  -> loop back on counterexamples, or close with reusable evidence and residual ownership
```

Use the owning repository when one repository owns the behavior, even if it consumes another repository's data. Use an established control repository only for genuinely distributed ownership. Compact uninterrupted execution stays inline even when authorized. Standard or resumable work normally reuses or creates one living specification when ownership or re-entry needs durable state. High-assurance work uses several artifacts only when they need independent lifecycles. Persist a resume point only for a pause, block, handoff, session change, or non-obvious re-entry.

Choose the executor by the requested semantic effect, not by labels such as cleanup or compatibility. An accepted change to observable behavior belongs to `scoped-change-implementation`; pure structure belongs to `behavior-preserving-refactoring`; unresolved behavior belongs to specification or its accountable owner. Implementation remains autonomous over routine code shape, but missing information that makes required outcomes indistinguishable is a contract boundary, not permission to guess or weaken the behavior.

In authorized or auto mode, keep the authorized modes, accepted scope and non-goals, and four escalation conditions in the active task. When durable state is justified, write them into the smallest canonical record before implementation. Proceed without workflow approval, but preserve the originating behavior meaning and escalate material scope, external or production action, destructive action, or a decision changing supported behavior.

### Session boundary or non-obvious re-entry

```text
active work remains in the current session while continuation is obvious
  -> update the existing canonical resume surface only for a pause, session change, context reset, delegation, or non-obvious re-entry
  -> use software-change-orchestration when one bounded software change needs continuity across sessions, artifacts, or specialist owners
  -> next agent rechecks linked canonical state and resumes from the named frontier
```

Keep specifications, plans, ADRs, issues, commits, diffs, and program surfaces canonical. When one of those surfaces owns resume state, update it when authorized. Use session-local transport only when the next agent can access the same environment; cross-environment continuation needs a shared canonical location. Continuation never transfers missing authority. Do not create routine stage-to-stage paperwork inside an uninterrupted composition.

### Cross-view journey walkthrough

```text
supplied, recovered, expected, or current-versus-expected cross-view journey
  -> architecture-surface-mapping for one stable scenario spine across experience, operations, domain state, systems, and interfaces
customer-only touchpoints, pain, emotion, adoption, need, or value
  -> product-opportunity-discovery directly
  -> domain-modeling when terms, rules, events, states, or invariants are disputed
  -> broaden architecture-surface-mapping orientation when the current-system path is still missing
  -> prototype-to-learn only when a runnable artifact is needed
```

Keep product, operational, domain, and system views as aligned lanes of one journey rather than independent pictures. Normal and exception paths are branches inside that journey. Alternative-futures scenario planning asks a different question and should not be composed as another journey branch.

### Product opportunity to delivery

```text
product-opportunity-discovery
  <-> product-opportunity-prioritization when opportunities or bets compete
  <-> architecture-surface-mapping when one outcome must be aligned across experience, operations, domain state, systems, and interfaces
  <-> prototype-to-learn when a local runnable artifact can retire one behavior, state, UI, or interaction uncertainty
  -> domain-modeling when business meaning, rules, or invariants need design
  -> service-boundary-design and deep-module-design when structure is in question
  -> software-change-specification when an accepted change remains too ambiguous for safe delegation
  -> technical-program-orchestration when accepted delivery has several concurrent or interdependent workstreams
  -> co-design observability, verification, and controlled release when applicable
  -> scoped-change-implementation in coherent vertical slices
  -> code-review and software-verification
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
  -> decision-facilitation
  -> software-change-specification, when the accepted change needs a bounded implementation-ready behavior contract
  -> technical-program-orchestration, when delivery has several concurrent or interdependent workstreams
  -> migration-planning, when the accepted target requires material state,
     consumer, authoritative-path, execution, infrastructure, or authority
     movement through controlled transition states, retireability, and retirement
  -> co-design observability, verification, and controlled release when they apply
  -> scoped-change-implementation in coherent vertical slices
  -> code-review
  -> software-verification for the required claim set
  -> accountable promotion, abort, or risk decision
  -> audit mode of observability-design after representative use
```

### Feature spanning multiple services

```text
domain-modeling
  -> service-boundary-design
  -> software-contract-evolution for changed APIs, events, schemas, protocols,
     translations, consumer adoption, and retirement obligations
  -> technical-program-orchestration for the canonical program surface,
     workstream drivers and frontiers, delivery topology, integration contracts,
     evidence-labeled dominant or coupled constraints, and decision cadence
  -> software-change-orchestration for each bounded software-change workstream
     that needs an independently resumable decision-to-evidence loop
  -> deep-module-design in each affected codebase
  -> co-design:
       observability-design for end-to-end and component evidence
       controlled-release-design for authoritative assignment and mixed states
       software-verification for claims, methods, and oracles
  -> scoped-change-implementation in each affected codebase
  -> code-review for each bounded change and the composed workflow
  -> software-verification for local and end-to-end claims
  -> accountable promotion or abort
  -> audit mode of observability-design after representative use
```

Do not let each service independently decide feature exposure when the workflow requires a consistent cohort. Assign once, propagate context, observe end-to-end outcomes, and retain local kill controls only where they govern distinct hazardous effects.

### Shared API, event, or schema evolution

```text
domain-modeling, when meaning or context differs across participants
  -> software-contract-evolution for the actual contract, compatibility matrix,
     translation, deprecation, consumer adoption, and retirement evidence
  -> technical-program-orchestration, when migration has several concurrent or interdependent adoption workstreams
  -> migration-planning, when consumers or state must move through controlled
     contract transition states, authority transfer, retireability, and retirement
  -> observability-design and software-verification for named evidence
  -> scoped-change-implementation, code-review, and software-verification
  -> accountable support, promotion, and retirement decisions
```

Do not remove the old contract because a deadline elapsed or current telemetry is quiet. Match exit evidence to the obligation being retired: consumer drainage, behavioral comparison, state reconciliation, or fencing of stale executors.

### Inheriting a brownfield service

```text
architecture-surface-mapping
  -> domain-modeling, service-boundary-design, or deep-module-design for the discovered problem
  -> software-verification for characterization and change claims
  -> software-failure-diagnosis when an observed failure is still unexplained
  -> behavior-preserving-refactoring for an authorized structure-only repair
  -> design mode of observability-design when prospective evidence is missing
  -> audit mode of observability-design when the live response loop needs evaluation
  -> controlled-release-design before the first consequential feature rollout
```

Orientation should stop once the immediate decision can move into focused work. It need not document the entire service.

### Existing software scope with recurring structural friction

```text
architecture-assessment
  -> architecture-surface-mapping, when an unfamiliar module, service, subsystem, or capability needs evidence-ranked orientation
  -> domain-modeling, for semantic confusion
  -> service-boundary-design, for deployment/data/ownership coupling
  -> deep-module-design, for local structure and interfaces
  -> behavior-preserving-refactoring for authorized structural execution
  -> migration-planning, only when the selected target needs material movement,
     controlled transition states, authority transfer, cutover, retireability,
     and retirement
```

Use this route when the decision is which structural opportunity deserves attention first. If one completed design is already selected and material implementation or operational learning has changed its premises, start with `retrospective-architecture-review` instead of running a second broad assessment.

### New or existing repository setup

```text
agentic-repo-setup
  -> bootstrap around accepted product, delivery, runtime, and architecture constraints; retrofit an existing repository; or renew a failing harness
  -> architecture-surface-mapping only when the relevant repository journey is unfamiliar
  -> domain-modeling, deep-module-design, behavior-preserving-refactoring, or another focused owner only for a discovered change outside the harness
  -> software-verification when claims or oracles are missing or disputed, coverage or full-verify scope is undefined, a method choice is consequential, or an independent verdict is needed
  -> software-contract-evolution before changing or retiring a supported or independently consumed command
  -> skill-creator when repeated local procedure warrants a new or materially revised repo skill
  -> implement guidance in the selected active instruction files, knowledge placement, local command wiring, accepted checks or mechanically derived inner-loop checks, hooks, and non-deployment CI directly
  -> distinct post-change consumer-session cold-start and failure rehearsal, safe redirection or authorized retirement, and remaining external actions
```

Start with the repository and its existing systems of record. Setup owns its
authorized harness edits instead of delegating them to a generic implementation
stage. Stop rather than choose missing product, delivery, runtime, or foundational
architecture constraints for an empty repository. Preserve product behavior,
previously passing checks, baseline failure identity, and compatibility in a
retrofit; route any required production-code restructuring or domain decision to
its focused owner. Keep general skills installed or plugin-provided, and create a
repo skill through `skill-creator` only for stable local procedure. Use
`technical-program-orchestration` only when the retrofit becomes several
interdependent workstreams, and
`platform-capability-design` only when repeated cross-context demand warrants a
supported self-service product.

### Contested technical choice

```text
architecture-risk-evaluation, when assumptions need technical analysis
  -> decision-facilitation
  -> technical-program-orchestration, when coordination spans several concurrent or interdependent workstreams
  -> migration-planning, only when adopting the decision requires genuine
     technical movement, controlled transition states, retireability, and retirement
  -> co-design verification, observability, and optional controlled release
  -> scoped-change-implementation
  -> code-review and software-verification
```

### Active production incident

```text
incident-response-coordination
  -> stabilize customer impact and establish delegated workstreams
  -> software-failure-diagnosis for uncertain technical cause
  -> scoped-change-implementation for an authorized repair
  -> code-review and software-verification as urgency and consequence allow
  -> controlled recovery, stability evidence, and accountable closure
  -> incident-learning after restoration
```

The incident commander owns response priorities, risk decisions, and closure. The coordinator keeps mitigation, diagnosis, communications, and recovery coherent; it does not replace technical workstream owners or perform the later learning review during active response.

### Bug, regression, or performance failure

```text
software-failure-diagnosis
  -> scoped-change-implementation, only when repair is authorized
  -> code-review
  -> software-verification when the repair has broader claims
  -> incident-learning when the failure carries operational or organizational learning
```

### Behavior-preserving structural change

```text
deep-module-design for a current design question, or retrospective-architecture-review when accumulated learning leaves the target undecided
  -> behavior-preserving-refactoring
  -> code-review
  -> software-verification when equivalence is consequential
  -> accountable decision on any intentional behavior retirement
```

### Platform and service operating model

```text
platform-capability-design
  -> service-capacity-engineering
  -> service-ownership-design
  -> architecture-risk-evaluation
  -> decision-facilitation
```

### Incident-driven renewal

```text
incident-response-coordination, during an active incident
  -> incident-learning after restoration
  -> audit mode of observability-design for detection, diagnosis, paging, or routing gaps
  -> design mode of observability-design for signal-contract gaps
  -> software-verification for escaped behavior, claim, oracle, or evidence gaps
  -> software-failure-diagnosis for an unresolved technical cause
  -> software-verification for a defined regression or resilience claim
  -> domain-modeling, architecture-assessment, deep-module-design,
     or service-boundary-design for focused model or structure gaps
  -> service-capacity-engineering for overload and recovery gaps
  -> controlled-release-design for exposure gaps, or migration-planning for
     technical movement, transition-state, authority, or retirement gaps
  -> service-ownership-design or decision-facilitation for authority gaps
  -> update a runbook, automation, or local process directly when sufficient
  -> retrospective-architecture-review only when accumulated learning creates a material foundational design question
```

One incident may produce several independent branches. Do not force every finding through retrospective architecture review or through one serial workflow.

### Retrospective architecture review by dominant design question

```text
in-process knowledge, state, or interface question
  -> deep-module-design as the primary lens
  -> behavior-preserving-refactoring for an authorized structure-only route

deployment, data authority, failure, or operating-ownership question
  -> service-boundary-design when deployment, data, failure, or ownership is involved
  -> architecture-risk-evaluation for consequential quality claims
  -> scoped-change-implementation or behavior-preserving-refactoring after the target is accepted

cross-boundary quality scenario, multi-service system, or wider estate question
  -> architecture-risk-evaluation
  -> decision-facilitation for accountable closure when needed
  -> migration-planning, scoped implementation, change review,
     and independent verification execution before consequential cutover
```

A capability is an outcome-centered subject that may fit any of these routes;
follow its actual module, service, data, runtime, and ownership topology rather
than assigning it a scale. The retrospective architecture reviewer works
read-only on one selected completed design and activates only when
implementation, repeated change, operation, support, or ownership has produced
a material knowledge delta. It does not discover or rank a general architecture
improvement portfolio and does not provide a generic second attempt for a weak
first design pass. It compares the current or minimally consolidated design as
a competent baseline, may recommend retain or quarantine when change would
outrun evidence, and names the focused follow-up skills needed for deeper
design, scoped implementation, behavior-preserving refactoring, controlled
release, or verification. The accountable human confirms support-policy
changes, route selection, cutover, and residual-risk acceptance. Builder-run
checks may support the decision but do not become an independent equivalence
verdict merely because the same agent reports them.

These are routing examples, not mandatory stage gates.

## Applying the collection in a large organization

1. Start read-only on a completed or pending real decision.
2. Bind the skill to local repositories, domain language, ADRs, ownership, telemetry, incidents, policies, and supported environments.
3. Preserve the decision owner, affected owners, operators, evidence owners, and risk acceptor.
4. Increase scenario breadth, independent evaluation, and retained evidence with consequence and irreversibility.
5. Measure improved decisions and avoided failure, not report length.
6. Review a skill after incidents, platform or governance changes, and repeated user workarounds.
