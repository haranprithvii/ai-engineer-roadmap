# Agents & Tool Use — Map of Content

All concept notes in this cluster. Use the Graph view (Cmd/Ctrl+G) to see how they interconnect.

- [[Agent]] — An LLM in a loop: observe → think → act (via tools) → repeat. The difference between 'one API call' and 'autonomous software'.
- [[Intelligence Spectrum]] — A single LLM call → Workflow (fixed sequence) → Agent (dynamic tool use) → Multi-agent system. Pick the simplest thing that works.
- [[ReAct]] — Reasoning + Acting: prompt the LLM to alternate between thought and action. The foundational agent pattern.
- [[Agent Loop]] — while not done: observation = env.step(action); thought, action = llm(state + history).
- [[Tool Use]] — The LLM chooses which function to call and with what arguments. The host runs it and returns results.
- [[Multi-Agent System]] — Multiple LLM agents collaborate (planner, executor, critic). Frameworks: CrewAI, AutoGen, LangGraph. Often overkill.
- [[Model Context Protocol]] — Open standard (Anthropic, 2024) for connecting LLMs to tools and data sources. Like USB-C for AI apps.
- [[MCP Server]] — Exposes tools/resources/prompts over stdio or HTTP+SSE to any MCP-compatible client.
- [[MCP Client]] — The app (Claude Desktop, Cursor, custom) that connects to MCP servers and lets the LLM call their tools.
- [[Corrective RAG]] — Grade retrieved docs; if low-confidence, rewrite query and search the web. Improves robustness.
- [[Self-RAG]] — Model self-reflects with special tokens ([Retrieve], [IsRel], [IsSup]) to decide when to retrieve and whether answer is grounded.
- [[Adaptive RAG]] — Route queries by complexity: simple → no retrieval, medium → single retrieval, complex → multi-step retrieval.
- [[Prompt Injection]] — Attacker embeds instructions in retrieved/user content to hijack the model. THE top LLM security issue.
- [[Jailbreak]] — Coaxing a model to ignore its safety training via role-play, encoding tricks, multi-turn pressure, etc.
- [[Retrieval Validation]] — Sanitize retrieved content before passing to the LLM. Filter/flag suspicious instructions.
- [[Output Sanitization]] — Validate LLM output against a schema; strip/mask PII; check for policy violations before returning to the user.

## Tags
#moc #agents
