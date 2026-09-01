---
name: prototype-to-learn
description: Build a disposable, runnable software prototype that answers one explicit behavior, state, UI, or interaction design question before maintained implementation. Use when users want to compare runnable candidates, exercise an interaction direction before choosing maintained behavior, or drive candidate rules or state models through cases. Route customer-value experiments to product-opportunity-discovery and production changes to scoped-change-implementation.
---

# Prototype to Learn

Build the smallest software artifact that can change one design decision. Keep
it available for hands-on learning without treating its code as maintained.

## Preserve authority and lifecycle

- Confirm that the request authorizes local prototype changes. Treat requests
  to discuss, assess, review, design, or plan as read-only.
- Read repository instructions, local conventions, the current worktree, and
  nearby implementation seams before editing. Preserve unrelated work.
- Keep the prototype local and isolated. Do not publish it, expose external
  users, use production secrets or sensitive data, or mutate authoritative
  services. Route customer experiments to `product-opportunity-discovery`,
  production exposure to `controlled-release-design`, and maintained integrations or effects
  to `scoped-change-implementation`.
- Treat prototype code as temporary and non-authoritative. Success supplies
  learning, not permission to ship it.
- Bypass this skill when the requested behavior is settled and the user wants
  a maintained reversible change. Route that work to
  `scoped-change-implementation`.
- Consume a supplied discovery hypothesis or design question without taking
  ownership of customer value, investment, architecture acceptance, or
  production readiness.

## Choose one branch

- For business rules, state transitions, data shape, action legality, or sequences, read
  [references/behavior-state-prototype.md](references/behavior-state-prototype.md).
- For page structure, information hierarchy, workflow presentation, or interaction alternatives, read
  [references/ui-interaction-prototype.md](references/ui-interaction-prototype.md).
- If both branches appear relevant, prototype the uncertainty most likely to
  change the decision first. Keep a second artifact separate unless the user
  needs both mechanisms together to evaluate the question.

Route a non-runnable cross-view journey—story, matrix, flowchart, sequence
diagram, or state trace—to `architecture-surface-mapping`, and other representations
to their design owner. A visual needs hands-on execution to qualify as a prototype.

Route customer need, demand, adoption, value, or experiment design to
`product-opportunity-discovery`. Route disputed business meaning, rules, or
invariants to `domain-modeling`, and production capacity claims to
`service-capacity-engineering`. Route engineering claims with undefined methods
or fixed verification contracts to `software-verification`, and unexplained failures to
`software-failure-diagnosis`.

## Prototype workflow

1. **State the learning question.** Name the single design decision, current
   assumption, and observation that would support, disconfirm, or leave the
   question inconclusive.
2. **Inspect the host context.** Find the existing runtime, task runner, target
   module or route, representative data, and nearby conventions. Do not add a
   framework, package manager, or service only for the prototype.
3. **Set the fidelity boundary.** Identify what must remain real. List omissions
   and the false positive or negative each important omission could create.
4. **Bound the artifact.** Put it near the target seam, label it as a prototype,
   and provide one command or URL. Keep state in memory and stub mutations and external effects. If
   persistence is the question, use a resettable scratch store, never authoritative data.
5. **Build the selected branch.** Preserve the tested mechanism, expose the
   relevant state or alternatives, and remove completeness that does not
   improve the observation.
6. **Establish runnability.** Launch the artifact and exercise enough paths to
   prove the observation surface works. Add only checks that keep harness defects
   from invalidating the result; do not build a production test suite.
7. **Hand over the experiment.** Give the user the command or URL, controls,
   question, fidelity limits, and useful cases to try. Let the user drive when
   the answer depends on feel, surprise, or preference.
8. **Capture the learning.** Separate observed behavior, user interpretation,
   and unresolved uncertainty. Recommend discard, iterate, or promote the
   learned decision. Do not call the product or implementation validated.
9. **Route promotion separately.** Preserve the accepted behavior or design decision. Route
   ambiguous maintained behavior to `software-change-specification` and a clear
   authorized delta to `scoped-change-implementation`. Runnability is not promotion.

Leave the prototype available until the user has evaluated it. Do not delete,
archive, commit, or move it to another Git branch unless the user authorizes
that lifecycle action.

## Quality gates

- One explicit question controls scope; the artifact preserves the mechanism
  that makes the observation meaningful.
- One command or URL starts the prototype through repository-native tooling.
- Representative context is real or its substitution and limits are explicit.
- State, variants, actions, and important omissions are visible to the user.
- External effects remain stubbed, read-only, or isolated locally.
- The result distinguishes observation, interpretation, and uncertainty.
- The handoff names the prototype lifecycle and the owner of any next step.

## Reject weak prototypes

- A polished demo without a falsifiable question is incomplete; unrelated
  uncertainties do not belong in one prototype.
- Visual variants that differ only in color or copy do not test a UI direction.
- Hidden state or invisible transition rules make behavior prototypes
  uninterpretable.
- Fabricated fixtures are weak when representative read-only data is safely
  available and material to the question.
- Prototype labels do not excuse production effects, durable compatibility
  obligations, or unverified promotion.

## Completion

Lead with the artifact and how to run it. Report the learning question, tested
mechanism, material paths, observations, fidelity limits, unresolved
uncertainty, lifecycle state, and the next owner if the decision is promoted.
