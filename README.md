# Software Engineering Skills for Codex

This repository contains 18 reusable Codex skills for consequential software-engineering work. Each skill owns one kind of reasoning artifact: an orientation map, model, design, assessment, decision, transition or release plan, verification strategy, operational audit, learning record, or coaching loop.

The collection is designed for production systems and multi-team organizations. The skills require evidence, expose uncertainty, preserve accountable decision rights, and distinguish designing an artifact from independently evaluating whether it works.

## Choose by the artifact you need

Do not start from a fashionable method or invoke every skill as a stage gate. Ask what decision or artifact is currently missing.

### Understand and design

| Skill | It owns | Primary output |
| --- | --- | --- |
| [`service-surface-mapping`](service-surface-mapping/) | Rapid evidence-ranked orientation to an unfamiliar service | Critical-surface map, path traces, contradictions, confidence, and next probes |
| [`domain-modeling`](domain-modeling/) | Business meaning, behavior, invariants, vocabulary, and context boundaries | Scenario-tested model, context boundaries, translations, and unresolved questions |
| [`service-boundary-design`](service-boundary-design/) | Logical, deployment, data, failure, and ownership boundaries | Boundary force matrix, scenario traces, options, recommendation, and prerequisites |
| [`deep-module-design`](deep-module-design/) | Modules, interfaces, seams, state ownership, and testable contracts | Compared interfaces, selected seam, explicit contract, tests, and adoption direction |
| [`platform-capability-design`](platform-capability-design/) | Self-service internal capabilities, paved roads, controls, and escape hatches | User-work evidence, capability boundary, interface, operating contract, and adoption slice |
| [`observability-design`](observability-design/) | Prospective business, service, dependency, infrastructure, and control evidence | Execution-path map, measurement contracts, navigation, alerts, correlation, and lifecycle |

### Assess, engineer, and decide

| Skill | It owns | Primary output |
| --- | --- | --- |
| [`codebase-architecture-assessment`](codebase-architecture-assessment/) | Portfolio-level diagnosis of an existing codebase | Ranked evidence-backed architecture improvement portfolio |
| [`architecture-risk-evaluation`](architecture-risk-evaluation/) | Scenario-based evaluation of architecture assumptions and quality tradeoffs | Risks, non-risks, sensitivities, tradeoffs, unknowns, and evidence needs |
| [`service-capacity-engineering`](service-capacity-engineering/) | End-to-end demand, capacity, headroom, overload, and recovery behavior | Capacity model, operating envelope, falsification evidence, and overload controls |
| [`service-ownership-design`](service-ownership-design/) | Sustainable lifecycle ownership and its enabling conditions | Ownership trace, cognitive-load assessment, model options, prerequisites, and transition |
| [`technical-decision-making`](technical-decision-making/) | Authority, participation, option comparison, closure, and commitment | Decision frame, authority map, decision or escalation, execution, and revisit conditions |

### Change and verify

| Skill | It owns | Primary output |
| --- | --- | --- |
| [`controlled-release-design`](controlled-release-design/) | Feature flags, exposure assignment, cohorts, release phases, and kill controls | Release contract, control topology, evidence, phase criteria, retreat, and cleanup |
| [`high-risk-change-planning`](high-risk-change-planning/) | Transition states for risky API, schema, data, service, and infrastructure changes | Phased coexistence plan with invariants, evidence, abort, retreat, and cleanup |
| [`verification-strategy-design`](verification-strategy-design/) | Matching engineering claims and risks to falsifying evidence | Risk-to-evidence portfolio with methods, oracles, limits, and renewal triggers |

### Operate, learn, and renew

| Skill | It owns | Primary output |
| --- | --- | --- |
| [`operational-feedback-audit`](operational-feedback-audit/) | The live telemetry-to-decision-to-action loop | Contract counterexamples and deltas, alert and diagnostic findings, routing and control-path risks |
| [`incident-learning`](incident-learning/) | Learning from incidents, near misses, and operational surprises | Evidence timeline, local perspectives, model gaps, protective capacity, and branching follow-through |
| [`retrospective-redesign`](retrospective-redesign/) | First-principles redesign after implementation or operational learning | Learned requirements, simpler target, current comparison, and prune/reshape/rebuild route |

### Develop technical capability

| Skill | It owns | Primary output |
| --- | --- | --- |
| [`technical-growth-coaching`](technical-growth-coaching/) | Deliberate practice, calibrated delegation, feedback, and transfer | Capability baseline, practice assignment, delegation contract, and transfer test |

