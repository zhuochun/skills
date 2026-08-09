# Evaluation learnings

This note records durable lessons from early internal evaluation rounds. It is
not a result summary. Raw outputs, blind grades, and adjudications are local
development assets and are intentionally not versioned.

For engineers reviewing the evaluation design, three claims stay separate:
effectiveness asks whether the skill caused a repeatable improvement; rubric
validity asks whether the grader rewarded the intended decisions; and cost asks
what resources the improvement consumed. A complete evaluation reports all
three. An effective skill can still be too costly, and a cheap run can still be
invalid or ineffective.

This document explains why the evaluation has its current shape. The v1-v3
records remain immutable historical evidence. Use [v4/README.md](v4/README.md)
for the current typed, policy-matched protocol; raw plans, packets, results, and
audit stores remain local development assets.

## Basic skill-evaluation concepts

A skill evaluation needs one primary causal comparison and separate diagnostic
conditions. Each producer uses the same natural task, pinned subject revision,
model, reasoning effort, tools, permissions, and fresh isolated runtime. The
evaluated skill's availability is the main variable.

| Condition | Evaluated skills available | Purpose |
| --- | --- | --- |
| Baseline | None | Measure ordinary Codex behavior without this catalog. |
| Installed | Target skill only | Measure practical automatic activation for an implicit-enabled skill. |
| Explicit control | Generic named placebo only | Match the skill name and explicit invocation cue without the real workflow. |
| Explicit | Target skill only, explicitly requested | Measure an explicit-only skill against the matched named placebo. |
| Attention | None | Test whether a generic request for extra care explains an apparent gain. |
| Forced | Target skill only, explicitly requested | Diagnose an unexpected implicit-activation or adherence miss. |

The primary estimate follows the skill's shipped invocation policy:
`installed - baseline` when implicit invocation is allowed, and
`explicit - explicit-control` when it is not. The explicit pair receives the
same `Use $skill-name` prompt; its control installs a minimal generic skill
under that name, so improvement cannot be credited merely to the name or an
extra instruction to use a workflow. `explicit - baseline` remains a useful
secondary estimate of the intended user experience, but it does not isolate the
skill package from the explicit invocation cue.

Attention is an optional mechanism control on selected cases, not a required
third arm and not a tie-breaker. If installed and attention improve similarly
over baseline, the gain may come mainly from generic care rather than
skill-specific guidance. Resolve a tied primary pair with independent
replication, blind-grader adjudication, or a more discriminating case—not by
letting the attention result decide the pair.

Forced use remains diagnostic rather than primary evidence for
implicit-enabled skills. An installed run that never loads the target skill
measures the real activation experience; a subsequent forced run asks whether
the skill could help if activated. Do not pool attention or forced results into
the policy-matched primary estimate.

Invocation policy does not replace positive and negative task coverage. An
implicit-enabled skill needs a natural positive case where it should activate
and a natural negative case where it should remain inactive, stay narrow, or
route. An explicit-only skill needs a useful explicit case and a deliberate
misuse or boundary case where the real skill should resist overreach better
than the named placebo. Keep implicit negative cases together when practical so
activation behavior can be audited as its own batch rather than confused with
explicit proportionality.

Sequential compositions need factorial controls. For implementation followed
by review, compare no skills, producer skill only, reviewer skill only, and both
skills in their respective fresh stages. This separates producer quality from
review quality and reveals whether the composed pipeline is complementary.
Review both the control and skilled implementation artifacts with both reviewer
conditions; otherwise stochastic differences between implementations can be
mistaken for a reviewer effect. The reviewer must judge a frozen diff against
the original request without inheriting the builder's context, and any reviewer
mutation invalidates the run.

Score decision quality blindly before revealing conditions. Review cost,
investigation effort, and communication efficiency afterward so a polished or
longer template does not earn quality credit merely for consuming more
resources. Treat one broad pass as screening evidence; effectiveness claims
require independent repetitions, multiple blind graders, no integrity failure,
and materially different ordinary and boundary cases.

When a package contains many related skills, breadth-first screening can be
split into sealed batches without changing the estimand. Define the batches and
their cases before production, randomize conditions within each batch, and
finish anonymization and blind grading before using its results to select
replications. A screening case may exercise two composable skills only when a
factorial design still separates their main effects. Supporting cases should
add a different mechanism or a routing or non-activation boundary, not merely
repeat the same prompt until a preferred result appears.

## Start with the claim you want to make

"Does the skill help?" is too broad to design an experiment around. Decide
which claim is under test:

- **Activation:** Does the skill load when it should and remain inactive when
  it should not apply?
- **Capability:** When available under its shipped invocation policy, does it
  improve the target engineering decision?
- **Safety:** Does it preserve authority, compatibility, and stop conditions
  on boundary cases?
- **Composition:** Does a multi-stage workflow add value beyond either skill
  alone?
- **Efficiency:** What quality gain, if any, justifies the additional cost?

The claim determines the primary comparison, cases, rubric, and evidence.
Predeclare what would count as a useful signal, an invalid run, a regression,
and a result that needs replication. Otherwise the observed outputs will tempt
the evaluator to redefine success after the fact.

## Make the treatment identifiable

The treatment is the evaluated skill package under its shipped invocation
policy. Everything else that can affect the outcome—task, subject revision,
model, reasoning effort, tools, permissions, and runtime context—must remain
pinned or become an explicit experimental factor.

**What went wrong.** Fresh subagent conversations inherited the parent skill
catalog, global instructions, working-directory guidance, memory, and project
context. Seven of eleven baseline producers read the target skill, and three of
six attention controls did the same. Baseline and treatment reports then
converged on the same decision structure because many controls had received the
treatment.

**What worked.** Independent Codex processes with isolated runtime homes made
evaluated skills physically absent from controls. Disposable subject worktrees
separated the task from hidden evaluator evidence. Machine-readable traces
made unexpected skill reads, prompt drift, revision drift, and subject mutation
auditable.

A prompt cannot repair a contaminated runtime. "Do not use skills" does not
create a control when the process can still discover and activate them.

## Design cases that can falsify the claim

An ordinary success case shows that a skill can be useful. It does not show
that the skill is well calibrated. Pair it with a case where the correct
behavior is to remain inactive, stay narrow, preserve an awkward protection,
route elsewhere, or stop for an owner decision.

**What went wrong.** One case per skill was too narrow, some prompts exposed
the intended capability boundary, and repeated variants of the same mechanism
looked like replication without testing generalization. Polished answers could
still hide compatibility or authority failures.

**What worked.** Breadth-first screening used ordinary, boundary, and
invocation-calibration cases. Targeted replication then added a materially
different mechanism or contract. Producer screens used a settled contract, a
different effect or lifecycle change, and an intentionally unresolved
commitment. This distinguished capability from accidental fit to one prompt.

Cases also need a runnable behavioral seam. Symmetric absence of the subject's
test runtime can preserve a comparison for screening, but it prevents graders
from awarding strong executed-evidence credit and weakens any later claim.

## Prove isolation before production

Isolation is part of the experiment, not an operational detail. It must be
enforced before model invocation; traces and post-run audits can detect a leak
but cannot retroactively create a clean comparison.

Before spending on production, prove that:

- control processes cannot discover evaluated skills;
- producers cannot read cases, anchors, mappings, previous outputs, or other
  hidden evaluator evidence;
- the common prompt states the natural task and authority without teaching the
  skill's workflow, counterexamples, report shape, or quality gates;
- subject revision, prompt hash, skill-tree digest, model, reasoning effort,
  tools, permissions, and working-tree status are pinned;
- each stage has a fresh runtime context and writes only to its declared
  artifact boundary; and
- the harness can retain an auditable record even when setup or production
  stops partway through a batch.

Treat a failed preflight as a stopped experiment, not a condition to work
around. Procedural promises and inherited filesystem permissions are weaker
than an enforced read boundary.

## Grade observable decisions blindly

A rubric should encode the decision the skill is supposed to improve. Grade
decision fit, evidence, mechanism, protections, and decision value. Report
shape, length, and use of a familiar template have no independent value.

### Build anchors from reachable behavior

**What went wrong.** One anchor described intended-looking "already published"
behavior, but the pinned code reached overwrite confirmation first. The anchor
rewarded a behavior change and reversed the apparent skill result.

**What worked.** Trace every decisive branch against the pinned revision and
state the actual observable outcome. Give graders only the current case anchor,
not the complete anchor catalog, and preserve superseded reports when a
corrected anchor requires regrading.

### Separate invalid runs from scored failures

Contamination, hidden-evidence access, prompt or revision drift, subject
mutation, and reviewer mutation invalidate the run. They are not low-quality
outcomes that a strong report can offset.

Capability failures remain part of the rubric: invented evidence, unauthorized
compatibility policy, hidden behavior change, unsupported readiness claims, or
failure to stop at a real authority boundary are observable properties of the
answer being evaluated.

### Reveal condition and cost only after quality grading

