# Editorial Style and Anti-Slop Review

Use this reference to create or revise technical prose, preserve an observable
author voice, or audit a draft for formulaic writing.

## Apply standards in order

1. Follow destination-specific requirements, project terminology, and
   disclosure rules.
2. Preserve factual meaning, technical precision, normative force, safety, and
   source boundaries.
3. Preserve the author's observable voice when a draft or samples establish
   it.
4. Use the
   [Google developer documentation style guide](https://developers.google.com/style)
   as the default prose standard for technical documentation.

Treat style rules as defaults. Reader need and accurate technical language
override generic preferences.

## Protect the draft before editing

- Read the complete draft before changing local sentences.
- Identify the reader, the artifact's job, its core point, and three to five
  observable voice signals.
- Protect code, commands, identifiers, links, anchors, quotations, product
  terms, measurements, citations, and metadata.
- Keep qualifications, uncertainty, permissions, obligations, prerequisites,
  compatibility limits, and recovery conditions intact.
- Verify or flag unsupported claims, examples, statistics, quotations, and
  attributions. Never invent them to strengthen the prose.
- Keep required AI-use disclosure and provenance. Do not humanize to evade
  detection or conceal authorship.

## Make the minimum effective edit

- Leave strong, clear, characteristic passages alone.
- Fix unsupported claims, repetition, unclear logic, reader friction, and
  formulaic patterns.
- Preserve useful roughness, bluntness, humor, fragments, uncertainty,
  digressions, and changes in pace when they carry meaning or voice.
- Do not make every paragraph equally tidy or force every section into the
  same structure.
- Preserve the draft's progression unless reordering materially improves the
  reader's path. Explain consequential reorganization.
- Prefer concrete facts, named actors, direct verbs, mechanisms, dates, and
  measurements that the evidence supports.

## Diagnose formulaic prose by reader effect

When the entrypoint loads the pattern and language catalogue, use it as a
diagnostic aid. Revise only repeated patterns or clusters that materially harm
clarity, trust, or voice. Treat watchlist matches as prompts, not defects or
release failures. Treat context-only items as possible prompts for inspection,
never as authorship evidence by themselves.

For each finding, identify the exact passage and explain its reader effect.
Remove the empty function rather than swapping one watched term for another.
Do not infer AI authorship from the pattern count.

## Use technical-document defaults

- Lead with the outcome, problem, or proposition the reader needs.
- Use second person when it clarifies the reader's action.
- Prefer active voice when the actor matters. Keep passive voice when the actor
  is unknown or immaterial.
- Keep normal technical agency such as “the API returns” and “the command
  creates” when it is accurate.
- Use present tense, sentence-case headings, descriptive links, and
  unambiguous dates by default.
- Put a condition before the instruction it controls.
- Use numbered lists for sequences and bullets for genuinely parallel items.
- Use fragments, contractions, em dashes, colons, parentheses, and rhetorical
  questions when they fit the purpose. Revise repeated crutches, not isolated
  punctuation.
- Let sentence shape follow the thought. Do not optimize for burstiness,
  perplexity, a detector score, or a fixed sentence-length pattern.

## Complete the editorial check

Confirm that:

1. the point, claims, requirements, and technical tokens retain their meaning;
2. evidence supports consequential claims and named specifics;
3. the reader can find and use the intended outcome;
4. removed material had no necessary context, authority, or voice function;
5. the result still resembles the supplied author rather than generic polish;
6. no anecdote, opinion, emotion, fact, or personality was invented;
7. pattern findings identify exact evidence and reader effect; and
8. commands, examples, links, and procedures received proportionate technical
   verification.

For an edit, return the revised artifact and summarize material changes. For a
detection-only request, return findings with quoted evidence and minimal fixes;
do not rewrite, score the prose, or claim AI authorship.
