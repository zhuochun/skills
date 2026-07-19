---
name: technical-program-orchestration
description: Orchestrate one technical program from an accepted outcome through several concurrent or interdependent workstreams, dependency-aware vertical increments, integration, evidence, replanning, and closure. Use when delivery needs distinct workstream drivers and frontiers plus program-level steering across dependency topology, integration points, shared decisions, or a current constraint. Team count alone is neither required nor sufficient. Compose software-change-orchestration for workstreams that need their own resumable change loop; keep one bounded delivery loop outside program machinery.
---

# Technical Program Orchestration

Steer a multi-workstream technical outcome as a recursive delivery feedback system. Keep one program outcome coherent while each workstream drives its own frontier. Optimize for verified end-to-end progress, early integration, and reduced waiting rather than task volume, universal utilization, or reporting ceremony.

## Preserve authority and working flow

- Facilitate, analyze, and recommend by default. Identify the accountable program outcome owner, workstream drivers, technical and decision owners, and risk acceptors; do not silently assign teams, dates, scope, staffing, or risk.
- Distinguish discussion, program-record writes, workstream execution, external-system writes, production actions, and commitments. Modify trackers, repositories, schedules, or external systems only when authorized.
- Distinguish a target, forecast, estimate, and commitment. Keep assumptions, exclusions, uncertainty, and the consequence of change attached to each.
- Use the organization's existing issue tracker, roadmap, program board, decision log, repositories, and communication channels. Do not create a parallel reporting system merely to host orchestration fields.
- Let the orchestrator maintain program state, surface contradictions, route decisions, and propose replanning within delegated scope. Leave business priority, staffing, consequential scope, workstream execution, and residual-risk decisions with their accountable owners.

## Separate program and workstream ownership

- The **program** owns one accepted outcome, its delivery topology, cross-workstream integration contracts, current constraint, program-level decisions, evidence trend, and closure.
- A **workstream** owns one coherent contribution to that outcome. Its accountable driver maintains its local contract, current frontier, evidence, dependencies, and closure or re-entry condition.
- A **frontier** is the smallest decision, action, integration, or evidence gap currently limiting useful progress. Keep one explicit frontier per active workstream and one program frontier focused on the current system constraint.
- An **integration contract** states what a provider workstream must make usable to which consumer, under what compatibility, timing, evidence, and failure conditions.
- Workstreams may sit within one team or cross several teams. Route by distinct local truth and cross-workstream coordination needs, not by reporting-line count.
- Use `software-change-orchestration` when a workstream is itself one bounded software change needing a resumable decision-to-evidence loop. Do not force that workflow on non-code work, a tiny local task, or a workstream already governed by an adequate canonical surface.
- Program orchestration coordinates local loops; it does not absorb their specifications, designs, implementation details, specialist judgments, or evidence ownership.

## Keep state recoverable without artifact sprawl

Maintain one canonical program surface that indexes the outcome, topology, active workstreams, integration state, evidence, decisions, current constraint, and closure conditions.

- Give every active workstream a recoverable contract and frontier. Keep it as a row or section in the program surface when that is enough.
- Split out or link a workstream artifact only when its ownership, audience, repository, size, authorization, review, evidence, or re-entry lifecycle requires independent maintenance. Link the canonical local surface rather than copying it into the program record.
- Let the workstream driver update local truth. The program surface retains only the contribution, dependency and integration state, current frontier, evidence limit, and implication needed for cross-workstream steering.
- Keep immediate frontiers in the active session during uninterrupted work. Persist a resume point only for a pause, block, handoff, session change, or non-obvious re-entry.
- Re-read the program surface and linked workstream state before updating them. Integrate concurrent changes rather than overwriting another owner's accepted state.

Read [references/program-orchestration.md](references/program-orchestration.md) when choosing artifact boundaries, creating a program or workstream record, or defining integration contracts and frontiers.

## Orchestration workflow

