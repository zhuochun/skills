# Agentic Repo Setup Checklist

Use this record only when several setup surfaces must remain coherent across
implementation, review, or handoff. Fit it into an existing repository design
or change surface when one already owns the work.

## Mode, scope, and authority

- Mode: `bootstrap` / `retrofit` / `renew` / `read-only assessment`
- Repository and relevant subtrees:
- Accountable owner:
- Accepted product shape and delivery target:
- Accepted language, runtime, and foundational architecture:
- Repository-foundation writes authorized, including behavior-preserving
  knowledge reorganization and fixed verification artifacts:
- Unresolved decisions that setup must stop and route:
- Material partitions and grounded representative scenario for each:
- Authorized repository writes:
- Exact pre-existing tracked paths explicitly authorized for deletion, if any:
- Exact pre-existing untracked or ignored paths explicitly authorized for deletion, if any:
- External or production actions excluded:
- Supported behavior and compatibility to preserve:
- Unrelated work present:

## Baseline

| Surface | Observed current mechanism | Evidence or exact command | Friction, conflict, or gap | Accountable or artifact owner |
| --- | --- | --- | --- | --- |
| Effective instruction chain, precedence, launch directory, fallbacks, and size limits | | | | |
| Task-to-authority retrieval from effective `AGENTS.md` | | | | |
| Domain vocabulary, concepts, invariants, and semantic contexts | | | | |
| Architecture responsibilities, interfaces, dependencies, and boundaries | | | | |
| Behavior specifications, accepted decisions, and rationale | | | | |
| Executable contracts and hard controls | | | | |
| Observed implementation and runtime behavior | | | | |
| Historical project or decision records | | | | |
| Derived or generated knowledge and its freshness mechanism | | | | |
| Runtime, dependencies, and clean setup | | | | |
| Dev, test, build, diagnosis, and maintenance commands | | | | |
| Focused and broader verification | | | | |
| Hooks, CI, permissions, and protected gates | | | | |
| Installed specialist and repo-specific skill routing | | | | |
| Pause, re-entry, retry, and handoff state | | | | |

Classify evidence as observed, declared, inferred, missing, or conflicting.
Record the pre-change check for an existing repository, including failures that
must remain distinguishable from setup regressions.

## Task-centered scenario traces

| Partition and grounded scenario | Reader or agent job | Starting route | Authoritative sources selected | Discarded material and surfaced authority conflicts | Command and evidence path | Functional gap or no-op basis |
| --- | --- | --- | --- | --- | --- | --- |

Ground bootstrap scenarios in accepted product and developer workflows. Ground
retrofit scenarios in recent changes, repeated work, or maintained repository
responsibilities. Ground renew scenarios in the failure, friction, review
comment, or operational learning that triggered renewal. Default to discovery,
context retrieval, command selection, and evidence rehearsal; do not implement
an unrelated product change merely to make a scenario concrete.

Judge the path by minimum sufficient context and task success. Fewer files,
tokens, commands, or steps are diagnostic signals only. Record whether the
scenario reached every needed authority without loading demonstrably irrelevant,
stale, or superseded material. Retrieve and surface plausible competing
authorities until their conflict is resolved or an accountable owner selects the
authority. A retrofit or renewal no-op requires this trace; artifact presence is
not enough.

## AGENTS-routed repository knowledge architecture

| Claim, task, changed surface, operation, or control | Effective AGENTS route | Authority class | Accountable owner | Supporting or observed artifacts | Freshness or validation | Conflict or stale route |
| --- | --- | --- | --- | --- | --- | --- |

Default placement:

- the target agent's effective instruction chain: the bootstrap router for local
  invariants, approved commands, and checks; for Codex include overrides,
  `AGENTS.md`, configured fallbacks, launch directory, and truncation, and write
  required guidance only to the selected active file at each directory;
- domain artifacts: accepted vocabulary, concepts, invariants, classifications,
  and semantic contexts;
- architecture models, current architecture documents, and accepted ADRs:
  responsibilities, interfaces, dependencies, deployment or data boundaries,
  commitments, and rationale;
- current decisions and behavior specifications: accepted outcomes, behavior,
  constraints, and non-goals;
- tests, schemas, types, configuration, linters, hooks, CI, and permissions:
  executable contracts and hard controls, each authoritative only for its claim;
