# Skill evaluation report

Evidence snapshot: 10 August 2026

This report describes the final skill states and the behavioral evidence that
currently supports them. It does not require readers to know how the skills
evolved. When a final contract has not been exercised by an important case,
that absence is stated directly as a validation gap.

The software used as evaluation subjects is intentionally anonymous. Repository
names, local paths, internal case identifiers, runtime configuration, and
evaluation infrastructure are omitted. Cases are described by the mechanism
and decision they exercised.

## Results at a glance

| Skill | Current evidence status | Quality finding | Efficiency finding |
| --- | --- | --- | --- |
| [Software change specification](../skills/software-change-specification/SKILL.md) | **Positive breadth signal** | Improved two materially different ambiguous changes and passed two settled-change gates; producer-level repeatability is not yet established. | Mixed: one complex case used less time, input, and tooling; one small case used more time and input. |
| [Code review](../skills/code-review/SKILL.md) | **Positive screen** | Found a subtle failure-path defect and avoided a plausible false positive; another defect case tied at the ceiling. | The quality gains required more investigation and generally more elapsed time; no speed benefit is claimed. |
| [Software failure diagnosis](../skills/software-failure-diagnosis/SKILL.md) | **Promising** | Improved two different causal investigations and stayed inactive on two known-cause repairs. | One measured substantive case was faster with similar input and tool use; broader efficiency is unproven. |
| [Behavior-preserving refactoring](../skills/behavior-preserving-refactoring/SKILL.md) | **Positive screen** | Won both final-state cases: one structural ownership move and one already-settled behavior boundary. | Mixed: one case was cheaper and faster, while the larger case used more input and slightly more time. |
| [Retrospective architecture review](../skills/retrospective-architecture-review/SKILL.md) | **Positive screen** | Won an architectural-evolution case and correctly stopped when no architectural learning remained. | Higher quality came with materially more input, tools, time, and output. |
| [Domain modeling](../skills/domain-modeling/SKILL.md) | **Promising design; final-state evidence limited** | The final identity case reached a score tie with both graders preferring the skill; the combined proportionality, ownership, and identity contract needs broader reruns. | The final identity case was faster with the same tool count and a shorter response, but used more input. |
| [Scoped change implementation](../skills/scoped-change-implementation/SKILL.md) | **Neutral** | Improved one information-boundary case and tied a near-ceiling bounded implementation. | Aggregate producer work used more input and tools with approximately equal elapsed time. |
| [Architecture surface mapping](../skills/architecture-surface-mapping/SKILL.md) | **Positive transfer screen** | The current skill won a materially different lifecycle map and passed the direct-locator gate; earlier losses belong to prior snapshots. | The transfer win used about 2x input, 1.75x time, 1.55x tools, and a 1.74x response. |
| [Specification review](../skills/specification-review/SKILL.md) | **Positive screen** | Exposed a real contradiction between governing specifications and correctly declared a settled small specification ready. | Quality improved with about 6% more input, 25% more elapsed time, 7% more tools, and a slightly shorter aggregate response. |
| [Deep module design](../skills/deep-module-design/SKILL.md) | **Positive screen** | Improved a real ownership decision and correctly rejected a module for a two-literal copy change. | The decisions improved, but the skill used about 73% more input, 43% more elapsed time, and 17% more tools. |

## How to read the evidence

The labels are reviewed interpretations of the final revealed evidence, not
outputs from an automatic classifier. They summarize the current skill state
and state their own evidence boundary.

- **Positive breadth signal** means policy-matched comparisons on materially
  different cases repeatedly favored the skill without a consequential
  regression. Because each case has one producer draw per condition, this is
  breadth evidence rather than producer-level replication.
- **Positive screen** means the final skill state crossed its screening gate,
  but independent replication is still too limited for a durable general claim.
- **Promising** means the skill produced useful or repeated gains but missed a
  magnitude, breadth, replication, or efficiency gate.
- **Neutral** means valid comparisons did not establish reliable marginal
  benefit. It does not mean the skill is incompetent or harmful.
- **Needs tuning** means the current screen found a general activation,
  proportionality, or decision-quality problem that should be addressed before
  making a positive claim.

Scores below are paired skill-minus-control differences on a 20-point
task-specific rubric. A score is not interpreted alone: blind preference, hard
failures, boundary behavior, and verified skill activation also matter.

Efficiency ratios compare skill-guided producer work with its paired control.
Input usage includes cached input; elapsed time is producer-stage elapsed time;
tool use counts recorded tool calls; response size is the final response
artifact's byte length. These measurements do not include a pinned price model,
so this report makes no monetary cost claim.

