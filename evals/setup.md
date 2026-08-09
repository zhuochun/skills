# Guide to independent skill evaluation

Use this guide to prepare a causal evaluation of any selected skill against one
or more external repositories. It defines the evaluation structure and
integrity constraints, not a machine setup. Discover the available runner,
repository instructions, and execution mechanisms locally, then implement the
same guarantees with the facilities available there.

## Outcome

An evaluation environment is ready when it has:

- a precise question about one skill;
- a frozen version of that skill and each subject repository;
- policy-matched treatment and control conditions;
- ordinary and boundary cases, plus transfer or repeated cases when the
  decision needs them;
- disposable and mutually isolated producer workspaces;
- private anchors and deterministic checks;
- blind grading followed by a controlled reveal; and
- enough retained evidence for another reviewer to reproduce the conclusion.

Treat environment preparation and evaluation design as one integrity problem.
A runnable harness is not sufficient if the control can discover the skill, a
prompt teaches the skill's workflow, or graders can infer condition identity.

## 1. Orient to the available evaluation system

Inspect the evaluation repository before designing a study. Locate its:

- evaluation protocol and prior learnings;
- runner, schemas, and validation tests;
- skill catalog and invocation metadata;
- isolation and artifact-retention mechanisms;
- deterministic checker extension point; and
- grading, reveal, and result-recording stages, with optional adjudication.

Also read the instructions that apply to every subject repository. Determine
how the local system creates fresh agent state, disposable subject copies,
anonymous candidates, and immutable records. The implementation is local; the
guarantees in this guide are not.

These separations are required capabilities, not assumptions about a particular
agent or system. If the available system cannot provide them, it can support
exploratory testing but not a clean causal claim.

## 2. State one evaluation question

Evaluate one skill at a time unless the study is explicitly about composition.
Use a question of this form:

> Does the selected skill improve a defined outcome on this class of tasks,
> compared with the policy-matched control, without unacceptable regressions or
> disproportionate cost?

Define the outcome in task terms, such as implementation correctness,
diagnostic causality, refactoring compatibility, domain-model fidelity, review
decision value, or commitment calibration. Do not define success as producing
the skill's preferred sections or vocabulary.

For a composition study, freeze upstream artifacts and use a design that can
separate each skill's contribution from interaction effects. Do not infer
composition value from a sequential run in which every downstream agent sees
changing upstream work.

## 3. Select the policy-matched control

Read the selected skill's declared invocation policy from the frozen skill
snapshot.

If the policy is absent or ambiguous, stop and resolve it with the skill owner;
do not choose a control from the behavior observed in candidate runs.

| Invocation policy | Control | Treatment |
| --- | --- | --- |
| Implicit | The target skill is absent; the natural prompt and declared background skill set are unchanged. | The target skill is added to the same background skill set; the same prompt is unchanged. |
| Explicit | A minimal named placebo replaces the target and receives the required explicit invocation. | The real skill receives the identical explicit invocation with the same background skills. |

The placebo should establish only the named invocation surface. It must not
encode the target workflow, domain knowledge, gates, or terminology. Validate
that it introduces no extra routing, tools, or domain signal and that the named
conditions differ only in the instruction body under test.

For implicit skills, loading is an outcome rather than a prerequisite. For
explicit skills, failure of either named condition to load its installed skill
invalidates that pair. Never improve activation by rewriting the common prompt
to summarize the target skill. Define activation evidence before the run:
distinguish availability, explicit selection, instruction access, and evidence
that the instructions shaped the work. In this guide, **loaded** means the
runner confirms that the installed instruction body was supplied to or accessed
by the producer; installation alone is not loading.

## 4. Choose transferable cases

For each skill, normally prepare:

1. an ordinary case where the skill should add decision or execution value;
2. a boundary case where it should stay inactive, remain proportionate, stop,
   or route to another owner; and
3. a materially different transfer case when a broader tuning decision depends
   on more than the first mechanism.

Prefer real tasks and repositories over synthetic prompts tailored to recently
edited wording. A useful case requires the general capability, not recognition
of phrases copied from the skill.

Keep one primary skill under test per case. Other skills may remain available
only when their presence matches the real operating policy and cannot erase the
treatment-control contrast. Keep that declared background set identical across
the pair and record its dependencies explicitly.

If a case is chosen after seeing results, call it a follow-up. That is useful
for development, but it is not independent confirmation of the original
signal. Freeze cases in advance only when the intended claim needs that degree
of independence.

Match the claim to the sampled cases. If a skill author or other interested
party selects the cases, have an independent reviewer audit their relevance,
coverage, and difficulty before production. Causal validity within a case does
not make that case representative of an entire task class.

Case diversity and producer repetition answer different questions. A different
case tests transfer; a fresh producer pair on the same frozen case tests
behavioral repeatability. Grading the same pair twice improves measurement but
does not create another producer observation. Repeat only when the next
decision or claim needs it, and report what was actually repeated.