- code and runtime evidence: observed behavior, not accountable acceptance;
- project or decision history: durable past intent, evidence, and learning;
- installed specialist skills: cross-repository judgment and workflows;
- `.agents/skills`: stable procedures specific to this repository or subtree,
  authored or materially revised through `skill-creator`;
- scripts and manifest commands: repeatable, non-interactive operations; and
- established issue or change systems: durable work and re-entry state.

Partition paths only when the effective instruction chain, knowledge authority,
runtime or toolchain, feedback implementation, or permission boundary differs
materially. Trace one representative task or changed surface per selected
partition from `AGENTS.md` to each claim's accountable owner. Bound sampling by
decision value and list material partitions not exercised.

Classify each artifact as accepted authority, executable contract, observed
implementation, rationale or history, derived view, raw evidence, or
non-authoritative guidance. Preserve links from derived views to their stronger
source. Wire generation, linting, execution, or source-change reconciliation
only when the transformation is mechanically derived or its semantic owner has
accepted it. Record a freshness owner and repair trigger only where staleness
would misroute work.

Keep domain meaning distinguishable from architecture structure and both from
behavior specifications, execution guidance, and history. Use stable sections,
anchors, files, or generated views according to task fit and update cadence; do
not impose one directory or file split. Treat artifacts as competing authority
only when both claim to govern the same material meaning. Supporting explanation
with a canonical link is not duplicate truth. Keep plausible competitors
retrievable and surface their disagreement until the authority conflict is
resolved; do not optimize one away merely to reduce context.

Check for contradictory claims, history or observed code presented as accepted
intent, unreachable owners, circular routing, duplicated commands, and generated
views that cannot be rebuilt. Setup may repair a mechanically proven stale route.
Stop and route an unresolved semantic or authority conflict; do not select the
newest artifact or observed implementation as the winner. Keep progressive
disclosure: `AGENTS.md` routes the task, then the agent loads only the relevant
owners and supporting evidence.

## Feedback topology

| Partition and representative change or risk | Focused evidence status and command | Fixed claim and oracle owner | Expected failure diagnostic | Prerequisite, skip, or omission | Broader evidence status and gate | Runtime or environment limit |
| --- | --- | --- | --- | --- | --- | --- |

Classify focused and broader evidence as **present**, **absent**, **not applicable**,
or **disputed**. Run only fixed, accepted **present** checks. Presence does not
establish adequacy: inspect whether the method can falsify its named claim and
whether its failure narrows the likely cause. When a material gap has an accepted
claim and oracle, compose `software-verification` strategy mode, freeze the
method, environment, scope, and validity limit, then implement or wire the fixed
contract. If the skill, evidence, authority, or decision is unavailable, route
only the blocked slice. Do not invent a claim, oracle, or broader gate.
For a present command, confirm that it exercises the intended path, fails
observably when its required runtime is absent, and narrows the likely cause.
Keep unsupported behavior and broader integration risk visible.

Treat silent skips, zero-test runs, swallowed failures, stale fixtures, hidden
credentials, and checks that inspect only unstaged or only generated state as
possible false-green mechanisms. Their remedies depend on the repository; do not
standardize a command from one observed case.

## Bounded evidence-adequacy probes

Consider an adequacy probe only when ordinary evidence leaves a material
question, such as whether assertions detect realistic behavior changes, whether
an invariant holds across a large input space, or whether two implementations
remain equivalent. `software-verification` owns the method, scope, oracle,
operator set, threshold, budget, and adequacy judgment. Setup may wire an
accepted mutation, property, fuzz, differential, or model-based probe into a
stable command or CI path.

Prefer a stable seam, changed-code scope, representative defect class, bounded
runtime, reproducible seed, and inspectable counterexample. For mutation testing,
classify survivors before strengthening tests: they may expose a weak assertion,
dead code, an equivalent transformation, or a non-functional change such as a
performance-path degradation. Do not impose a universal mutation score or make
one probe the definition of correctness.

## Gate scope-delta and independent evidence

Use this section whenever setup changes test selection, full-verification
composition, CI enforcement, permissions, or another control that can reduce
detection or rejection scope.

| Gate or control | Frozen pre-change claims and selection | Exercised and omitted scope, skips, and exit semantics | Post-change delta | Fixed negative control or independent evidence | Result and validity limit |
| --- | --- | --- | --- | --- | --- |

