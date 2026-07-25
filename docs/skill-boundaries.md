# Skill boundaries and relationships

Use this guide to understand how skills relate, where neighboring ownership
boundaries differ, and why producing and evaluating an artifact remain
separate jobs. For common multi-skill routes, see the
[composition guide](composition-guide.md).

These boundaries keep evidence-based work honest: a broad request does not
silently become permission to decide everything, and a producer's confidence
does not substitute for independent evaluation.

## Scope vocabulary

Do not force module, codebase, service, platform, product, change, and program
into one size hierarchy. Before routing work, name three independent things:

| Axis | Question | Typical terms |
| --- | --- | --- |
| **Subject of interest** | What named thing and boundary are being examined? | module, codebase, service, subsystem, platform, product, capability, system, estate |
| **Decision lens** | What judgment or action is missing? | research synthesis, domain modeling, architecture orientation or assessment, boundary or ownership design, capacity, observability, incident response or learning |
| **Work or coordination unit** | What state must remain coherent while work moves? | bounded change, migration, workstream, technical program |

These are roles in the current request, not mutually exclusive types. A
platform may be made of services and offered as an internal product; a
capability may cross codebases and services; a service may be the subject of
domain, architecture, ownership, capacity, or incident work.

Use the terms consistently:

- **Software** is the broad medium of this catalog, not an architecture level.
  A **system of interest** is the declared subject boundary for the current
  question.
- A **module** is an in-process knowledge, state, and interface boundary. A
  **codebase** is a source and build boundary. A **service** is an operated
  runtime boundary with deployment, failure, data-authority, and lifecycle
  obligations. None implies one of the others.
- A **platform** is a shared enabling capability with a usable and supportable
  interface. A **product** is a customer or user value-and-outcome boundary. A
  **capability** is an ability or outcome path that may cross modules, services,
  repositories, teams, and products.
- **Architecture** is the consequential structure, relationships, constraints,
  and tradeoffs of a declared subject. A **surface** is one evidence-bearing
  view of that subject, such as semantics, code, data, runtime, dependencies,
  recovery, or ownership. A **boundary** is where meaning, authority, state,
  change, failure, deployment, or ownership is enforced.
- A **domain** is the problem meaning, behavior, rules, and invariants being
  modeled. A semantic context is not automatically a module or service.
- **Ownership** combines accountable authority with the capability and feedback
  to act. **Lifecycle** is the time span that ownership covers, not another
  boundary type. Team split, staffing, interaction mode, and reporting structure
  remain organizational-design questions.
- An **incident** is a bounded operational episode and response or learning
  frame, not an architecture level. Lifecycle state matters: active response,
  restored learning, and later architecture reconsideration are different
  decisions even when they share evidence.
- A **bounded software change** is one accepted behavior or structure delta
  carried through evidence. A **migration** moves obligations from an
  established technical state through controlled transition states to an
  accepted replacement with the intent to remove old authority and make the
  old state retireable. Retireable means its supported obligations and
  authority have been transferred, drained, or fenced so removal would preserve
  accepted behavior and support commitments; physical retirement may follow
  later. A **workstream** is one coherent contribution with a driver and
  frontier. A **technical program** keeps one outcome coherent across several
  concurrent or interdependent workstreams.
- A **slice** is a bounded increment of learning or delivery, not a scope level.
  A vertical slice crosses enough input, decision, state, effect, and output to
  demonstrate useful behavior. Product, service, architecture, and incident are
  better treated as practice or decision families than as delivery slices.

Route by the missing decision and coordination topology, not apparent size,
repository count, or team count.

## The relationship model

The skills form a directed graph. A downstream skill consumes an upstream artifact only when the decision warrants it.

```mermaid
flowchart LR
    RS["Research synthesis"] -.-> PD
    RS -.-> DM
    RS -.-> AR
    RS -.-> TC["Teach concepts"]
    TC -.-> TGC["Technical growth coaching"]

    PD["Product opportunity discovery"] <--> PP["Product opportunity prioritization"]
    PD -.-> JNY["End-to-end journey trace"]
    PD <--> PTL["Prototype to learn"]
    PD --> DM["Domain modeling"]
    JNY <--> DM
    DM <--> PTL
    PD -.-> OD["Observability design"]
    PD -.-> CR["Controlled release design"]
    PP --> TP["Technical program orchestration"]
    PP --> SPEC["Software change specification"]
    PP --> SCI["Scoped change implementation"]

    SM["Architecture surface mapping"] --> DM["Domain modeling"]
    SM <--> JNY
    SM --> SB["Service boundary design"]
    SM --> MD["Deep module design"]
    SM --> OD["Observability design"]

    DM --> SB
    SB --> MD["Deep module design"]
    CA["Architecture assessment"] --> DM
    CA --> SB
    CA --> MD

    PC["Platform capability design"] --> AR["Architecture risk evaluation"]
    SB --> AR
    MD --> AR
    CAP["Service capacity engineering"] --> AR
    OWN["Service ownership design"] --> AR

    AR --> DF["Decision facilitation"]
    DF --> TP["Technical program orchestration"]
    SB --> TP
    DM --> CE["Software contract evolution"]
    DM --> SPEC
    SB --> CE
    SB --> SPEC
    MD --> SPEC
    CE -.-> TP
    CE --> SPEC
    CE --> HR["Migration planning"]
    CE --> OD
    CE --> VS
    CE --> SCI
    DF --> HR["Migration planning"]
    MD --> OD
    SB --> OD
    MD --> CR["Controlled release design"]
    MD --> VS["Verification strategy design"]
    MD --> SCI["Scoped change implementation"]
    MD --> BPR["Behavior-preserving refactoring"]
    MD <--> PTL
    JNY -.-> PTL
    PTL -.-> SPEC
    PTL -.-> SCI
    HR -.-> CR
    HR --> OD
    HR --> VS
    CR --> SCI
    OD --> SCI
    HR --> SCI
    TP -.-> HR
    TP -.-> CR
    TP -.-> OD
    TP -.-> VS
    TP -.-> SPEC
    SPEC --> VS
    SPEC --> SCI
    TP --> SCI
    SFD -.-> SPEC
    SFD["Software failure diagnosis"] --> SCI
    SCI --> SCR["Code review"]
    BPR --> SCR
    VS --> VE["Verification execution"]
    SCI --> VE
    BPR --> VE
    SCR --> DEC["Accountable promotion or cutover"]
    VE --> DEC
    DEC --> OF["Operational feedback audit"]
    OF -.-> OD

    IRC["Incident response coordination"] -.-> SFD
    IRC --> IL["Incident learning"]
    OF --> IL["Incident learning"]
    IL --> OD
    IL --> VS
    IL --> CAP
    IL --> OWN
    IL --> CR
    IL --> HR
    IL -.-> RAR["Retrospective architecture review"]
    RAR --> DM
    RAR --> SB
    RAR --> MD
    RAR --> BPR
```

`software-change-orchestration` can maintain a bounded change's evolving canonical specification across this graph and preserve a resume point when work spans sessions or artifacts. The immediate frontier normally remains in the active session. Orchestration does not add a required path through the graph or take ownership from any node.

This is not a mandatory lifecycle. For example, an uncertain product request may loop only between opportunity discovery and prioritization until evidence supports stopping or investment. A local reversible feature may need only `scoped-change-implementation` and repository checks. A structure-only cleanup may use `behavior-preserving-refactoring` without architecture review. A multi-workstream feature may use `technical-program-orchestration` to coordinate owned frontiers and integration while composing observability, controlled release, change review, and verification without a heavyweight architecture evaluation. A multi-region ledger migration may require architecture evaluation, a decision record, technical program orchestration, migration planning, controlled exposure, layered verification, and an operational feedback audit. An active outage may need incident-response coordination and diagnosis before it can move into recovery and incident learning.

