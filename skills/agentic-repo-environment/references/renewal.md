# Renewal Playbook

Use only for Renew; shared authority and controls remain in `SKILL.md`.

## Renew through repo-level backpropagation

Execute repairs one task instance. Renew changes the repository environment
only when the correction should improve a future class of work.

### Bind a closed episode

Reuse existing episode evidence and link its sources. The following fields
guide qualification; missing fields are evidence limits, not a requirement to
create a full dossier for a local correction:

| Field | Required content |
| --- | --- |
| Task | Intent, accepted behavior, scope, and outcome |
| Identity | Repository revision plus relevant model, tool, skill, policy, and environment versions |
| Context | Effective instructions and authoritative sources actually loaded |
| Trajectory | Material actions, retries, fallback, and stop or escalation points |
| Candidate | Produced diff or other repository change |
| Evidence | Commands, results, skips, omissions, diagnostics, and raw evidence locations |
| Evaluation | Review findings, production outcome, or another trustworthy external signal |
| Correction | Accepted change and the authority that accepted its meaning |
| Cost | Human interventions and relevant elapsed, token, tool, or review burden |

If the full episode is unavailable, bound what is known and classify the
remaining evidence. Do not turn a plausible narrative into causal certainty.

### Qualify the correction

A candidate learning should be:

- **confirmed:** the correction or outcome is accepted;
- **attributable:** evidence supports the failure mechanism;
- **reusable:** the same mechanism can affect a meaningful future class;
- **stable:** the underlying intent or workflow is not merely transient;
- **encodable:** one durable owner can represent the correction; and
- **verifiable:** replay and comparison can distinguish improvement.

Failure on one criterion may yield `task-local`, `routed`, `quarantined`, or
`insufficient evidence`; it does not require a repository-environment update.

### Assign the earliest durable owner

| Failure mechanism | Typical evidence | Default correction owner |
| --- | --- | --- |
| Context discovery | Agent did not reach the needed source | Effective instruction or retrieval route |
| Authority or projection | Agent used history, vision, code, or a derived view as current intent | Artifact role and consumption rule |
| Repeated procedure | A stable local sequence is repeatedly omitted or performed incorrectly | Repository-specific skill or command |
| Tool or runtime friction | Setup, reproduction, command discovery, or diagnostics fail | Runtime, wrapper, tool, or command path |
| Weak feedback | A defect reaches review that focused evidence could detect | Fixed check, diagnostic, or evidence wiring |
| False green | Existing evidence passes while the named claim is false | `software-verification` contract and regression case |
| Permission or control gap | An agent can perform an unauthorized or unsafe effect | Permission, policy, hook, gate, or operator control |
| Architecture friction | Similar changes repeatedly diffuse, duplicate branches, or cross owners | Domain, design, module, service, or refactoring owner |
| Task-local implementation defect | The governing context and environment were adequate | Code repair and proportionate regression only |
| Model variance | Matched reruns do not support a stable repository cause | Retry, fallback, model selection, or no learning |
| Product ambiguity | Several behaviors remain legitimately possible | Accountable product or domain owner |

Renew owns classification and integration. It consumes specialist decisions but
does not redefine their semantic authority.

### Compile learning to the lowest stable layer

Prefer, in order:

1. remove the underlying cause or improve the structural seam;
2. add a deterministic executable control;
3. improve a tool, command, or diagnostic affordance;
4. repair context, authority, or freshness routing;
5. add or revise a repository-specific skill;
6. add advisory prose; then
7. retain a non-authoritative historical lesson.

This is a preference, not permission to take another owner's decision. A
low-level control is stronger only when its claim and oracle are accepted and
its maintenance cost is justified.

### Trial against source, contrast, and guardrail

| Evidence role | Question | Case | Result and validity limit |
| --- | --- | --- | --- |
| Source replay | Does the candidate prevent, expose earlier, or reduce the cost of the original mechanism? | | |
| Held-out or contrast | Does the learning transfer to a related case that did not generate it? | | |
| Guardrail | Does an already-correct path, authority boundary, or protected control remain intact? | | |
| Cost | Did quality improve without disproportionate context, execution, review, or maintenance cost? | | |

Use a held-out case that exercises the mechanism, not a paraphrase of the source
episode. For long-term changeability, prefer a sequential follow-up task that
adds, changes, or removes a neighboring variant.

When the candidate changes a check, selector, judge, permission, or gate,
preserve frozen pre-change scope and use a fixed negative control or independent
evaluator. The changed evaluator cannot be the sole success criterion.

### Match promotion evidence to blast radius

| Level | Typical candidate | Minimum promotion evidence and eligible path |
| --- | --- | --- |
| A | Derived route repair, non-blocking diagnostic, or local behavior-preserving wrapper | Local automatic application within existing authority, with a fixed oracle and bounded rollback |
| B | Focused check, stable command, or repository-specific procedure | Replay, contrast, and guardrail evidence; automatic PR only when commit, push, and publication are authorized |
| C | Root instructions, broader verification, blocking CI, permission, or supported command contract | Independent review and explicit compatibility evidence |
| D | Product meaning, domain invariant, application architecture, data migration, deployment, or release behavior | Acceptance by the corresponding accountable owner |

These levels specify evidence and review, not execution permission. Use
authorization already granted by the task or adopted repository policy; do not
ask again for covered actions. Without publication authority, finish authorized
local work and report the remaining publication step. Do not weaken a protected
promotion path.

Scale trials to the correction: a deterministic route repair may compare source
and neighboring task routes directly and check an unaffected route. Do not
create an automation harness for one bounded trial. Record unavailable evidence
as unavailable and retain or reject the candidate instead of inventing a pass.

### Record a non-binary disposition

An evaluation may complete without changing the repository environment.
Promotion alone requires all applicable trial evidence to pass. A failed
contrast can support rejection; missing evidence can support deferral. Neither
requires a passing promotion trial. Use a specific disposition rather than an
unexplained `no-op`:

- `promoted`;
- `trial retained`;
- `task-local fix only`;
- `routed to semantic or structural owner`;
- `insufficient evidence`;
- `quarantined`;
- `rejected as overfit or harmful`;
- `superseded`; or
- `rolled back`.

Keep one candidate record on an existing change or evidence surface. Reuse the
episode links above. For every promoted or retained trial, capture:

```text
Source episode:
Supported mechanism:
Accepted correction:
Changed owner and artifact:
Applicable work class:
Replay, contrast, guardrail, and cost evidence:
Promotion authority:
Validity limit:
Superseded path:
Rollback path:
Reopening or expiry signal:
```

### Consolidate rather than accumulate

A promoted correction should replace, redirect, deprecate, or explicitly coexist
with older routes. Do not append a new instruction while leaving a contradictory
or weaker path active. Preserve provenance in history without making the old
record current authority.

Monitor future episodes for recurrence, new false positives, bypass behavior,
maintenance burden, and transfer failure. Reopen or roll back when the recorded
signal appears.

## Reject weak results

Reject promotion of a candidate that:

- stores raw failed trajectories as reusable guidance;
- turns one coding mistake or reviewer preference into a global rule;
- lets a modified evaluator certify itself;
- improves only the source example while failing an appropriate contrast;
- adds prose where a justified executable or structural correction owns the
  problem;
- accumulates routes, checks, or skills without supersession; or
- claims repository-wide readiness from one task class or partition.
