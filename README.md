# Software Engineering Skills for Codex

This repository contains 15 reusable Codex skills for consequential software-engineering work: domain discovery, codebase and service design, technical decisions, platform capabilities, architecture evaluation, capacity and ownership readiness, migration planning, verification, operational telemetry, incident learning, technical growth, and retrospective redesign.

The collection is designed for real production systems and multi-team organizations. The skills do not prescribe one architecture style. They require evidence, expose uncertainty, respect decision ownership, and produce reviewable artifacts before material changes are made.

## What makes these skills different

- **Task-shaped, not topic-shaped:** each skill owns a concrete job and completion contract rather than acting as an encyclopedia.
- **Evidence before doctrine:** recommendations use code, change history, runtime behavior, incidents, domain scenarios, ownership, and constraints.
- **Authority-aware:** reviews and plans do not silently authorize deployments, data migrations, ownership changes, production experiments, or disciplinary decisions.
- **Enterprise-realistic:** workflows account for multiple teams, public contracts, regulated data, on-call responsibility, platform maturity, compatibility, and change governance.
- **Mixed-state aware:** migrations and architecture changes must explain old, transitional, and new states—not only the desired end state.
- **Progressively disclosed:** every `SKILL.md` contains the core workflow and loads one detailed reference only when needed.

## Skill catalog

| Skill | Use it when | Primary output |
| --- | --- | --- |
| [`domain-modeling`](domain-modeling/) | Business language conflicts with code, requirements arrive as proposed solutions, or teams need models and context boundaries | Scenario-tested vocabulary, model alternatives, context boundaries, translations, and decisions |
| [`codebase-design`](codebase-design/) | Designing a module, interface, seam, vertical slice, or testable decision/effect boundary | Compared interface designs, chosen seam, explicit contract, tests, and migration direction |
| [`improve-codebase-architecture`](improve-codebase-architecture/) | Scanning an existing codebase for the highest-leverage structural improvements | Ranked evidence-backed improvement portfolio; implementation remains a separate decision |
| [`review-service-boundaries`](review-service-boundaries/) | Considering service splits or merges, modular monolith boundaries, data ownership, or service sprawl | Boundary force matrix, scenario traces, options, recommendation, and prerequisites |
| [`evaluate-architecture-risks`](evaluate-architecture-risks/) | Reviewing an architecture proposal or vague claims such as “scalable” and “highly available” | Prioritized scenarios, risks, sensitivities, tradeoffs, unknowns, and evidence plan |
| [`plan-safe-system-change`](plan-safe-system-change/) | Planning API, schema, data, service, infrastructure, or other risky production changes | Phased coexistence plan with invariants, evidence, abort, retreat, ownership, and cleanup |
| [`build-verification-strategy`](build-verification-strategy/) | Deciding which tests, models, simulations, experiments, rollout checks, or telemetry are justified | Risk-to-evidence portfolio with falsifiable claims, oracles, method limits, and renewal triggers |
| [`audit-operational-feedback`](audit-operational-feedback/) | Reviewing service health, dashboards, paging, traces, ownership routing, or control paths | Measurement contracts, alert and diagnostic findings, control-path risks, and prioritized changes |
| [`facilitate-incident-learning`](facilitate-incident-learning/) | Running or reviewing a postmortem, outage debrief, near miss, or recurring-failure analysis | Evidence timeline, local perspectives, model gaps, protective capacity, and durable follow-through |
| [`drive-technical-decisions`](drive-technical-decisions/) | A consequential technical choice is contested, cross-team, repeatedly reopened, or lacks explicit authority and closure | Decision frame, authority map, option comparison, decision or escalation, execution, and revisit conditions |
| [`design-platform-capabilities`](design-platform-capabilities/) | Repeated engineering work may deserve a self-service platform capability, paved road, or shared interface | User-work evidence, capability boundary, honest interface, control layers, operating contract, and adoption slice |
| [`review-service-capacity-and-overload`](review-service-capacity-and-overload/) | Reviewing launch or peak readiness, queue growth, nonlinear latency, retries, failover headroom, or overload controls | End-to-end capacity model, falsification evidence, operating envelope, overload semantics, and recovery risks |
| [`coach-technical-growth`](coach-technical-growth/) | Turning engineering work, mentorship, delegation, or a stretch assignment into observable technical development | Capability baseline, practice assignment, delegation contract, feedback loop, and transfer test |
| [`review-service-ownership-readiness`](review-service-ownership-readiness/) | Adopting full-cycle ownership, transferring a service, changing on-call, or reducing specialist handoffs | Lifecycle ownership trace, cognitive-load and prerequisite assessment, ownership model, and transition gates |
| [`retrospective-redesign`](retrospective-redesign/) | Reconsidering a completed system from first principles to decide whether to prune, reshape, or rebuild | Learned requirements, simpler target design, current comparison, route, and authorized implementation |