## Design and evaluation are different jobs

A skill that creates an artifact should not silently certify that artifact. For consequential work, use a separate evaluation pass with explicit claims, independent evidence, and permission to reject or revise the design.

| Produced artifact | Appropriate evaluator or challenge |
| --- | --- |
| Product opportunity discovery result | Accountable product owner and cross-functional decision group challenge the evidence, affected population, alternatives, and limits; prioritization may reject investment readiness without rewriting the discovery result |
| Product opportunity priority recommendation | Accountable product owner or declared forum closes the decision after customer, commercial, technical, operational, and mandatory-risk owners challenge the rationale and feasibility |
| Cross-view journey trace | Customer, operational, domain, data, interface, and system owners challenge the steps they own; source evidence is rechecked before consequential use |
| Learning prototype | The user or relevant design owner drives the artifact and challenges whether it preserves the tested mechanism; any maintained implementation requires separate implementation and evidence |
| Research synthesis | Source-owner checks for exact claims and accountable specialist challenge for interpretation and applicability; the synthesis does not certify truth or close the downstream decision |
| Concept teaching session | The learner reconstructs and transfers the concept in a changed case; source or domain owners challenge consequential facts and interpretations |
| Technical document or blog post | Source and domain owners challenge consequential claims; representative readers test whether the artifact performs its declared learning, action, reference, understanding, or argument job |
| Session handoff | The next agent rechecks freshness and completion against linked canonical state before consequential continuation; the handoff does not certify the artifacts it compresses |
| Architecture surface map | Source-owner review and focused follow-up; orientation does not certify architecture fitness, readiness, or safety |
| Domain, service-boundary, module, or platform design | `architecture-risk-evaluation` for consequential quality and operating scenarios |
| Architecture improvement portfolio or selected candidate | Local evidence review, followed by the relevant focused design skill |
| Architecture option comparison | `decision-facilitation` for accountable weighting and closure |
| Technical program orchestration state | Accountable outcome owner and integrated delivery evidence; activity and coordinator confidence do not certify the outcome |
| Software contract evolution design | Producer, consumer, data, and support-policy owners review the recovered contract and compatibility claims; use `verification-strategy-design` and independent architecture challenge as consequence warrants |
| Software change specification | Accountable change, product, domain, consumer, security, data, and operational owners challenge the interpretations they own; consequential architecture and evidence claims route to independent evaluation rather than being self-certified by the specifier |
| Observability design | Instrumentation and signal verification, then `operational-feedback-audit` against representative runtime use |
| Controlled release design | `verification-strategy-design` for claims and phase evidence; accountable owners retain promotion authority |
| Migration plan | `verification-strategy-design` for falsifiable phase and invariant evidence |
| Running telemetry and response system | `operational-feedback-audit` against observed decisions and incidents |
| Scoped implementation | `code-review` for an independent diff challenge and `verification-execution` for fixed consequential claims |
| Behavior-preserving refactoring | `code-review`, plus `verification-execution` when equivalence crosses consumer, data, concurrency, performance, failure, or operating boundaries |
| Failure diagnosis | Reproducible or durable causal evidence reviewed by the relevant owner; any repair becomes a separately authorized implementation |
| Live incident response and recovery claim | Accountable incident commander, observed customer and system stability, and a deliberate recovery handoff; use `incident-learning` only after restoration |
| Completed implementation | Executed repository evidence, `code-review`, and independent `verification-execution` when warranted; `retrospective-architecture-review` only when accumulated learning creates a material reason to reconsider the design |

Separation does not require bureaucracy or different people for every local change. It requires a distinct contract: the evaluator receives the artifact and evidence, can identify missing claims, and is not required to defend the producer's original choices. Increase independence with consequence, irreversibility, and uncertainty.

