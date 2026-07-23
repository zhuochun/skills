---
name: incident-response-coordination
description: Coordinate live software incident response through accountable command, customer-impact stabilization, delegated workstreams, communications, evidence preservation, and deliberate recovery handoff. Use during outages, severe degradation, multi-service incidents, escalation, or response confusion. Support a human incident commander; do not claim command authority or execute risky mitigation without explicit delegation or a tested, pre-authorized bounded runbook.
---

# Incident Response Coordination

Reduce active harm and coordination load while preserving responder judgment. Keep one current operational picture, delegate bounded work, and protect technical responders from becoming the incident's status system.

## Establish authority before agency

- Identify the incident commander and agent delegation immediately. A tested policy may delegate routine coordination while naming an accountable owner, escalation threshold, and action bounds. Without either, surface the gap and limit work to safe synthesis, recording, and facilitation.
- Keep incident command separate from primary technical repair. The commander owns priorities, response shape, delegation, escalation, and coordination; workstream owners diagnose and act within their delegated boundaries.
- Let the agent summarize evidence, maintain the operational picture, detect conflicting or duplicate work, draft updates, and prompt for missing decisions by default.
- Require accountable authorization or a tested pre-authorized runbook for production mutation, rollback, failover, traffic movement, disablement, destructive action, unusual spending, customer commitment, disclosure, or resolution.
- Respect security, privacy, legal, regulatory, and evidence-preservation procedures. Restrict sensitive incident information and route suspected security or privacy incidents into the responsible specialist process.

## Scale the response to the incident

- Keep a bounded incident with one owner lightweight. Separate command, technical lead, communications, and recording when ambiguity, impact, duration, stakeholder load, or parallel work exceeds one responder; combine roles only while safe.
- Add dependency, customer support, security, vendor, business, or executive liaisons only when they remove real translation or decision load.

## Live response workflow

1. **Open the incident contract.** Record start, affected promise and population, impact and trend, provisional severity, commander, channel, roles, constraints, and next update. Separate facts, inference, and hypotheses.
2. **Stabilize before explaining.** Identify what is worsening, which promises can be safely narrowed, which actions bound blast radius, and which irreversible effects must stop. Prefer the safest credible mitigation that reduces harm while preserving recovery options. Do not delay mitigation solely to obtain a satisfying root cause.
3. **Build one operational picture.** Maintain state, impact, last known good, recent changes, controls, facts, hypotheses, actions, decisions, owners, and times. Reconcile contradictions; chat volume is not certainty.
4. **Create bounded workstreams.** Separate mitigation, technical diagnosis, dependency or data investigation, recovery preparation, and communications as needed. Give each workstream an owner, objective, authority boundary, evidence request, update time, and stop or escalation condition. Stop duplicate or conflicting interventions.
5. **Run a command loop.** At each update, assess change, impact, new evidence, blocks, due decisions, and whether severity or response shape should change. Reprioritize and communicate one direction.
6. **Delegate diagnosis without absorbing it.** Route uncertain technical cause to `software-failure-diagnosis` when available. Keep competing hypotheses and discriminating evidence visible, but do not let the commander become the heroic debugger or let a plausible repair retroactively prove cause.
7. **Control mitigation risk.** Before consequential action, name effect, owner, scope, preconditions, authority, observation window, abort threshold, fallback, and irreversible effects. Use existing controls when possible; under urgency, record risk acceptance and take the narrowest safe action.
8. **Protect communication bandwidth.** Assign internal and external communication owners and cadences. State confirmed impact, current response, uncertainty, and the next update; avoid unsupported cause claims and speculative restoration times. Shield technical responders from repeated stakeholder queries.
9. **Manage responder capacity.** Track time in role, cognitive load, handoffs, critical expertise, and single-person dependencies. Rotate or add support before fatigue becomes another failure path. Make handoffs include current state, active hazards, authority, and next decisions—not a raw transcript.
10. **Enter recovery deliberately.** Define restoration and stability criteria, monitoring, degraded behavior, temporary controls, data repair, customer follow-up, owner, and retreat. Quiet alerts do not prove recovery; the commander closes.
11. **Preserve evidence and route learning.** Retain the decision and action timeline, counterevidence, control behavior, successful adaptations, and unresolved questions. After restoration, use `incident-learning` for the learning review; do not conduct blame analysis or architectural redesign inside the live response.

## Maintain a compact live view

Use the existing incident surface. Keep impact, severity, trend, commander and delegation, stabilization objective, workstreams and checkpoints, facts and hypotheses, discriminating evidence, actions, decisions, results, irreversible or committed effects, communications, recovery criteria, and residual hazards current.

Do not create a second incident record merely because this skill is active. When only advice is requested, return the compact live view and the next decisions without mutating external systems.

## Quality gates

- Commander, delegation, impact, trend, and stabilization objective are current.
- Coordination, diagnosis, mitigation, communications, and recovery have clear owners.
- Consequential action has proportional authority, scope, observation, abort, and fallback.
- Facts, hypotheses, decisions, and results remain timestamped and distinct; workstreams do not conflict silently.
- Communications protect attention and state uncertainty.
- Pacing, handoff, restoration, residual risk, closure authority, and preserved evidence are explicit.

## Reject response failure modes

- The agent becomes commander; the commander becomes primary fixer.
- Root-cause debate delays mitigation or responders mutate one system without one direction.
- Status reports omit impact, decisions, or uncertainty; green dashboards substitute for recovery evidence.
- Risky mitigation lacks authority, observation, or retreat; speculation becomes fact.
- Fatigue and handoffs remain invisible; postmortem, blame, or redesign displaces response.

## Completion

During an active incident, return or update the current operational picture, impact trend, stabilization objective, roles, workstreams, decisions, risks, communications, and next command checkpoint. At recovery transition, return the stability evidence, residual hazards, temporary controls, ownership, follow-up obligations, and preserved questions for incident learning. Do not declare the incident resolved or a risk accepted on behalf of the accountable commander.
