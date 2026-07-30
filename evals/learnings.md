# Evaluation learnings

This note records durable lessons from early internal evaluation rounds. It is
not a result summary. Raw outputs, blind grades, and adjudications are local
development assets and are intentionally not versioned.

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

## Round 1: the suite needed harder distinctions

The first round established that repository-grounded cases can distinguish
useful engineering judgment from generic advice, but it also exposed avoidable
ambiguity:

- One case per skill was too narrow to support a family-level conclusion.
- Some prompts left the intended capability boundary unclear.
- A quality rubric alone could reward longer reports without accounting for
  token, investigation, or communication cost.
- Baseline versus treatment could not distinguish skill-specific value from the
  effect of simply telling an agent to be careful.
- Boundary cases were essential because a polished recommendation could still
  hide a compatibility or authority failure.

V2 therefore expanded to eleven cases, added six attention controls, separated
quality from efficiency, required explicit hard-failure checks, and used
breadth-first screening followed by targeted replication.

## Round 2: the production conditions were contaminated

The v2 grading result remains useful for case and rubric development, but it is
not a clean causal estimate of skill effectiveness.

A post-run trace audit found:

- Seven of eleven baseline producers read the target skill body.
- One additional baseline producer read neighboring evaluated skills.
- Three of six attention-control producers read the target skill body.
- One additional attention-control producer read neighboring evaluated skills.
- No producer tool call was found reading hidden case definitions, grading
  anchors, or another candidate's raw output.

The main contamination mechanism was runtime inheritance. Fresh subagent
conversation contexts still received the global available-skill catalog and
the rule to load a matching skill. Natural prompts such as "design a module
boundary" or "knowing what we know now" correctly triggered those skills even
when the condition was labelled baseline. The shared parent working directory
also injected this repository's `AGENTS.md`, memory, and project context.

The filesystem boundary was procedural rather than enforced. Producers were
told not to read evaluation artifacts, but all agents could reach the same
repository and wrote reports into a shared results directory as they finished.
The audit found no observed cross-output read, but the setup could not prove
that such reads were impossible.

V2 also failed to capture input, cached-input, reasoning, output, and total
tokens; elapsed time; tool calls; and tool-result bytes. Final words and bytes
were useful communication measurements but could not substitute for missing
runtime cost.

The visible symptom was that baseline, attention, and treatment reports often
used the same decision, evidence, alternatives, and verification structure.
Shared model defaults and naturally artifact-shaped prompts explain some of
that convergence, but the trace evidence proves that much of it was actual
skill exposure rather than spontaneous baseline behavior.

## Durable conclusions

1. **Define the treatment as a runtime difference.** For implicit-enabled
   skills, the primary estimand is target skill installed versus absent. For
   explicit-only skills, it is the real package versus a generic named placebo
   under an identical explicit prompt. Prompt wording alone cannot create a
   clean control when Codex may activate an installed matching skill or when a
   skill name itself cues a workflow.
2. **Separate invocation policy, activation, and capability.** A natural
   installed condition tests intended automatic activation only when the skill
   permits it. An explicit-only skill needs the matched explicit pair; forced
   use remains a diagnostic for unexpected misses in an implicit-enabled skill.
3. **Use independent Codex processes.** App subagents inherit parent context,
   runtime overrides, skills, and working-directory guidance. V3 uses
   `codex exec` with an isolated `CODEX_HOME` instead.
4. **Make evaluated skills physically absent from controls.** A control prompt
   saying "do not use skills" is weaker than a runtime that cannot discover the
   evaluated catalog.
5. **Keep the subject and hidden evaluation evidence separate.** Producers run
   from disposable subject worktrees. Cases, anchors, previous outputs, and
   mappings are supplied only to the parent harness or graders.
6. **Capture machine-readable traces.** `codex exec --json` supplies command and
   tool events plus provider-reported token usage. Missing metrics remain
   unavailable; word count is never used as a token estimate.
7. **Fail contaminated runs before grading.** Baseline or attention reads of an
   evaluated `SKILL.md`, hidden-evidence reads, prompt-hash drift, revision
   drift, or subject mutation invalidate the run.
8. **Preserve breadth and add targeted replication.** One run across many
   ordinary, boundary, and invocation-calibration cases is a screen. Any claim
   still requires independent replication.