### Keep cross-skill references readable

When skills compose in one task, keep the decision context in flow instead of creating a handoff file. Use a stable namespaced key together with its plain-language label, for example `OBS-settlement-age — Settlement completion age`. Repeat both whenever the contract is cited. The prefix identifies the contract family; the label preserves human meaning.

## Important distinctions

### Concept teaching, writing, research, and growth coaching

- `teach-concepts` owns one learner-specific explanation, misconception repair, reconstruction, and transfer loop for a bounded concept. It may compress to a direct explanation when the user does not want an interactive exchange.
- `technical-writing` owns a durable technical tutorial, explanation, reference, or other reader artifact. A static explanation does not become concept teaching merely because readers may learn from it.
- `research-synthesis` owns what cross-source evidence supports. `teach-concepts` consumes supplied or verified subject evidence and does not make a disputed claim true by explaining it clearly.
- `technical-growth-coaching` owns repeated performance practice, feedback, delegation, and transfer into independent work. One successful concept check does not certify professional capability.

### Technical writing, source ownership, and session handoff

- `technical-writing` owns transfer to a declared reader through a tutorial, how-to guide, explanation, reference, procedure, runbook, or technical article. It consumes accepted decisions and inspected evidence; it does not decide product value, domain meaning, architecture, support policy, operational risk, or factual truth merely because those claims appear in prose.
- `handoff` owns task-scoped session compaction only when work is pausing, changing sessions, delegating, or becoming difficult to re-enter. When repository-backed orchestration, program state, a specification, or an issue already owns resume state, keep persistent continuation there and limit a separate handoff to the session delta. Use temporary transport only when the next agent can access the same environment. The handoff does not replace canonical state or ordinary in-session composition.
- `skill-creator` and the repository authoring contract own new or materially revised skills. `technical-writing` may improve reader transfer in supporting documentation, but it must not become a second skill-authoring authority.

Technical writing can follow research, design, implementation, or operational work when a reader artifact is requested. The source owner retains interpretation and decision authority, while the writing skill owns document function, reading path, provenance visibility, functional checks, and voice. A handoff is not a default output of that composition; create it only for a real continuation boundary.

### End-to-end journey tracing, customer journeys, and scenario planning

- `trace-end-to-end-journey` owns one evidence-labeled scenario spine aligned across experience touchpoints, operational work, domain transitions, systems, data authority, and interfaces. It may explain a supplied picture, recover a current path, propose an expected path, or compare expected and observed behavior.
- Customer journey mapping stays with `product-opportunity-discovery` when the missing artifact concerns only customer context, touchpoints, needs, pains, emotions, adoption, or value. A customer journey can become the experience lane of a cross-view trace.
- `architecture-surface-mapping` owns broad evidence-ranked orientation to current software. End-to-end journey tracing owns one bounded outcome path intended for shared product-to-system walkthrough.
- Alternative-futures scenario planning varies external worlds, driving uncertainties, and strategic responses. Rejection, cancellation, timeout, and recovery are branches within one journey, not scenario planning.
- `prototype-to-learn` owns runnable software for hands-on learning. A story, matrix, flowchart, sequence diagram, or state trace is not a prototype merely because it is interactive to discuss.

### Product discovery, prioritization, and delivery

- `product-opportunity-discovery` reduces uncertainty about a desired outcome, customer opportunity, assumptions, and alternative solution directions. It may recommend learning, narrowing, pivoting, stopping, prioritization, or investment readiness; it does not allocate the roadmap or promise delivery.
- `prototype-to-learn` constructs a local disposable software artifact for one named behavior, state, UI, or interaction design question. It consumes a discovery or design question when supplied and returns an observation surface and captured learning; it does not decide customer value, architecture acceptance, or production readiness.
- `domain-modeling` retains disputed business meaning, rules, and invariant
  authority. `prototype-to-learn` may exercise supplied candidate models, but
  internally coherent prototype behavior does not settle a semantic dispute.