## The relationship model

The skills form a directed graph. A downstream skill consumes an upstream artifact only when the decision warrants it.

```mermaid
flowchart LR
    SM["Service surface mapping"] --> DM["Domain modeling"]
    SM --> SB["Service boundary design"]
    SM --> MD["Deep module design"]
    SM --> OD["Observability design"]

    DM --> SB
    SB --> MD["Deep module design"]
    CA["Codebase architecture assessment"] --> DM
    CA --> SB
    CA --> MD

    PC["Platform capability design"] --> AR["Architecture risk evaluation"]
    SB --> AR
    MD --> AR
    CAP["Service capacity engineering"] --> AR
    OWN["Service ownership design"] --> AR

    AR --> TD["Technical decision making"]
    TD --> HR["High-risk change planning"]
    MD --> OD
    SB --> OD
    MD --> CR["Controlled release design"]
    MD --> VS["Verification strategy design"]
    HR -.-> CR
    HR --> OD
    HR --> VS
    CR --> EX["Implementation and evidence execution"]
    OD --> EX
    VS --> EX
    HR --> EX
    EX --> DEC["Accountable promotion or cutover"]
    DEC --> OF["Operational feedback audit"]
    OF -.-> OD

    OF --> IL["Incident learning"]
    IL --> OD
    IL --> VS
    IL --> CAP
    IL --> OWN
    IL --> CR
    IL --> HR
    IL -.-> RR["Retrospective redesign"]
    RR --> DM
    RR --> SB
    RR --> MD
```

This is not a mandatory lifecycle. For example, a local reversible module change may need only `deep-module-design` and ordinary repository verification. A multi-service feature may need observability and controlled release without a heavyweight architecture review. A multi-region ledger migration may require architecture evaluation, a decision record, high-risk change planning, controlled exposure, layered verification, and an operational feedback audit.

## Design and evaluation are different jobs

A skill that creates an artifact should not silently certify that artifact. For consequential work, use a separate evaluation pass with explicit claims, independent evidence, and permission to reject or revise the design.

| Produced artifact | Appropriate evaluator or challenge |
| --- | --- |
| Service surface map | Source-owner review and focused follow-up; orientation does not certify readiness or safety |
| Domain, service-boundary, module, or platform design | `architecture-risk-evaluation` for consequential quality and operating scenarios |
| Codebase improvement proposal | Local evidence review, followed by the relevant focused design skill |
| Architecture option comparison | `technical-decision-making` for accountable weighting and closure |
| Observability design | Instrumentation and signal verification, then `operational-feedback-audit` against representative runtime use |
| Controlled release design | `verification-strategy-design` for claims and phase evidence; accountable owners retain promotion authority |
| High-risk transition plan | `verification-strategy-design` for falsifiable phase and invariant evidence |
| Running telemetry and response system | `operational-feedback-audit` against observed decisions and incidents |
| Completed implementation | Executed repository and independent evidence when warranted; `retrospective-redesign` only when accumulated learning justifies reconsidering the design |

Separation does not require bureaucracy or different people for every local change. It requires a distinct contract: the evaluator receives the artifact and evidence, can identify missing claims, and is not required to defend the producer's original choices. Increase independence with consequence, irreversibility, and uncertainty.

### Keep cross-skill references readable

When skills compose in one task, keep the decision context in flow instead of creating a handoff file. Use a stable namespaced key together with its plain-language label, for example `OBS-settlement-age — Settlement completion age`. Repeat both whenever the contract is cited. The prefix identifies the contract family; the label preserves human meaning.

## Important distinctions

### Orientation versus assessment

Use `service-surface-mapping` to become safely useful in an unfamiliar service: trace critical workflows, reconcile declared and observed dependencies, locate controls and owners, and rank the next probes. It does not score readiness or prescribe a portfolio.

Use `codebase-architecture-assessment` to diagnose and rank structural improvement opportunities across a codebase. Use `architecture-risk-evaluation` to challenge a consequential proposal against stakeholder and quality scenarios.

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

### Codebase assessment versus focused design

Use `codebase-architecture-assessment` to discover and rank structural problems across an existing codebase. Use `deep-module-design` after one module, interface, seam, or vertical slice has been selected for design.

### Architecture risk versus high-risk change

Use `architecture-risk-evaluation` to ask whether the proposed target architecture can satisfy important scenarios and quality drivers. Use `high-risk-change-planning` after a target direction exists to design survivable old, transitional, and new states.

