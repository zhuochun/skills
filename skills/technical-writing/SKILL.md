---
name: technical-writing
description: Produce and revise task-fit technical documentation and evidence-grounded technical articles from source material, code, and observed behavior. Use for tutorials, how-to guides, explanations, reference documentation, runbooks, procedures, technical blog posts, AI-slop audits, or humanizing technical prose. Preserve provenance, uncertainty, and author voice. Route skill authoring to skill-creator and unresolved domain decisions to their owning specialist.
---

# Technical Writing

Produce a technical artifact that helps its intended reader learn, act, find
facts, understand a mechanism, or evaluate an argument. Treat prose quality as
support for that function, not as the artifact's substitute.

## Preserve scope and authority

- Confirm that the request authorizes creating or editing the target artifact.
  Treat discussion, assessment, and review requests as read-only.
- Inspect repository instructions, the current worktree, local templates, and
  nearby documentation before writing. Preserve unrelated work and established
  terminology.
- Treat supplied decisions, specifications, code, tests, runtime evidence, and
  sources as inputs. Do not silently decide unresolved product, domain,
  architecture, operational, security, legal, or support policy.
- Route `SKILL.md` creation or material revision to `skill-creator` and the
  repository's authoring contract. Do not duplicate that workflow here.
- Keep factual observation, source-supported synthesis, inference, assumption,
  proposal, opinion, and unresolved uncertainty distinguishable.
- Preserve the author's voice when samples or an existing draft make it
  observable. Never fabricate personal experience, quotations, results, or
  source support to make a draft more compelling.
- Treat humanizing as reader and voice improvement, not concealment of AI use.
  Preserve any authorship, attribution, or disclosure requirement.

## Select the document function

Choose one primary reader job, then read only the matching branch:

- For a learner's first successful experience, read the tutorial section in
  [references/tutorials-and-how-to.md](references/tutorials-and-how-to.md).
- For a competent reader solving one named problem, read the how-to section in
  [references/tutorials-and-how-to.md](references/tutorials-and-how-to.md).
- For a mental model or accurate interface facts, read the matching section in
  [references/explanation-and-reference.md](references/explanation-and-reference.md).
- For recurring or failure-sensitive action, read
  [references/procedures-and-runbooks.md](references/procedures-and-runbooks.md).
- For a technical article or blog post, read
  [references/technical-blog-posts.md](references/technical-blog-posts.md).

When one artifact serves several jobs, keep one primary and link to the others
instead of blending their complete workflows into one page.

## Select the editorial action

For drafting, material revision, voice preservation, humanizing, or AI-slop
analysis, read both:

- [references/editorial-style.md](references/editorial-style.md) for the
  editing method and documentation defaults; and
- [references/slop-pattern-catalog.md](references/slop-pattern-catalog.md) for
  the complete pattern, word, and phrase watchlist.

Avoid catalogued patterns and language by default. Keep an item when it is
accurate, required, quoted, established in the author's voice, or clearer than
the available alternative. Do not contort prose merely to remove a watchlist
match.

- For an edit, make the minimum effective change. Preserve strong passages and
  return a concise summary of material changes when it helps the user review
  them.
- For a detection-only request, quote the exact passage, name the pattern and
  its reader effect, and suggest a minimal fix. Do not rewrite without
  authorization, assign an AI score, or guess who wrote the text.

## Writing workflow

1. **Define the writing contract.** Name the intended reader, their starting
   context, the job the artifact must perform, the primary document mode,
   scope, canonical location, voice, constraints, and observable success.
2. **Recover the evidence base.** Read the smallest sufficient set of code,
   tests, specifications, existing docs, runtime evidence, and supplied
   sources. Identify contradictions, freshness limits, missing authority, and
   content that already has a canonical owner.
3. **Build the content model.** Select the claims, steps, examples, interfaces,
   decisions, failure cases, and open questions the reader needs. Attach
   consequential derived claims to inspectable evidence or label their status.
4. **Design the reading path.** Lead with the outcome, problem, or proposition
   the reader came for. Order sections by the reader's task or reasoning path.
   Move branch detail behind descriptive links and keep related rules,
   conditions, and exceptions together.
5. **Draft for transfer.** Use concrete examples to anchor abstractions, local
   terms consistently, and enough context for a reader who cannot interrupt the
   author. Keep explanation, steps, and reference detail in their selected
   roles.
6. **Connect the artifact to change.** Prefer canonical source links, generated
   views, executable examples, tested commands, and code-adjacent placement
   over copied facts that will drift. Name freshness, ownership, or retirement
   expectations when stale guidance could mislead.
7. **Verify functional quality.** Walk the artifact as the intended reader.
   Execute commands and examples when authorized and practical. Check links,
   names, versions, prerequisites, expected results, failure paths, and claims
   against their sources. Record what was not verified.
8. **Edit without flattening meaning.** Remove unsupported, duplicated, stale,
   formulaic, and nonfunctional prose. Improve clarity and rhythm while
   preserving technical precision, normative force, uncertainty, conditions,
   exceptions, author voice, and meaningful irregularity.
9. **Report the result.** Lead with the artifact and its location. State its
   primary reader job, source and verification boundaries, material unresolved
   gaps, and any decision or maintenance owner still required.

## Quality gates

- One primary reader job controls the artifact's structure and content.
- Consequential claims remain traceable or visibly qualified.
- Commands, examples, interfaces, and expected results match checked evidence.
- The artifact links to canonical facts instead of becoming a competing source
  of truth.
- A reader can distinguish what to do, why it works, what is guaranteed, and
  what remains uncertain.
- The writing preserves local language and author voice without sacrificing
  reader context.
- Style findings cite observable passages and reader harm instead of treating
  isolated words, punctuation, or detector output as proof.
- Editing leaves strong prose alone and changes only what improves truth,
  clarity, reader transfer, or the requested voice.
- The final prose avoids dense clusters of catalogued slop patterns and watched
  language unless a documented context exception applies.
- Verification matches the artifact's consequence; the producer does not
  silently certify its own high-consequence guidance.

## Reject weak writing

- Polished prose without a reader task, supported proposition, or usable result
  is not complete.
- A generic template does not justify sections the reader does not need.
- A tutorial, how-to, explanation, reference page, procedure, and blog post are
  not interchangeable merely because each contains technical prose.
- Documentation does not repair a missing product decision, unsafe procedure,
  ambiguous contract, or unverified technical claim.
- Concision that removes conditions, authority, evidence, recovery, or
  uncertainty makes the artifact weaker.
- A style edit must not change requirements, permissions, support commitments,
  or factual meaning without explicit authority.
- Treat the language catalogue as a default-avoid watchlist, not an absolute
  ban. A punctuation quota, forced sentence variation, or invented personality
  is not a substitute for editorial judgment.
