# Phase 6 — RAG Engineering

**Duration:** Weeks 13–15
**Goal:** Build a production-quality RAG pipeline, end to end.

## Weeks
- [[weeks/Week 13|Week 13 — RAG Foundations]]
- [[weeks/Week 14|Week 14 — Chunking & Embeddings]]
- [[weeks/Week 15|Week 15 — Advanced Retrieval]]

## Concepts covered
### Foundations
- [[concepts/rag/RAG]] ★ hub
- [[concepts/rag/Indexing]]
- [[concepts/rag/Retrieval]]
- [[concepts/rag/Generation Step]]
- [[concepts/rag/Document Ingestion]]
- [[concepts/rag/Vector Database]]

### Chunking & embeddings
- [[concepts/rag/Chunking]]
- [[concepts/rag/Fixed-Size Chunking]]
- [[concepts/rag/Recursive Chunking]]
- [[concepts/rag/Semantic Chunking]]
- [[concepts/rag/Propositional Chunking]]
- [[concepts/rag/Embedding Model]]
- [[concepts/rag/Cosine Similarity]]

### Advanced retrieval
- [[concepts/rag/HNSW]]
- [[concepts/rag/Approximate Nearest Neighbor]]
- [[concepts/rag/BM25]]
- [[concepts/rag/Hybrid Search]]
- [[concepts/rag/Reciprocal Rank Fusion]]
- [[concepts/rag/Cross-Encoder]]
- [[concepts/rag/Bi-Encoder]]
- [[concepts/rag/Reranking]]
- [[concepts/rag/Metadata Filtering]]
- [[concepts/rag/Query Decomposition]]
- [[concepts/rag/HyDE]]
- [[concepts/rag/ColBERT]]

## Resources
- [RAG paper (Lewis 2020)](https://arxiv.org/abs/2005.11401)
- [LlamaIndex RAG concepts](https://docs.llamaindex.ai/en/stable/getting_started/concepts/)
- [Haystack Tutorials](https://haystack.deepset.ai/tutorials)
- [LangChain RAG from Scratch (14 videos)](https://www.youtube.com/playlist?list=PLfaIDFEXuae2LXbO1_PKyVJiQ23ZztA0x) ★
- [Jason Liu — RAG is more than embeddings](https://jxnl.co/writing/2024/05/11/low-hanging-fruit-for-rag-search/) ★
- [HNSW paper](https://arxiv.org/abs/1603.09320)
- [Greg Kamradt — 5 Levels of Text Splitting](https://www.youtube.com/watch?v=8OJC21T2SL4)
- [MTEB Leaderboard](https://huggingface.co/spaces/mteb/leaderboard)
- [HyDE paper](https://arxiv.org/abs/2212.10496)
- [ColBERT paper](https://arxiv.org/abs/2004.12832)

## Builds
- Q&A over MCP docs (Qdrant + Haystack)
- Chunking shootout (7 strategies, LLM-as-Judge, Streamlit)
- Retrieval shootout (dense vs BM25 vs hybrid+RRF vs +rerank)

## Next
→ [[phases/Phase 07 - Evaluation and Production|Phase 7]]