1. **Define the outcome contract.** State the user or business outcome, observable success, program boundary, deadline or constraint, non-goals, affected services and teams, accountable owner, cost of delay or failure, and closure evidence. Reject an activity list with no outcome.
2. **Choose the coordination budget and surface.** Match coordination depth to consequence, workstream count, dependency shape, integration difficulty, decision latency, evidence burden, and re-entry need. Reuse the smallest existing source of truth that can preserve the program state.
3. **Map the delivery topology.** Trace the value path through teams, services, data, dependencies, environments, approvals, vendors, and operating owners. Classify dependencies as product, technical, decision, information, resource, external, or merely conventional. Identify integration points and the current limiting constraint.
4. **Establish workstream contracts and drivers.** Give each workstream a stable key and label, outcome contribution, accountable driver, boundary, inputs, consumers, integration contract, evidence, current frontier, and completion or re-entry condition. Keep unrelated work outside the program.
5. **Shape vertical increments.** Prefer the smallest independently demonstrable slices that cross the necessary workstreams and retire useful uncertainty. Include enablement, observability, verification, rollout, documentation, ownership, and cleanup when they are part of done.
6. **Design concurrency and integration deliberately.** Separate work that can progress independently from work that only looks parallel while sharing decisions, state, environments, reviewers, or integration points. Prefer tracer paths, early consumer integration, and risk-retiring increments over late horizontal convergence.
7. **Drive local and program frontiers.** Keep each workstream driver accountable for advancing or revising its local frontier. At program level, intervene at the current constraint: clarify an integration contract, route a decision, remove waiting, split or resequence work, reduce work in progress, or narrow scope. Do not centralize decisions that a workstream is equipped and authorized to make.
8. **Route specialized judgments.** Use `technical-decision-making` for contested consequential closure. Let `migration-planning` own accepted technical movement through controlled transition states, authority transfer, and retirement; let `controlled-release-design` own exposure control, `observability-design` own measurement contracts, and `verification-strategy-design` own claims and oracles. Reference stable keys with plain-language labels rather than copying plans.
9. **Run the evidence control loop.** At each review, compare integrated evidence with the outcome and assumptions; refresh workstream and program frontiers; identify the current constraint; and stop, split, resequence, escalate, or narrow work. Preserve why forecasts, commitments, or topology changed.
10. **Close deliberately.** Verify the integrated outcome, consumer adoption, operational ownership, remaining risk, cleanup, and support transition. Close or hand off every workstream, retire temporary coordination, and route accumulated architectural learning to `retrospective-architecture-review` only when foundational design should be reconsidered.

## Quality gates

- One accountable outcome and its integrated evidence are explicit.
- Every active workstream has an accountable driver, recoverable contract, current frontier, and closure or re-entry condition.
- The program surface links canonical workstream artifacts without duplicating their owned detail.
- The topology traces the end-to-end value path across all material teams, services, and integration points.
- Every hard dependency identifies provider, consumer, need, integration contract, evidence, and escalation path.
- Local frontiers can advance independently where appropriate; the program frontier addresses the current system constraint.
- Integration and verification occur before the final convergence milestone.
- Decision authority, risk acceptance, program coordination, and workstream execution remain distinct.
- Forecast changes preserve their assumptions and do not become silent commitments.
- Completion includes adoption, operations, workstream handoff or closure, coordination cleanup, and unresolved risk.

## Reject program theater

- A flat task dump with no value path, workstream contracts, or dependency topology.
- A separate file for every workstream when a linked tracker item or one program row is sufficient.
- Central status copied from workstream artifacts and stale before it is read.
- A workstream with many tasks but no driver, frontier, integration consumer, or completion evidence.
- Percent-complete reporting unsupported by integrated evidence.
- Keeping every team busy while the constraint, consumer, or integration path waits.
- A giant launch milestone that defers compatibility and integration learning.
- Program machinery justified by team count when one bounded delivery loop already owns the outcome, decisions, and evidence.
- Central coordination that takes over local execution or makes teams wait for choices they are equipped to make.
- Estimates presented without scope, capacity, uncertainty, or update triggers.
- Declaring a program on track because activity is high while outcome evidence is absent.

## Completion

Return or update the outcome contract, canonical program surface, delivery topology, workstream contracts and links, local and program frontiers, current constraint, integration and decision state, evidence trend, forecast assumptions, next interventions, cleanup, unresolved risk, and accountable closure or re-entry conditions.
