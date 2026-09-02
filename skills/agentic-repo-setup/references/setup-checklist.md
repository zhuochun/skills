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
- Unresolved decisions that setup must stop and route:
- Material path partitions and representative change for each:
- Authorized repository writes:
- Exact tracked paths authorized for deletion, if any:
- External or production actions excluded:
- Supported behavior and compatibility to preserve:
- Unrelated work present:

## Baseline

| Surface | Observed current mechanism | Evidence or exact command | Friction, conflict, or gap | Accountable or artifact owner |
| --- | --- | --- | --- | --- |
| Effective instruction chain, precedence, launch directory, fallbacks, and size limits | | | | |
| AGENTS-routed discovery of current knowledge and its owner | | | | |
| Accepted intent, domain meaning, architecture commitments, and rationale | | | | |
| Executable contracts and hard controls | | | | |
| Observed implementation and runtime behavior | | | | |
| Historical project or decision records | | | | |
| Derived or generated knowledge and its freshness mechanism | | | | |
| Runtime, dependencies, and clean setup | | | | |
| Dev, test, build, diagnosis, and maintenance commands | | | | |
| Focused and full verification | | | | |
| Hooks, CI, permissions, and protected gates | | | | |
| General and repo-specific skill routing | | | | |
| Pause, re-entry, retry, and handoff state | | | | |

Classify evidence as observed, declared, inferred, missing, or conflicting.
Record the pre-change check for an existing repository, including failures that
must remain distinguishable from setup regressions.

## AGENTS-routed repository knowledge map

| Claim, task, changed surface, operation, or control | Effective AGENTS route | Authority class | Accountable owner | Supporting or observed artifacts | Freshness or validation | Conflict or stale route |
| --- | --- | --- | --- | --- | --- | --- |

Default placement:

- the target agent's effective instruction chain: the bootstrap router for local
  invariants, approved commands, and checks; for Codex include overrides,
  `AGENTS.md`, configured fallbacks, launch directory, and truncation, and write
  required guidance only to the selected active file at each directory;
- accountable decisions, specifications, ADRs, and domain or architecture
  documents: accepted intent, meaning, commitments, and rationale;
- tests, schemas, types, configuration, linters, hooks, CI, and permissions:
  executable contracts and hard controls, each authoritative only for its claim;
- code and runtime evidence: observed behavior, not accountable acceptance;
- project or decision history: durable past intent, evidence, and learning;
- installed general skills: cross-repository judgment and workflows;
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

Check for contradictory claims, history or observed code presented as accepted
intent, unreachable owners, circular routing, duplicated commands, and generated
views that cannot be rebuilt. Setup may repair a mechanically proven stale route.
Stop and route an unresolved semantic or authority conflict; do not select the
newest artifact or observed implementation as the winner. Keep progressive
disclosure: `AGENTS.md` routes the task, then the agent loads only the relevant
owners and supporting evidence.

## Feedback topology

| Partition and representative change or risk | Focused evidence status and command | Fixed claim and oracle owner | Expected failure diagnostic | Prerequisite, skip, or omission | Full evidence status and gate | Runtime or environment limit |
| --- | --- | --- | --- | --- | --- | --- |

Classify focused and full evidence as **present**, **absent**, **not applicable**,
or **disputed**. Run only fixed, accepted **present** checks. Preserve other
states as gaps or justified exclusions. When a material claim needs absent or
disputed evidence, route its contract to `software-verification`; do not invent
a command, claim, oracle, or full gate.
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

| Slice | Demonstrated burden displaced | Files or owners changed | Compatibility and coexistence | Focused evidence | Full evidence | Old path retired |
| --- | --- | --- | --- | --- | --- | --- |
| Claim-level authority routing | | | | | | |
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
- Pin only versions whose variation would make setup or evidence unreliable.
- Establish one obvious path for setup, development, focused checks, full
  verification, and build or packaging when those operations exist.
- Create knowledge owners only for decisions already known; do not fabricate a
  domain model, architecture, roadmap, or ADR backlog.
- Add non-deployment CI only after the local command is stable and reproducible.

### Retrofit

- Follow the target agent's effective instruction chain and preserve dirty,
  ignored, generated, and user-owned work. Resolve overrides and configured
  fallbacks rather than assuming `AGENTS.md` is active. Do not place required
  guidance in a file shadowed by the selected override or fallback.
- Recover declared and observed behavior before replacing commands or moving
  files. Preserve runtime, stored data, API, import, and deployment compatibility.
- Wrap or deepen a proven command before replacing the underlying toolchain.
- Separate current authority from historical project records without rewriting
  history to match today's implementation.
- Treat production-code reorganization as a separate refactoring decision; do
  not bundle it merely to make the tree look tidy.
- Preserve previously passing checks, keep pre-existing failures distinguishable
  from setup regressions, and provide a coexistence path when consumers cannot
  switch atomically.
- Add or wrap purely local command entry points directly. Route supported or
  independently consumed command deprecation and retirement to
  `software-contract-evolution`, retaining a shim until its exit evidence passes.

### Renew

- Start from a repeated failure, review comment, manual workaround, stale
  instruction, escaped defect, or measured setup burden.
- Repair the earliest responsible document, skill, command, test, hook, CI
  control, permission, or runtime seam.
- Rerun the scenario that exposed the gap and any accepted **present** affected
  full verification. Preserve **absent**, **not applicable**, or **disputed** state.
- Redirect or deprecate the superseded path by default. Remove an exact tracked
  path only with deletion authority and satisfied consumer obligations. State
  what observation should trigger another renewal.

## Cold-start and failure rehearsal

| Exercise | Initial state | Expected discovery and command | Injected ambiguity or failure | Expected diagnostic or stop | Observed result | Gap owner |
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
  evidence limits or full-verify scope, and independent verdicts come from
  `software-verification`;
- clean setup does not depend on unrecorded global state or credentials;
- every selected partition routes each material claim from effective `AGENTS.md`
  instructions to its accountable authority; untested partitions remain visible;
- focused and full evidence states are explicit, and present checks exercise
  different justified scopes;
- required runtimes fail clearly instead of silently skipping the intended path;
- evidence-adequacy probes are bounded, reproducible, and wired only after their
  method and oracle are accepted;
- a changed gate has a pre/post scope delta, is not the sole proof that its scope
  was preserved, and keeps required negative-control or independent evidence
  inspectable or **not run**;
- local and CI paths do not drift into separate implementations;
- generated output is replaceable and ignored when it is not authoritative;
- secrets, remote providers, destructive fixtures, and production effects are
  excluded or separately authorized; and
- stale instructions, duplicate documents, and obsolete commands are clearly
  redirected or deprecated, or removed with exact authority and satisfied
  consumer obligations.

## Completion record

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
