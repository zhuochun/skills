# Example prompts

These examples show how to name the decision, subject of interest, work unit,
constraints, evidence, desired artifact, and mutation authority when invoking a
skill explicitly. Keep subject, decision lens, and coordination unit separate;
see the [scope vocabulary](skill-boundaries.md#scope-vocabulary).


```text
Use $product-opportunity-discovery to investigate this request for an AI reply
assistant before we commit engineering capacity. Recover the desired outcome and
customer opportunity, distinguish anecdotes from prevalence, compare materially
different solutions, identify the riskiest assumptions, and design the cheapest
credible learning test. Do not contact customers or build production code.
```

```text
Use $trace-end-to-end-journey to walk me through how an order moves from
customer checkout through merchant acceptance, warehouse fulfillment, carrier
handoff, and delivery. Recover what the current evidence supports, keep one
stable step spine across product, operational, domain, system, and interface
views, show a flowchart and cross-view matrix, trace rejection and failed
delivery, and mark every inferred or disputed step.
```

```text
Use $prototype-to-learn to test whether this concept-review state model feels
right before we implement it. Build a disposable interactive prototype against
the real read-only notes, show the full relevant state after each action,
include reset and revealing edge cases, add one repository-native run command,
and leave production behavior unchanged.
```

```text
Use $research-synthesis to determine what rigorous papers, standards, and
first-party operational reports support about cost-aware cloud architecture.
Treat the supplied source packet and this repository as inside the authorized
source boundary, preserve exact provenance for each consequential claim,
distinguish empirical evidence from normative and vendor guidance, explain
contradictions and transfer limits, and stop with a bounded answer and
unresolved gaps. Do not make the architecture decision.
```

```text
Use $teach-concepts to help me understand why event-time watermarks exist. I
understand batch processing but not how a streaming system reasons about
out-of-order events. Start from that model, trace one concrete example, expose
where a useful analogy breaks, and then give me a changed case that tests
whether I can predict when a result is provisional. Do not turn this into a
written tutorial or claim mastery before I respond.
```

```text
Use $product-opportunity-prioritization to recommend the next-quarter product
portfolio for checkout recovery. Reframe feature requests as opportunities,
separate mandatory reliability and enabling work, compare only defensible peer
groups, expose evidence and uncertainty, fit the selection to capacity, explain
deferred work, and define evidence-timed continue, pivot, or stop reviews.
```

```text
Use $architecture-surface-mapping to orient me to this inherited payments service
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
Use $architecture-assessment to decide which structural improvement deserves
investment first across this checkout capability. Declare the included
services, codebases, data paths, and ownership boundary; compare recurring
change, defect, runtime, testing, and ownership pressure; rank a small
portfolio; and stop before focused redesign or implementation.
```

```text
Use $architecture-assessment in a counterview posture for this fresh-eye
portfolio reassessment. Reconsider which structural opportunity deserves
investment first. Preserve supported behavior and hard constraints, but treat
the current topology and prior recommendations as candidates rather than
vetoes. Build the evidence baseline before reconciling earlier conclusions,
return one ranked portfolio, and state which prior decisions remain justified
or should be reopened.
```

```text
Use $retrospective-architecture-review to reconsider this completed checkout
capability after six months of repeated changes and operating workarounds.
Establish what we learned, recover durable commitments, compare the current
design with credible alternatives, and recommend whether to retain, quarantine,
prune, reshape, or rebuild it. Do not modify the system.
```

```text
Use $technical-program-orchestration to steer this checkout modernization
across the web, identity, payments, ledger, data, and support teams. Define the
outcome and canonical program surface, give each workstream a driver and current
frontier, shape vertical increments, map integration contracts and the current
constraint, and keep replanning in the existing issue tracker without copying
local workstream artifacts into status theater.
```

```text
Use $architecture-risk-evaluation to challenge this proposed multi-region
ledger architecture against correctness, availability, recovery, latency,
operability, and cost scenarios. Identify evidence needed before a decision.
```

```text
Use $migration-planning to plan this PostgreSQL-to-Spanner migration.
Treat the target engine and compatibility policy as accepted inputs. Model old,
transitional, and target representations; write and read authority; backfill and stale
executors; delayed consumers; cutover and retreat; risk-specific retireability
and retirement evidence; and cleanup. Do not turn the state model into a
project schedule.
```

```text
Use $software-contract-evolution to evolve this payments event without forcing
a coordinated consumer release. Recover declared and observed reliance, compare
compatible options, define semantic translation, prevent new v1 adoption, plan
consumer migration support, and require risk-specific evidence before retiring v1.
```

```text
Use $software-change-specification to define the refund-approval change before
we delegate implementation. Recover current and desired behavior, use boundary
examples to expose policy ambiguity, name preserved invariants and affected
consumers, separate accepted constraints from proposed implementation, produce
keyed acceptance claims, and state whether the change is ready. If orchestration
supplies a canonical specification, update only the owned specification delta.
Do not edit code.
```

```text
Use $specification-review to independently review this fixed product spec
before implementation. Work read-only. Find contradictions, ambiguous or
undefined terms, hidden owner decisions, unsupported claims, missing boundary
and failure behavior, and ways a faithful implementation could satisfy the
wording while violating the intended outcome. Lead with prioritized findings,
route substantive product, domain, architecture, or contract judgments to their
owners, and state the artifact's readiness limits without rewriting or approving it.
```

```text
Use $software-change-orchestration to guide this atlas feature from the rough
idea through the smallest necessary specification, design, implementation,
review, and verification work in authorized mode. You may maintain the canonical
specification, implement the accepted scope, delegate fresh read-only review,
and run verification through closure without pausing for workflow approval.
Escalate only for a material scope change, new external or production action,
destructive action, or a decision that changes supported behavior.
```

```text
Use $scoped-change-implementation to add refund approval through one coherent
vertical slice. Preserve unrelated work and current compatibility, use TDD at
the stable behavior seam when useful, implement the smallest coherent change,
run focused then affected checks, and report any design assumption that fails.
```

```text
Use $software-failure-diagnosis to investigate this intermittent duplicate
charge without changing behavior. Preserve the symptom and environment,
construct the tightest faithful evidence loop, compare causal hypotheses, and
report the supported mechanism, counterevidence, confidence, and repair seam.
```

```text
Use $incident-response-coordination to support the accountable incident
commander for this multi-service checkout outage. Establish the impact trend,
stabilization objective, delegated workstreams, decision and action record,
communication cadence, responder handoffs, recovery criteria, and the agent's
authority boundary. Do not self-appoint as commander or declare resolution.
```

```text
Use $behavior-preserving-refactoring to move settlement rules behind one
module owner without changing supported behavior. Establish characterization
evidence, refactor green to green, migrate confidence toward stable seams,
remove the old authority, and state the limits of equivalence demonstrated.
```

```text
Use $code-review to review this branch against the feature intent,
repository constraints, consumer contracts, failure semantics, maintainability,
and claimed evidence. Work read-only and report only prioritized actionable
findings with tight locations and residual risks.
```

```text
Use $verification-execution to run the named VER claims for this migration.
Validate any supplied evidence index, reuse matching evidence, execute missing
or invalidated claims against frozen methods and oracles, preserve exact
invocations and raw evidence, classify each claim, stop on safety thresholds,
and leave cutover authority with the accountable owner.
```

```text
Use $technical-writing to turn the inspected implementation, tests, and
existing documentation into a technical blog post explaining why this queue
consumer acknowledges only after durable output. Write for experienced
application engineers, preserve source links and uncertainty, use one concrete
failure trace, verify code and command examples, and keep my existing voice.
Do not invent production results or make a new delivery-semantics decision.
```

```text
Use $handoff to compact this session for a fresh agent who will finish the
documentation change. Recheck the current worktree and executed evidence,
preserve accepted decisions, unresolved authority, the immediate frontier, and
canonical paths without copying their contents, and redact sensitive material.
Keep persistent state in an existing canonical resume surface and put only the
session delta in a separate artifact. The next session will run on this machine,
so save any needed ephemeral handoff in the operating system's temporary
directory.
```

Good prompts name the decision, scope, constraints, evidence, desired artifact, and whether implementation is authorized. The skills should identify missing evidence rather than filling gaps with invented facts.