## 5. Freeze the subject and authority

Identify an immutable subject revision and include all instructions that would
normally govern work in that repository.

- For implementation, start both conditions from the same pre-change revision.
- For review, freeze the candidate change and its comparison base.
- For diagnosis, preserve the symptom and the evidence-producing seam.
- For refactoring, define supported observable behavior and compatibility
  boundaries before production.
- For domain modeling, preserve the existing domain language and representative
  behavior rather than presenting only the proposed model.

Give producers only the authority present in the user request. Read-only cases
must remain read-only. Write-authorized cases may change only their disposable
copies. Never use a live working checkout as a producer workspace.

## 6. Establish the visibility boundary

Use this visibility model regardless of the isolation mechanism:

| Artifact | Producer | Blind grader | After reveal |
| --- | --- | --- | --- |
| Subject and applicable repository instructions | Yes | Through the grading packet as needed | Yes |
| Target skill | Treatment only | No | Yes |
| Natural user prompt | Yes | Yes | Yes |
| Candidate response and relevant diff | Own output only | Anonymous pair | Yes |
| Hidden anchors and rubric | No | Yes | Yes |
| Expected answer, checker internals, and known-good artifacts | No | Only what grading requires | Yes |
| Condition mapping and other producer outputs | No | No | Yes |
| Declared background skills | Identical in both conditions | No | Yes |
| Prior studies, audit records, and unrelated skill catalogs | No | No unless declared | As required |

Every producer run should begin with fresh agent state and a fresh subject copy.
Prevent discovery of evaluator plans, anchors, checkers, previous outputs,
retained audit data, undeclared skills, and ordinary agent state outside the
run. Prevent producers from observing or modifying each other's work.

Record terminal failures rather than silently retrying or deleting them. A
changed prompt, subject, skill, checker, runner, or permission boundary creates
a new study stratum.

## 7. Define prompts, anchors, and checks

### Common prompt

Write the prompt as the real user would. State the desired outcome, relevant
constraints, accepted behavior, and mutation authority. Do not enumerate the
target workflow, request its report headings, reveal the expected defect, or
embed grading language.

When useful to interpretation, describe each case before production as:

- **Coached capability:** may clearly frame the desired workflow; useful for
  diagnosing whether the instructions can help, but not for transfer claims.
- **Natural holdout:** ordinary task wording without workflow steps, supplied
  alternatives, routing instructions, or rubric language; measures invocation
  and end-to-end value.
- **Routing boundary:** a realistic adjacent task on which the skill should
  remain inactive or load and stop proportionately; it gates a positive result
  but does not add positive effect evidence.

Do not discard coached cases merely because they are coached. Label and
interpret them correctly, and keep natural holdouts sealed from the skill
wording and observed candidate results.

### Private anchors

Give blind graders evidence anchors that identify:

- decisive subject evidence;
- expected mechanisms and counterexamples;
- compatibility, safety, and authority boundaries;
- unsupported commitments or policy invention; and
- the smallest useful next move.

Anchors describe what matters, not preferred prose.

### Deterministic checks

Use executable checks for claims that can be decided mechanically. Calibrate
each checker against known-good and known-bad artifacts before production.
Cover adversarial representations and failure paths that materially distinguish
correct behavior from plausible output.

A candidate checker failure is outcome evidence. A checker that cannot run or
cannot discriminate the references is a study-design failure.

## 8. Freeze the study manifest

Before production, record:

- study and case identifiers;
- target skill, invocation policy, immutable revision, and tree digest;
- subject repositories and immutable revisions;
- prompts, roles, authority, dimensions, anchors, contrasts, and checkers;
- producer and grader configuration;
- condition compiler and runner versions;
- permissions and external-access policy;
- dependency snapshots or a declared drift-control strategy;
- randomization seed and any planned repetitions;
- grading rules and any optional adjudication trigger;
- hard-failure definitions and any decision thresholds that matter; and
- content digests for the complete frozen study.

Freeze the manifest, checker source, subjects, skill tree, and evaluation
configuration together. Do not edit them after any producer starts.

## 9. Preflight the complete design

Before production, establish that:

- all declared subjects and skill revisions are resolvable;
- every case compiles to the intended control and treatment pair;
- paired prompts, subjects, permissions, and runtime settings are identical;
- the background skill set is identical and only the declared treatment
  difference remains;
- the placebo is inert under its known use paths;
- every case can start in isolation, not merely the first case;
- prohibited evaluator and prior-run artifacts are inaccessible;
- fresh state is actually fresh across any repetitions;
- deterministic checks discriminate known-good and known-bad references;
- blind packets omit condition identity and skill-load evidence, and their
  templates contain no condition-specific metadata;
- the source repositories remain untouched after a dry run.

Freeze mutable dependencies when possible. When an external dependency cannot
be frozen, counterbalance or interleave paired runs, record the observed drift,
and limit the conclusion accordingly.

Stop if any of these checks fail. Repair the environment or design, assign a new
study identity when frozen inputs changed, and repeat preflight.

## 10. Run in controlled stages

Keep the stages independently inspectable:

1. Randomize and run producers in isolated conditions.
2. Capture final responses, relevant changes, tool activity, usage, elapsed
   time, checker outcomes, skill-load evidence, and terminal failures.
3. Build anonymous grading packets without treatment mapping or activation
   metadata.
4. Obtain the intended number of independent judgments.
5. Validate every judgment against the rubric and candidate inventory.
6. Optionally adjudicate a disagreement when the next decision needs a resolved
   outcome; otherwise retain it as unresolved.
7. Reveal condition mapping only after all selected judgments are complete.
8. Aggregate quality, activation, failures, and cost without collapsing them
   into one number.

Resolve one outcome per producer pair before family aggregation. Do not count
multiple grader preferences over the same pair as independent skill wins.
Use one stable anonymous packet for a case so candidate labels and cited
evidence remain coherent across graders. If order bias materially threatens a
high-stakes claim, address it in a separate study design rather than remapping
judgments after the fact.

Do not let a grader also act as a producer for the same candidate. Do not reveal
partial mappings while other judgments remain open. If an interested skill
author designed the study, use an independent reviewer for case selection,
anchors, thresholds, and interpretation. Record where full role independence
was not possible.

## 11. Interpret activation before attribution

Inspect whether the selected skill actually loaded before attributing an
observed difference:

- implicit treatment not loaded: an activation miss on an ordinary case, but
  potentially correct calibration on a boundary case;
- explicit real or placebo not loaded: invalid explicit pair;
- control loaded the target skill: contaminated control;
- treatment won while the target stayed unloaded: an output difference, not
  evidence of skill-mediated benefit; and
- both conditions failed in the same way: a shared limitation, not a skill
  effect unless activation evidence supports that attribution.

Separate decision quality from investigation cost and communication size.
Longer output is not automatically better; shorter output is not automatically
more efficient. When comparable cost cannot be calculated, report raw usage and
make no efficiency claim.

## 12. Make proportionate conclusions

Review the revealed evidence and make a bounded judgment. State thresholds in
advance when a quantitative go/no-go decision depends on them; ordinary
developer screens can use reviewed qualitative labels. The strength and breadth
of the conclusion must reflect the number and independence of judgments, cases,
repositories, mechanisms, and producer runs.

- **Positive screen:** a clear bounded win with no consequential safety or
  boundary regression.
- **Promising:** useful direction, but confidence, breadth, repeatability, or
  efficiency remains limited.
- **Neutral:** no demonstrated material difference in the valid evidence.
- **Regressed:** the treatment caused a consequential loss or overreach.
- **Invalid:** contamination, broken isolation, mismatched conditions, failed
  explicit activation, unusable checking, or premature reveal prevents a
  causal interpretation.

Do not change a skill because of a single favorable case. Use failures to form
a general hypothesis, then test that hypothesis on a different mechanism before
editing the skill. Avoid wording changes that merely teach the observed cases.

## 13. Preserve the evidence and hand off

Retain a study record containing:

- the frozen manifest and content digests;
- condition-level producer, checker, and activation evidence;
- anonymous judgments and any adjudication;
- revealed effects, preferences, disagreements, and hard failures;
- raw usage, elapsed time, and output size;
- limitations and attribution boundaries; and
- the decision to retain, tune, replicate, reject, or invalidate.

Keep raw traces and private subject evidence in the controlled audit store.
Publish only intentionally sanitized protocol, learning, and summary artifacts.
Another reviewer should be able to reconstruct why the conclusion follows
without gaining access to credentials or unrelated private data.

## Readiness checklist

- [ ] The question tests task value rather than preferred wording.
- [ ] The control matches the skill's shipped invocation policy.
- [ ] Ordinary and boundary cases exist; transfer or repetition is added only
      when the decision needs it.
- [ ] Coached, natural, and routing-boundary distinctions are recorded when
      they affect the claim.
- [ ] Subjects, skills, instructions, and checks are immutable and identified.
- [ ] Producer authority matches the user request.
- [ ] Each producer receives fresh state and a disposable subject copy.
- [ ] Producers cannot discover hidden evaluation material or each other.
- [ ] Prompts are natural and do not teach the skill.
- [ ] Anchors and deterministic checks discriminate meaningful outcomes.
- [ ] Every case passes isolation and checker preflight.
- [ ] Grading remains blind through any optional adjudication.
- [ ] Producer repetitions and grader judgments are counted separately.
- [ ] Activation is analyzed before attribution.
- [ ] Quality, failures, cost, and communication are reported separately.
- [ ] The conclusion states its evidence breadth and limitations.
- [ ] Evidence is retained reproducibly and published only by explicit scope.