## Choose the right skill

Start from the decision you need to make:

- “What does this business concept really mean?” → `$domain-modeling`
- “Where should this module interface or seam go?” → `$codebase-design`
- “Where is this codebase paying the most architectural interest?” → `$improve-codebase-architecture`
- “Should these responsibilities be one service or several?” → `$review-service-boundaries`
- “Which architecture assumptions are risky?” → `$evaluate-architecture-risks`
- “How can we make this migration survivable?” → `$plan-safe-system-change`
- “What evidence would justify confidence?” → `$build-verification-strategy`
- “Will our telemetry lead responders to the right decision?” → `$audit-operational-feedback`
- “What did this incident teach us about the system?” → `$facilitate-incident-learning`
- “How do we close this contested technical choice and make it executable?” → `$drive-technical-decisions`
- “Should this repeated engineering work become a platform capability?” → `$design-platform-capabilities`
- “Where will this service saturate, and what happens after it does?” → `$review-service-capacity-and-overload`
- “How can this engineer deliberately build the next technical capability?” → `$coach-technical-growth`
- “Can this team sustainably own the complete service lifecycle?” → `$review-service-ownership-readiness`
- “What would we build now if we retained the lessons but not the inherited design?” → `$retrospective-redesign`

Do not invoke every skill for every project. Use the smallest workflow that owns the current decision.

### Important distinctions

- Use `codebase-design` for one known design problem; use `improve-codebase-architecture` to discover and rank problems across an existing codebase.
- Use `domain-modeling` for meaning, behavior, and context; use `review-service-boundaries` for deployment, data, failure, and ownership granularity. A bounded context is not automatically a microservice.
- Use `evaluate-architecture-risks` to discover consequential risks through scenarios; use `build-verification-strategy` to choose evidence for already identified claims and risks.
- Use `audit-operational-feedback` for the live observe-decide-act loop; use `facilitate-incident-learning` after surprise to revise the operating model.
- Use `plan-safe-system-change` to sequence a change; it can consume decisions from any of the design or review skills.
- Use `drive-technical-decisions` for authority, participation, closure, and commitment; use `evaluate-architecture-risks` when the unresolved work is scenario-based technical analysis. A decision may consume an architecture-risk review.
- Use `design-platform-capabilities` for the platform's user-facing and operating capability; use `review-service-ownership-readiness` for whether responsibility, authority, cognitive load, specialist support, and production duty can move sustainably.
- Use `review-service-capacity-and-overload` for capacity boundaries and overload behavior; it is not a complete cloud-cost optimization or financial planning skill.
- Use `coach-technical-growth` for a development loop; do not use it for ratings, promotion, compensation, disciplinary action, or personality diagnosis.
- Use `retrospective-redesign` only after implementation or operation has produced material learning; use `codebase-design` or `improve-codebase-architecture` for ordinary prospective design and architecture assessment.

### Why these names are narrow

The names intentionally preserve the strongest evidence-backed boundary:

- `design-platform-capabilities`, not `design-internal-platform`: the skill designs useful self-service capabilities without pretending to settle the whole platform organization or team topology.
- `review-service-capacity-and-overload`, not `model-capacity-performance-cost`: the skill covers end-to-end capacity and overload rigorously but does not claim a complete cost-economic model.
- `coach-technical-growth`, not `grow-technical-capability`: the skill owns coaching and deliberate practice, not organization-wide talent governance.
- `review-service-ownership-readiness`, not `review-engineering-ownership`: the skill evaluates one service lifecycle and its enabling system rather than every kind of organizational ownership.

