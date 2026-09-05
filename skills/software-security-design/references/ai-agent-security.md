# AI and agent security paths

Use this branch only when models, generated output, retrieval, memory, tools,
plugins, training, fine-tuning, or model providers affect the security path.

- Treat direct prompts, retrieved documents, web or email content, stored
  memory, tool output, model output, and model-generated plans as untrusted at
  the boundary that consumes them. Distinguish instructions, data, and
  executable authority; prompt text is not an authorization control.
- Trace indirect prompt injection and data exfiltration across retrieval,
  context assembly, model calls, rendering, tool selection, and later reuse.
  Validate structured output and constrain its destination rather than trusting
  a model assertion that content is safe.
- Give each agent task only the tools, identities, network access, data, and
  duration it needs. Validate tool names and arguments, re-authorize actor,
  action, resource, tenant, and context at the effect owner, and make dangerous
  target or policy selection inspectable before execution.
- Treat human approval as a separate authority boundary. Ensure the approver
  sees authoritative targets, effects, provenance, and material uncertainty,
  not only a model-generated summary that attacker-controlled content can shape.
- Preserve tenant isolation, provenance, access control, deletion, freshness,
  poisoning resistance, and revocation across embeddings, vector stores,
  caches, conversation state, long-term memory, and feedback or learning loops.
- Record model, dataset, prompt, guard, provider, plugin, and tool provenance,
  supported versions, update and rollback ownership, evaluation limits,
  fallback behavior, monitoring, incident response, and retirement where they
  can alter security outcomes.
- Do not place secrets or authorization policy solely in system prompts. Treat
  guardrails, content filters, and model evaluations as bounded controls whose
  failure cannot silently grant external effects.