## Evaluation approach

Each case held the task, subject revision, instructions, permissions, and
evaluation criteria constant. For implicitly invoked skills, the control lacked
the target skill and the treatment made it available without changing the user
prompt. For explicitly invoked skills, both conditions received the same named
invocation and the control used a content-neutral placebo.

The cases combined substantive work with boundaries where the skill should
remain proportionate, stop, or route an unresolved decision elsewhere.
Producers worked from fresh isolated state. Each pair received two blind
judgments, and executable changes also faced deterministic behavioral checks.

A result was credited to a skill only when activation evidence showed that its
instructions loaded. Correct non-activation on a known-cause repair or a task
outside the skill's remit counted as calibration evidence, not a quality win.

## Software change specification

### Current role

The skill turns an accepted but behaviorally ambiguous change into an
implementable contract. It recovers current and desired behavior, preserves
settled constraints, exposes consequential unresolved decisions, and keeps
small settled changes ready rather than forcing unnecessary specification.

### Cases

- A state-reset feature whose correct behavior depended on persisted progress,
  refreshed sessions, and partial metadata.
- A destructive remove action spanning a canonical record, derived state,
  navigation behavior, and recovery expectations.
- A small copy-only change whose behavior was already settled.
- A small default-capacity change with an exact boundary and no unresolved
  product decision.

### Result

The skill improved all four comparisons. On the ambiguous tasks it converted
recovered behavior into conditional observable claims, named unresolved owners,
and produced a smallest not-ready slice instead of inventing decisions. On the
settled tasks it stayed ready and bounded while making preserved behavior and
focused verification explicit.

The two effect-case score differences were +1.5 and +3.0. The two gate-only
settled-change differences were +0.5 and +3.5; they establish proportionality
but do not increase the effect estimate. Blind graders consistently preferred
the skill-guided results, and neither gate regressed. The effect cases establish
breadth across two mechanisms but did not repeat producer draws.

### Efficiency

On the destructive-change case, the skill used 0.69x input, 0.61x elapsed time,
and 0.30x tool calls, while producing a 1.39x larger but more executable
response. On the settled capacity case it used 1.57x input and 1.45x elapsed
time, with 0.57x tool calls and a 1.45x larger response. This is a positive
breadth signal with mixed efficiency, not a producer-repeatability, speed, or
cost claim.

## Code review

### Current role

The skill reviews a fixed change against accepted intent and supported behavior.
It looks for consequential defects, gathers evidence proportionately, and can
return no findings without inventing work from adjacent but preserved behavior.

### Cases

- A retry change with an explicitly visible duplicate-effect defect.
- A clean small presentation change where the correct result was no findings.
- A restoration path with a subtle failure-atomicity defect not named by the
  prompt.
- A clean multi-file output change containing a tempting adjacent progress line
  that the accepted intent explicitly preserved.

### Result

Both conditions found the explicit retry defect and tied at the rubric ceiling.
The skill-guided review also found the subtle atomicity defect, executed a
forced-failure probe, and requested the precise regression seam, producing a
+2.0 effect.

On the clean multi-file change, the skill traced the actual output owner and
correctly rejected the tempting false positive. The control treated preserved
behavior as a defect, producing a +15.5 skill effect. On the other clean case,
the skill reached the correct no-findings result but investigated more broadly
than the task required. Across the four current cases, the evidence supports a
positive quality screen while keeping proportionality as an explicit limit.

### Efficiency

In the two cases with complete comparable ratios, the skill used 1.13x–1.72x
input, 1.21x–1.34x elapsed time, and 1.25x–3.60x tool calls. The atomicity review
produced a 1.18x larger response. The clean review produced a 0.72x response
despite the deeper investigation. The review skill bought decision quality, not
speed; future evaluations should continue measuring stop behavior and tool cost.

## Software failure diagnosis

### Current role

The skill owns unexplained symptoms. It turns observations into discriminating
experiments and a supported cause, then routes a causally ready repair to
implementation. It should not activate when the user already supplies adequate
causal support.

### Cases

- A lost update caused by stale per-instance state and last-writer replacement.
- A same-key cold-cache stampede requiring a controlled execution timeline
  rather than inspection of shared state.
- Two already-understood repairs where diagnosis should stay inactive.

### Result

