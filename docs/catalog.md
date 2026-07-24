# Skill catalog

Use this catalog to choose the skill that owns the decision, artifact, or
action currently missing. For neighboring skills whose boundaries are easy to
confuse, continue to the [skill boundaries and relationships](skill-boundaries.md).
Each workflow produces an inspectable result: evidence and uncertainty remain
visible, authority stays explicit, and weak inputs can lead to a conditional or
`not ready` outcome instead of invented completeness.

Name the subject of interest, decision lens, and work or coordination unit
separately; they are cross-cutting axes, not one size hierarchy. See the
[scope vocabulary](skill-boundaries.md#scope-vocabulary).

## Invocation policy

Keep implicit invocation for a small set of front doors that represent distinct top-level user intents:

- `research-synthesis`
- `architecture-surface-mapping`
- `software-change-specification`
- `scoped-change-implementation`
- `behavior-preserving-refactoring`
- `software-failure-diagnosis`
- `code-review`

Set `policy.allow_implicit_invocation: false` in `agents/openai.yaml` for every
other catalog skill. These specialist, evaluator, planning, and control
workflows remain available through explicit `$skill-name` invocation and an
active front-door workflow's routing guidance, without competing in the
default agent context.

Treat this as an invocation policy, not an importance ranking or a mandatory lifecycle. Add another implicit front door only when it owns a common top-level intent that the existing front doors cannot route reliably without already knowing the specialist name.

## Choose by the artifact you need

Do not start from a fashionable method or invoke every skill as a stage gate. Ask what decision or artifact is currently missing.

### Understand and design

| Skill | It owns | Primary output |
| --- | --- | --- |
| [`research-synthesis`](../skills/research-synthesis/) | Question-driven synthesis across papers, standards, official guidance, reports, datasets, and other high-trust sources | Bounded answer, claim-level provenance, contradictions, applicability, confidence, unresolved gaps, and stop rationale |
| [`product-opportunity-discovery`](../skills/product-opportunity-discovery/) | Customer opportunity and solution-direction learning before heavy implementation | Decision frame, opportunity model, hypotheses, alternatives, learning evidence, and bounded disposition |
| [`prototype-to-learn`](../skills/prototype-to-learn/) | Construction of one disposable runnable software artifact for a behavior, state, UI, or interaction design question | Local prototype, observation surface, fidelity limits, captured learning, and lifecycle route |
| [`architecture-surface-mapping`](../skills/architecture-surface-mapping/) | Rapid evidence-ranked orientation to unfamiliar software architecture at a declared module, service, subsystem, platform, codebase, or capability scope | Architecture-surface map, path traces, contradictions, confidence, and next probes |
| [`domain-modeling`](../skills/domain-modeling/) | Problem-specific behavior, invariants, vocabulary, and semantic contexts | Operational principles, compared models, semantic boundaries, translations, and unresolved questions |
| [`service-boundary-design`](../skills/service-boundary-design/) | Choosing whether service-level enforcement belongs in an existing deployment, an in-process module, a split or merged service, or stronger data and failure isolation | Boundary force matrix, scenario traces, enforcement choice, prerequisites, and focused module-design handoff when needed |
| [`deep-module-design`](../skills/deep-module-design/) | Knowledge boundaries, interfaces, seams, state ownership, and testable contracts | Compared boundaries, deep or composable interface strategy, honest contract, tests, and adoption direction |
| [`platform-capability-design`](../skills/platform-capability-design/) | Self-service internal capabilities, paved roads, controls, and escape hatches | User-work evidence, capability boundary, interface, operating contract, and adoption slice |
| [`observability-design`](../skills/observability-design/) | Prospective business, service, dependency, infrastructure, and control evidence | Execution-path map, measurement contracts, navigation, alerts, correlation, and lifecycle |

### Assess, engineer, and decide

| Skill | It owns | Primary output |
| --- | --- | --- |
| [`product-opportunity-prioritization`](../skills/product-opportunity-prioritization/) | Product-level allocation among opportunities and bets across evidence, constraints, capacity, and learning horizons | Normalized candidate set, feasible portfolio options, priority rationale, dispositions, and review triggers |
| [`architecture-assessment`](../skills/architecture-assessment/) | Discovering and ranking which structural opportunities deserve investment across a declared software architecture scope before a redesign target is selected | Ranked evidence-backed architecture improvement portfolio |
| [`architecture-risk-evaluation`](../skills/architecture-risk-evaluation/) | Scenario-based evaluation of architecture assumptions and quality tradeoffs | Risks, non-risks, sensitivities, tradeoffs, unknowns, and evidence needs |
| [`service-capacity-engineering`](../skills/service-capacity-engineering/) | End-to-end demand, capacity, headroom, overload, and recovery behavior | Capacity model, operating envelope, falsification evidence, and overload controls |
| [`service-ownership-design`](../skills/service-ownership-design/) | Sustainable lifecycle ownership and its enabling conditions | Ownership trace, cognitive-load assessment, model options, prerequisites, and transition |
| [`decision-facilitation`](../skills/decision-facilitation/) | Intent, authority, participation, alternatives, assumptions, tradeoffs, closure, and commitment for consequential or contested choices | Decision frame, authority map, challenge result, bounded disposition, commitments, and reopening conditions |

### Plan, coordinate, and control change

| Skill | It owns | Primary output |
| --- | --- | --- |
| [`software-change-specification`](../skills/software-change-specification/) | Pre-implementation intent, behavior delta, scope, invariants, affected surfaces, acceptance claims, unknowns, and readiness for one bounded change | Source-faithful specification delta, representative examples, `CHG-*` claims, routes, and readiness classification |
| [`software-change-orchestration`](../skills/software-change-orchestration/) | Resumable routing and repository-backed state across a bounded software change | Outcome and authorization boundary, derived assurance posture and workflow budget, evolving canonical specification, exclusive executor route, reusable evidence, and durable handoff state when needed |
| [`technical-program-orchestration`](../skills/technical-program-orchestration/) | Multi-workstream outcome coherence, owned local loops, dependency and integration flow, shared constraints, and replanning | Canonical program surface, delivery topology, workstream contracts and frontiers, integration state, evidence trend, and closure |
| [`software-contract-evolution`](../skills/software-contract-evolution/) | Shared contract semantics, compatibility, translation, deprecation, consumer adoption, and retirement policy | Actual-contract frame, compatibility matrix, evolution choice, adoption obligations, and retirement evidence |
| [`controlled-release-design`](../skills/controlled-release-design/) | Feature flags, exposure assignment, cohorts, release phases, and kill controls | Release contract, control topology, evidence, phase criteria, retreat, and cleanup |
| [`migration-planning`](../skills/migration-planning/) | Current-to-transition-to-target technical movement and authority transfer after the target and contract decisions are accepted | Migration state model with evidence-gated cutover, retreat or compensation, retireability, retirement, and cleanup |
| [`verification-strategy-design`](../skills/verification-strategy-design/) | Matching engineering claims and risks to falsifying evidence | Upstream-linked risk-to-evidence portfolio with methods, oracles, limits, evidence gaps, and renewal triggers |

### Implement, diagnose, and verify

| Skill | It owns | Primary output |
| --- | --- | --- |
| [`scoped-change-implementation`](../skills/scoped-change-implementation/) | Authorized bounded behavior change through coherent vertical slices | Maintained code, behavior evidence, completed ownership, deviations, and remaining gaps |
| [`behavior-preserving-refactoring`](../skills/behavior-preserving-refactoring/) | Structural improvement without intentional supported-behavior change | Consolidated ownership, refactoring-safe evidence, retired old paths, and equivalence limits |
| [`software-failure-diagnosis`](../skills/software-failure-diagnosis/) | Causal investigation of bugs, regressions, intermittent failures, and performance degradation | Symptom contract, evidence loop, competing hypotheses, supported cause, and repair boundary |
| [`code-review`](../skills/code-review/) | Independent read-only review of a bounded software change | Prioritized evidence-backed findings, questions, scope limits, and residual risks |
| [`verification-execution`](../skills/verification-execution/) | Execution of fixed verification claims, methods, and oracles | Per-claim reused, rerun, invalidated, or omitted dispositions; raw evidence; counterexamples; cleanup; and unresolved gaps |

### Communicate and preserve knowledge

| Skill | It owns | Primary output |
| --- | --- | --- |
| [`technical-writing`](../skills/technical-writing/) | Reader-task-specific technical documentation and evidence-grounded technical blog posts without taking over source decisions | Verified tutorial, how-to guide, explanation, reference, procedure, runbook, or technical article with visible source and freshness limits |
| [`handoff`](../skills/handoff/) | Task-scoped compaction of active session state for a fresh agent or non-obvious re-entry without duplicating canonical resume state | Canonical resume update or accessible session-delta handoff with current evidence, authority, immediate frontier, links, and first next action |

### Operate, learn, and renew

| Skill | It owns | Primary output |
| --- | --- | --- |
| [`incident-response-coordination`](../skills/incident-response-coordination/) | Live stabilization, accountable command, delegated workstreams, and response communication | Operational picture, impact trend, command decisions, workstreams, recovery criteria, and handoff |
| [`operational-feedback-audit`](../skills/operational-feedback-audit/) | The live telemetry-to-decision-to-action loop | Contract counterexamples and deltas, alert and diagnostic findings, routing and control-path risks |
| [`incident-learning`](../skills/incident-learning/) | Learning from incidents, near misses, and operational surprises | Evidence timeline, local perspectives, model gaps, protective capacity, and branching follow-through |
| [`retrospective-architecture-review`](../skills/retrospective-architecture-review/) | Reconsidering one selected completed design after material implementation or operational learning changes its premises | Knowledge delta, durable commitments, candidate comparison, and retain/quarantine/prune/reshape/rebuild route |

### Develop technical capability

| Skill | It owns | Primary output |
| --- | --- | --- |
| [`technical-growth-coaching`](../skills/technical-growth-coaching/) | Deliberate practice, calibrated delegation, feedback, and transfer | Capability baseline, practice assignment, delegation contract, and transfer test |
