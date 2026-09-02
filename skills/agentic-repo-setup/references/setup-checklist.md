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
- Representative change path:
- Authorized repository writes:
- Exact tracked paths authorized for deletion, if any:
- External or production actions excluded:
- Supported behavior and compatibility to preserve:
- Unrelated work present:

## Baseline

| Surface | Observed current mechanism | Evidence or exact command | Friction, conflict, or gap | Current owner |
| --- | --- | --- | --- | --- |
| Effective instruction chain, precedence, launch directory, fallbacks, and size limits | | | | |
| Current domain and architecture truth | | | | |
| Historical project or decision records | | | | |
| Runtime, dependencies, and clean setup | | | | |
| Dev, test, build, diagnosis, and maintenance commands | | | | |
| Focused and full verification | | | | |
| Hooks, CI, permissions, and protected gates | | | | |
| General and repo-specific skill routing | | | | |
| Pause, re-entry, retry, and handoff state | | | | |

Classify evidence as observed, declared, inferred, missing, or conflicting.
Record the pre-change check for an existing repository, including failures that
must remain distinguishable from setup regressions.

## Source-of-truth map

| Meaning, state, operation, or control | Canonical owner | Discovery path | Consumers | Renewal rule | Duplicate or stale path to retire |
| --- | --- | --- | --- | --- | --- |

Default placement:

- the target agent's effective instruction chain: concise routing, local
  invariants, approved commands, and checks; for Codex include overrides,
  `AGENTS.md`, configured fallbacks, launch directory, and truncation, and write
  required guidance only to the selected active file at each directory;
- current docs, ADRs, tests, and code: active domain and architecture meaning;
- project or decision history: durable past intent, evidence, and learning;
- installed general skills: cross-repository judgment and workflows;
- `.agents/skills`: stable procedures specific to this repository or subtree,
  authored or materially revised through `skill-creator`;
- scripts and manifest commands: repeatable, non-interactive operations;
- tests, hooks, CI, permissions, and gates: deterministic enforcement; and
- established issue or change systems: durable work and re-entry state.

## Minimum change set

| Slice | Demonstrated burden displaced | Files or owners changed | Compatibility and coexistence | Focused evidence | Full evidence | Old path retired |
| --- | --- | --- | --- | --- | --- | --- |
| Discoverable current truth | | | | | | |
| Stable setup and work commands | | | | | | |
| Accepted verification wiring | | | | | | |
| Proportional hooks or setup and verification CI | | | | | | |
| Optional local skill or re-entry state | | | | | | |

Skip rows that do not solve a present problem. Do not create placeholder docs,
unused scripts, speculative controls, or a repository skill for a one-off task.

## Mode-specific checks

### Bootstrap

- Confirm product shape, delivery target, language and runtime, and every
  foundational architecture choice required by maintained scaffolding. Stop and
  route unresolved choices instead of selecting them as setup.
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
- Rerun the scenario that exposed the gap and the affected full verification.
- Redirect or deprecate the superseded path by default. Remove an exact tracked
  path only with deletion authority and satisfied consumer obligations. State
  what observation should trigger another renewal.

## Cold-start and failure rehearsal

| Exercise | Initial state | Expected discovery and command | Injected ambiguity or failure | Expected diagnostic or stop | Observed result | Gap owner |
| --- | --- | --- | --- | --- | --- | --- |

Useful exercises include a clean clone or environment, a fresh-agent discovery
pass, a failing narrow test, an invalid configuration, an interrupted setup, and
a cold handoff. Use only the cases that exercise real uncertainty.

When instruction routing or local skill discovery changes, finish the mutation
session and start a distinct new consumer session from every material working
directory. Record which instruction sources and skills it actually loaded.
Include an override-shadowing case when the target agent supports instruction
precedence, and repeat after repairing any shadowed guidance.

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
- focused feedback and full verification exercise different justified scopes;
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
- Behavior and compatibility preserved:
- Historical or obsolete path disposition:
- Redirected or deprecated paths and compatibility shims:
- Exact deleted paths and deletion authority:
- Pre-existing failures preserved as distinguishable:
- Remaining manual steps:
- External settings or production actions not performed:
- Specialist routes and unresolved gaps:
