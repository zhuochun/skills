---
name: agentic-repo-setup
description: Set up or retrofit a repository so agents enter through effective repo instructions, retrieve owned context, use stable commands, and obtain focused and full evidence. Use for bootstrap, repository-harness upgrades, or renewal. Change repo instructions, knowledge routing, runtime and verification wiring, hooks, CI, and skill routing within accepted constraints; exclude product, domain, and release design.
---

# Agentic Repo Setup

Use the effective repo `AGENTS.md` instruction chain as the bootstrap surface into a reliable repository working environment for coding agents.
Inspection and design support the setup; completion is an improved repository
and reproducible evidence unless the user requested a read-only assessment.

## Select mode and authority

- **Bootstrap** a new or young repository only after accountable owners accept
  the product shape, delivery target, language and runtime, and foundational
  architecture required by maintained scaffolding. Observable files may
  constrain setup but do not establish acceptance. Stop and route any unresolved
  choice; do not choose it as setup. Add the smallest useful local contract,
  executable commands, evidence loop, and automation. Do not generate empty
  decision templates.
- **Retrofit** an existing repository by recovering observed behavior and
  declared authorities, wrapping proven paths, redirecting only confirmed duplicate
  routes, and adding controls incrementally. Preserve compatibility and unrelated
  dirty work.
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

This skill owns repo-local instructions, knowledge placement and retrieval
routing, agent-facing wrapper commands, runtime setup within accepted constraints,
wiring of accepted verification entry points, mechanically derived inner-loop
checks for accepted unambiguous behavior, hooks, setup and verification CI, and
repo-specific skill routing. It does not own product behavior, domain meaning,
data migrations, service boundaries, verification contracts, release or
deployment design, or broad production-code redesign.

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
`skill-creator` and the repository's authoring contract. Route document prose and
reader-task quality to `technical-writing`. Route disputed knowledge authority
or semantic conflict to its accountable meaning or decision owner. Setup owns
placement, authority routing, and freshness wiring only after authority is established.

## Place each concern with one owner

| Surface | Default owner |
| --- | --- |
| Local discovery, routing, invariants, and approved commands | The target agent's effective root-to-working-directory instruction chain, with concise `AGENTS.md` guidance where it is authoritative |
| Accepted intent, domain meaning, architecture commitments, and rationale | Accountable owners expressed through current decisions, specifications, ADRs, and domain or architecture documents |
| Executable contracts and hard controls | Tests, schemas, types, configuration, linters, hooks, CI, and permissions; each is authoritative only for the claim it encodes |
| Observed implementation and runtime behavior | Code and runtime evidence; observed state is not accountable acceptance |
| Historical project intent, evidence, and learning | A clearly non-authoritative project or decision history |
| Reusable cross-repository judgment | Installed general skills; reference them without copying their content |
| Stable repository-specific workflow | `.agents/skills` placement when repeated local procedure needs its own interface; `skill-creator` owns authoring |
| Repeatable operations | Repository-native commands, scripts, runtime pins, lockfiles, and setup |
| Pause, resume, retry, handoff, and closure state | The existing issue, change, or work system with one canonical owner |

## Apply the opinionated defaults

1. Start with the repository and its existing systems of record, not a generic
   template, new control plane, workflow DSL, memory service, or platform.
2. Resolve the target agent's effective instruction files, precedence, launch
   directory, and size limits. For Codex, check `AGENTS.override.md`, `AGENTS.md`,
   configured fallbacks, and the root-to-working-directory chain. Put required
   guidance only in selected active files. Keep `AGENTS.md` a concise bootstrap
   router from tasks and changed surfaces to the accountable owner of each claim,
   its commands, and its evidence; do not duplicate knowledge or settle a
   semantic conflict by choosing code, tests, or the newest document.
3. Prefer one stable command for each recurring intent such as setup, dev,
   narrow test, full verify, build, diagnose, or maintenance. Commands must fail
   clearly, work non-interactively where appropriate, and avoid hidden steps.
   Add or wrap a local entry point directly; route changes to a supported or
   independently consumed command through `software-contract-evolution`.
4. Keep general skills outside the repository or install them through the
   established profile or plugin. When demonstrated repetition warrants a repo
   skill, define its accepted local procedure and placement, then use
   `skill-creator` to create or materially revise it. Do not copy general skills.
5. Partition paths only where the effective instruction chain, knowledge
   authority, runtime, feedback implementation, or permission boundary differs
   materially. For each selected partition, classify focused and full evidence
   as **present**, **absent**, **not applicable**, or **disputed**. Run only fixed,
   accepted checks; route gaps instead of inventing claims, oracles, or gates.
6. Compile accepted, unambiguous behavior into a direct inner-loop check only
   when the claim and oracle mechanically determine it. Route disputed claims,
   coverage, consequential methods, or full-verification meaning to
   `software-verification`. Prose may guide judgment; it must not impersonate a
   test, hook, CI gate, or permission. When existing checks do not distinguish
   realistic defects, route selection of bounded mutation, property, fuzz,
   differential, or model-based probes to `software-verification`, then wire
   only the accepted method.