The skill-guided investigations found the same core causes as control but added
decision-relevant evidence. One directly reproduced the failure across a
restart/reload boundary. The other added sequential and warm controls plus a
deterministic failure-and-retry regression seam. The substantive score effects
were +1.0 and +1.5, with consistent blind preference for the skill.

The skill loaded for both unexplained symptoms and stayed inactive for both
known-cause repairs. A correctness defect shared by the paired implementations
was therefore not attributed to diagnosis. The result is **promising**: causal
discipline and activation calibration transferred, but the median quality gain
remains below the +2 positive-signal threshold.

### Efficiency

The measured cold-cache investigation used 1.02x input, the same number of tool
calls, 0.84x elapsed time, and a 0.86x response. That is a favorable speed and
communication signal for one substantive case, not enough evidence for a
general efficiency claim.

## Behavior-preserving refactoring

### Current role

The skill improves structure only while supported observable behavior and
compatibility remain fixed. It must route accepted-input, alias, precedence,
migration, fallback, and other semantic changes to a behavior-owning workflow
before editing.

### Final-state cases

- Moving a shared request responsibility to one coherent owner.
- A retention-policy change whose external behavior was already accepted and
  could safely proceed as structural work.

### Result

The skill won both cases. It consolidated the shared owner without losing
behavior and treated the accepted policy as sufficient authority rather than
creating a false blocker. The mean effect was +1.25, every blind judgment
preferred the skill, and the boundary did not regress.

This is a **positive screen**. The current semantic gate is central to the skill,
but its strongest unresolved alias-and-precedence challenge has not been rerun
against the complete final state. That missing case prevents a confirmatory
claim.

### Efficiency

The shared-owner case used 1.59x input, 1.12x elapsed time, 1.11x tool calls, and
a 1.15x response. The settled boundary used 0.65x input, 0.66x elapsed time,
0.50x tool calls, and a 0.64x response. Efficiency is mechanism-dependent:
deeper structural discovery cost more, while the ready boundary was handled
more compactly and quickly.

## Retrospective architecture review

### Current role

The skill revisits architecture only when delivery, operation, incidents, or
maintenance produced a meaningful learning delta. It compares the current
design with smaller credible alternatives—including quarantine or removal of
optional mechanisms—and stops when no architectural decision needs reopening.

### Final-state cases

- An interaction change whose decisions propagated across several consumers.
- A completed feature whose implementation was sound but produced no new
  architectural learning.

### Result

The skill won both cases. It recovered the evolution of the interaction and its
cross-consumer consequences, while the boundary case cleanly separated
implementation conformance from architectural learning and routed current
scrutiny elsewhere. The mean effect was +3.25, every blind judgment preferred
the skill, and there was no boundary regression.

This is a **positive screen** rather than a confirmatory benefit claim. The final
quarantine-or-removal comparison for optional unvalidated mechanisms still
needs an independent substantive rerun.

### Efficiency

The interaction case used 2.76x input, 1.55x elapsed time, 2.07x tool calls, and
a 1.52x response. The no-learning boundary used 1.32x input, 1.36x elapsed time,
3.17x tool calls, and a 1.19x response. The quality gain came with clear
investigation and communication overhead. Proportionality improved at the
decision level—the skill stopped—but not at the resource level.

## Domain modeling

### Current role

The skill models disputed meaning, rules, invariants, lifecycle, identity, and
ownership. It first decides whether a domain model is needed, locates both the
changed-surface and preserved-behavior owners, and challenges identity proposals
against duplicates, reorder, split or merge, edits, regeneration, deletion, and
reappearance.

### Final-state case

- A stable-identity decision spanning renames, identical copies, edits,
  versions, and deletion followed by reappearance.

### Result

The skill and control both scored 20/20, while both blind graders preferred the
skill-guided analysis. The result supports the final identity gate but has no
score magnitude and only one final-state case.

The current skill combines semantic depth, proportionality, dual-owner
discovery, and transformation-based identity checks. That complete contract has
not yet been exercised against the full set of complex-model,
local-presentation, duplicate, and re-chunking cases. The current status is
therefore **promising design with limited final-state evidence**, not
confirmatory effectiveness.

### Efficiency

On the final identity case, the skill used 1.27x input, 0.82x elapsed time, the
same number of tool calls, and a 0.91x response. It was faster and more concise
but consumed more input. One tied case cannot establish general efficiency.

## Scoped change implementation

### Current role

The skill implements ready, authorized changes in coherent vertical slices. It
preserves complete staged state, validates behavior at the affected seam, and
stops when available signals cannot distinguish the requested safe and unsafe
outcomes.

### Final-state cases

