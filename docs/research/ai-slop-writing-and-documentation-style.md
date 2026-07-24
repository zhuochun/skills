# AI slop, humanized writing, and a documentation style baseline

Research snapshot: 2026-07-24

## Decision

Use the [Google developer documentation style guide](https://developers.google.com/style) as the default prose and editorial standard for technical documentation in this repository.

This is a best-fit decision, not a claim that one guide is objectively best. Google’s guide is public, maintained, written for developers and technical practitioners, and specific enough to resolve recurring questions about voice, grammar, procedures, code, links, accessibility, and formatting. Its own hierarchy also leaves room for project-specific rules and reader needs to take precedence.

Use [Diátaxis](https://diataxis.fr/) only to choose and separate the document’s function—tutorial, how-to, reference, or explanation. Diátaxis is an information architecture and authoring framework, not a complete prose style.

The anti-slop rules below are an editing standard. They aim for accurate, useful, recognizably authored writing. They must not be used to conceal required AI disclosure or to game AI-text detectors.

## What “AI slop” means

The [Wikipedia article on AI slop](https://en.wikipedia.org/wiki/AI_slop) describes it as low-quality AI-generated digital content produced at scale and perceived as lacking effort, quality, or meaning. The article distinguishes the problem from AI use by itself: the useful boundary is low-value, mass-produced output, not the mere presence of an AI tool.

Wikipedia’s [Signs of AI writing](https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing) page is also useful as a catalogue of recurring textual symptoms. It covers inflated significance, promotional language, vague attribution, superficial analysis, formulaic contrasts and triads, synonym cycling, mechanical headings and lists, chatbot residue, and unreliable citations.

Two cautions matter:

- The signs page is advice from WikiProject AI Cleanup, not Wikipedia policy or a universal style guide.
- The page says that isolated signs do not prove AI authorship and warns against relying on detector output alone.

Therefore, treat the page as a set of editing smells. Diagnose clusters and reader harm; do not turn its examples into a banned-word list.

## What popular humanizer skills contribute

Popularity is a rough adoption signal, not evidence of writing quality. GitHub stars below are a volatile snapshot from 2026-07-24. For collections, the star count belongs to the repository, not the individual skill.

| Skill or collection | Reach snapshot | Useful ideas | Rules not adopted |
| --- | ---: | --- | --- |
| [blader/humanizer](https://github.com/blader/humanizer/blob/main/SKILL.md) | about 30.7k stars | Preserve meaning; inspect repeated patterns; calibrate against real author samples; run a second obvious-AI pass | Adding opinions or personality without author evidence; treating surface tells as proof |
| [hardikpandya/stop-slop](https://github.com/hardikpandya/stop-slop) | about 14.4k stars | Cut throat-clearing, meta-commentary, business jargon, empty emphasis, and structural clichés | Blanket bans on adverbs, passive voice, question-word openings, and em dashes; arbitrary prose scores |
| [softaworks/agent-toolkit](https://github.com/softaworks/agent-toolkit/blob/main/skills/humanizer/SKILL.md) | about 2.2k repository stars | Broad pattern catalogue; preserve meaning and voice; remove chatbot residue, vague claims, and generic conclusions | “Have opinions” as a general rewrite instruction; punctuation rules detached from purpose |
| [petergyang/no-ai-slop](https://github.com/petergyang/no-ai-slop/blob/main/SKILL.md) | about 2.1k stars | Separate edit and detection modes; make minimum effective edits; preserve meaningful roughness; cite exact evidence; run a self-check | Banned words, restrictions on normal technical agency, and numerical em-dash limits |
| [harshaneel/humanize](https://github.com/harshaneel/humanize) | about 290 stars | Research references, declared limits, voice matching from samples, and an attempt to distinguish quality from detector optimization | Detector scoring as an editorial goal; inferred authorship percentages; “human” metrics used as truth |
| [Aboudjem/humanizer-skill](https://github.com/Aboudjem/humanizer-skill/blob/main/skills/humanizer/SKILL.md) | about 130 stars | Flag clusters rather than isolated tells; preserve code, quotations, jargon, and purposeful repetition; support different voice profiles | Fixed thresholds, forced “burstiness,” and zero-tolerance punctuation rules |
| [jpeggdev/humanize-writing](https://github.com/jpeggdev/humanize-writing/blob/main/SKILL.md) | about 20 stars | Staged editing passes and counting a suspected pattern before calling it overused | Injecting “soul,” anecdotes, or personal texture that the author did not provide |

Across these skills, the most defensible common core is:

1. Preserve meaning before changing style.
2. Remove formulaic structures by function, not by keyword.
3. Match a real voice only when samples exist.
4. Make the minimum effective edit and leave strong passages alone.
5. Support detection findings with exact passages instead of guessing authorship.
6. Inspect evidence, specificity, rhythm, and connective logic in separate passes.
7. Judge the result as writing for a reader, not as a detector score.

Their most common failure is replacing one formula with another: no em dashes, mandatory sentence-length variation, added opinions, or a target “human” score. Those rules can damage precise technical prose and may fabricate an authorial persona.

## Ultimate anti-slop writing rules

These rules are ordered by importance. A later stylistic rule never overrides an earlier truth, safety, or reader rule.

### Protect truth, meaning, and authority

1. Preserve every factual claim, requirement, qualifier, uncertainty, and level of obligation unless the change is deliberate and disclosed.
2. Verify or remove unsupported facts, quotations, citations, dates, metrics, and named attributions.
3. Never invent experience, results, emotions, opinions, users, incidents, or organizational consensus to make prose feel human.
4. Distinguish source fact, direct observation, synthesis, inference, proposal, and opinion when the difference affects trust.
5. Preserve code, commands, identifiers, URLs, anchors, quotations, frontmatter, product names, and correct domain terms.
6. Keep safety limits, prerequisites, permissions, compatibility constraints, and recovery instructions explicit.
7. Do not weaken normative words such as *must*, *should*, and *may* for variety.
8. Follow the destination’s authorship, attribution, and AI-disclosure rules. Humanizing is not permission to hide provenance.

### Give one reader one useful job

9. Name the intended reader, their starting context, and the outcome the document should enable.
10. Choose one primary document function: learning, completing a task, looking up facts, or understanding a subject.
11. Lead with the answer, outcome, or problem—not praise, scene-setting, or an announcement that the topic matters.
12. Include background only when it changes what the reader understands or does.
13. Put prerequisites and conditions before the action they constrain.
14. Prefer concrete nouns, named actors, observable behavior, and measurable outcomes.
15. Support abstractions with an example, then state what the example demonstrates.
16. Remove paragraphs that repeat the heading, preview the obvious, or summarize without adding a decision or implication.

### Remove unsupported importance and promotion

17. Delete claims that something is pivotal, transformative, revolutionary, foundational, rapidly evolving, or a testament unless evidence and scope justify them.
18. Replace promotional adjectives and superlatives with capabilities, limits, measurements, or comparisons.
19. Do not infer notability from mere existence, coverage, adoption, or association.
20. Remove symbolic “reflects,” “underscores,” “highlights,” and “serves as” clauses when they only inflate the previous sentence.
21. Avoid generic statements about the wider landscape, future potential, lasting impact, or ongoing journey.
22. State a real consequence directly; do not append an `-ing` phrase that vaguely claims significance.

### Make claims attributable and specific

23. Replace “experts say,” “research shows,” “many believe,” and similar attributions with a named source and scope—or remove the claim.
24. Put a citation next to the exact claim it supports.
25. Do not cite a source for a stronger, broader, or different claim than the source makes.
26. Label unverified examples, estimates, and assumptions.
27. Use exact dates, versions, environments, and sample sizes when they affect reproducibility.
28. Prefer one canonical technical term; do not cycle through synonyms merely to avoid repetition.

### Break formulaic structure only when it is formulaic

29. Do not force ideas into three items. Use the number the subject requires.
30. Do not manufacture a false range such as “from X to Y” when X and Y are not endpoints on one dimension.
31. Avoid repeated “not X, but Y,” “not only X, but also Y,” and negative-list constructions when a direct statement is clearer.
32. Do not append a generic challenges, limitations, future work, or conclusion section unless it answers a reader question.
33. Use headings to expose the reader’s path, not to split every paragraph or create symmetrical decoration.
34. Use a list when the items are genuinely parallel or sequential. Use prose when their relationship needs explanation.
35. Keep list items grammatically parallel and do not restate the same item before and after the list.
36. Use transitions that name the relationship—cause, contrast, sequence, exception—not a rotating set of decorative connectors.

### Prefer natural, precise sentences

37. Prefer plain `is`, `are`, `has`, and `uses` when they express the fact accurately.
38. Use active voice when the actor matters. Keep passive voice when the actor is unknown, irrelevant, or intentionally deemphasized.
39. Vary sentence length because the ideas require different shapes, not to meet a “burstiness” target.
40. Use fragments, contractions, em dashes, semicolons, parentheses, and rhetorical questions only when they fit the author, audience, and purpose.
41. Flag repeated punctuation or syntax as a pattern; never treat a single em dash, triad, transition, or polished sentence as evidence of AI.
42. Cut filler such as “it is important to note,” “in today’s world,” “when it comes to,” and “at its core” when the sentence works without it.
43. Replace dense nominalizations and business jargon with the action and actor, while retaining necessary domain vocabulary.
44. Prefer a short sentence to a long sentence whose clauses do not have a clear logical relationship.

### Preserve real voice without fabricating one

45. Infer voice from author-provided samples or the current draft, not from a generic idea of how humans write.
46. Preserve demonstrated register, vocabulary, humor, directness, contractions, and punctuation habits when they remain clear.
47. Do not add “personality,” hot takes, vulnerability, anecdotes, or sensory detail unless the author supplied or approved them.
48. Keep purposeful repetition when it teaches, warns, or maintains terminology.
49. Let genuine uncertainty sound uncertain. Do not turn it into confident polish.
50. Read the draft aloud or inspect it at paragraph scale for cadence, but revise the underlying thought rather than inserting random variation.

### Remove machine and workflow residue

51. Delete chatbot greetings, offers to help, self-congratulation, grading language, and narration of the writing process.
52. Remove leaked citation tokens, prompt text, placeholders, template instructions, tracking parameters, and cutoff disclaimers.
53. Replace canned openings and conclusions with content specific to this document.
54. Do not mention sources, files, browsing, or tools unless that provenance helps the reader evaluate or reproduce the work.
55. End with the actual implication, next action, decision, or remaining question—not generic optimism.

### Verify the document as a technical artifact

56. Test commands, code, links, procedures, examples, and expected output in the stated environment when practical.
57. For procedures, state prerequisites, use one action per numbered step, and provide a success check.
58. Describe likely failure modes, safe-stop conditions, escalation, and recovery where consequences justify them.
59. Check that headings and link text are descriptive out of context and that images have useful alternative text.
60. Ask a representative reader to review high-consequence or hard-to-evaluate documents.

## Default documentation prose style

Apply the [Google style highlights](https://developers.google.com/style/highlights) unless a project rule or reader need calls for something else:

- Be conversational and professional, without forced cheerfulness.
- Address the reader as “you” when that makes responsibility clear.
- Prefer active voice and present tense, subject to accuracy.
- Put conditions before instructions.
- Use sentence case for titles and headings.
- Use numbered lists for sequences and bullets for non-sequential parallel items.
- Use descriptive link text and unambiguous dates.
- Format code, commands, filenames, parameters, and UI labels consistently.
- Write for accessibility and a global audience.
- Prefer clear, consistent terminology over stylistic variety.

These are defaults, not mechanical bans. Clarity, correctness, established project terminology, and the reader’s context win when they conflict with a generic rule.

## Why this style was selected

| Candidate | What it is best at | Decision |
| --- | --- | --- |
| [Google developer documentation style guide](https://developers.google.com/style) | Public, detailed prose and formatting guidance for developer documentation; strong coverage of code, procedures, links, accessibility, and global readers | **Primary default** |
| [Microsoft Learn style quick start](https://learn.microsoft.com/en-us/contribute/content/style-quick-start) | Friendly, task-focused technical help and Microsoft Learn contribution conventions | Strong alternative when publishing into the Microsoft ecosystem |
| [Red Hat supplementary style guide](https://redhat-documentation.github.io/supplementary-style-guide/) | Controlled enterprise product documentation layered over IBM Style | Use for Red Hat work or as a specialized terminology/format reference |
| [Diátaxis](https://diataxis.fr/) | Separating tutorials, how-to guides, reference, and explanation | Structural companion, not the prose standard |

No credible source establishes an industry-wide “best” documentation guide. The selection is instead based on audience fit, public availability, maintenance, breadth, and operational usefulness. For this developer-skill repository, Google is the strongest general default.

## Editing workflow

Run these passes in order:

1. **Truth pass:** verify claims, citations, qualifications, authority, disclosure, and protected technical tokens.
2. **Reader pass:** confirm the reader, job, document function, prerequisites, and useful outcome.
3. **Structure pass:** remove repetition, fake comprehensiveness, ornamental sections, and broken logical order.
4. **Slop pass:** look for clusters of inflation, vague attribution, canned syntax, mechanical formatting, and chatbot residue.
5. **Voice pass:** compare with real author samples; restore demonstrated habits without inventing personality.
6. **Technical pass:** execute or inspect commands, code, links, procedures, outputs, accessibility, and recovery paths.
7. **Cold-reader pass:** ask whether a reader can find, trust, apply, and verify the result without the conversation that produced it.

Do not use an AI-detector score as a release gate. Research has repeatedly found poor robustness outside detector test conditions and under ordinary paraphrasing, including [Sadasivan et al.](https://arxiv.org/abs/2303.11156) and a later [practical NAACL evaluation](https://aclanthology.org/2025.findings-naacl.271/). A score can neither prove authorship nor substitute for editorial review.

## Source and maintenance notes

- Wikipedia supplied the requested public definition and symptom catalogue, not the normative standard.
- GitHub skill popularity was checked on 2026-07-24 and will drift.
- Repository stars measure attention, not independent effectiveness.
- Some surveyed projects cite research but also make detector-oriented or style-prescriptive leaps not established by that research.
- Update this note when the chosen documentation guide materially changes, a better comparative standard appears, or forward evaluations show that a rule harms reader performance.