7. Before changing test selection, a full gate, CI enforcement, or permissions,
   freeze its claims, exercised and omitted scope, skips, and exit semantics.
   The changed gate cannot be the sole evidence that its scope was preserved;
   compare scope and use a fixed negative control, or independent evidence when consequence or builder bias warrants it.
8. Do not reorganize production code merely to look agent-friendly. Change
   locality, naming, or module ownership only when evidence supports a separate
   behavior-preserving or design decision.
9. Persist work state only when interruption, re-entry, retry, or coordination
   needs it. Reuse one canonical surface rather than copying status into files,
   tickets, dashboards, and agent memory.
10. Add unattended automation only after the underlying artifact, command, and
   evidence loop are stable. Bound it by permissions, budget, retry, pause,
   cleanup, stop conditions, and accountable review capacity.

## Execute the setup

1. **Establish the baseline.** Resolve the effective instruction chain and
   material partitions. Inspect Git state, accepted runtime, manifests, authority
   classes, commands, tests, CI, hooks, and recent failures. Record selected
   active instruction files and preserve unrelated work. If verification wiring
   may change, freeze its pre-change claims, selection, exercised and omitted
   scope, skips, and exit semantics. Run or record the smallest credible current
   check in an existing repository.
2. **Choose representative paths.** Within the authorized scope, trace one
   ordinary path per materially distinct partition through discovery, edit,
   inner feedback, broader evidence, and handoff. Bound sampling by decision
   value and list every material partition not exercised.
3. **Select the minimum useful changes.** Fix the earliest mechanical gap. When
   a material slice depends on a semantic authority conflict or an absent or
   disputed verification contract, stop and route that slice; continue only
   independent authorized work. Do not install every possible surface.
4. **Implement vertical slices.** Prefer a usable sequence: claim-level authority
   routed from effective instructions; stable setup and work commands; classified
   focused and full evidence with accepted present checks wired; proportional
   non-deployment CI or hooks; optional repo-specific skill or re-entry state. Keep the repository
   usable, preserve previously passing checks, and keep recorded baseline
   failures distinguishable from regressions.
5. **Keep authority honest.** Separate accepted intent, executable contracts,
   observed implementation, derived views, and history. Update only
   harness-owned routing and wiring; route semantic or verification decisions.
6. **Verify from consumer paths.** Follow the resulting `AGENTS.md` route in
   each sampled partition. After changing instruction or skill discovery, use a
   distinct fresh consumer context when the platform and authority permit it;
   otherwise mark that evidence **not run** and report the manual follow-up.
   Never infer a fresh-context pass. Run only accepted **present** checks and
   record **absent**, **not applicable**, and **disputed** checks without filling
   the gap. Exercise failure output and expose skips and omissions. When a gate
   changed, compare its scope and use the fixed negative control or independent
   evidence selected in the verification contract.
7. **Retire and report.** Redirect or deprecate obsolete commands, docs, and
   setup paths by default. Remove an exact tracked path only with deletion
   authority, proven replacement use, and satisfied compatibility obligations;
   never remove unrelated, untracked, or user-owned work. Report changed owners
   and files, commands and evidence, compatibility limits, remaining manual or
   external actions, and the next proven gap.

Read [references/setup-checklist.md](references/setup-checklist.md) only when a
bootstrap, retrofit, or renewal spans several surfaces, needs a repository
knowledge or feedback-topology audit, needs a durable record, or requires a
cold-start and failure rehearsal matrix.

## Quality gates

- Each sampled partition loads the intended effective instruction sources and
  routes every material claim to its accountable authority. Untested partitions
  and unavailable fresh-context evidence remain visible; no shadowed file is the
  only source of required guidance.
- A clean or representative environment can execute the documented path; local
  and CI commands share one underlying implementation where practical.
- Semantic conflicts remain unresolved and routed; observed code, tests,
  history, and derived views do not silently become accountable acceptance.
- Focused and full evidence is explicitly **present**, **absent**, **not
  applicable**, or **disputed**. Present checks expose prerequisites, skips,
  omissions, and useful failure diagnostics without claiming broader coverage.
- A changed gate retains a pre/post scope comparison and is not the sole proof
  that its scope was preserved; required negative-control or independent evidence is inspectable.
- Existing-repository setup introduces no regression relative to the recorded
  baseline. It preserves supported behavior and compatibility, or names and
  routes every intentional change outside this skill.
- Hard rules have deterministic enforcement or are honestly advisory. External
  settings and production actions remain unperformed without separate authority.
- Added files and dependencies displace demonstrated friction. Empty templates,
  duplicate truth, speculative factory machinery, and unsupported retirement do
  not remain as setup residue.

## Completion

Return the mode, scope, baseline, changed surfaces and owners, stable commands,
exact evidence, cold-start or failure results, preserved behavior and baseline
failures, compatibility limits, path dispositions, remaining actions, and
unresolved specialist routes. For read-only work, return that bounded setup delta.
