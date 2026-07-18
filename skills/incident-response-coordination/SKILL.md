---
name: incident-response-coordination
description: Coordinate live software incident response by establishing accountable command, stabilizing customer impact, separating coordination from technical repair, organizing delegated workstreams and communications, preserving evidence, and handing off deliberately into recovery. Use during active outages, severe degradation, multi-service incidents, incident escalation, ambiguous or long-running response, or when responders are duplicating work or losing a shared operational picture. Support a human incident commander by default; do not claim command authority or execute risky mitigation without explicit delegation or a pre-authorized bounded runbook.
---

# Incident Response Coordination

Reduce active harm and coordination load while preserving responder judgment. Keep one current operational picture, delegate bounded work, and protect technical responders from becoming the incident's status system.

## Establish authority before agency

- Identify the accountable incident commander and the agent's delegation envelope immediately. A tested policy may delegate routine coordination to the agent while naming an accountable on-call owner, escalation threshold, and action bounds. If neither a commander nor such a policy exists, surface the authority gap and begin only safe evidence synthesis, recording, and facilitation while an accountable owner is established.
- Keep incident command separate from primary technical repair. The commander owns priorities, response shape, delegation, escalation, and coordination; workstream owners diagnose and act within their delegated boundaries.
- Let the agent summarize evidence, maintain the operational picture, detect conflicting or duplicate work, draft updates, and prompt for missing decisions by default.
- Require explicit accountable authorization or a tested pre-authorized runbook before production mutation, rollback, failover, traffic movement, service disablement, destructive action, unusual spending, customer commitment, disclosure, or declaration of resolution.
- Respect security, privacy, legal, regulatory, and evidence-preservation procedures. Restrict sensitive incident information and route suspected security or privacy incidents into the responsible specialist process.

## Scale the response to the incident

- Keep a routine, bounded incident with one clear owner lightweight; do not create command ceremony that exceeds the coordination problem.
- Establish separate incident command, technical lead, communications, and record-keeping responsibilities when ambiguity, impact, duration, stakeholder load, or parallel work exceeds one responder's capacity. One person may hold multiple roles only while the load remains safe.
- Add dependency, customer support, security, vendor, business, or executive liaisons only when they remove real translation or decision load.

## Live response workflow

1. **Open the incident contract.** Record start time, affected customer promise and population, observed impact and trend, provisional severity, incident commander, communication channel, response roles, known constraints, and the next command update time. Mark facts, inference, and hypotheses distinctly.
2. **Stabilize before explaining.** Identify what is worsening, which promises can be safely narrowed, which actions bound blast radius, and which irreversible effects must stop. Prefer the safest credible mitigation that reduces harm while preserving recovery options. Do not delay mitigation solely to obtain a satisfying root cause.
3. **Build one operational picture.** Maintain current system state, impact trend, last known good state, recent changes, active controls, facts, hypotheses, actions, decisions, owners, and timestamps. Reconcile contradictions explicitly; do not convert chat volume into certainty.
4. **Create bounded workstreams.** Separate mitigation, technical diagnosis, dependency or data investigation, recovery preparation, and communications as needed. Give each workstream an owner, objective, authority boundary, evidence request, update time, and stop or escalation condition. Stop duplicate or conflicting interventions.
5. **Run a command loop.** At each update, ask what changed, whether impact is improving, what evidence altered the model, which work is blocked, what decision is due, and whether the response structure or severity must change. Reprioritize and communicate one current direction.
6. **Delegate diagnosis without absorbing it.** Route uncertain technical cause to `software-failure-diagnosis` when available. Keep competing hypotheses and discriminating evidence visible, but do not let the commander become the heroic debugger or let a plausible repair retroactively prove cause.
7. **Control mitigation risk.** Before a consequential action, name the intended effect, owner, scope, preconditions, authorization, observation window, abort threshold, fallback, and effects that cannot be undone. Use existing release, change, verification, and observability controls when time permits; under urgent conditions, record the explicit risk decision and preserve the narrowest safe action.
8. **Protect communication bandwidth.** Assign internal and external communication owners and cadences. State confirmed impact, current response, uncertainty, and the next update; avoid unsupported cause claims and speculative restoration times. Shield technical responders from repeated stakeholder queries.
9. **Manage responder capacity.** Track time in role, cognitive load, handoffs, critical expertise, and single-person dependencies. Rotate or add support before fatigue becomes another failure path. Make handoffs include current state, active hazards, authority, and next decisions—not a raw transcript.
10. **Transition into recovery deliberately.** Define restoration and stability criteria, monitoring window, remaining degraded behavior, temporary controls, data repair, customer follow-up, owner, and retreat path. Do not declare resolution from quiet alerts alone. The accountable commander closes the active incident.
11. **Preserve evidence and route learning.** Retain the decision and action timeline, counterevidence, control behavior, successful adaptations, and unresolved questions. After restoration, use `incident-learning` for the learning review; do not conduct blame analysis or architectural redesign inside the live response.

## Maintain a compact live view

Use the organization's existing incident channel, ticket, board, or chatops surface. Keep the response in flow with:

- impact, severity, and trend;
- commander, roles, and delegation boundaries;
- current stabilization objective;
- active workstreams, owners, and next update times;
- confirmed facts, material hypotheses, and discriminating evidence;
- actions, decisions, results, and irreversible effects;
- communication state;
- recovery criteria, residual hazards, and next command checkpoint.

Do not create a second incident record merely because this skill is active. When only advice is requested, return the compact live view and the next decisions without mutating external systems.

## Quality gates

- An accountable commander and agent delegation envelope are explicit.
- Customer impact, trend, and stabilization objective are current.
- Coordination, diagnosis, mitigation, communications, and recovery ownership are distinguishable.
- Every consequential action has authorization, scope, observation, abort, and fallback reasoning proportional to urgency.
- Facts, hypotheses, decisions, and results remain timestamped and separable.
- Workstreams have owners and do not conflict silently.
- Communications state uncertainty honestly and protect responder attention.
- Responder pacing, handoff, and critical-person risk are managed.
- Restoration, stability, residual risk, and closure authority are explicit.
- Evidence survives into recovery and later incident learning.

## Reject response failure modes

- The agent silently appoints itself incident commander.
- The commander becomes the primary fixer and coordination collapses.
- Root-cause debate delays credible harm reduction.
- Multiple responders mutate the same system without one direction or visible ownership.
- A status update repeats activity but omits impact, decisions, and uncertainty.
- A dashboard turning green is treated as proof of recovery.
- Risky mitigation proceeds without delegated authority, observation, or a retreat path.
- Speculative cause or restoration time is communicated as fact.
- Exhaustion and repeated handoffs remain invisible until judgment degrades.
- Postmortem, blame, or redesign work displaces active response.

## Completion

During an active incident, return or update the current operational picture, impact trend, stabilization objective, roles, workstreams, decisions, risks, communications, and next command checkpoint. At recovery transition, return the stability evidence, residual hazards, temporary controls, ownership, follow-up obligations, and preserved questions for incident learning. Do not declare the incident resolved or a risk accepted on behalf of the accountable commander.
