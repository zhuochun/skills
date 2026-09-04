# Bootstrap and Renewal Playbook

Read this reference only for `agentic-repo-setup` Bootstrap or Renew. Keep the
common execution spine and authority boundaries in `SKILL.md`.

## Bootstrap a young repository

Bootstrap forms a minimum repository-local agent environment before it
materializes files. It may recommend reversible repository choices. It does not
invent product meaning or choose application, service, deployment, or data
architecture.

### Inspect before interviewing

Inspect available product evidence, accepted decisions, code, manifests,
runtime constraints, delivery surfaces, existing commands, and organizational
standards. Do not ask for information that is already discoverable.

Ask only questions whose answers change maintained scaffolding:

| Decision surface | Bootstrap question |
| --- | --- |
| Target work classes | Which work should agents handle first: bounded bug fixes, existing-pattern features, refactors, data changes, or another named class? |
| Representative slice | Which real workflow can prove the first environment end to end? |
| Fixed constraints | Which language, runtime, framework, deployment target, and organizational platform choices are already accepted? |
| Evidence contract | What evidence is required before review, merge, delivery, or another protected effect? |
| Autonomy boundary | Which writes, dependencies, CI actions, external calls, and destructive actions may run without intervention? |
| Information ownership | Where do current intent, domain meaning, architecture decisions, operations, and history belong? |
| Renewal policy | Which accepted corrections trigger a candidate, who may promote it, and how is it reversed? |

Batch independent low-sensitivity questions. Serialize only when one answer
changes the next question or determines whether later scaffolding is relevant.

### Maintain a decision frontier

| Choice | State | Evidence or owner | Recommended default and rationale | Reversal path | Dependent slice |
| --- | --- | --- | --- | --- | --- |
| | `accepted` / `recommended reversible default` / `consequentially unresolved` / `deferred` | | | | |

Use the states as follows:

- **accepted:** the accountable owner or adopted authority fixed the choice;
- **recommended reversible default:** Bootstrap may materialize the choice when
  its consequences are local, inexpensive to reverse, and clearly labeled;
- **consequentially unresolved:** do not materialize dependent scaffolding;
- **deferred:** preserve an ordinary extension seam, but add no machinery.

Recommend one minimum profile. State why it fits the target work, what it costs,
which alternatives were rejected, and how to reverse it. If interaction is
unavailable, return a conditional recommendation instead of silently promoting
a consequential choice.

### Design logical information architecture first

Information architecture is a set of routes, authority classes, owners,
consumption rules, freshness mechanisms, and lifecycles. It is not a preferred
directory tree.

| Logical role | Minimum responsibility | Materialize when |
| --- | --- | --- |
| Entry router | Route tasks and changed surfaces to owners, commands, and evidence | An agent needs a repository entry point |
| Current intent | Own accepted outcomes, behavior, constraints, and non-goals | Current product or change intent exists |
| Domain knowledge | Own accepted vocabulary, classifications, states, and invariants | Semantic decisions affect work |
| Architecture knowledge | Own accepted responsibilities, interfaces, dependencies, boundaries, and rationale | Structural decisions exist |
| Executable truth | Encode named claims in code, tests, schemas, types, configuration, and policies | The claim is fixed and executable |
| Runtime and commands | Provide reproducible setup, work, check, build, diagnosis, and maintenance paths | The operation exists |
| Operations | Explain runtime diagnosis, recovery, and ownership | Operational responsibility exists |
| History | Preserve superseded decisions, evidence, and learning without governing current work | Past context has future decision value |
| Local procedure | Package stable repository-specific judgment or workflow | Repetition demonstrates a durable interface |
| Renewal intake | Bind execution episodes, accepted corrections, trials, and dispositions | The repository will learn from execution |

Do not create an empty domain model, ADR backlog, runbook collection, skill,
test directory, or memory service merely to complete the table. A stable
section, anchor, file, generated view, test, issue, or existing system may own a
role.

Define how each artifact is consumed, not only whether it is authoritative.
For example, a long-horizon vision may supply direction and constraints without
becoming the current change scope. History may explain provenance without
becoming current intent. Code may show observed behavior without accepting it.

### Establish the walking skeleton

Exercise one representative path:

```text
clean setup
  -> discover current authority
  -> perform representative work
  -> run focused feedback
  -> run broader evidence
  -> inspect useful failure output
  -> hand off or close
```

Use the accepted runtime and official command paths. A direct invocation that
bypasses a failed prerequisite is supplemental evidence, not proof of a usable
Bootstrap.

Record:

- the initial task and expected outcome;
- sources actually selected and discarded;
- command and working-directory path;
- focused and broader evidence;
- expected failure diagnostic;
- manual intervention and unresolved decisions; and
- untested material partitions.

### Install the renewal interface

Prefer existing pull requests, reviews, issues, CI artifacts, tests, traces, and
commit history over a new control plane.

Record at minimum:

```text
Episode sources:
Accepted-correction signal:
Candidate intake owner:
Automatic-trial boundary:
Promotion authority by blast radius:
Replay and contrast cases:
Guardrail evidence:
Supersession and rollback path:
Reopening or expiry signal:
```

Bootstrap is complete only when the accepted walking skeleton works and the
renewal interface has accountable owners. A documented but failing official
path remains incomplete.

## Renew through repo-level backpropagation

Execute repairs one task instance. Renew changes the repository environment
only when the correction should improve a future class of work.

### Bind a closed episode

A useful episode identifies:

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

### Match promotion authority to blast radius

| Level | Typical candidate | Minimum promotion path |
| --- | --- | --- |
| A | Derived route repair, non-blocking diagnostic, or local behavior-preserving wrapper | Automatic application only with a fixed oracle and bounded rollback |
| B | Focused check, stable command, or repository-specific procedure | Source replay and held-out evidence; automatic pull request is acceptable |
| C | Root instructions, broader verification, blocking CI, permission, or supported command contract | Independent review and explicit compatibility evidence |
| D | Product meaning, domain invariant, application architecture, data migration, deployment, or release behavior | Acceptance by the corresponding accountable owner |

A repository may impose stronger controls. Do not weaken an existing protected
promotion path.

### Record a non-binary disposition

Use one of these states:

- `promoted`;
- `trial retained`;
- `task-local fix only`;
- `routed to semantic or structural owner`;
- `insufficient evidence`;
- `quarantined`;
- `rejected as overfit or harmful`;
- `superseded`; or
- `rolled back`.

For every promoted or retained trial, record:

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

Reject a Bootstrap or Renew result that:

- creates a conventional file tree without a representative walking skeleton;
- treats an unanswered consequential choice as accepted;
- stores raw failed trajectories as reusable guidance;
- turns one coding mistake or reviewer preference into a global rule;
- lets a modified evaluator certify itself;
- improves only the source example while failing an appropriate contrast;
- adds prose where a justified executable or structural correction owns the
  problem;
- accumulates routes, checks, or skills without supersession; or
- claims repository-wide readiness from one task class or partition.