- `product-opportunity-prioritization` allocates bounded product attention and capacity among sufficiently framed opportunities and bets. It keeps mandatory and enabling work visible, preserves different learning horizons, and makes selection, deferral, and review rationale inspectable; it does not discover every opportunity or sequence execution.
- `technical-program-orchestration` coordinates several concurrent or interdependent workstream loops, dependencies, integration, and evidence after an outcome and investment direction have been accepted. Team count alone does not define a program. `scoped-change-implementation` owns a bounded authorized implementation.

Discovery, prototyping, and prioritization can form a feedback loop. Prioritization may fund another discovery slice rather than a full solution; discovery evidence may split, merge, weaken, strengthen, or remove an opportunity and reopen priority. Discovery owns the hypothesis and evidence contract while `prototype-to-learn` owns authorized local software construction. `domain-modeling` owns complex software meaning, behavior, and invariants once those become the problem, while `controlled-release-design` and `observability-design` own governed production exposure and deployed measurement contracts.

### Change orchestration, specification, and program orchestration

- `software-change-orchestration` owns continuity and composition economy for one bounded change effort: authorization and escalation boundaries, derived assurance posture and workflow budget, evolving canonical specification or work surface, one primary owner per move, reusable evidence, and durable handoff state when needed. It keeps the immediate frontier in the active session during uninterrupted work and may use an existing specification or issue instead of creating another document.
- `software-change-specification` owns the implementation-ready behavior contract for one accepted but ambiguous change. Within orchestration it consumes the originating request and accepted frame, updates the supplied canonical surface with only its specification delta when authorized, and can classify the change as not ready.
- `technical-program-orchestration` owns the canonical program surface, multi-workstream delivery topology, workstream contracts and drivers, local and program frontiers, integration, constraints, and replanning. It links canonical local artifacts rather than becoming their executor or a duplicate program office.
- `behavior-preserving-refactoring` is the primary executor for a pure structural slice whose supported behavior must remain unchanged. `scoped-change-implementation` is the primary executor for an intended observable behavior change. Do not stack both complete workflows around one pure refactor; split a mixed change or nominate one primary executor and borrow only the needed checks. Review, verification, promotion, and residual-risk acceptance remain separate judgments.

The orchestration unit is a **change effort**, not necessarily a whole product or repository. Related slices may share one effort when they serve one outcome and depend on the same behavior or risk decisions. Small reversible changes stay inline with no orchestration directory. When durable state is justified, use the owning repository if one repo owns the behavior; use an established control repository when no code repository owns the cross-repository outcome. Touching or reading several repositories is not by itself a reason to create control-repository state.

A program is not merely a larger change effort. Program orchestration steers a graph of workstream contributions, dependencies, integration contracts, and simultaneous frontiers. A program may link several bounded change efforts, while one change effort may also require program orchestration when its delivery contains several concurrent or interdependent workstreams. One team can own such a topology, and several teams can still be executing only one bounded change loop; team count is neither necessary nor sufficient. Use `software-change-orchestration` only for workstreams that need their own resumable software-change loop; keep non-code or already well-governed workstreams in their existing canonical surfaces.

### Research synthesis versus surface mapping and specialist inquiry

Use `research-synthesis` when the missing artifact is a bounded answer assembled across papers, standards, official guidance, reports, datasets, or other high-trust sources. It owns source strategy, exact claim provenance, comparison, contradiction, applicability, confidence, and the decision to stop or return an inconclusive result. It does not own the customer, architecture, domain, causal, verification, or accountable decision judgment that may consume the brief.

Use `architecture-surface-mapping` when the question is how a declared current software subject actually works. Its primary evidence is the subject's semantics, code, configuration, interfaces, data, runtime, dependencies, change paths, controls, recovery, and ownership. When external evidence and current-system facts both matter, the research synthesis and surface map remain separate inputs to the relevant specialist; neither substitutes for the other.

Route direct customer learning to `product-opportunity-discovery`, a concrete unexplained software failure to `software-failure-diagnosis`, local meaning and rules to `domain-modeling`, fixed engineering claims to verification design or execution, regulated applicability to the accountable domain owner, and accountable weighting or closure to `decision-facilitation`. Capturing or summarizing one source is not cross-source research synthesis unless the user also asks what broader evidence supports; when no repository-native workflow exists, summarize or extract that source directly without research-record machinery.

### Orientation versus assessment

Use `architecture-surface-mapping` to become safely useful in unfamiliar software at a declared module, service, subsystem, platform, codebase, or capability scope: trace critical workflows, reconcile declared, executable, and observed structure, locate controls and owners, and rank the next probes. It does not evaluate architecture fitness, score readiness, prescribe a portfolio, or design the target architecture.

Use `architecture-assessment` to diagnose and rank structural improvement opportunities across a declared module, service, subsystem, platform, codebase, capability, or estate scope. Use `architecture-risk-evaluation` to challenge a consequential proposal against stakeholder and quality scenarios.

### Domain, service, and module boundaries

- `domain-modeling` owns meaning, behavior, invariants, vocabulary, and bounded contexts.
- `service-boundary-design` owns deployment, data authority, failure, change cadence, and operating ownership. A bounded context is not automatically a service.
- `deep-module-design` owns interfaces, seams, state, and hidden complexity inside a codebase or service. A module is not automatically a deployable unit.

For a new capability, the common direction is:

```text
domain-modeling
  -> service-boundary-design
  -> deep-module-design
```

For existing service sprawl, boundary evidence may expose semantic confusion and route back through domain modeling before the boundary is reconsidered.

### Architecture assessment versus focused design

Use `architecture-assessment` to discover and rank structural problems across a declared existing architecture scope. Use `deep-module-design` after one module, interface, seam, or vertical slice has been selected for design.

### Portfolio assessment versus retrospective review

- `architecture-assessment` starts before a redesign target is selected. It compares structural pressures across a declared module, service, subsystem, platform, codebase, capability, or estate scope and ranks which opportunities deserve focused investigation or investment.
- `retrospective-architecture-review` starts with one selected completed design and a material knowledge delta from implementation, repeated change, operation, support, or ownership. It recovers durable commitments, compares the current design with alternatives, and recommends retain, quarantine, prune, reshape, or rebuild.

Route by the decision, not by shared evidence. “Where should we invest in architecture?” belongs to portfolio assessment. “Has what we learned changed the right design for this capability?” belongs to retrospective review. Do not run both as serial general assessments; route a selected portfolio candidate to the focused design skill it needs, and use retrospective review only when accumulated learning creates its distinct decision.

### Design, prototyping, specification, implementation, and refactoring

- `deep-module-design` decides where knowledge, state, resources, and interface semantics should live. It does not modify the target.
- `prototype-to-learn` modifies local files only to create a disposable observation surface for one design question. Its code creates no supported behavior or production-readiness claim; preserve the learning and route any maintained implementation separately.
- `software-change-specification` turns one accepted but ambiguous change into a reviewable behavioral contract: current and desired behavior, invariants, scope, affected surfaces, representative examples, acceptance claims, unknowns, and readiness. It specifies the change rather than the patch and does not authorize implementation.
- `scoped-change-implementation` consumes that contract when one exists, or resolves a compact inline contract for a local reversible change, then changes supported behavior through coherent vertical slices. TDD is one optional inner feedback loop, not the skill's whole contract.
- `behavior-preserving-refactoring` changes structure while keeping supported behavior stable. Any intentional behavior or support-policy change becomes a separate scoped implementation decision.

A specification is an optional escalation, not a universal gate. A short diff is not automatically surgical, but a cheap reversible change should not wait for document completion when its intent and contract are already clear. Surgical implementation minimizes unnecessary coupling, dual authority, and unrelated change while completing the ownership and cleanup required by the requested behavior.

