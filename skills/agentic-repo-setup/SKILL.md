---
name: agentic-repo-setup
description: Set up or retrofit a repository so agents can find authoritative context, use stable commands, preserve behavior, and produce deterministic evidence. Use for new repositories, existing upgrades, or harness renewal after repeated friction. Modify repo-local instructions, runtime setup, tooling, verification wiring, hooks, CI, and skill routing within accepted constraints; exclude product, domain, and release design.
---

# Agentic Repo Setup

Make the repository itself a reliable working environment for coding agents.
Inspection and design support the setup; completion is an improved repository
and reproducible evidence unless the user requested a read-only assessment.

## Select mode and authority

- **Bootstrap** a new or young repository only after the product shape,
  delivery target, language and runtime, and foundational architecture needed
  by maintained scaffolding are accepted or observable. If any required choice
  is unresolved, stop and route it; do not choose it as setup. Around accepted
  constraints, add the smallest useful local contract, executable commands,
  evidence loop, and automation. Do not generate empty decision templates.
- **Retrofit** an existing repository by recovering current behavior and
  authorities, wrapping proven paths, removing duplicate truth, and adding
  controls incrementally. Preserve compatibility and unrelated dirty work.
- **Renew** the harness after repeated review friction, stale guidance, setup
  failure, escaped defects, or operational learning. Repair the earliest owner
  and redirect or deprecate the superseded path instead of adding another
  instruction layer. Remove it only under the deletion and compatibility rules.
- A request to assess or recommend is read-only. An explicit request to set up,
  bootstrap, retrofit, renew, or make the named repository agent-ready
  authorizes ordinary in-scope repository harness writes. It does not authorize
  external-system settings, secrets, production actions, removal of supported,
  untracked, or user-owned material, commits, pushes, or deployments. Deleting
  another exact path requires explicit target authority and satisfied consumer
  obligations.

This skill directly owns changes to repo-local instructions, knowledge
placement, agent-facing wrapper commands, runtime setup within accepted
constraints, wiring of accepted verification entry points, mechanically derived
inner-loop checks for accepted unambiguous behavior, hooks, CI for setup and
verification, and repo-specific skill routing. It does not own product behavior,
domain meaning, data migrations, service boundaries, verification contracts,
release or deployment design, or broad production-code redesign.

Route required behavior changes to `scoped-change-implementation`, unexplained
failures to `software-failure-diagnosis`, production-code restructuring to
`behavior-preserving-refactoring` or its design owner, one change's durable
continuity to `software-change-orchestration`, and a supported cross-repository
self-service product to `platform-capability-design`. Route missing or stale
claims or oracles, disputed coverage, undefined evidence limits or full-verify
scope, consequential method choices, and independent verdicts to
`software-verification`. Setup may implement a mechanically derived inner-loop
check only when accepted behavior fixes both its claim and oracle unambiguously;
that check does not define broader coverage or a verification contract. Route
supported command compatibility, deprecation, and retirement to
`software-contract-evolution`; and new or materially revised repo skills to
`skill-creator` and the repository's authoring contract.

## Place each concern with one owner

| Surface | Default owner |
| --- | --- |
| Local discovery, routing, invariants, and approved commands | The target agent's effective root-to-working-directory instruction chain, with concise `AGENTS.md` guidance where it is authoritative |
| Current domain meaning, architecture commitments, and accepted rationale | Owned current documents, ADRs, specifications, tests, and code |
| Historical project intent, evidence, and learning | A clearly non-authoritative project or decision history |
| Reusable cross-repository judgment | Installed general skills; reference them without copying their content |
| Stable repository-specific workflow | `.agents/skills` placement when repeated local procedure needs its own interface; `skill-creator` owns authoring |
| Repeatable operations | Repository-native commands, scripts, runtime pins, lockfiles, and setup |
| Non-negotiable behavior and policy | Tests, types, linters, hooks, CI, permissions, and protected gates |
| Pause, resume, retry, handoff, and closure state | The existing issue, change, or work system with one canonical owner |

## Apply the opinionated defaults

1. Start with the repository and its existing systems of record, not a generic
   template, new control plane, workflow DSL, memory service, or platform.
2. Resolve the target agent's effective instruction files, precedence, launch
   directory, and size limits instead of assuming one `AGENTS.md` is active.
   For Codex, check `AGENTS.override.md`, `AGENTS.md`, configured fallbacks, and
   the root-to-working-directory chain. Put required guidance in the selected
   active file for each directory; never rely on a shadowed `AGENTS.md`. Keep
   authoritative guidance a concise index and execution contract; add nested
   guidance only for a real difference.
3. Prefer one stable command for each recurring intent such as setup, dev,
   narrow test, full verify, build, diagnose, or maintenance. Commands must fail
   clearly, work non-interactively where appropriate, and avoid hidden steps.
   Add or wrap a local entry point directly; route changes to a supported or
   independently consumed command through `software-contract-evolution`.
