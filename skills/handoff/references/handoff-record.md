# Handoff Record

Identify the owning continuation surface before using this shape. When a
repository-backed record already owns objective, decisions, and re-entry state,
update it when authorized and use this record only for the session delta. If it
cannot be updated, identify its stale state and make reconciliation the first
action. Use the full shape only when no canonical resume surface exists.

Omit empty sections and details that the next agent can recover cheaply from a
canonical link.

## Continuation objective

- Next-session outcome:
- Immediate frontier:
- First safe action or decision:
- In scope and out of scope:

## Current state

State what is complete, in progress, deferred, failed, blocked, or unverified.
Use exact identifiers and paths where they reduce ambiguity.

For material work, include:

- completed outcomes and affected surfaces;
- partial or dirty state that must be preserved;
- failed approaches worth avoiding and the evidence that rejected them; and
- external state whose freshness the next agent must recheck.

## Decisions and constraints

Record only decisions and constraints that shape continuation:

- accepted decisions and their accountable owner;
- preserved behavior, compatibility, safety, or support commitments;
- assumptions and proposals that are not accepted decisions;
- unresolved questions and the smallest owner decision needed; and
- authority, approval, stop, or escalation boundaries.

## Evidence and canonical artifacts

For each consequential item, name:

- artifact, command, observation, issue, commit, or source;
- why it matters to the next action;
- status or result;
- snapshot, environment, or freshness limit; and
- exact path or URL.

Do not copy a specification, plan, ADR, issue, diff, or test log into the
handoff. Link the canonical artifact and preserve only the interpretation
needed to resume.

## Resume guidance

- Recommended next steps in dependency order:
- Checks to rerun and why:
- Work not to repeat:
- Cleanup, operational, or lifecycle obligations:
- Completion or re-entry condition:

## Suggested skills

Preserve an existing canonical route. When none exists, name only skills that
own a specific next decision or action. For each, state the missing artifact or
judgment it should produce. Omit this section when the next activity needs no
specialist workflow.

## Cold-start check

Before delivery, confirm that the handoff together with its canonical links
answers:

- What is the objective now?
- What is already true, and how do we know?
- What remains uncertain or unauthorized?
- Which artifacts are canonical?
- What should happen first?
- What could cause harm, rework, or a false completion claim?