9. **Do not reward a template.** Graders score decision value, evidence,
   mechanism, protections, and calibration. Report shape and length have no
   independent value.
10. **Retain failed rounds as evidence.** V1 and v2 remain immutable records of
    what was tried and why v3 changed. Their scores must not be pooled with v3.
11. **Price token classes instead of summing them.** Pin the evaluated model's
    official input, cached-input, and output rates for each batch. Cached input
    is a subset of input and reasoning is a subset of output, so charge
    uncached input, cached input, and total output exactly once. Preserve an
    explicit base-rate-estimate caveat when aggregate traces cannot resolve a
    per-request pricing threshold or cache-write charge.
12. **Keep evaluator knowledge out of shared producer prompts.** A natural task
    may state outcome, authority, and acceptance consequence, but risk paths,
    counterexamples, finding format, and quality gates belong in the hidden
    current-case anchor. Otherwise the control receives part of the treatment.
13. **Pin complete contexts at both handoffs.** Composition runs compare full
    producer and reviewer skill-tree digests plus dirty status, not Git `HEAD`
    alone. Graders receive one hashed case-local packet rather than the complete
    anchor catalog, and their model and reasoning effort are recorded separately.
14. **Treat read isolation as a platform prerequisite.** Legacy native-Windows
    `read-only` and `workspace-write` modes can still read hidden evaluator
    artifacts. Custom restricted-read permission profiles close that path but
    require the elevated Windows sandbox backend. The runner must fail before
    model invocation when that backend is unavailable; trace matching and
    inherited ACLs are audits, not substitutes for an enforced read boundary.
15. **Use the four-cell composition matrix as one blocked experiment.** Run
    baseline and producer-only first, then reuse their frozen artifacts for
    reviewer-only and composed. Randomize within those dependency blocks and
    grade all four anonymous bundles together. This separates producer and
    reviewer main effects from interaction without paying to reproduce the two
    implementations.
16. **WSL mount namespaces are a practical Windows fallback.** A native Linux
    Codex process in an unprivileged WSL2 user and mount namespace can
    bind-mask the evaluation repository, every retained audit root, the source
    checkout, and both Windows and Linux Codex homes. Probe every mask before
    model invocation, use a fresh home per stage, delete the copied auth file,
    and still audit traces for named hidden paths.
17. **Make the whole batch auditable, including failure.** Write a running
    batch manifest as soon as the audit directory exists, then finalize it from
    an exit trap with terminal phase, error, exit status, and cleanup outcome.
    Cell manifests alone cannot explain a partial matrix that stopped during
    setup or between conditions.
18. **Screen a producer across different contracts before blaming the skill.**
    Use an explicit input contract, a materially different effect/lifecycle
    change, and an intentionally unresolved contract. Grade only the two
    implementation arms in this mini-batch so fresh generic-review variance
    cannot amplify one producer artifact; reserve reviewer effects and
    interaction for a full four-cell matrix.
19. **Refactoring needs a commitment-boundary case that does not reveal its answer.** A green current
    test can prove that behavior exists without proving the product still
    supports it. Pair ordinary ownership transfer and fallback-preservation
    cases with one natural request whose evidence contains an unresolved
    compatibility commitment in a different capability. The skilled producer
    should discover and stop for the smallest owner decision instead of
    silently treating current code, current tests, or reversibility as product
    authority. Score the sentinel as safety evidence, not a second
    effectiveness win.
20. **A preserved untracked inventory is not a gradable artifact.** Composition
    candidates must include the contents of new source and test files, not only
    their paths and snapshot hashes. Otherwise blind graders cannot inspect the
    new owner that the tracked patch imports. Preserve binary files by digest;
    include readable UTF-8 contents directly in the candidate.
21. **Commitment gates need an observable trigger, not only a principle.** In
    the first two producer screens, both skilled agents implemented the
    sentinel's unresolved compatibility policy. The skills should require an
    authority check when current behavior conflicts with naming, documentation,
    legacy persisted data, or an explicit compatibility request. If evidence
    does not decide the policy, stop for the smallest owner decision before
    encoding either branch in tests.
22. **Do not replace staged state with a partial projection.** The scoped
    implementation treatment made cancellation safe by predicting only one of
    three front-matter updates before destination calculation. That introduced
    path drift for templates using the omitted fields. Preserve the existing
    complete staged state and defer only the irreversible save, or prove that a
    projection includes every downstream-observable field.