```text
architecture-risk-evaluation
  -> technical-decision-making
  -> high-risk-change-planning
  -> co-design verification, observability, and optional controlled release
  -> implementation, executed evidence, and accountable cutover
```

### Controlled release versus high-risk change

Use `controlled-release-design` to define exposure assignment, feature-flag semantics, cohorts, promotion, hold, abort, kill controls, and flag cleanup. Use `high-risk-change-planning` when the larger problem is a staged migration with data authority, coexistence, irreversible effects, consumer coordination, cutover, and recovery. When both apply, controlled release is an optional nested subplan of the authoritative transition plan; many ordinary feature releases need controlled exposure without the full migration workflow, and some migrations need no exposure subplan.

### Observability design versus operational feedback audit

Use `observability-design` before implementation or release to define normative measurement contracts, correlation, health entry points, diagnostic navigation, alerts, and control evidence. Use `operational-feedback-audit` after representative operation to recover those contracts, compare intended and deployed semantics, and report runtime counterexamples and required design deltas. A missing contract is an audit finding, not permission for the auditor to create and certify its own replacement.

```text
observability-design
  -> implementation, with controlled release when applicable
  -> operational-feedback-audit
  -> revise observability design
```

The designer and auditor may be the same person for low-risk work, but the audit must use distinct runtime evidence and retain permission to reject the original assumptions.

### Observability, verification, and operational feedback

- `observability-design` owns the runtime evidence substrate: signal semantics, correlation, navigation, alerts, and control visibility.
- `verification-strategy-design` owns the broader claim-to-evidence portfolio. It may select tests, static checks, formal methods, simulation, load tests, failure injection, rollout evidence, and production telemetry according to risk.
- `operational-feedback-audit` evaluates whether the running telemetry, ownership routing, diagnosis, and control paths actually produced correct operational action.

Observability can supply evidence to verification, but telemetry is not a substitute for earlier checks. An operational audit can reject both a weak observability design and the assumption that a green signal proved the system healthy.

### Capacity, ownership, and platform capability

- `platform-capability-design` creates a self-service capability and its operating contract.
- `service-capacity-engineering` tests whether useful work completes within an explicit demand and overload envelope.
- `service-ownership-design` tests whether responsibility moves with authority, capability, feedback, staffing, and specialist support.

These are complementary lenses, not one universal platform workflow.

## Common compositions

### New or changing business capability

```text
domain-modeling
  -> service-boundary-design, when deployment/data/ownership is in question
  -> deep-module-design
  -> architecture-risk-evaluation, when consequences justify it
  -> technical-decision-making
  -> high-risk-change-planning, when transition risk justifies it
  -> co-design observability, verification, and controlled release when they apply
  -> implementation and evidence execution
  -> accountable promotion, abort, or risk decision
  -> operational-feedback-audit after release
```

### Feature spanning multiple services

```text
domain-modeling
  -> service-boundary-design
  -> deep-module-design in each affected codebase
  -> co-design:
       observability-design for end-to-end and component evidence
       controlled-release-design for authoritative assignment and mixed states
       verification-strategy-design for claims, methods, and oracles
  -> implementation and evidence execution
  -> accountable promotion or abort
  -> operational-feedback-audit after representative use
```

Do not let each service independently decide feature exposure when the workflow requires a consistent cohort. Assign once, propagate context, observe end-to-end outcomes, and retain local kill controls only where they govern distinct hazardous effects.

### Inheriting a brownfield service

```text
service-surface-mapping
  -> domain-modeling, service-boundary-design, or deep-module-design for the discovered problem
  -> verification-strategy-design for characterization and change claims
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
  -> high-risk-change-planning, only for consequential transition work
```

### Contested technical choice

```text
architecture-risk-evaluation, when assumptions need technical analysis
  -> technical-decision-making
  -> high-risk-change-planning
  -> co-design verification, observability, and optional controlled release
  -> implementation and evidence execution
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
incident-learning
  -> operational-feedback-audit for detection, diagnosis, paging, or routing gaps
  -> observability-design for signal-contract gaps
  -> verification-strategy-design for escaped behavior or evidence gaps
  -> domain-modeling, codebase-architecture-assessment, deep-module-design,
     or service-boundary-design for focused model or structure gaps
  -> service-capacity-engineering for overload and recovery gaps
  -> controlled-release-design or high-risk-change-planning for rollout gaps
  -> service-ownership-design or technical-decision-making for authority gaps
  -> update a runbook, automation, or local process directly when sufficient
  -> retrospective-redesign only when accumulated learning invalidates the foundational design
```