The changed gate must not be the sole proof that its scope was preserved.
Preserve a pre/post inventory or other scope evidence and exercise a fixed
negative control where one is safe and credible. Use `software-verification`
independent mode when consequence,
uncertainty, irreversibility, changed protected enforcement, or builder bias
makes producer-run evidence insufficient. Record unavailable independent evidence
as **not run**; do not downgrade it to a producer pass.

## Minimum change set

| Slice | Demonstrated burden displaced | Files or owners changed | Compatibility and coexistence | Focused evidence | Broader evidence | Old path retired |
| --- | --- | --- | --- | --- | --- | --- |
| Task-to-authority retrieval and knowledge function | | | | | | |
| Concern separation and freshness | | | | | | |
| Stable setup and work commands | | | | | | |
| Accepted verification wiring | | | | | | |
| Proportional hooks or setup and verification CI | | | | | | |
| Optional local skill or re-entry state | | | | | | |

Skip rows that do not solve a present problem. Do not create placeholder docs,
unused scripts, speculative controls, or a repository skill for a one-off task.

## Mode-specific checks

### Bootstrap

- Confirm accountable owners accepted the product shape, delivery target,
  language and runtime, and every foundational architecture choice required by
  maintained scaffolding. Observable files constrain setup but do not establish
  acceptance. Stop and route unresolved choices.
- Start from the actual language, runtime, product shape, and delivery target.
- Trace representative accepted developer workflows before choosing structure.
- Establish distinct, retrievable ownership for domain meaning, architecture
  structure, behavior and rationale, execution guidance, and history only where
  that knowledge exists or is required for accepted work.
- Pin only versions whose variation would make setup or evidence unreliable.
- Establish one obvious path for setup, development, focused checks, broader
  verification, and build or packaging when those operations exist.
- Run required official paths to their defined completion or readiness signal in
  the accepted runtime. If that runtime is unavailable or a required path fails,
  record bootstrap as incomplete or blocked; do not substitute direct tool
  invocations that bypass prerequisites.
- Create knowledge owners only for decisions already known; do not fabricate a
  domain model, architecture, roadmap, or ADR backlog.
- Establish the first risk-matched feedback path for each sampled scenario. If a
  required claim or oracle is not accepted, preserve the gap instead of creating
  a ceremonial test.
- Add non-deployment CI only after the local command is stable and reproducible.

### Retrofit

- Follow the target agent's effective instruction chain and preserve dirty,
  ignored, generated, and user-owned work. Resolve overrides and configured
  fallbacks rather than assuming `AGENTS.md` is active. Do not place required
  guidance in a file shadowed by the selected override or fallback.
- Recover declared and observed behavior before replacing commands or moving
  files. Preserve runtime, stored data, API, import, and deployment compatibility.
- Trace grounded scenarios before editing. Improve document function, concern
  separation, task-to-authority retrieval, and verification adequacy rather than
  treating existing files or green commands as sufficient.
- An explicit retrofit request authorizes behavior-preserving knowledge
  reorganization and fixed verification artifacts. Route changes to meaning,
  supported behavior, public contracts, or production structure separately.
- Wrap or deepen a proven command before replacing the underlying toolchain.
- Separate current authority from historical project records without rewriting
  history to match today's implementation.
- Treat production-code reorganization as a separate refactoring decision; do
  not bundle it merely to make the tree look tidy.
- Preserve previously passing checks, keep pre-existing failures distinguishable
  from setup regressions, and provide a coexistence path when consumers cannot
  switch atomically.
- Add a new local command or behavior-preserving wrapper directly. Obtain
  `software-contract-evolution` before changing, deprecating, or retiring the
  semantics of a supported or independently consumed command; when unavailable,
  preserve its behavior and route only that slice. Retain a shim until its exit
  evidence passes when compatibility requires one.
- Finish with either a demonstrated material improvement tied to the baseline
  friction or an evidence-backed no-op from the sampled scenarios. An
  `AGENTS.md` edit alone does not establish either result.

### Renew

- Start from a repeated failure, review comment, manual workaround, stale
  instruction, escaped defect, or measured setup burden.