### Failure diagnosis versus repair

Use `software-failure-diagnosis` while the cause of a bug, regression, intermittent failure, or performance degradation remains uncertain. It owns symptom preservation, evidence loops, competing hypotheses, causal explanation, and the smallest faithful reproduction or observation recipe. It defaults to read-only diagnosis.

After the cause is supported, use `scoped-change-implementation` only when repair is authorized. Preserve the diagnosis as the reason and regression signal; do not let a plausible patch retroactively become proof of cause.

### Incident response coordination versus diagnosis and learning

Use `incident-response-coordination` during an active outage or severe degradation to establish accountable command, reduce customer harm, organize delegated workstreams, protect communication bandwidth, and reach a deliberate recovery handoff. It owns response coherence, not the technical cause.

Use `software-failure-diagnosis` for the causal technical investigation, whether or not an incident is active. Use `incident-learning` only after restoration to reconstruct local perspectives, system conditions, protective capacity, and durable follow-through. The response coordinator preserves evidence for that later review but does not conduct the postmortem while responders are still stabilizing the system.

Use `operational-feedback-audit` outside the urgent command loop to evaluate whether telemetry, routing, diagnosis, and control paths produced effective operational action. The live coordinator consumes those mechanisms under pressure; it does not independently audit and certify them during the response.

The agent supports a human incident commander by default. It may maintain the operational picture, draft updates, detect conflicts, and coordinate within explicit delegation; consequential production actions, customer commitments, risk acceptance, and incident closure require accountable authorization or a pre-approved bounded runbook.

### Change review versus verification execution

Use `code-review` to inspect a bounded diff against intent, repository constraints, behavior, contracts, maintainability, and claimed evidence. It produces prioritized findings and does not change the target.

Use `verification-strategy-design` to preserve upstream behavior and invariant claims while defining the missing `VER-*` methods, oracles, limits, and renewal obligations. Use `verification-execution` to validate existing snapshot-bound evidence and run claims that are missing, stale, invalidated, suspicious, explicitly independent, or required as a fresh set. It preserves raw evidence, environment context, counterexamples, inconclusive results, and cleanup. Review can identify an evidence gap; execution can show a claim failed; neither silently approves release.

### Contract evolution versus transition and program orchestration

Use `software-contract-evolution` to recover what producers and consumers actually rely on and decide how shared semantics, compatibility, translation, deprecation, adoption, and retirement should work. It owns the producer-consumer-state-executor compatibility matrix and the support-policy obligations, not merely an API version number.

Use `migration-planning` after those contract decisions are accepted when consumers, state, an authoritative traffic path, execution, infrastructure, or authority must move to a target and the old state becomes retireable. Cohort assignment or version exposure alone is controlled release, not traffic migration. Migration planning owns permitted online or offline transition states, authority transfer, cutover, retreat or compensation, and retirement order. Use `technical-program-orchestration` when adoption forms several concurrent or interdependent workstreams and needs owned frontiers, dependency-aware slices, integration, decision flow, and replanning. Contract evolution defines what must remain true; the migration plan defines how technical state and authority move; program orchestration keeps the participating workstreams delivering the end-to-end outcome.

`service-boundary-design` consumes semantic boundaries from `domain-modeling` and decides whether data, deployment, failure, and operating enforcement should move. When in-process modularity is selected, `deep-module-design` owns the hidden knowledge, interface, lifecycle semantics, and adoption details. A contract may evolve at a stable boundary, or a boundary decision may create contracts that then need an evolution policy.

### Architecture risk versus migration planning

Use `architecture-risk-evaluation` to ask whether the proposed target architecture can satisfy important scenarios and quality drivers. Use `migration-planning` only after a target direction exists and its adoption requires material movement of consumers, state, an authoritative traffic path, execution, infrastructure, or authority through controlled transition states, cutover, retireability, and retirement.