- A bounded cache-deletion endpoint with validation and focused tests.
- An exactly-once retry boundary whose correctness depended on preserving
  complete staged state before an irreversible effect.

### Result

The skill improved the exactly-once information boundary by +1.0 and tied a
near-ceiling cache-deletion implementation. The two-case mean was +0.5, blind
preferences split evenly, and neither case introduced a boundary regression.

This is **neutral** current-state evidence. The important ambiguous
stale-versus-incompatible authority boundary is represented in the final
contract but has not been rerun against the complete final state.

### Efficiency

The cache-deletion case used 1.71x input, 1.04x elapsed time, 1.62x tool calls,
and a 1.18x response. The exactly-once boundary used 0.77x input, 0.94x elapsed
time, 0.67x tool calls, and a 1.67x response. Across the pair, elapsed time was
approximately equal, while total input, tool calls, and response size were
higher. No efficiency benefit is established.

## Architecture surface mapping

### Current role

The skill orients a developer to the smallest decision-relevant path through an
unfamiliar system. It should identify real owners, contracts, failure and
recovery paths, verification seams, and remaining unknowns without turning the
map into an assessment or redesign.

### Cases

- A cross-layer refresh path from filesystem observation through index and
  cache commit to HTTP delivery and browser reconciliation.
- A request-deadline orientation across expanded planning, bounded retrieval
  work, pooled resources, trace recording, error translation, and shutdown.
- A two-literal command-help wording change whose owner and verification seam
  were directly discoverable.

### Result

The initial screen showed two problems. The substantive orientation was useful
but slightly less precise than control, for a -1.0 mean effect. The skill also
over-applied its mapping workflow to the direct wording lookup, for a -3.0 mean
effect.

The revised skill narrows automatic activation, provides a direct-lookup fast
path, and strengthens evidence rules for ownership and live-state claims. On an
unchanged rerun, it correctly stayed inactive for the direct wording lookup.
The paired output difference in that cell is therefore routing-calibration
evidence, not a skill-caused quality effect.

The skill did load for the cross-layer orientation, but the repeated result
still favored control. The skill-guided map scored 17/20 in both judgments;
control scored 19/20 and 18/20, for a -1.5 mean effect. Both accurately traced
the critical path and had no hard failures. Control was more complete on
failure and continuity boundaries, cache recovery, HTTP and page consistency,
and verification seams. Both outputs could have made uninspected deployment,
operator, and live-telemetry surfaces more explicit.

Those results belong to earlier skill snapshots. The current skill adds a
generic path-closure gate: follow decision-relevant scenarios to a
consumer-visible outcome and next usable state, include resource semantics and
protective controls only when they alter completion or recovery, and
distinguish verified absence from an uninspected surface.

The final revision won a materially different request-deadline orientation.
The skill-guided result scored 19/20 and 18/20; control scored 18/20 and 17/20,
for a +1.0 mean effect. Both graders preferred the skill, at high and medium
confidence. It added decision value by preserving the original failure when
trace persistence also fails, closing shutdown limitations, and naming missing
deadline and in-flight-shutdown evidence. Neither candidate fully described
successful pooled-resource return versus failed-resource discard, and neither
had a hard failure.

On the unchanged direct-locator boundary, the skill activated but took its fast
path. It scored 20/20 in both judgments against 16/20 controls by identifying
the two display owners, preserving runtime behavior, and selecting the direct
output check instead of broader unavailable probes. This is a proportionality
gate, not a second effectiveness effect.

The current status is a **positive transfer screen**. It shows one final-state
quality win on a different mechanism and a safe boundary, not producer
replication or a general benefit claim. No further tuning is indicated by these
cases.

### Efficiency

On the final transfer case, the skill used 1.99x input, 1.75x elapsed time,
1.55x tool calls, and a 1.74x response. The +1.0 quality gain therefore came
with material investigation and communication overhead. On the locator gate,
it used 1.15x input, 0.93x elapsed time, the same tool count, and a 0.83x
response while improving quality. The current evidence supports decision
quality and proportionality, not general speed or cost efficiency.

## Specification review

### Current role

The skill independently tests a fixed specification for contradictions,
ambiguity, hidden decisions, unsupported claims, boundary and failure gaps, and
wording loopholes. It should distinguish an implementation blocker from an
editorial preference and can return a clean, ready result.

### Cases

- A behavior proposal that conflicted with another governing specification
  while matching current executable behavior.
- A settled two-literal help-text specification with preserved runtime behavior
  and complete acceptance claims.

