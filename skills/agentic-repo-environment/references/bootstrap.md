# Bootstrap Playbook

Use only for Bootstrap; shared authority and controls remain in `SKILL.md`.

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

Pin versions only when variation would make setup or evidence unreliable.
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

### Enable renewal intake when justified

Enable intake when repeated agent work, recurring intervention, or an accepted
automation goal justifies it. Otherwise record a deferred extension point and
the observation that should activate it. Do not require owners, trials, or new
records for a deferred interface.

When enabled, reuse existing pull requests, reviews, issues, CI artifacts, tests,
traces, and commit history. Existing maintainers or policy may supply authority;
do not invent a committee, new role, or separate control plane.

For enabled intake, record the following in an existing surface. Link existing
answers rather than copying them; defer details that depend on a future candidate:

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

Bootstrap is complete when the accepted walking skeleton works and renewal
intake is either usable within existing authority or explicitly deferred. A
documented but failing official path remains incomplete. Read
[renewal.md](renewal.md) when an actual episode enters Renew; Bootstrap need not
load or instantiate its candidate lifecycle.

Reject speculative scaffolding, unanswered consequential choices treated as
accepted, and repository-wide readiness claims from one sampled partition.
