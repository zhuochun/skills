---
name: research-synthesis
description: Produce a bounded cross-source synthesis of what high-trust evidence supports, contradicts, or leaves unresolved, with claim provenance, applicability, confidence, and gaps. Use for literature reviews and comparisons across papers, standards, reports, guidance, or datasets. Exclude one-source summaries, current-system orientation, local domain modeling, regulated applicability, verification design or execution, and downstream recommendations or decisions.
---

# Research Synthesis

Turn a live question into a bounded, recheckable evidence brief. Optimize for a defensible answer and the next correct inquiry, not for source volume or an exhaustive research diary.

## Preserve scope and evidence integrity

- Research and synthesize evidence by default. State what the evidence supports and its bounded implications. Recommend only the next research probe; route product, architecture, policy, risk, regulated-domain, approval, and other downstream judgments to their owners. Do not approve, reject, or assign a downstream decision state.
- Do not contact people, enroll participants, publish externally, purchase access, change systems, or make consequential decisions without explicit authorization.
- State question, decision relevance, audience, horizon, source boundary, cost of error, and stop condition. Keep exploratory inquiry open when a hypothesis would create false closure.
- Classify the missing artifact first. When a neighboring owner fits, route there rather than wrapping its work in `RES-*` claims or a matrix.
- Distinguish source evidence, source-reported interpretation, synthesizer inference, proposed conclusion, and unresolved question. Do not let fluent prose erase those ownership layers.
- Preserve permissions, confidentiality, personal data, embargoes, and licensing. Tool access does not authorize disclosure.
- Existing summaries and concepts are routing and overlap evidence, not automatic substitutes for sources.
- Keep the output inline unless the user requests a durable artifact or the repository has a clear research-note convention. Do not create a project wiki for a disposable question.

## Choose execution depth

Use the compact path when the question can be answered inline from a small cross-source set and no consequential reuse, reconstruction, or specialist handoff justifies a research record. State the scope and source boundary briefly, cite each material claim, preserve meaningful contradiction and uncertainty, explain applicability limits, and stop. Do not create `RES-*` keys, a working model, comparison matrix, or durable record.

Use the full workflow when consequence, source conflict, reusable claims, reconstruction cost, a durable artifact, or cross-skill handoff justifies the machinery. Give stable keys only to claims that another artifact must recheck or consume.

If the request concerns one artifact without a broader evidence question, stop this workflow. Use a repository-native capture or summarization workflow when one exists; otherwise summarize or extract the artifact directly without cross-source machinery.

## Full research workflow

1. **Frame the inquiry.** State the question and intended decision or understanding. Bound populations, systems, jurisdictions, versions, periods, sources, excluded interpretations, depth, and stop or inconclusive conditions.
2. **Recover authorized coverage.** Search supplied sources and local repositories, knowledge bases, prior decisions, or authoritative artifacts only when they are inside the declared source boundary and authorized for this inquiry. Skip connected private corpora that are not explicitly in scope. Record reusable, stale, and derived material plus gaps requiring new sources.
3. **Expose the working model.** State a provisional answer, competing hypotheses, or question tree. Search next where evidence could confirm, revise, distinguish, or defeat the weakest consequential claim. Do not turn exploration into advocacy.
4. **Design the source strategy.** Match sources to claims: official specifications for normative behavior, original research and data for empirical results, systematic syntheses for field evidence, and labeled first-party reports for practice. Set inclusion, exclusion, recency, canonicality, and counterevidence criteria.
5. **Find and verify canonical sources.** Prefer the artifact that owns the claim. Check identity, authorship, date, version, corrections or retractions, and whether a newer source supersedes it. Read enough of the full artifact to recover method, context, qualifications, and negative results; do not infer a conclusion from a title, snippet, abstract, first page, or quoted secondary summary.
6. **Extract claims with provenance.** Give reusable or handed-off claims stable `RES-*` keys and labels. Link exact passages, figures, tables, data, code, or observations with enough context to recheck. Separate source report from synthesis.
7. **Compare evidence on equivalent dimensions.** Normalize claim, method, population or workload, setting, intervention or mechanism, outcome, time window, assumptions, limitations, and transfer boundary. Explain whether apparent disagreement comes from conflicting results, different questions, incomparable contexts, changing versions, or source incentives. Source counts do not settle evidential weight.
8. **Synthesize for the declared use.** Lead with the bounded answer. Show convergent evidence, material counterevidence, plausible alternative explanations, source-class limits, source-supported applicability, and confidence reasoning. Preserve uncertainty instead of averaging it into a false consensus or local applicability verdict.
9. **Stop deliberately.** Stop when the question is answered to the declared consequence level, the decisive uncertainty is explicit, or the expected value of another source is low. Return `inconclusive`, `insufficient access`, or `route` when evidence cannot support the requested claim. Name the cheapest next probe only when it could change the result.
10. **Persist only reusable research state.** When a durable artifact is justified, follow the repository convention; keep raw sources or stable source identities separate from derived claims, record freshness, and retain open questions or failed searches that would prevent repeated work. Do not silently rewrite source-owned material.