One incident may produce several independent branches. Do not force every finding through retrospective redesign or through one serial workflow.

### Retrospective redesign by scale

```text
module or capability
  -> deep-module-design as the primary lens

service or subsystem
  -> service-boundary-design when deployment, data, failure, or ownership is involved
  -> architecture-risk-evaluation for consequential quality claims

multi-service system or wider estate
  -> architecture-risk-evaluation
  -> technical-decision-making for accountable closure when needed
  -> high-risk-change-planning and independent verification before consequential cutover
```

The redesign agent proposes the scale, evidence, and route. The accountable human confirms or changes that classification and owns cutover or residual-risk acceptance. Builder-run checks may support the decision but do not become an independent equivalence verdict merely because the same agent reports them.

These are routing examples, not mandatory stage gates.

## Example prompts

```text
Use $service-surface-mapping to orient me to this inherited payments service
before I change refund behavior. Time-box the investigation, trace the refund
and recovery paths, distinguish observed from declared evidence, and identify
the next focused review. Do not change anything.
```

```text
Use $observability-design to design business, service, dependency,
infrastructure, and control signals for this feature across the API, queue,
worker, and ledger service. Include correlation, mixed-release states, alert
routing, privacy, rollout evidence, and telemetry retirement.
```

```text
Use $controlled-release-design to define one authoritative feature assignment
for this multi-service workflow. Include flag states, cohort selection,
compatibility, irreversible effects, business and technical guardrails, phase
promotion, abort, compensation, and cleanup.
```

```text
Use $service-boundary-design to assess whether Billing and Collections should
remain separate services. Use domain scenarios, change history, data authority,
runtime dependencies, incidents, and on-call ownership. Recommend only.
```

```text
Use $architecture-risk-evaluation to challenge this proposed multi-region
ledger architecture against correctness, availability, recovery, latency,
operability, and cost scenarios. Identify evidence needed before a decision.
```

```text
Use $high-risk-change-planning to plan this PostgreSQL-to-Spanner migration.
Include coexistence, write authority, delayed consumers, correctness oracles,
abort criteria, recovery, communications, and cleanup.
```

Good prompts name the decision, scope, constraints, evidence, desired artifact, and whether implementation is authorized. The skills should identify missing evidence rather than filling gaps with invented facts.

## Install and invoke

For a repository-scoped installation, place selected skill folders under `<repo>/.agents/skills`. For a user-scoped installation, place them under `$HOME/.agents/skills`. Codex also supports symlinked skill folders.

```powershell
New-Item -ItemType Directory -Force -Path '.agents\skills' | Out-Null
Copy-Item -LiteralPath 'D:\GitHub\zhuochun-skills\service-boundary-design' `
  -Destination '.agents\skills\service-boundary-design' -Recurse
```

Or link a skill so repository edits remain live:

```powershell
New-Item -ItemType Directory -Force -Path "$HOME\.agents\skills" | Out-Null
New-Item -ItemType SymbolicLink `
  -Path "$HOME\.agents\skills\service-boundary-design" `
  -Target 'D:\GitHub\zhuochun-skills\service-boundary-design'
```

Check that the destination does not already exist before copying or linking. Symlink creation may depend on local Windows policy. Invoke explicitly with `$skill-name`; restart Codex if a newly installed or renamed skill does not appear.

## Applying the collection in a large organization

1. Start read-only on a completed or pending real decision.
2. Bind the skill to local repositories, domain language, ADRs, ownership, telemetry, incidents, policies, and supported environments.
3. Preserve the decision owner, affected owners, operators, evidence owners, and risk acceptor.
4. Increase scenario breadth, independent evaluation, and retained evidence with consequence and irreversibility.
5. Measure improved decisions and avoided failure, not report length.
6. Review a skill after incidents, platform or governance changes, and repeated user workarounds.

## Repository structure and quality

```text
skill-name/
├── SKILL.md
├── agents/
│   └── openai.yaml
└── references/
    └── ...
```

Every skill should have a focused trigger, explicit inputs and outputs, authority boundaries, quality gates, failure modes, valid UI metadata, and a passing `skill-creator` structural validation. Forward-test consequential workflows against at least two realistic artifacts: one ordinary case and one boundary condition where the correct result may be to stop, retain a control, or use a smaller skill.