```text
architecture-risk-evaluation
  -> decision-facilitation
  -> migration-planning
  -> co-design verification, observability, and optional controlled release
  -> scoped-change-implementation
  -> code-review and verification-execution
  -> accountable cutover
```

### Decision facilitation, technical program orchestration, and migration planning

Use `decision-facilitation` to clarify, challenge, and close a consequential or contested choice with explicit authority and accepted tradeoffs; route subject-matter analysis to its specialist. Use `technical-program-orchestration` when an outcome has several concurrent or interdependent workstreams whose dependencies, integration points, shared decisions, or constraints need active steering through local and program frontiers. Use `migration-planning` to design one accepted target's current-to-transition-to-target movement and authority transfer. Risk or production impact alone does not create a migration.

A technical program may contain several ordinary delivery slices and several specialized change plans. It references those plans and exposes their dependencies without taking over their invariants, release controls, measurement contracts, or verification oracles. A single-team feature or one local reversible change does not need program machinery merely because it has several tasks.

```text
decision-facilitation, when clarification, challenge, or closure is needed
  -> technical-program-orchestration, when delivery has several concurrent or interdependent workstreams
       -> migration-planning for each workstream that owns genuine technical movement, transition states, authority transfer, retireability, and retirement
       -> coordinated observability, release, verification, implementation, and integration
  -> accountable outcome and residual-risk decision
```

### Controlled release versus migration planning

Use `controlled-release-design` to define exposure assignment, feature-flag semantics, cohorts, promotion, hold, abort, kill controls, and flag cleanup. Use it alone when one compatible behavior is merely being exposed gradually. Use `migration-planning` when an accepted replacement must take over obligations from an established technical state through material consumer, state, execution, infrastructure, or authoritative-path movement and the old state is intended to lose authority and become retireable. When both apply, controlled release is an optional nested subplan of the authoritative migration plan; many ordinary feature releases need controlled exposure without a migration, and some migrations need no exposure subplan.

### Observability design versus operational feedback audit

Use `observability-design` before implementation or release to define normative measurement contracts, correlation, health entry points, diagnostic navigation, alerts, and control evidence. Use `operational-feedback-audit` after representative operation to recover those contracts, compare intended and deployed semantics, and report runtime counterexamples and required design deltas. A missing contract is an audit finding, not permission for the auditor to create and certify its own replacement.

```text
observability-design
  -> scoped-change-implementation, with controlled release when applicable
  -> verification-execution for claims that consume runtime evidence
  -> operational-feedback-audit
  -> revise observability design
```

The designer and auditor may be the same person for low-risk work, but the audit must use distinct runtime evidence and retain permission to reject the original assumptions.

### Observability, verification, and operational feedback

- `observability-design` owns the runtime evidence substrate: signal semantics, correlation, navigation, alerts, and control visibility.
- `verification-strategy-design` owns the broader claim-to-evidence portfolio. It may select tests, static checks, formal methods, simulation, load tests, failure injection, rollout evidence, and production telemetry according to risk.
- `verification-execution` runs that portfolio against fixed oracles and preserves per-claim results, counterexamples, environment context, safety stops, and inconclusive evidence.
- `operational-feedback-audit` evaluates whether the running telemetry, ownership routing, diagnosis, and control paths actually produced correct operational action.

Observability can supply evidence to verification, but telemetry is not a substitute for earlier checks. An operational audit can reject both a weak observability design and the assumption that a green signal proved the system healthy.

### Capacity, ownership, and platform capability

- `platform-capability-design` creates a self-service capability and its operating contract.
- `service-capacity-engineering` tests whether useful work completes within an explicit demand and overload envelope.
- `service-ownership-design` tests whether responsibility moves with authority, capability, feedback, staffing, and specialist support.

These are complementary lenses, not one universal platform workflow.