23. **A fair but unrunnable test seam still weakens the eval.** All twelve
    producer arms lacked the subject's native test runtime, so graders could
    inspect tests but not award strong executed-evidence credit. This is
    symmetric and remains usable for a causal screen, but future replication
    should provide a runnable behavioral seam before spending on high-effort
    producers.
24. **Reasoning effort is part of the treatment context, not a cosmetic default.**
    Moving the producer and grader default from `high` to `xhigh` begins a new
    runtime stratum. Keep old artifacts unchanged for audit, record the resolved
    effort in every handoff, and do not pool quality, cost, or latency across the
    two strata unless effort itself is a declared factor.
25. **A principle-level authority gate may still be too easy to rationalize past.**
    An xhigh rerun clarified both skills to reuse accepted prior decisions,
    reconcile source differences, and stop only for consequential policy beyond
    authority. Both skilled sentinel producers still encoded an unsupported
    compatibility rule. The next refinement should classify observable cases:
    proceed when an accepted decision covers the case, proceed when evidence
    reconciles to one consumer-visible outcome, and stop when two plausible
    compatibility outcomes remain without authority. This replaces an abstract
    warning with a discriminating trigger without making every source difference
    a blocker.
26. **Specification safety and readiness must be calibrated as separate claims.**
    A three-case specification-to-implementation factorial showed both sides of
    the gate. The skilled specification correctly stopped an unresolved
    saved-link compatibility change, but it also converted a settled slug
    contract into a non-ready artifact by elevating implementation-adjacent
    template and verbatim-path questions into product-policy blockers. Because
    both downstream implementers honored the same frozen stop, the regression
    was causal rather than reviewer noise. A specification should mark the
    whole change non-ready only when an unresolved decision can alter supported
    observable behavior; implementation uncertainty, code-seam choice, test
    design, or a protection already fixed by the accepted contract belongs in
    implementation. Test this distinction with paired ready and unresolved
    handoffs, not only with boundary sentinels.
27. **A grader anchor must follow observable branch order, not intended-looking dead code.**
    The first publish-lifecycle anchor said existing "already published"
    behavior must remain, but the pinned code checks destination existence
    before source/destination equality. A same-path file therefore reaches the
    overwrite confirmation, and reordering the conditions changes current
    behavior. The mistaken anchor rewarded that change and reversed the
    apparent implementation-skill result. Inspect each decisive branch against
    the pinned revision, state the actual reachable outcome, and preserve
    superseded grader reports when an anchor correction requires regrading.
28. **Composition complexity should come from one decision crossing real consumers.**
    The retired lifecycle case gave four implementations enough local freedom
    that producer variance dominated the handoff estimate. Its replacement
    makes one accepted configuration-identity rule traverse project, engine,
    filetype, template, path, new-file, publish, and image consumers. This is
    more discriminating than a longer prompt or a larger patch because partial
    propagation creates concrete mixed-context failures. Preserve a small
    settled case and an unresolved sentinel around it so cross-consumer
    complexity does not erase readiness calibration.
29. **Use WSL directly for Windows production.** Native Linux Codex inside an
    unprivileged WSL2 user and mount namespace is the supported Windows path,
    not a fallback after a native sandbox failure. Keep authentication
    WSL-local, probe every bind mask before model invocation, and retain native
    Windows runners only for historical replay or diagnostics.

## V3 response

V3 keeps the eleven v2 effectiveness prompts and anchors unchanged so runtime
isolation remains the principal experimental change. It includes fourteen
invocation-calibration cases where the correct behavior is to answer narrowly,
remain inactive, retain the current design, or route elsewhere; six
implementation-to-review composition cases; three specification-to-
implementation composition cases; and six direct cases for software-change
orchestration, specification, domain modeling, failure diagnosis, technical
decision closure, and verification execution. Together the 40 cases cover the
development skill set with both positive and boundary evidence.

The breadth-first screen is split into a core change-flow batch and a remaining
skills batch, followed by a dedicated implicit-invocation calibration batch.
Explicit-only boundary cases stay with their owning batch because they measure
proportional response after deliberate invocation, not activation.
This controls initial cost while preserving the rule that demonstrated benefit
needs independent repetition and a materially different boundary case. Setup,
runner contracts, case definitions, batch manifests, and raw results remain
local development assets. This note is the versioned record of cross-run
lessons.
