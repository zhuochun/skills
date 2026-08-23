---
name: technical-program-orchestration
description: Orchestrate one accepted technical outcome across concurrent or interdependent workstreams, vertical increments, integration, evidence, replanning, and closure. Use when delivery needs distinct workstream drivers plus program steering across dependencies, integration points, shared decisions, or a current constraint. Compose software-change-orchestration for resumable change workstreams; keep one bounded delivery loop outside program machinery.
---

# Technical Program Orchestration

Steer one multi-workstream outcome while each workstream drives its frontier. Optimize for verified end-to-end progress, early integration, and reduced waiting—not task volume or reporting.

## Preserve authority and working flow

- Facilitate and recommend by default. Identify the outcome owner, workstream drivers, technical and decision owners, and risk acceptors; do not assign teams, dates, scope, staffing, commitments, or risk.
- Separate discussion, record writes, workstream execution, external writes, and production actions. Modify systems only when authorized.
- Label targets, forecasts, estimates, and commitments; retain assumptions, uncertainty, exclusions, and change consequences.
- Reuse existing trackers, decision logs, repositories, and channels. Maintain cross-workstream state and route decisions without taking business priority, execution, or residual-risk ownership.

## Separate program and workstream ownership

- The **program** owns one outcome, delivery topology, integration contracts, current constraint, shared decisions, evidence trend, and closure.
- A **workstream** owns one coherent contribution; its driver maintains the local contract, frontier, evidence, dependencies, and closure or re-entry condition.
- A **frontier** is the smallest decision, action, integration, or evidence gap limiting progress. Keep one per active workstream and one program frontier on the current constraint.
- An **integration contract** states what a provider workstream must make usable to which consumer, under what compatibility, timing, evidence, and failure conditions.
- Route by local truth and coordination need, not reporting lines. Use `software-change-orchestration` only for bounded software-change workstreams needing a resumable decision-to-evidence loop; never absorb local design, execution, judgment, or evidence ownership.

## Keep state recoverable without artifact sprawl

Maintain one canonical program surface for outcome, topology, active workstreams, integration, evidence, decisions, current constraint, and closure.

- Keep workstream contracts and frontiers in the program surface unless ownership, audience, repository, authorization, review, evidence, or re-entry requires a linked independent artifact. Never copy canonical local detail.
- Let drivers update local truth; retain centrally only the contribution, dependencies, integration state, frontier, evidence limit, and steering implication.
- Keep immediate frontiers in the active session during uninterrupted work. Persist a resume point only for a pause, block, handoff, session change, or non-obvious re-entry.
- Re-read the program surface and linked workstream state before updating them. Integrate concurrent changes rather than overwriting another owner's accepted state.

Read [references/program-orchestration.md](references/program-orchestration.md) when choosing artifact boundaries, creating a program or workstream record, or defining integration contracts and frontiers.

## Orchestration workflow

1. **Define the outcome contract.** State outcome, observable success, boundary, constraints, non-goals, affected services and teams, owner, cost of delay or failure, and closure evidence. Reject activity lists without outcomes.
2. **Choose budget and surface.** Scale coordination to consequence, workstreams, dependencies, integration, decision latency, evidence, and re-entry. Reuse the smallest adequate source of truth.
3. **Map delivery topology.** Trace the value path through teams, services, data, dependencies, environments, approvals, vendors, and operating owners. Classify product, technical, decision, information, resource, external, and merely conventional dependencies. Identify integration and the current constraint.
4. **Establish workstream contracts.** Record a stable key and label, contribution, driver, boundary, inputs, consumers, integration contract, evidence, frontier, and closure or re-entry condition. Exclude unrelated work.
5. **Shape vertical increments.** Prefer the smallest demonstrable cross-workstream slices that retire uncertainty. Include enablement, observability, verification, rollout, documentation, ownership, and cleanup when required for done.
6. **Design concurrency and integration.** Separate independent work from apparent parallelism sharing decisions, state, environments, reviewers, or integration. Prefer tracer paths, early consumer integration, and risk-retiring increments.
7. **Drive the frontiers.** Drivers advance local frontiers; the program intervenes at the current constraint by clarifying contracts, routing decisions, removing waits, splitting or resequencing work, limiting work in progress, or narrowing scope. Keep authorized local decisions local.
8. **Route specialist judgments.** Use `decision-facilitation` for contested closure, `migration-planning` for technical transition and authority transfer, `controlled-release-design` for exposure, `observability-design` for measurement, and `verification-strategy-design` for claims and oracles. Link, do not copy, owned plans.
9. **Run the evidence control loop.** At each review, compare integrated evidence with the outcome and assumptions; refresh workstream and program frontiers; identify the current constraint; and stop, split, resequence, escalate, or narrow work. Preserve why forecasts, commitments, or topology changed.
10. **Close deliberately.** Verify the integrated outcome, consumer adoption, operational ownership, remaining risk, cleanup, and support transition. Close or hand off every workstream, retire temporary coordination, and route accumulated architectural learning to `retrospective-architecture-review` only when foundational design should be reconsidered.

## Quality gates

- One owned outcome, integrated evidence, end-to-end topology, and current constraint are explicit. Every active workstream has a driver, recoverable contract, frontier, and closure or re-entry condition.
- Canonical local detail is linked, not duplicated.
- Hard dependencies name provider, consumer, need, integration contract, evidence, and escalation.
- Local work can advance independently; integration and verification precede final convergence.
- Decision, risk, coordination, and execution authority remain distinct; forecast changes retain assumptions.
- Closure covers adoption, operations, handoff, coordination cleanup, and unresolved risk.

## Reject program theater

- Reject task dumps without a value path, contracts, or topology; one file per workstream; copied status; and percent complete without integrated evidence.
- Workstreams lacking a driver, frontier, consumer, or completion evidence.
- Keeping teams busy while the constraint or integration path waits.
- Late giant-bang integration or program machinery justified only by team count.
- Central control of local execution or decisions.
- Estimates without scope, capacity, uncertainty, and update triggers; activity presented as outcome progress.

## Completion

Return or update the outcome contract, canonical program surface, delivery topology, workstream contracts and links, local and program frontiers, current constraint, integration and decision state, evidence trend, forecast assumptions, next interventions, cleanup, unresolved risk, and accountable closure or re-entry conditions.