Use [references/evidence-synthesis-record.md](references/evidence-synthesis-record.md) only for the full workflow or a justified durable brief.

## Route neighboring work

- `architecture-surface-mapping` owns software orientation; repository inspection is not research synthesis.
- `product-opportunity-discovery` owns customer context and product hypotheses; literature cannot replace customer evidence.
- `software-failure-diagnosis` owns causal bug and performance investigation.
- `architecture-risk-evaluation` owns architecture verdicts; synthesis may supply external evidence.
- `verification-strategy-design` and `verification-execution` own project-specific engineering claims, methods, oracles, execution, and adjudication.
- `domain-modeling` owns local meaning, behavior, rules, invariants, and translations. External definitions are evidence, not authority for the local model.
- Accountable legal, compliance, privacy, security, safety, medical, and financial owners retain context-specific applicability judgments; do not issue compliant, noncompliant, safe, unsafe, eligible, or ineligible verdicts.
- `decision-facilitation` owns owner criteria, downstream recommendations, accountable tradeoffs, and closure.
- `teach-concepts` owns learner-specific explanation, misconception repair, reconstruction, and transfer checks. It may consume supplied or synthesized evidence; teaching does not establish source truth.
- `technical-writing` owns a durable reader artifact and its reading path. When cross-source evidence is needed, `research-synthesis` supplies the evidence foundation; it does not own the tutorial, article, or documentation structure.
- For one artifact, use repository capture or summarization when available; otherwise summarize or extract it directly.

## Quality gates

- Question, relevance, scope, freshness, and stop condition are explicit; authorized in-scope local coverage was checked when applicable.
- Execution depth is proportionate; compact answers omit research-record machinery, and full records exist only for consequence, reuse, reconstruction, or handoff.
- Source classes fit claims and disclose incentives or independence limits.
- Consequential conclusions trace to exact evidence and remain distinct from inference.
- Counterevidence, negative results, newer versions, and different contexts were sought.
- Empirical findings retain method, population, outcome, and transfer boundary; normative documents are not outcome evidence.
- Contradictions and access gaps remain visible; confidence avoids invented precision.
- The answer precedes source inventory and process.

## Reject weak synthesis

- Do not return bibliographies or summary piles as conclusions, count sources as votes, or treat repeated citations as independent.
- Do not equate vendor guidance, cases, benchmarks, preprints, standards, and independent studies.
- Consequential claims need passage-, figure-, table-, data-, or version-level support.
- A bounded search cannot alone establish absence, consensus, causality, safety, or generality.
- Breadth, polish, or durable artifacts cannot hide weak or inconclusive evidence.

## Completion

For the compact path, return the inquiry and scope, bounded answer, exact citations for material claims, contradictions and gaps, applicability limits, confidence, and stop or route. For the full workflow, add keyed reusable claims, source limitations, stop rationale, and any next probe. State whether the evidence is sufficient for its declared use. Do not label a downstream decision approved, rejected, compliant, noncompliant, safe, or unsafe.