4. Keep general skills outside the repository or install them through the
   established profile or plugin. When demonstrated repetition warrants a repo
   skill, define its accepted local procedure and placement, then use
   `skill-creator` to create or materially revise it. Do not copy general skills.
5. Compile accepted, unambiguous behavior into a direct inner-loop check only
   when the claim and oracle mechanically determine it. Route disputed claims,
   coverage, consequential methods, or full-verification meaning to
   `software-verification`. Prose may guide judgment; it must not impersonate a
   test, hook, CI gate, or permission.
6. Do not reorganize production code merely to look agent-friendly. Change
   locality, naming, or module ownership only when evidence supports a separate
   behavior-preserving or design decision.
7. Persist work state only when interruption, re-entry, retry, or coordination
   needs it. Reuse one canonical surface rather than copying status into files,
   tickets, dashboards, and agent memory.
8. Add unattended automation only after the underlying artifact, command, and
   evidence loop are stable. Bound it by permissions, budget, retry, pause,
   cleanup, stop conditions, and accountable review capacity.

## Execute the setup

1. **Establish the baseline.** Resolve the repository and the target agent's
   effective instruction chain, including precedence, launch directory,
   overrides, fallbacks, and truncation where applicable. Inspect Git state,
   accepted runtime and manifests, current docs, commands, tests, CI, hooks, and
   recent failures. Record the selected active instruction file at each material
   directory and do not place required guidance in a shadowed file. Preserve
   unrelated work. In an existing repository, run or record the smallest
   credible current check before changing its harness.
2. **Choose a representative path.** Trace one ordinary change from discovery
   through edit, inner feedback, full evidence, and handoff. Include clean
   startup, failure diagnosis, or cold re-entry when they are material sources
   of friction.
3. **Select the minimum useful changes.** Fix the earliest missing prerequisite:
   ambiguous authority, stale instruction, non-reproducible setup, hidden manual
   operation, scattered verification, weak gate, or duplicate truth. Do not
   install every possible environment surface.
4. **Implement vertical slices.** Prefer a usable sequence: discoverable current
   truth; stable setup and work commands; accepted focused and full verification;
   proportional non-deployment CI or hooks; optional repo-specific skill or
   re-entry state. Keep the repository usable, preserve previously passing
   checks, and keep recorded baseline failures distinguishable from regressions.
5. **Make history and authority honest.** Separate current contracts from
   historical project records. Update the current owner for harness-owned
   runtime or verification wiring. Route module, data, behavior, or verification
   contract decisions before updating their owners; do not leave a completed
   project document as the only current truth.
6. **Verify from the consumer path.** Follow the resulting instructions in a
   representative environment. When instruction routing or local skill
   discovery changed, finish the mutation session, then start a distinct new
   session from each material working directory and confirm the sources or
   skills actually loaded before following commands. If intended guidance is
   shadowed, repair the selected active file and repeat this consumer session.
   Exercise failure output, inspect artifacts and CI, and preserve exact
   invocations and limits. Use `software-verification` when its owned contract
   or an independent verdict is needed.
7. **Retire and report.** Redirect or deprecate obsolete commands, docs, and
   setup paths by default. Remove an exact tracked path only with deletion
   authority, proven replacement use, and satisfied compatibility obligations;
   never remove unrelated, untracked, or user-owned work. Report changed owners
   and files, commands and evidence, compatibility limits, remaining manual or
   external actions, and the next proven gap.

Read [references/setup-checklist.md](references/setup-checklist.md) only when a
bootstrap, retrofit, or renewal spans several surfaces, needs a durable record,
or requires a cold-start and failure rehearsal matrix.

## Quality gates

- A new consumer session loads the intended effective instruction sources and
  repo skills from each material working directory, then locates current truth,
  approved commands, invariants, evidence, authority, and the next safe action.
  No required guidance exists only in a shadowed instruction file.
- A clean or representative environment can execute the documented path; local
  and CI commands share one underlying implementation where practical.
- Existing-repository setup introduces no regression relative to the recorded
  baseline. It preserves supported behavior and compatibility, or names and
  routes every intentional change outside this skill.
- Hard rules have deterministic enforcement or are honestly advisory. External
  settings and production actions remain unperformed without separate authority.
- Added files and dependencies displace demonstrated friction. Empty templates,
  duplicate truth, speculative factory machinery, and unsupported retirement do
  not remain as setup residue.

## Completion

Return the setup mode and scope, baseline, changed repository surfaces and
owners, stable commands, exact verification evidence, cold-start or failure
results, preserved behavior and baseline failures, compatibility limits,
redirected, deprecated, or authorized retired paths, remaining manual or
external actions, and unresolved specialist routes. If the request was
read-only, return the same bounded setup delta without modifying it.
