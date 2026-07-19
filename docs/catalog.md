# Skill catalog

Use this catalog to choose the skill that owns the decision, artifact, or
action currently missing. For neighboring skills whose boundaries are easy to
confuse, continue to the [skill boundaries and relationships](skill-boundaries.md).

## Invocation policy

Keep implicit invocation for a small set of front doors that represent distinct top-level user intents:

- `software-change-orchestration`
- `architecture-surface-mapping`
- `scoped-change-implementation`
- `behavior-preserving-refactoring`
- `software-failure-diagnosis`
- `code-review`
- `technical-growth-coaching`

Set `policy.allow_implicit_invocation: false` in `agents/openai.yaml` for every other catalog skill. These specialist, evaluator, planning, and control workflows remain available through explicit `$skill-name` invocation and through an active front-door workflow's routing guidance, but their metadata does not compete in Codex's default skill context.

Treat this as an invocation policy, not an importance ranking or a mandatory lifecycle. Add another implicit front door only when it owns a common top-level intent that the existing front doors cannot route reliably without already knowing the specialist name.

## Choose by the artifact you need

Do not start from a fashionable method or invoke every skill as a stage gate. Ask what decision or artifact is currently missing.

### Understand and design

| Skill | It owns | Primary output |
| --- | --- | --- |
| [`product-opportunity-discovery`](../skills/product-opportunity-discovery/) | Customer opportunity and solution-direction learning before heavy implementation | Decision frame, opportunity model, hypotheses, alternatives, learning evidence, and bounded disposition |
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
| [`technical-decision-making`](../skills/technical-decision-making/) | Authority, participation, option comparison, closure, and commitment | Decision frame, authority map, decision or escalation, execution, and revisit conditions |

### Plan, coordinate, and control change

| Skill | It owns | Primary output |
| --- | --- | --- |
| [`software-change-specification`](../skills/software-change-specification/) | Pre-implementation intent, behavior delta, scope, invariants, affected surfaces, acceptance claims, unknowns, and readiness for one bounded change | Source-faithful specification delta, representative examples, `CHG-*` claims, routes, and readiness classification |
| [`software-change-orchestration`](../skills/software-change-orchestration/) | Resumable routing and repository-backed state across a bounded software change | Outcome and authorization boundary, derived assurance posture and workflow budget, evolving canonical specification, exclusive executor route, reusable evidence, and durable handoff state when needed |
| [`technical-program-orchestration`](../skills/technical-program-orchestration/) | Multi-workstream outcome coherence, owned local loops, dependency and integration flow, shared constraints, and replanning | Canonical program surface, delivery topology, workstream contracts and frontiers, integration state, evidence trend, and closure |
| [`software-contract-evolution`](../skills/software-contract-evolution/) | Shared contract semantics, compatibility, translation, deprecation, consumer adoption, and retirement policy | Actual-contract frame, compatibility matrix, evolution choice, adoption obligations, and retirement evidence |
| [`controlled-release-design`](../skills/controlled-release-design/) | Feature flags, exposure assignment, cohorts, release phases, and kill controls | Release contract, control topology, evidence, phase criteria, retreat, and cleanup |
| [`migration-planning`](../skills/migration-planning/) | Transition states for consequential API, schema, data, service, and infrastructure migrations | Phased coexistence plan with invariants, evidence, abort, retreat, and cleanup |
| [`verification-strategy-design`](../skills/verification-strategy-design/) | Matching engineering claims and risks to falsifying evidence | Upstream-linked risk-to-evidence portfolio with methods, oracles, limits, evidence gaps, and renewal triggers |

### Implement, diagnose, and verify

| Skill | It owns | Primary output |
| --- | --- | --- |
| [`scoped-change-implementation`](../skills/scoped-change-implementation/) | Authorized bounded behavior change through coherent vertical slices | Maintained code, behavior evidence, completed ownership, deviations, and remaining gaps |
| [`behavior-preserving-refactoring`](../skills/behavior-preserving-refactoring/) | Structural improvement without intentional supported-behavior change | Consolidated ownership, refactoring-safe evidence, retired old paths, and equivalence limits |
| [`software-failure-diagnosis`](../skills/software-failure-diagnosis/) | Causal investigation of bugs, regressions, intermittent failures, and performance degradation | Symptom contract, evidence loop, competing hypotheses, supported cause, and repair boundary |
| [`code-review`](../skills/code-review/) | Independent read-only review of a bounded software change | Prioritized evidence-backed findings, questions, scope limits, and residual risks |
| [`verification-execution`](../skills/verification-execution/) | Execution of fixed verification claims, methods, and oracles | Per-claim reused, rerun, invalidated, or omitted dispositions; raw evidence; counterexamples; cleanup; and unresolved gaps |

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
