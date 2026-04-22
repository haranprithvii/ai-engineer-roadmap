# Production & MLOps — Map of Content

All concept notes in this cluster. Use the Graph view (Cmd/Ctrl+G) to see how they interconnect.

- [[Evaluation]] — The practice of measuring LLM/RAG system quality. Harder than building — there's no single ground-truth metric.
- [[Golden Dataset]] — A curated set of (input, ideal output) examples. The foundation of any real eval. Start with 20, grow to 500+.
- [[LLM as Judge]] — Use a strong LLM to score outputs. Cheap, scales, but suffers from position bias, verbosity bias, self-preference bias.
- [[Synthetic Test Generation]] — Prompt an LLM to generate question-answer pairs from your corpus. Great starting point when you have no labels.
- [[RAGAS Metrics]] — Open-source metrics library for RAG: faithfulness, answer relevancy, context precision/recall, correctness.
- [[Faithfulness]] — Does the answer only make claims supported by the retrieved context? Detects hallucinations.
- [[Answer Relevancy]] — Does the answer actually address the user's question? (vs going off-topic.)
- [[Context Precision and Recall]] — Precision: are retrieved chunks relevant? Recall: did retrieval find all relevant chunks?
- [[Triangulation]] — Combine 3+ independent eval methods (deterministic metrics + LLM-judge + human spot-checks) to find where the system breaks.
- [[FastAPI]] — Modern Python web framework built on Starlette + Pydantic. Async, auto-generates OpenAPI docs. The default for Python AI APIs.
- [[Semantic Caching]] — Cache by embedding similarity of queries. If a near-duplicate query was asked, return cached answer. Sub-50ms for repeats.
- [[Conversation Memory]] — Track previous turns. Options: full history (expensive), summarization (lossy), vector-based retrieval (scales).
- [[Query Rewriting]] — LLM rewrites the user's current message into a standalone query using conversation history. Fixes pronouns, adds context.
- [[Intent Routing]] — Classify the query and route to the right system (chit-chat → direct LLM, factual → RAG, action → agent).
- [[Observability]] — Trace every request end-to-end: inputs, outputs, latency, cost, errors. Tools: Langfuse, Phoenix, Opik.
- [[Docker]] — Package app + deps into a reproducible image. `Dockerfile` → `docker build` → `docker run`. The deployment standard.
- [[12-Factor App]] — Twelve principles for cloud-native apps: config via env vars, stateless processes, logs as streams, etc.

## Tags
#moc #production