### Result

The skill found the governing-contract conflict, separated it from current code
conformance, and named the exact authority reconciliation required before
implementation. The mean effect was +2.5; both graders preferred the
skill-guided review, and one control answer made an unsupported inference about
shared state.

On the settled specification, the skill returned a concise clean review and a
ready handoff. The control invented a blocking ambiguity contrary to the stated
contract. Both graders scored the skill 20/20 and preferred it at high
confidence, for a +13.0 mean effect.

An earlier intended clean case is excluded from these results. Candidate
evidence showed that its source specification contained real contract defects,
falsifying the clean-case anchor. The case was replaced rather than treating
correct scrutiny as a skill failure. The two valid cases support a **positive
screen** without requiring a skill change.

### Efficiency

Across the two valid cases, the skill used about 1.06x input, 1.25x elapsed
time, and 1.07x tool calls while producing a 0.92x response. The substantive
conflict review accounted for most of the additional work; the settled review
used the same tool count and a materially shorter final response. The quality
gain is clear, but no general speed or monetary-cost benefit is claimed.

## Deep module design

### Current role

The skill decides whether a responsibility deserves a deep module and, when it
does, designs a narrow interface that hides real complexity. It should also
reject extraction when a local change has no durable policy, state, lifecycle,
or volatility to hide.

### Cases

- Duplicated parsing of a frontmatter envelope across two consumers with
  different downstream semantics.
- A two-literal help-text wording change proposed as a possible new formatting
  module.

### Result

For duplicated parsing, the skill identified a coherent narrow owner for
delimiter recognition and body slicing while keeping title, status, chunking,
and cleanup semantics with their existing consumers. It made retention versus
redesign explicit and supplied edge semantics, verification, rejection tests,
and revisit signals. The mean effect was +1.5, with both graders preferring the
skill-guided design.

For the wording boundary, both conditions rejected a module. The skill made the
reason and future extraction signals more explicit, producing a +0.5 mean
effect and two medium-confidence preferences without a boundary regression.
This is a **positive screen**: the decision discipline helped, though the small
effect and one producer pair per case do not establish repeatability.

### Efficiency

Across the pair, the skill used about 1.73x input, 1.43x elapsed time, 1.17x tool
calls, and a 1.43x response. The ordinary design justified more depth; the tiny
boundary remained correct but verbose. Future screens should watch whether the
same decision quality can be delivered more compactly before changing the
skill solely for one high-cost run.

## Cross-skill findings

The clearest current gains come from decisions ordinary implementation cannot
safely infer: specifying ambiguous behavior, separating investigation from a
known-cause repair, rejecting a plausible review false positive, distinguishing
structural work from behavior change, deciding whether architectural learning
warrants reopening a design, reconciling conflicting specification authority,
and assigning a narrow module owner without absorbing downstream semantics.

Ready implementation cases often create ceiling compression: both conditions
pass the same checks and differ mainly in verification breadth or clarity. This
is useful neutral evidence. A skill must improve safety, decision quality, or
future change cost rather than receive credit for completing work that a strong
general agent already handles.

Quality and resource efficiency are independent. Change specification
sometimes reduced investigation dramatically; diagnosis produced one faster
substantive run; refactoring was cheaper on the bounded case. Code review,
specification review, retrospective review, deep-module design, and the current
architecture-mapping transfer bought quality with greater investigation. The
architecture-mapping boundary was compact and faster, while implementation
showed no overall efficiency advantage. No skill has a demonstrated monetary-cost
benefit in this evidence snapshot.

## Limitations

- These findings describe the final skill states at the snapshot date.
- Most cases contain one producer result per condition. Two blind graders and
  deterministic checks reduce interpretation risk but do not remove sampling
  variance.
- These retained studies predate the coached-capability, natural-holdout, and
  routing-boundary split. Some prompts deliberately scaffold the decision or
  alternatives, so the findings are targeted capability screens rather than
  natural-invocation benchmarks.
- Final-state evidence is narrower for architecture surface mapping, domain
  modeling, implementation, refactoring, and retrospective review because
  important contract branches still need targeted reruns.
- Strong controls created ceiling effects in several ordinary cases.
- One intended clean specification-review case was invalidated after candidate
  evidence falsified its anchor; the reported result uses a replacement case.
- Producer-relative input, time, tool, and response ratios are case-specific;
  they are not provider pricing or end-to-end wall-clock cost.
- Subject identities and raw artifacts are intentionally excluded. This is an
  external evidence summary, not the private reproduction bundle.
