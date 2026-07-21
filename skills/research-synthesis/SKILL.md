---
name: research-synthesis
description: Investigate a bounded question across high-trust sources and produce a claim-level, provenance-preserving evidence synthesis with contradictions, applicability, confidence, and unresolved gaps. Use for literature or source surveys, papers and reports, standards and official guidance, technical or policy evidence reviews, competing claims, or requests to determine what the available evidence supports. Do not use for orienting to how an unfamiliar software system currently works, discovering customer opportunities, diagnosing an observed failure, executing a fixed verification plan, or closing the accountable decision that consumes the research.
---

# Research Synthesis

Turn a live question into a bounded, recheckable evidence brief. Optimize for a defensible answer and the next correct inquiry, not for source volume or an exhaustive research diary.

## Preserve scope and evidence integrity

- Research and recommend by default. Do not contact people, enroll participants, publish externally, purchase access, change systems, or make consequential decisions without explicit authorization.
- State the question, decision relevance, audience, time horizon, source boundary, consequence of error, and stop condition. Keep exploratory inquiry open when a premature hypothesis would create false closure.
- Classify the missing artifact before applying this workflow. When a neighboring owner below fits, stop and route there; do not wrap that owner's work in `RES-*` claims or an evidence matrix merely because this skill was invoked explicitly.
- Distinguish source evidence, source-reported interpretation, synthesizer inference, proposed conclusion, and unresolved question. Do not let fluent prose erase those ownership layers.
- Preserve source permissions, confidentiality, personal-data boundaries, embargoes, and licensing. Do not expose evidence merely because a connected tool can retrieve it.
- Treat existing summaries and knowledge-base concepts as routing and overlap evidence, not automatically as authoritative substitutes for their underlying sources.
- Keep the output inline unless the user requests a durable artifact or the repository has a clear research-note convention. Do not create a project wiki for a disposable question.

## Research workflow

1. **Frame the inquiry.** Write the live question and the decision or understanding it should improve. Bound populations, systems, jurisdictions, versions, time periods, source types, excluded interpretations, output depth, and the condition for stopping or returning an inconclusive result.
2. **Recover existing coverage.** Search the applicable repository, knowledge base, prior decisions, and authoritative local artifacts before external discovery. Record what can be reused, what is stale or derived, and which gaps require new sources; avoid producing a duplicate survey with different wording.
3. **Make the working model inspectable.** State a provisional answer, competing hypotheses, or a question tree. Identify the weakest consequential claims and choose the next search by what could confirm, revise, distinguish, or defeat them. Do not force an exploratory or descriptive question into advocacy.
4. **Design the source strategy.** Match source class to claim: specifications and official documentation for normative behavior; original papers, datasets, and methods for empirical results; systematic syntheses for field-level evidence; and first-party reports for operational practice with incentives labeled. Define inclusion, exclusion, recency, canonicality, and counterevidence criteria before collecting convenient sources.
5. **Find and verify canonical sources.** Prefer the artifact that owns the claim. Check identity, authorship, date, version, corrections or retractions, and whether a newer source supersedes it. Read enough of the full artifact to recover method, context, qualifications, and negative results; do not infer a conclusion from a title, snippet, abstract, first page, or quoted secondary summary.
6. **Extract consequential claims with provenance.** Give each reusable claim a stable `RES-*` key and plain-language label. Link it to the exact passage, section, figure, table, dataset, code, or observation plus enough surrounding context to recheck it. Preserve what was observed or reported separately from the synthesis interpretation.
7. **Compare evidence on equivalent dimensions.** Normalize claim, method, population or workload, setting, intervention or mechanism, outcome, time window, assumptions, limitations, and transfer boundary. Explain whether apparent disagreement comes from conflicting results, different questions, incomparable contexts, changing versions, or source incentives. Source counts do not settle evidential weight.
8. **Synthesize for the decision.** Lead with the bounded answer. Show convergent evidence, material counterevidence, plausible alternative explanations, source-class limits, applicability to the user's context, and confidence reasoning. Preserve uncertainty instead of averaging it into a false consensus or numerical score.
9. **Stop deliberately.** Stop when the question is answered to the declared consequence level, the decisive uncertainty is explicit, or the expected value of another source is low. Return `inconclusive`, `insufficient access`, or `route` when evidence cannot support the requested claim. Name the cheapest next probe only when it could change the result.
10. **Persist only reusable research state.** When a durable artifact is justified, follow the repository convention; keep raw sources or stable source identities separate from derived claims, record freshness, and retain open questions or failed searches that would prevent repeated work. Do not silently rewrite source-owned material.

Use [references/evidence-synthesis-record.md](references/evidence-synthesis-record.md) for a working evidence matrix or durable brief. Keep simple answers compact.

## Route neighboring work

- Stop and use `architecture-surface-mapping` when the missing artifact is evidence-ranked orientation to the current code, data, runtime, dependency, recovery, or ownership structure of an unfamiliar software subject. Do not repackage repository inspection as a research synthesis; a completed surface map may later become local evidence for a genuinely broader question.
- Use `product-opportunity-discovery` for customer context, opportunity prevalence, product-value hypotheses, and learning tests. A literature review cannot substitute for direct customer evidence.
- Use `software-failure-diagnosis` for causal investigation of a concrete bug, regression, intermittent failure, or performance degradation.
- Use `architecture-risk-evaluation` to challenge one proposed architecture against stakeholder and quality scenarios; research synthesis can supply external evidence but does not issue the risk verdict.
- Use `verification-strategy-design` and `verification-execution` for fixed engineering claims, methods, oracles, and executed results.
- Use `decision-facilitation` for accountable weighting, tradeoffs, closure, commitments, and reopening conditions after the evidence is available.
- Use the repository's source-capture or summarization workflow for one artifact when no cross-source claim synthesis is requested.

## Quality gates

- The live question, decision relevance, scope, freshness need, and stop condition are explicit.
- Existing local coverage was checked before external discovery.
- Source classes fit the claims they support, and material incentives or independence limits are visible.
- Every consequential conclusion can be traced to exact evidence and distinguished from synthesizer inference.
- Counterevidence, negative results, superseding versions, and materially different contexts were sought rather than filtered out by the favored hypothesis.
- Empirical findings retain their method, population or workload, outcome, and transfer boundary; normative documents are not presented as outcome evidence.
- Contradictions and missing access remain visible, and confidence is explained without invented precision.
- The result answers the inquiry before presenting the source inventory or research process.

## Reject weak synthesis

- Do not return a bibliography, search-result list, or pile of summaries as a research conclusion.
- Do not count sources as votes or treat repeated citations of one underlying result as independent corroboration.
- Do not treat vendor guidance, organizational case reports, benchmarks, preprints, standards, and independent empirical studies as interchangeable evidence.
- Do not cite a source at document level when a consequential claim needs passage-, figure-, table-, data-, or version-level support.
- Do not claim absence, consensus, causality, safety, or generality merely because the bounded search found no contradiction.
- Do not hide a weak or inconclusive result behind breadth, polish, or a mandatory durable artifact.

## Completion

Return the inquiry and scope; bounded answer; keyed consequential claims and exact provenance; convergent, conflicting, and missing evidence; applicability and confidence; source limitations; stop rationale; and any next probe or specialist route. State whether the result is sufficient for its declared use, not whether the downstream decision is approved.
