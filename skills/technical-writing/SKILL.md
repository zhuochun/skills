---
name: technical-writing
description: Write or revise task-fit technical documentation and evidence-grounded articles from supplied sources, code, and observed behavior. Use for tutorials, how-to guides, durable explanations, reference, runbooks, procedures, technical blogs, AI-slop audits, or humanizing and voice-preserving edits. Route learner-specific teaching to teach-concepts, cross-source evidence to research-synthesis, skill authoring to skill-creator, and unresolved domain decisions to their owners.
---

# Technical Writing

Produce a technical artifact that helps its reader learn, act, find facts,
understand a mechanism, or evaluate an argument. Prose quality supports that function.

## Preserve scope and authority

- Confirm that the request authorizes creating or editing the target artifact.
  Treat discussion, assessment, and review requests as read-only.
- For repository targets, inspect instructions, worktree, templates, and nearby
  documentation. Preserve unrelated work and established terminology.
- For a supplied draft or standalone article outside a repository, inspect only
  the sources and destination constraints relevant to that artifact.
- Treat supplied decisions, specifications, code, tests, runtime evidence, and
  sources as inputs. Route unresolved product, domain, architecture, operations,
  security, legal, or support-policy decisions.
- Route `SKILL.md` creation or material revision to `skill-creator` and the
  repository's authoring contract. Do not duplicate that workflow here.
- Check current or version-specific facts against their canonical source.
  Route a disputed or cross-source factual foundation to
  `research-synthesis`; technical writing does not establish source truth.
- Route decision-bearing specifications, RFCs, requirements, or contracts to
  `specification-review` for normative ambiguity, contradiction, hidden decisions,
  or loopholes. Keep reader function and editorial quality here.
- Route learner-specific explanation, misconception repair, reconstruction, or
  transfer checking to `teach-concepts`. Keep a durable tutorial, explanation,
  or reference artifact here.
- Route recovery or construction of a cross-view product-to-system journey to
  `trace-end-to-end-journey`. Explain an accepted trace here when prose is the
  missing reader artifact.
- Keep factual observation, source-supported synthesis, inference, assumption,
  proposal, opinion, and unresolved uncertainty distinguishable.
- Preserve observable author voice. Never fabricate personal experience, quotations,
  results, or source support.
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

When one artifact serves several jobs, keep one primary and link to the others.

## Select the editorial action

For drafting, material revision, voice-preserving editing, humanizing review,
or AI-slop analysis, read
[references/editorial-style.md](references/editorial-style.md).

Read [references/slop-pattern-catalog.md](references/slop-pattern-catalog.md)
when the user explicitly requests AI-slop analysis or humanizing review, or
when an initial editorial pass finds a repeated cluster of formulaic patterns
that materially harms the reader.

When loaded, use the catalogue as diagnostic prompts. Revise only patterns with
an observable reader effect; watchlist matches prove neither failure nor authorship.

- For an edit, make the minimum effective change. Preserve strong passages and
  summarize material changes when useful.
- For a detection-only request, quote the exact passage, name the pattern and
  its reader effect, and suggest a minimal fix. Do not rewrite without
  authorization, assign an AI score, or guess who wrote the text.

## Writing workflow

1. **Define the writing contract.** Name reader, starting context, job, primary
   document mode, scope, canonical location, voice, constraints, and observable success.
2. **Recover evidence.** Read the smallest sufficient set of code, tests,
   specifications, docs, runtime evidence, and sources. Identify contradictions,
   freshness limits, missing authority, and canonically owned content.
3. **Build the content model.** Select needed claims, steps, examples, interfaces,
   decisions, failures, and open questions. Attach consequential derived claims
   to inspectable evidence or label their status.
4. **Design the reading path.** Lead with the desired outcome, problem, or
   proposition. Follow the reader's task or reasoning path; link branch detail
   and keep rules with conditions and exceptions.
5. **Draft for transfer.** Use concrete examples to anchor abstractions, local
   terms consistently, and enough context for a reader who cannot interrupt the
   author. Keep explanation, steps, and reference detail in their selected
   roles.
6. **Connect the artifact to change.** Prefer canonical links, generated views,
   executable examples, tested commands, and code-adjacent placement over copied
   facts. Name freshness, ownership, or retirement when drift could mislead.
7. **Verify function.** Walk the artifact as its reader. When authorized and
   practical, execute commands and examples. Check links, names, versions,
   prerequisites, expected results, failure paths, and claims against their sources;
   record what was not verified.
8. **Edit without flattening meaning.** Remove unsupported, duplicated, stale,
   formulaic, and nonfunctional prose. Improve clarity and rhythm while
   preserving technical precision, normative force, uncertainty, conditions,
   exceptions, author voice, and meaningful irregularity.
9. **Report the result.** Lead with the artifact and its location. State its
   primary reader job, source and verification boundaries, material unresolved
   gaps, and any decision or maintenance owner still required.

## Quality gates

- One primary reader job controls structure and content; consequential claims
  remain traceable or visibly qualified.
- Commands, examples, interfaces, and expected results match checked evidence.
- The artifact links to canonical facts instead of competing with them.
- A reader can distinguish what to do, why it works, what is guaranteed, and
  what remains uncertain.
- The writing preserves local language and author voice without sacrificing
  reader context.
- Style findings cite observable passages and reader harm instead of treating
  isolated words, punctuation, or detector output as proof.
- Editing leaves strong prose alone and changes only what improves truth,
  clarity, reader transfer, or the requested voice.
- Formulaic language or structure does not form a repeated cluster that
  materially harms the reader.
- Verification matches the artifact's consequence; the producer does not
  silently certify its own high-consequence guidance.

## Reject weak writing

- Polished prose without a reader task, supported proposition, or usable result
  is not complete.
- A generic template does not justify unneeded sections. Tutorials, how-tos,
  explanations, references, procedures, and blog posts are not interchangeable.
- Documentation does not repair a missing product decision, unsafe procedure,
  ambiguous contract, or unverified technical claim.
- Concision that removes conditions, authority, evidence, recovery, or
  uncertainty makes the artifact weaker.
- A style edit must not change requirements, permissions, support commitments,
  or factual meaning without explicit authority.
- When the pattern catalogue is loaded, treat it as a diagnostic aid rather
  than a ban list. A watchlist match, punctuation quota, forced sentence
  variation, or invented personality is not an editorial result.