## Useful compositions

Skills compose when the decision genuinely crosses their boundaries.

### New or changing business capability

```text
domain-modeling
  -> evaluate-architecture-risks
  -> review-service-boundaries, when deployment/data ownership is in question
  -> codebase-design
  -> plan-safe-system-change
  -> build-verification-strategy
  -> audit-operational-feedback
```

### Existing codebase with recurring friction

```text
improve-codebase-architecture
  -> domain-modeling, if the friction is semantic
  -> codebase-design or review-service-boundaries
  -> plan-safe-system-change
  -> build-verification-strategy
```

### Incident-driven improvement

```text
facilitate-incident-learning
  -> audit-operational-feedback
  -> domain-modeling or improve-codebase-architecture
  -> plan-safe-system-change
  -> build-verification-strategy
```

These are routing examples, not mandatory stage gates.

### Contested technical choice

```text
evaluate-architecture-risks, when technical assumptions need deeper analysis
  -> drive-technical-decisions
  -> plan-safe-system-change
  -> build-verification-strategy
```

### Platform and service operating model

```text
design-platform-capabilities
  -> review-service-capacity-and-overload
  -> review-service-ownership-readiness
  -> plan-safe-system-change
  -> audit-operational-feedback
```

### Learning after delivery

```text
retrospective-redesign
  -> codebase-design, when the target needs a new module or seam
  -> plan-safe-system-change, when reshape or rebuild is authorized

coach-technical-growth
  -> one bounded work assignment
  -> feedback and transfer test
```

## Example prompts

Invoke a skill explicitly when you know which workflow you want:

```text
Use $review-service-boundaries to assess whether our Billing and Collections
services should be merged. Use repository history, traces, incidents, data
ownership, and on-call boundaries. Produce a recommendation only; do not edit.
```

```text
Use $plan-safe-system-change to plan this PostgreSQL-to-Spanner migration.
Include old/new coexistence, write authority, delayed consumers, correctness
oracles, abort criteria, recovery, communications, and cleanup.
```

```text
Use $facilitate-incident-learning on these incident artifacts. Separate facts,
recollections, and analysis; recover local reasoning; identify what prevented
a worse outcome; and propose a small improvement portfolio with verification.
```

Good prompts provide the decision, scope, constraints, available evidence, desired artifact, and whether implementation is authorized. For coaching, also state the learner's goal and privacy boundary. For ownership or platform work, name affected teams and operators. The skills identify important missing evidence instead of filling gaps with invented facts.

## Install and invoke

Codex can discover filesystem skills from repository, user, administrator, and system locations. For a repository-scoped installation, place selected skill folders under `<repo>/.agents/skills`. For a user-scoped installation, place them under `$HOME/.agents/skills`. Codex also supports symlinked skill folders.

For example, from PowerShell, install one skill for the current repository:

```powershell
New-Item -ItemType Directory -Force -Path '.agents\skills' | Out-Null
Copy-Item -LiteralPath 'D:\GitHub\zhuochun-skills\review-service-boundaries' `
  -Destination '.agents\skills\review-service-boundaries' -Recurse
```

Or link a skill into your user scope so edits in this repository remain live:

```powershell
New-Item -ItemType Directory -Force -Path "$HOME\.agents\skills" | Out-Null
New-Item -ItemType SymbolicLink `
  -Path "$HOME\.agents\skills\review-service-boundaries" `
  -Target 'D:\GitHub\zhuochun-skills\review-service-boundaries'
