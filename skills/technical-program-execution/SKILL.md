---
name: technical-program-execution
description: Coordinate multi-team technical programs from an outcome and delivery topology through dependency-aware vertical slices, integration, evidence, replanning, and closure. Use when a feature, platform initiative, migration, reliability program, or cross-service change spans interdependent teams or workstreams; when task breakdown, critical dependencies, integration sequencing, decision latency, blockers, or throughput need active management; or when a program shows substantial activity but weak end-to-end progress. Do not use for a single-team local plan, product strategy, or one contested technical decision.
---

# Technical Program Execution

Steer a multi-team engineering initiative as a delivery feedback system. Optimize for verified end-to-end progress, early integration, and reduced waiting rather than task volume, universal utilization, or reporting ceremony.

## Preserve authority and the working flow

- Facilitate, analyze, and recommend by default. Identify the accountable program outcome owner, technical owners, decision owners, and risk acceptors; do not silently assign teams, dates, scope, or risk.
- Distinguish a target, forecast, estimate, and commitment. Keep assumptions, exclusions, uncertainty, and the consequence of change attached to each.
- Use the organization's existing issue tracker, roadmap, program board, decision log, and communication channels. Do not create a parallel reporting system or mandatory handoff document.
- Let the agent maintain state, surface contradictions, draft updates, and propose replanning within the delegated scope. Leave business priority, staffing, consequential scope, and residual-risk decisions with accountable people.
- For `discuss`, `review`, `assess`, or `plan`, stay read-only. Modify trackers, repositories, schedules, or external systems only when the request authorizes those writes.

## Execution workflow

1. **Define the outcome contract.** State the user or business outcome, observable success, program boundary, deadline or constraint, non-goals, affected services and teams, accountable owner, and the cost of delay or failure. Reject an activity list with no outcome.
2. **Map the delivery topology.** Trace the value path through teams, services, data, dependencies, environments, approvals, vendors, and operating owners. Classify dependencies as product, technical, decision, information, resource, external, or merely conventional. Identify integration points and the current limiting constraint.
3. **Shape vertical increments.** Decompose work into the smallest independently demonstrable slices that cross the necessary layers and retire useful uncertainty. For each slice, name its outcome, owner, inputs, consumer or interface, evidence, integration point, and completion condition. Include enablement, observability, verification, rollout, documentation, ownership, and cleanup when they are part of done.
4. **Design concurrency deliberately.** Separate work that can progress independently from work that only looks parallel while sharing decisions, state, environments, reviewers, or integration points. Limit work in progress around the current constraint. Do not maximize team busyness at the expense of end-to-end throughput.
5. **Sequence for learning and integration.** Prefer a tracer path, risk-retiring slice, or early consumer integration over building every component horizontally and joining them near launch. Make hard dependencies, compatibility windows, critical and near-critical paths, and synchronization points visible without pretending uncertain work has deterministic duration.
6. **Establish decision and escalation paths.** Name decisions that can block several workstreams, the decider, required input, latest useful decision time, and escalation condition. Use `technical-decision-making` for contested consequential closure; do not turn every local choice into program governance.
7. **Set evidence-based checkpoints.** Define milestones as demonstrated capability, integrated behavior, retired risk, or an operating result—not percent complete. Choose a cadence that exposes dependency waiting, rework, integration failure, decision latency, scope change, and confidence movement early enough to act.
8. **Run the control loop.** At each review, compare evidence with the outcome and plan; identify the current constraint; stop, split, resequence, escalate, or narrow work; and record why forecasts or commitments changed. Preserve superseded assumptions instead of rewriting history to make the plan appear stable.
9. **Compose specialized work without taking it over.** Let `high-risk-change-planning` own each consequential transition, `controlled-release-design` own exposure control, `observability-design` own measurement contracts, and `verification-strategy-design` own claims and oracles. Reference their stable key plus plain-language label in the existing work surface rather than copying whole plans.
10. **Close the program deliberately.** Verify the outcome, consumer adoption, operational ownership, remaining risk, cleanup, and support transition. Retire temporary coordination, compatibility, flags, environments, dashboards, and recurring meetings that no longer earn their cost. Route accumulated architectural learning to `architecture-consolidation-review` only when foundational design should be reconsidered.

## Keep the plan in flow

Maintain the smallest current view that lets teams act:

- outcome and evidence trend;
- active vertical slices and owners;
- dependency and integration state;
- current constraint and waiting work;
- decisions due, risks, and escalation conditions;
- forecast or commitment changes with their assumptions;
- next interventions and review point.

Update the existing source of truth when authorized. Otherwise return a compact view suitable for the user to apply there. Stable keys support cross-skill references, but every key must retain its plain-language label.

## Quality gates

- One accountable outcome and its evidence are explicit.
- The plan traces end-to-end delivery across all material teams and services.
- Work is sliced into independently demonstrable increments rather than component queues alone.
- Every hard dependency has a provider, consumer, need, integration point, and escalation path.
- Integration and verification happen before the final convergence milestone.
- Decision authority, risk acceptance, and execution ownership remain distinct.
- Status exposes waiting, rework, uncertainty, and the current constraint—not only completed tasks.
- Forecast changes preserve their assumptions and do not become silent commitments.
- Specialized plans have one owner and remain traceable without duplicated artifacts.
- Completion includes adoption, operations, cleanup, and unresolved risk.

## Reject program theater

- A flat task dump with no value path or dependency topology.
- Percent-complete reporting unsupported by integrated evidence.
- Keeping every team busy while the constraint, consumer, or integration path waits.
- A giant launch milestone that defers compatibility and integration learning.
- Recurring status meetings that neither change a decision nor remove a blocker.
- Central coordination that makes teams wait for choices they are equipped to make.
- Estimates presented without scope, capacity, uncertainty, or update triggers.
- Plans that omit verification, rollout, operations, ownership, or cleanup from delivery.
- Declaring a program on track because activity is high while outcome evidence is absent.

## Completion

Return or update the outcome contract, delivery topology, vertical increments, sequence, current constraint, decision and escalation state, evidence trend, forecast assumptions, next interventions, cleanup, and unresolved risk. State whether the program is progressing, blocked, or indeterminate from evidence; do not manufacture confidence or decision authority.