Anonymize and randomize candidates. Have multiple fresh graders score each
output independently before comparing the primary pair. Reveal the condition
mapping and cost only after decision quality is fixed; otherwise polish,
verbosity, or expected treatment behavior can influence the score.

## Measure cost after quality

Cost answers whether the decision improvement justified the resources it used;
it does not decide whether the experiment was valid. Capture provider-reported
input, cached-input, reasoning, output, and total tokens together with elapsed
time, tool calls, tool-result bytes, final words, and final bytes. Mark missing
metrics unavailable instead of estimating them from word count.

Price uncached input, cached input, and total output exactly once. Cached input
is a subset of input, and reasoning is a subset of output. Pin the price source,
retrieval date, and currency, and retain a caveat when aggregate traces cannot
resolve an applicable request threshold or cache-write charge.

Reasoning effort is part of the treatment context. A change in producer or
grader effort begins a new runtime stratum; do not pool its quality, cost, or
latency with earlier results unless effort is a declared experimental factor.

## Interpret evidence conservatively

A breadth-first pass is a screen, not proof. Report a positive but incomplete
signal as promising. Call effectiveness demonstrated only after independent
replication on a materially different ordinary or boundary case, multiple blind
graders, no integrity failure, and no increase in consequential hard failures.

Attention and forced-use conditions explain mechanism; they do not replace the
policy-matched primary comparison. A sentinel can establish safety or expose a
regression, but it does not count as a second effectiveness win.

Retain failed rounds and corrected grader reports as evidence of what changed.
Do not pool their scores with a different runtime, reasoning-effort stratum,
anchor, or evaluation design.

### Test both semantic power and proportionality

A workflow can improve a genuinely complex case and still make a smaller case
worse. One domain-modeling treatment recovered distinct completion semantics,
ownership, and translations across three learning workflows, yet the same skill
missed an existing UI-state owner for a two-value browser preference and
proposed a new controller. One retrospective treatment stopped cleanly when no
learning delta existed, yet was less decisive than control about quarantining
an optional mechanism with cost but no validating outcome evidence.

Do not average those mechanisms into a vague positive impression. Pair every
substantive case with a proportionality or no-learning-delta boundary and make
the family gate require both useful depth and bounded restraint. A strong
early-exit path is part of the skill's capability, not a failure to apply its
full method.

An early exit still needs enough evidence to establish why the smaller route is
sound. In a presentation-only domain case, the treatment found the file that
owned the requested copy but described the existing behavior owner merely as
out of scope. The control won because it established both owners: one for the
changed surface and one for the storage, defaults, and behavior being
preserved. A `no modeling needed` result is a sufficiency claim, not permission
to truncate discovery.

### Challenge identity models through transformations

A plausible stable key can still encode the wrong kind of identity. Content,
occurrence, semantic subject, version, and mutable location coincide in easy
examples, then diverge under identical copies, reorder, split or merge, edits,
regeneration, deletion, and reappearance. One domain-modeling treatment
correctly diagnosed an unstable positional cluster key but overstated which
changes a content-derived replacement would survive.

When identity is material, make those transformations part of candidate
comparison and state what remains the same, what becomes new, what provenance
is required, and which cases remain an owner decision. A hash proves equality
of its observed input, not universal semantic identity.

### Make disguised behavior changes fail before editing

A request can call itself refactoring while adding accepted input, choosing
compatibility precedence, or changing migration behavior. If the skill begins
structural work before classifying that semantic change, later preservation
checks are too late: the implementation has already invented policy.

Boundary cases should therefore test the first routing decision. When an alias,
fallback, or stale-state request lacks the signal or precedence needed to
distinguish safe outcomes, the expected artifact is a precise owner decision
with a clean worktree. The checker message must describe that authority boundary
accurately; calling it a generic read-only violation can bias absolute grading
even when both experimental arms see the same text.

### Expect ceiling compression from strong controls

On ready, well-scoped executable changes, ordinary Codex can produce a correct,
focused patch without a skill. Multiple candidates can pass hidden tests and
score near the rubric ceiling. This is useful evidence: the skill must improve
verification, clarity, change cost, or safety rather than receive credit merely
for completing the task.

Use more than binary checker success. Retain inspectable patches and untracked
files, grade verification breadth and maintainability, include an unresolved
boundary, and use materially different mechanisms. Treat one-point forced
preferences at the ceiling as weak evidence unless replicated.

### Keep provider schema and engine validation separate

