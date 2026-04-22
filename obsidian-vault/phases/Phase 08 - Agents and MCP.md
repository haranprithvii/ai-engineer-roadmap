# Phase 8 — Agents & MCP

**Duration:** Weeks 18–19
**Goal:** Build agents that use tools, self-correct, route intelligently, and resist attacks.

## Weeks
- [[weeks/Week 18|Week 18 — Agent Fundamentals + MCP]]
- [[weeks/Week 19|Week 19 — CRAG, Adaptive RAG, Security]]

## Concepts covered
### Agents
- [[concepts/agents/Agent]] ★ hub
- [[concepts/agents/Intelligence Spectrum]]
- [[concepts/agents/ReAct]]
- [[concepts/agents/Agent Loop]]
- [[concepts/agents/Tool Use]]
- [[concepts/agents/Multi-Agent System]]

### MCP
- [[concepts/agents/Model Context Protocol]]
- [[concepts/agents/MCP Server]]
- [[concepts/agents/MCP Client]]

### Advanced RAG patterns
- [[concepts/agents/Corrective RAG]]
- [[concepts/agents/Self-RAG]]
- [[concepts/agents/Adaptive RAG]]

### Security
- [[concepts/agents/Prompt Injection]]
- [[concepts/agents/Jailbreak]]
- [[concepts/agents/Retrieval Validation]]
- [[concepts/agents/Output Sanitization]]

## Resources
- [ReAct paper](https://arxiv.org/abs/2210.03629)
- [Anthropic — Building effective agents](https://www.anthropic.com/research/building-effective-agents) ★★
- [MCP spec](https://modelcontextprotocol.io/) + [MCP quickstart](https://modelcontextprotocol.io/quickstart)
- [LangGraph docs](https://langchain-ai.github.io/langgraph/)
- [Corrective RAG paper](https://arxiv.org/abs/2401.15884)
- [Self-RAG paper](https://arxiv.org/abs/2310.11511)
- [Adaptive-RAG paper](https://arxiv.org/abs/2403.14403)
- [OWASP Top 10 for LLMs](https://genai.owasp.org/llm-top-10/)
- [Simon Willison on Prompt Injection](https://simonwillison.net/tags/prompt-injection/) ★
- [Lilian Weng — LLM Agents](https://lilianweng.github.io/posts/2023-06-23-agent/)
- [Lilian Weng — Adversarial Attacks on LLMs](https://lilianweng.github.io/posts/2023-10-25-adv-attack-llm/)

## Builds
- MCP server exposing a real API as tools
- CRAG agent with Tavily web-search fallback

## Next
→ [[phases/Phase 09 - Fine-Tuning and Research|Phase 9]]