```

Check that the destination does not already exist before copying or linking. Symlink creation may depend on local Windows policy; copying is the simpler fallback.

Codex can activate a skill implicitly when the request matches its description. For explicit use, mention `$skill-name`; in Codex CLI or the IDE extension, `/skills` or `$` can help select one. If a newly installed or changed skill does not appear, restart Codex.

The official [Build skills](https://learn.chatgpt.com/docs/build-skills) guide documents current discovery locations, invocation, progressive disclosure, and distribution options. For organization-wide installable distribution, consider packaging this collection as a plugin rather than copying folders independently.

## Applying the skills in a large organization

### 1. Start read-only

Pilot a skill on a real completed or pending decision. Compare its artifact with the original review, migration, or incident outcome. Do not begin by granting production mutation authority.

### 2. Bind it to local evidence

Use repository instructions and organizational documentation to tell Codex where to find:

- domain glossaries, context maps, and ADRs;
- ownership catalogs and escalation paths;
- service objectives and measurement definitions;
- security, privacy, compliance, and change-control requirements;
- architecture diagrams and runtime topology;
- verification environments and evidence retention;
- incident review and reporting policy.

Keep durable repository conventions in `AGENTS.md` or the repository’s established guidance. Keep company-specific schemas and detailed policies out of these generic skills unless you intentionally maintain a private variant.

### 3. Preserve decision rights

Name the decision owner, affected owners, evidence owners, operators, and risk acceptor. A generated recommendation is an input to accountable judgment, not an approval token.

### 4. Calibrate depth to consequence

A local reversible refactor should not receive the same ceremony as a ledger migration or cross-region failover. Increase scenario breadth, evidence diversity, stakeholder participation, and independent review as consequence and irreversibility rise.

### 5. Measure usefulness

Evaluate whether a skill improves decisions, not whether it produces a long report. Useful measures include:

- important assumptions found before implementation;
- avoided synchronized changes or unsafe cutovers;
- clearer ownership and fewer handoff loops;
- escaped defects or incidents converted into earlier evidence;
- reduced time to orient, diagnose, or identify the responsible owner;
- temporary migration machinery removed on time;
- rejected recommendations that correctly respected local constraints.

### 6. Keep workflows current

Review a skill after incidents, major platform changes, governance changes, or repeated user workarounds. Tighten instructions when different users make the same avoidable mistake; add scripts only when deterministic repetition genuinely warrants them.

## Repository structure

```text
skill-name/
├── SKILL.md                 # Trigger description and core workflow
├── agents/
│   └── openai.yaml          # Display metadata and example invocation
└── references/
    └── ...                  # Detailed worksheet or template loaded as needed
```

The skills intentionally contain no executable scripts or external tool dependencies. Their work depends on the repository, observability, issue tracker, and organizational artifacts available in the environment where they are used.

## Quality and validation

Every skill in this repository:

- has a focused trigger description;
- keeps `SKILL.md` well below the progressive-disclosure size limit;
- provides one reusable worksheet or reference template;
- distinguishes evidence, inference, assumptions, and unknowns;
- includes authority and safety boundaries;
- defines completion gates and common failure modes;
- has valid `agents/openai.yaml` metadata;
- is expected to pass the Codex `skill-creator` structural validator before publication.

The original nine-skill collection was exercised read-only against three enterprise scenarios: a high-throughput order-platform decomposition, a multi-region ledger storage migration, and a subscription-renewal incident involving ambiguous domain state and queue overload. The six later additions are deliberately narrower: their workflows require observable evidence, explicit authority boundaries, concrete outputs, failure modes, and completion gates rather than relying on role-level advice.

Before organization-wide adoption, forward-test the selected skill against at least two local artifacts or completed decisions. One case should be ordinary and one should exercise a boundary condition: an irreversible decision, a legitimate platform exception, failure-state capacity, constrained ownership, unsafe stretch work, or a redesign that should remain a prune rather than become a rebuild.

## Contributing

Keep changes focused on decision quality:

1. Start with a real prompt or failure case.
2. Identify what another capable agent would not know without the skill.
3. Add the smallest instruction or reference that closes that gap.
4. Preserve explicit inputs, outputs, authority boundaries, and quality gates.
5. Validate structure and forward-test on a fresh scenario without leaking the intended answer.
6. Avoid turning skills into architecture doctrine, company-policy replicas, or collections of generic advice.