Provider structured-output implementations may support only a subset of JSON
Schema. Use the provider schema to constrain the output shape, then let the
evaluation engine enforce exact candidate and dimension inventories, score
bounds, evidence requirements, contrasts, and ranking permutations. Preserve a
rejected schema attempt and give its replacement a new run identity; do not
erase it or accept an unvalidated free-form report.

## Treat composition as a separate causal question

For implementation followed by review, a better final artifact does not reveal
which stage produced the gain. Use the four-cell matrix—neither skill, producer
only, reviewer only, and both—to separate producer effect, reviewer effect, and
interaction.

Run the two producer conditions first and freeze their artifacts. Reuse each
artifact in both reviewer conditions, keep reviewers in fresh contexts, and
grade all four anonymous bundles together. A reviewer mutation invalidates the
handoff because it changes the candidate rather than evaluating it.

### Freeze complete, inspectable candidates

A path list and snapshot hashes are not enough when the implementation imports
new untracked files. Include readable contents of new source and test files in
the grading candidate and preserve binary files by digest. Pin the producer and
reviewer skill trees, dirty status, artifact hash, model, and reasoning effort
at each handoff.

### Put complexity in propagation, not prompt length

A discriminating composition case makes one accepted decision cross several
real consumers. Partial propagation then creates observable mixed-context
failures. A larger prompt or patch with many locally independent choices mainly
increases producer variance and makes the handoff effect harder to identify.

## Make authority boundaries observable

A green test proves that behavior exists; it does not prove that the product
still supports that behavior. Boundary cases should hide an unresolved
compatibility commitment in natural evidence and let the skill discover it.

Abstract instructions to "preserve authority" were too easy to rationalize
past. A useful gate distinguishes three observable situations:

1. Proceed when an accepted decision covers the case.
2. Proceed when conflicting sources reconcile to one consumer-visible outcome.
3. Stop for the smallest owner decision when two plausible compatibility
   outcomes remain and the task supplies no authority to choose.

This gate should not turn implementation choices into product blockers. A
specification is non-ready only when an unresolved decision can alter supported
observable behavior. Code-seam choice, test design, or a protection already
fixed by the accepted contract belongs in implementation.

State handling needs the same discipline. One treatment predicted only part of
a staged state before calculating a destination, which introduced path drift
for consumers of the omitted fields. Preserve the complete staged state and
defer only the irreversible effect, or prove that a projection contains every
downstream-observable field.

## Foot guns that invalidate or weaken a result

| Foot gun | Why it misleads | Required response |
| --- | --- | --- |
| A control can discover an evaluated skill | The treatment is present in both arms. | Stop before production or invalidate the affected run. |
| The common prompt teaches workflow steps, counterexamples, or grading criteria | Part of the skill has leaked into every condition. | Rewrite and re-audit the prompt before running. |
| Producers can read hidden evidence or another output | Answers can optimize for the evaluation rather than the task. | Enforce read isolation; trace auditing alone is insufficient. |
| Prompt, subject, skill tree, model, effort, tools, or permissions drift | More than one causal variable changed. | Reject the comparison or declare the additional factor. |
| A producer or reviewer mutates an unauthorized surface | The candidate no longer represents the declared condition. | Invalidate the run and retain the mutation evidence. |
| An anchor describes unreachable or intended-looking behavior | The rubric can reward the wrong change. | Correct the anchor against the pinned revision and regrade while preserving the old report. |
| New untracked contents are absent from the grading packet | Graders cannot inspect the implementation being scored. | Rebuild the complete candidate before grading. |
| The behavioral seam cannot run | Evidence quality is capped even if both arms are equally constrained. | Treat the result as screening evidence and repair the seam before replication. |
| Attention or forced-use diagnostics are pooled into the primary effect | Mechanism evidence is mistaken for effectiveness. | Keep diagnostics separate from the policy-matched comparison. |
| Missing runtime or pricing metrics are estimated from words or raw token totals | Cost appears more precise than the evidence permits. | Mark the metric or cost claim unavailable. |
| A screen, sentinel, or repeated mechanism is called replication | Narrow fit is mistaken for general benefit. | Replicate independently on a materially different case. |

## Continue with the executable protocol

Use [v4/README.md](v4/README.md) to compile the immutable study plan, prove WSL2
isolation and failure cleanup, run policy-matched producers, validate strict
blind judgments, invoke only triggered adjudicators, and reveal conditions
after judgment validity is fixed.

Case inventories, plans, batch definitions, and current results remain local
because they change as the suite evolves. This file remains the tracked,
durable explanation of the design and its failure lessons.