- Reproduce the trigger when safe, or recover enough inspectable evidence to
  distinguish an instruction, knowledge, command, harness, product, environment,
  or oracle failure.
- Repair the earliest responsible document, skill, command, test, hook, CI
  control, permission, or runtime seam.
- Correct stale documentation or routing without changing an existing supported
  command's semantics unless `software-contract-evolution` has fixed its
  compatibility path.
- Compose the responsible specialist workflow when the repair needs available
  domain, architecture, writing, or verification judgment. Do not stop at a
  handoff when the result can be obtained within current authority.
- Rerun the scenario that exposed the gap and any accepted **present** affected
  broader verification. Preserve **absent**, **not applicable**, or **disputed** state.
- Convert repeated learning into the smallest durable retrieval, freshness,
  regression, diagnostic, or enforcement mechanism that prevents recurrence.
- Redirect or deprecate the superseded path by default. Remove an exact tracked
  or untracked path only with explicit exact-target authority; tracked or
  supported paths also require satisfied consumer obligations. State what
  observation should trigger another renewal. Do not infer deletion authority
  from the renew request.

## Cold-start and failure rehearsal

| Exercise | Initial state | Expected minimum sufficient sources and command | Injected ambiguity or failure | Expected diagnostic or stop | Observed task result and retrieval delta | Gap owner |
| --- | --- | --- | --- | --- | --- | --- |

Useful exercises include a clean clone or environment, a fresh-agent discovery
pass, a failing narrow test, an invalid configuration, an interrupted setup, and
a cold handoff. Use only the cases that exercise real uncertainty.

When instruction routing or local skill discovery changes, finish the current
repository-editing session and use a distinct fresh consumer context for each
sampled material partition when the platform and authority permit.
Record which sources and skills actually loaded. If a fresh context is
unavailable, mark it **not run** and report the manual follow-up; do not infer a
pass. Include an override-shadowing case when supported.

## Verification record

| Claim | Exact invocation or inspection | Environment | Result and raw evidence location | Validity limit | Independent perspective if needed |
| --- | --- | --- | --- | --- | --- |

Check that:

- documented commands exist and resolve from the stated working directory;
- claims and oracles are accepted and unambiguous before setup derives a direct
  inner-loop check; disputed coverage, consequential method choices, undefined
  evidence limits or broader-gate scope, and independent verdicts come from
  `software-verification`;
- clean setup does not depend on unrecorded global state or credentials;
- every selected partition routes each material claim from effective `AGENTS.md`
  instructions to its accountable authority; untested partitions remain visible;
- domain meaning, architecture structure, behavior specifications, execution
  guidance, and history are distinguishable without requiring a universal file tree;
- focused and broader evidence states are explicit, and present checks exercise
  different justified scopes;
- required runtimes fail clearly instead of silently skipping the intended path;
- evidence-adequacy probes are bounded, reproducible, and wired only after their
  method and oracle are accepted;
- a changed gate has a pre/post scope delta, is not the sole proof that its scope
  was preserved, and keeps required negative-control or independent evidence
  inspectable or **not run**;
- local and CI paths do not drift into separate implementations;
- unattended automation exposes a pause or operator-control path and stays
  within permissions, budget, retries, cleanup, stop conditions, and accountable
  review capacity;
- generated output is replaceable and ignored when it is not authoritative;
- secrets, remote providers, destructive fixtures, and production effects are
  excluded or separately authorized; and
- plausible competing authorities are surfaced until resolved or explicitly
  blocked; stale instructions and obsolete commands are clearly redirected or
  deprecated, or removed with exact authority and satisfied consumer obligations.

## Completion record

- Grounded scenarios and task outcomes:
- Minimum sufficient context and before-and-after retrieval limits:
- Changed files and canonical owners:
- New or changed commands:
- Pre-change and post-change evidence:
- Material partitions not exercised:
- Verification states and gate scope deltas:
- Negative-control or independent evidence and not-run limits:
- Behavior and compatibility preserved:
- Historical or obsolete path disposition:
- Redirected or deprecated paths and compatibility shims:
- Exact deleted paths and deletion authority:
- Pre-existing failures preserved as distinguishable:
- Remaining manual steps:
- External settings or production actions not performed:
- Specialist routes and unresolved gaps:
- Material improvement or evidence-backed no-op basis:
- Observation that should trigger the next renewal:
