---
name: goal-pursuit
description: Pursue one non-trivial goal through proportional upfront system planning, adaptive evidence, and the smallest sufficient skills, tools, and bounded subgoals. Use when the user wants end-to-end pursuit rather than one specialist result. Do not expand authority, impose a fixed lifecycle, duplicate owned plans, or treat child completion as goal success.
---

# Goal Pursuit

Drive one explicitly invoked goal from its current state to an evidence-backed
disposition. Keep the pursuit adaptive while preserving specialist ownership
and accountable human authority.

## Own only the pursuit layer

- Own the parent goal contract, compact system-level pursuit model, immediate
  checkpoint, next-capability selection, goal-level evidence, and disposition.
- Let each specialist own its domain decision, artifact, judgment, and action.
  Consume those results without reproducing the specialist workflow.
- Resolve and read a selected skill's `SKILL.md` before using it. Do not infer
  its contract from its name. When no suitable skill is available, work
  directly only within general competence and the user's authority.
- When a host goal runtime is active, let that runtime own continuation, pause,
  resume, and status. This skill owns the reasoning inside the pursuit loop; do
  not create a competing lifetime or status mechanism.

## Form the pursuit model

Before substantive action, recover the smallest model that can steer the goal:

- the intended outcome, non-goals, and observable success condition;
- failure, abandonment, infeasibility, and authority-boundary conditions;
- the current state, material history, and available evidence;
- the high-level system or value path, including relevant actors, components,
  dependencies, feedback, and recovery paths;
- constraints, authorization, irreversible commitments, and risk tolerance;
- confirmed facts, inferences, assumptions, and unresolved unknowns; and
- the initial strategy, first meaningful checkpoint, outcome-level oracle, and
  evidence that should trigger replanning.

Keep this model inline unless ownership, a pause, or non-obvious re-entry needs
durable state. Show a small flow, tree, table, or diff when relationships across
several elements materially affect routing or the next decision.

Scale planning depth with ambiguity, contract surface, reversibility, failure
propagation, coordination topology, feedback delay, and verification strength.
Plan the system and likely route upfront. Detail the next checkpoint and
decisions that would be expensive to discover late. Treat the plan as a
hypothesis, not a promise. A clear reversible task may use a compact micro-plan
and move directly to its executor.

Do not assume that implementation is the correct route. Treat a proposed
solution as a hypothesis until the accepted goal and available evidence justify
building, changing, or operating something.

## Run the evidence loop

1. **Compare state with intent.** Identify the most consequential current gap,
   assumption, risk, or blocked decision.
2. **Choose one checkpoint.** Select the smallest result that can retire risk,
   enable useful action, or test the pursuit model.
3. **Select the minimum capability.** Use one primary specialist, tool, or
   bounded subgoal for the checkpoint. Add another owner only when a real
   dependency, distinct judgment, or independent evaluation requires it.
4. **Act within authority.** Execute authorized in-scope work with
   risk-proportionate safeguards. Route a missing consequential decision or
   unauthorized action with the evidence and return condition its owner needs.
5. **Inspect the result.** Compare observed evidence with the checkpoint and
   parent outcome. Distinguish task completion from demonstrated effect.
6. **Update the model.** Preserve what changed, reopen the smallest invalidated
   assumption or decision, and choose the next checkpoint. A failed tactic is
   evidence for replanning; it is not automatically goal failure.

Prefer short feedback paths and reversible moves when they preserve meaningful
information. Do not decompose work into subgoals that produce activity without
testing a decision, integration point, risk, or outcome.

## Transfer detailed coordination

- Route several concurrent or interdependent delivery workstreams to
  `technical-program-orchestration`. Team, service, or repository count alone
  does not create a program; one coherent sequential slice can remain direct.
- Route continuity for one bounded software change across sessions, artifacts,
  or specialist owners to `software-change-orchestration`. Keep clear
  uninterrupted work with its primary owner.
- When a specialist owns a detailed plan or canonical artifact, link that
  result and remove duplicate detail from the pursuit model.
- Retain only the parent outcome, authority, high-level system hypothesis,
  linked canonical artifacts, goal-level evidence, and disposition after a
  transfer. Do not create a generic task board beside an owned change record or
  program surface.

## Preserve authority and close honestly

Revise investigation order, specialist choice, implementation approach,
checkpoints, and reversible tactics as evidence changes. Do not silently change
the requested outcome, supported behavior, non-goals, risk tolerance,
compatibility promises, acceptance criteria, or authority over external,
production, destructive, or irreversible action.

End each pursuit turn with one of these evidence-backed dispositions:

- **verified success:** the parent outcome-level oracle passes on the relevant
  final state;
- **verified failure:** a terminal failure condition occurred and the outcome
  cannot be recovered within the accepted scope;
- **justified abandonment:** evidence invalidates the value or rationale for
  continued pursuit, with accountable acceptance when consequential;
- **infeasible:** a demonstrated constraint prevents the outcome under the
  accepted scope or authority;
- **authority boundary:** progress requires a decision or action the user has
  not authorized; or
- **still pursuing:** state the current evidence, immediate frontier, and exact
  re-entry condition.

Child-task completion, a green local check, or a polished artifact does not by
itself prove parent-goal success. Report the disposition, outcome-level
evidence, material model changes, linked specialist results, residual risk, and
next checkpoint when the pursuit remains open.
