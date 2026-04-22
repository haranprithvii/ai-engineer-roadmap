# RAG — Map of Content

All concept notes in this cluster. Use the Graph view (Cmd/Ctrl+G) to see how they interconnect.

- [[RAG]] — Retrieval-Augmented Generation: retrieve relevant documents, then generate conditioned on them. The dominant way to give LLMs external knowledge.
- [[Indexing]] — Converting a corpus into a searchable form: chunk, embed, store in a vector DB (and/or BM25 index).
- [[Retrieval]] — Given a query, return the top-k most relevant chunks. Dense, sparse, or hybrid.
- [[Generation Step]] — The LLM generates an answer conditioned on the retrieved chunks + the user's question.
- [[Document Ingestion]] — Loading PDFs, HTML, docx, markdown, code into a common text representation. Messier than you'd think.
- [[Vector Database]] — A DB optimized for nearest-neighbor search on embeddings. Qdrant, Pinecone, Weaviate, Milvus, pgvector, LanceDB.
- [[Chunking]] — How to split documents into retrievable pieces. Arguably the single highest-leverage decision in your RAG pipeline.
- [[Fixed-Size Chunking]] — Split by N characters/tokens with M overlap. Dumb but surprisingly effective baseline.
- [[Recursive Chunking]] — Try splitters in order (paragraphs, sentences, words) until chunks fit. LangChain's default.
- [[Semantic Chunking]] — Compute embedding similarity between adjacent sentences; split where similarity drops. Respects topical boundaries.
- [[Propositional Chunking]] — LLM rewrites each chunk as a list of self-contained propositions. Slow at ingest, better retrieval.
- [[Embedding Model]] — Neural net that maps text → dense vector. Quality varies hugely — check [MTEB](https://huggingface.co/spaces/mteb/leaderboard).
- [[Cosine Similarity]] — cos(a,b) = (a·b)/(|a||b|). Direction-only similarity. The standard metric for embedding search.
- [[HNSW]] — Hierarchical Navigable Small World. Multi-layer graph where upper layers are sparse long-range links. Fast ANN with high recall.
- [[Approximate Nearest Neighbor]] — Trade a bit of recall for huge speed gains. HNSW, IVF, PQ, ScaNN. Essential at scale.
- [[BM25]] — Classic sparse retrieval based on term frequency and inverse document frequency. Still SOTA for many keyword-heavy queries.
- [[Hybrid Search]] — Combine dense (embedding) and sparse (BM25) retrieval, then fuse the rankings. Best of both worlds.
- [[Reciprocal Rank Fusion]] — Merge ranked lists: score(d) = Σ 1/(k + rank_i(d)). Simple, parameter-light, effective.
- [[Cross-Encoder]] — Jointly encodes (query, document) pair → single relevance score. Slow but accurate. Used for reranking.
- [[Bi-Encoder]] — Separately encode query and document → cosine similarity. Fast (can precompute doc embeddings), less accurate than cross-encoder.
- [[Reranking]] — After first-stage retrieval of top-N, rerank with a cross-encoder to pick top-K. BGE-reranker, Cohere, Voyage.
- [[Metadata Filtering]] — Pre-filter candidates by tags/dates/source before ANN search. Narrows search space massively.
- [[Query Decomposition]] — LLM splits a complex query into sub-queries, retrieve for each, fuse results.
- [[HyDE]] — Hypothetical Document Embeddings: LLM writes a fake answer, embed that, search for similar real docs. Bridges query-document style gap.
- [[ColBERT]] — Late-interaction retrieval: represent doc as set of token vectors, score via MaxSim. Middle ground between bi- and cross-encoders.

## Tags
#moc #rag
