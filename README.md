# 🧠 The Free AI Engineer Roadmap

> **A 24-week, fully-free curriculum to become an AI Engineer, AI Product Engineer, or ML/AI Researcher — built for people starting from scratch with 5–8 hours a week.**

This repo contains everything you need: a sequential learning path, every resource linked and curated, a weekly tracker, and an **Obsidian knowledge graph** that visualizes how all the concepts connect.

No paid courses. No bootcamps. Just the best freely available material on the internet, put in the right order.

---

## 📋 Table of Contents

1. [Who this is for](#-who-this-is-for)
2. [How to use this repo](#-how-to-use-this-repo)
3. [The 10-Phase Roadmap](#-the-10-phase-roadmap)
4. [Phase 0: Toolchain & Mindset](#phase-0--toolchain--mindset-week-0)
5. [Phase 1: Python & CS Foundations](#phase-1--python--cs-foundations-weeks-12)
6. [Phase 2: Math for ML](#phase-2--math-for-ml-weeks-34)
7. [Phase 3: Classical ML](#phase-3--classical-ml-weeks-56)
8. [Phase 4: Deep Learning](#phase-4--deep-learning-weeks-79)
9. [Phase 5: Transformers & LLMs](#phase-5--transformers--llms-weeks-1012)
10. [Phase 6: RAG Engineering](#phase-6--rag-engineering-weeks-1315)
11. [Phase 7: Evaluation & Production](#phase-7--evaluation--production-weeks-1617)
12. [Phase 8: Agents & MCP](#phase-8--agents--mcp-weeks-1819)
13. [Phase 9: Fine-Tuning & Research](#phase-9--fine-tuning--research-weeks-2022)
14. [Phase 10: Capstone & Portfolio](#phase-10--capstone--portfolio-weeks-2324)
15. [Weekly Tracker](#-weekly-tracker)
16. [Obsidian Knowledge Graph](#-obsidian-knowledge-graph)

---

## 🎯 Who this is for

- **Starting from scratch** or rebuilding fundamentals you've forgotten
- Can commit **5–8 hours per week** consistently
- Target role: **AI Engineer / AI Product Engineer / ML Researcher** (this roadmap covers all three)
- Want to **build a portfolio** of real projects, not just watch lectures

By the end, you will have built:
- A classical ML portfolio (regression, classification, clustering)
- A neural network from scratch in NumPy, then PyTorch
- A transformer from scratch (nanoGPT-style)
- A production RAG system with evaluation
- A self-correcting agent with MCP tool use
- A fine-tuned model with LoRA
- A capstone project of your own choosing

---

## 🗺️ How to use this repo

1. **Clone this repo** and open it in VS Code
2. **Open the `obsidian-vault/` folder in [Obsidian](https://obsidian.md/)** (free) to get the interactive knowledge graph
3. **Open `tracker.html` in your browser** to log your progress (uses local storage)
4. Work through the phases **sequentially**. Don't skip foundations.
5. After each week, update the tracker and reflect in your journal notes (`obsidian-vault/journal/`)
6. **Ship the projects.** Push each to your own GitHub. Recruiters look at code, not checklists.

### The Golden Rules

> 1. **Read the theory → implement it from scratch → use the library → build a project.** Every. Single. Topic.
> 2. **If you can't explain it, you don't understand it.** Write a note in your Obsidian vault for every new concept.
> 3. **Papers before libraries.** Read the original paper (or a good summary) before touching the tool.
> 4. **One project per phase minimum.** Your portfolio is the currency.

---

## 🧭 The 10-Phase Roadmap

| Phase | Topic                               | Weeks | Outcome                                  |
|------:|-------------------------------------|------:|------------------------------------------|
| 0     | Toolchain & Mindset                 |    0  | Dev env, GitHub, Obsidian set up         |
| 1     | Python & CS Foundations             |  1–2  | Solid Python, data structures, Git       |
| 2     | Math for ML                         |  3–4  | Linear algebra, calculus, prob/stats     |
| 3     | Classical ML                        |  5–6  | Regression, classification, clustering   |
| 4     | Deep Learning                       |  7–9  | NN from scratch, PyTorch, CNNs, RNNs     |
| 5     | Transformers & LLMs                 | 10–12 | Attention, GPT from scratch, tokenization|
| 6     | RAG Engineering                     | 13–15 | Production RAG pipeline                  |
| 7     | Evaluation & Production             | 16–17 | Golden datasets, FastAPI, Docker, Redis  |
| 8     | Agents & MCP                        | 18–19 | Corrective RAG, MCP tools, agent loops   |
| 9     | Fine-Tuning & Research              | 20–22 | LoRA/QLoRA, distillation, paper reading  |
| 10    | Capstone & Portfolio                | 23–24 | Shipped capstone + polished portfolio    |

---

## Phase 0 — Toolchain & Mindset (Week 0)

**Goal:** A zero-friction dev environment so nothing slows you down later.

### Concepts
- Why developer environment matters
- Reproducibility & dependency management
- The AI engineer's daily tools

### Setup checklist
- [ ] Install **Python 3.11+** via [uv](https://github.com/astral-sh/uv) or [miniforge](https://github.com/conda-forge/miniforge)
- [ ] Install **VS Code** + Python, Jupyter, GitLens, and Error Lens extensions
- [ ] Install **Git** and set up a GitHub account; learn `ssh` key setup
- [ ] Install **Obsidian** and open this repo's `obsidian-vault/` folder
- [ ] Create accounts: **Kaggle**, **Hugging Face**, **Google Colab** (free GPU), **Groq** (free fast inference), **OpenRouter** (free tier models)
- [ ] Install **Docker Desktop** (you'll need it by Phase 7)

### Resources
- 📹 [The Missing Semester of Your CS Education (MIT)](https://missing.csail.mit.edu/) — shell, git, vim, debugging. **Watch all of it.**
- 📖 [Python Packaging User Guide](https://packaging.python.org/en/latest/tutorials/installing-packages/)
- 📝 [How to take smart notes with Obsidian (Nick Milo)](https://www.youtube.com/watch?v=ziE6UExsOrs)
- 📖 [Andrej Karpathy — How I use LLMs](https://www.youtube.com/watch?v=EWvNQjAaOHw) (how AI engineers actually work)

---

## Phase 1 — Python & CS Foundations (Weeks 1–2)

**Goal:** Fluent, idiomatic Python. Comfortable with data structures, algorithms, and Git.

### Week 1: Python Fluency
Topics: data types, control flow, functions, comprehensions, classes, decorators, context managers, generators, typing, `dataclasses`, error handling, virtual envs.

**Resources**
- 📹 [CS50P — Harvard's Intro to Python](https://cs50.harvard.edu/python/) — ★ best free option
- 📖 [Python Tutorial (official)](https://docs.python.org/3/tutorial/) — skim the parts you don't know
- 📖 [Fluent Python (Luciano Ramalho) — free chapters](https://www.oreilly.com/library/view/fluent-python-2nd/9781492056348/) — advanced
- 📹 [Real Python — Type checking](https://realpython.com/python-type-checking/)

**Build**
- [ ] CLI tool: markdown table-of-contents generator
- [ ] Scrape + parse any public website using `httpx` + `beautifulsoup4`

### Week 2: DSA, Git, and the command line
Topics: Big-O, arrays, hashmaps, trees, graphs, recursion, dynamic programming basics. Git workflow: branch, rebase, PR, merge conflicts.

**Resources**
- 📹 [NeetCode 150 Roadmap](https://neetcode.io/roadmap) — do the "easy" tier of each pattern, not all 150
- 📖 [Learn Git Branching (interactive)](https://learngitbranching.js.org/)
- 📖 [Oh Shit, Git!?!](https://ohshitgit.com/) — when you screw up
- 📹 [Missing Semester lectures 2, 5, 6](https://missing.csail.mit.edu/)

**Build**
- [ ] Solve 1 problem/day from NeetCode "Arrays" + "Hashmaps" tiers
- [ ] Make 5 meaningful commits + 1 PR in a repo

---

## Phase 2 — Math for ML (Weeks 3–4)

**Goal:** Enough math to read ML papers without panicking. You don't need to be a mathematician — you need intuition and notation literacy.

### Week 3: Linear Algebra + Calculus Intuition
Topics: vectors, matrices, matrix multiplication, dot products, norms, eigenvectors, matrix decompositions (SVD, eigendecomposition), gradients, partial derivatives, chain rule, the Jacobian.

**Resources — ★ these are non-negotiable**
- 📹 [3Blue1Brown — Essence of Linear Algebra](https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab) — all 16 episodes
- 📹 [3Blue1Brown — Essence of Calculus](https://www.youtube.com/playlist?list=PLZHQObOWTQDMsr9K-rj53DwVRMYO3t5Yr)
- 📖 [Mathematics for Machine Learning (free PDF)](https://mml-book.github.io/) — Deisenroth et al. Read Ch. 2, 3, 5.
- 📹 [Gilbert Strang — Linear Algebra (MIT 18.06)](https://ocw.mit.edu/courses/18-06-linear-algebra-spring-2010/) — reference, dip in as needed

### Week 4: Probability, Statistics, Information Theory
Topics: random variables, distributions (Gaussian, Bernoulli, Binomial, Poisson), expectation, variance, Bayes' theorem, MLE/MAP, entropy, KL divergence, cross-entropy.

**Resources**
- 📹 [StatQuest with Josh Starmer](https://www.youtube.com/@statquest) — watch the "Statistics Fundamentals" playlist
- 📖 [Seeing Theory (Brown U)](https://seeing-theory.brown.edu/) — interactive visualizations
- 📹 [3Blue1Brown — Bayes' Theorem](https://www.youtube.com/watch?v=HZGCoVF3YvM)
- 📖 [Distill.pub — A Visual Introduction to Probability](https://distill.pub/) (browse the archive)

**Build**
- [ ] Implement matrix multiplication, SVD, and gradient descent from scratch in NumPy
- [ ] Write a Jupyter notebook that derives and visualizes: Gaussian PDF, entropy, KL divergence between two Gaussians

---

## Phase 3 — Classical ML (Weeks 5–6)

**Goal:** Understand the full ML lifecycle on tabular data. You can't debug deep learning if you can't debug logistic regression.

### Week 5: Core algorithms + lifecycle
Topics: train/val/test splits, cross-validation, bias-variance tradeoff, overfitting/underfitting, regularization (L1/L2), feature engineering, feature scaling, one-hot/target encoding.

Algorithms: linear regression, logistic regression, k-NN, decision trees, random forests, gradient boosting (XGBoost/LightGBM), SVMs, k-means, PCA, t-SNE/UMAP.

**Resources**
- 📹 [Andrew Ng — Machine Learning Specialization (Coursera, free to audit)](https://www.coursera.org/specializations/machine-learning-introduction) — Course 1 & 2
- 📖 [An Introduction to Statistical Learning (ISLP, free PDF)](https://www.statlearning.com/) — THE book. Read Ch. 1–8.
- 📹 [StatQuest — ML playlist](https://www.youtube.com/playlist?list=PLblh5JKOoLUICTaGLRoHQDuF_7q2GfuJF)
- 📖 [scikit-learn User Guide](https://scikit-learn.org/stable/user_guide.html) — reference constantly
- 📖 [Rules of Machine Learning (Google)](https://developers.google.com/machine-learning/guides/rules-of-ml) — the real-world playbook

### Week 6: Evaluation, pipelines, experiment tracking
Topics: metrics deep dive (precision/recall/F1/ROC-AUC for classification; MAE/RMSE/R² for regression), confusion matrices, calibration, learning curves, hyperparameter tuning (grid/random/Bayesian), pipelines, experiment tracking with **Weights & Biases** (free tier).

**Resources**
- 📖 [W&B Quickstart](https://docs.wandb.ai/quickstart)
- 📖 [Google ML Crash Course](https://developers.google.com/machine-learning/crash-course) — excellent supplement
- 📹 [Made With ML — MLOps Course (free)](https://madewithml.com/) — lifecycle focus

**Build (projects to push to GitHub)**
- [ ] **House Price Predictor** (Kaggle "House Prices") — linear → XGBoost, compare, track with W&B
- [ ] **Wine Quality Classifier** — full pipeline with cross-validation, hyperparam tuning
- [ ] **MNIST Visualizer** — PCA, t-SNE, UMAP on MNIST with interactive plots
- [ ] **Stargazer** — k-means + DBSCAN on a stellar dataset from Kaggle

---

## Phase 4 — Deep Learning (Weeks 7–9)

**Goal:** Understand neural networks from first principles, then use PyTorch fluently for CNNs, RNNs, and autoencoders.

### Week 7: Neural Networks from Scratch
Topics: perceptron, MLP, forward pass, backprop, activation functions (ReLU, GELU, sigmoid, tanh, softmax), loss functions (MSE, cross-entropy), SGD, Adam, learning rates, weight init.

**Resources — ★**
- 📹 [Andrej Karpathy — Neural Networks: Zero to Hero (first 4 videos)](https://www.youtube.com/playlist?list=PLAqhIrjkxbuWI23v9cThsA9GvCAUhRvKZ) — micrograd, makemore. Do this. Twice.
- 📖 [Neural Networks and Deep Learning (Michael Nielsen, free)](http://neuralnetworksanddeeplearning.com/)
- 📹 [3Blue1Brown — Neural Networks](https://www.youtube.com/playlist?list=PLZHQObOWTQDNU6R1_67000Dx_ZCJB-3pi)

**Build**
- [ ] Re-implement micrograd from scratch (autograd engine in ~100 lines)
- [ ] Build an MLP in NumPy that classifies MNIST at >95% accuracy

### Week 8: PyTorch + Modern Architectures
Topics: tensors, `nn.Module`, DataLoaders, training loops, GPU usage, CNNs (convolution, pooling, stride), batch norm, dropout, ResNets, RNNs/LSTMs, encoder-decoder, autoencoders.

**Resources**
- 📖 [Deep Learning with PyTorch (official tutorials)](https://pytorch.org/tutorials/)
- 📹 [Daniel Bourke — Learn PyTorch in a Day](https://www.youtube.com/watch?v=Z_ikDlimN6A) — 25 hrs, absurdly thorough
- 📖 [Dive into Deep Learning (free)](https://d2l.ai/) — rigorous, covers everything
- 📄 [ResNet paper (He et al., 2015)](https://arxiv.org/abs/1512.03385) — read it

### Week 9: Training in practice + generative models intro
Topics: transfer learning, data augmentation, mixed precision, LR schedulers, early stopping, tensorboard, checkpointing. Intro to VAEs, GANs, diffusion.

**Resources**
- 📹 [Karpathy — "A Recipe for Training Neural Networks"](https://karpathy.github.io/2019/04/25/recipe/) — must read
- 📹 [Hugging Face — Intro to Deep Learning](https://huggingface.co/learn) (browse their courses)
- 📄 [Lilian Weng — From Autoencoder to Beta-VAE](https://lilianweng.github.io/posts/2018-08-12-vae/)
- 📄 [Lilian Weng — What are Diffusion Models?](https://lilianweng.github.io/posts/2021-07-11-diffusion-models/)

**Build**
- [ ] **Hancock** — MNIST classifier in PyTorch, >99% test accuracy
- [ ] **Maven** — Fashion-MNIST with a CNN + data augmentation
- [ ] **Autoclarity** — image-denoising autoencoder
- [ ] **Passenger Prophet** — LSTM for time-series forecasting on airline passengers

---

## Phase 5 — Transformers & LLMs (Weeks 10–12)

**Goal:** Deeply understand the transformer architecture, then understand how it became GPT/Claude/Gemini.

### Week 10: Attention & the Transformer
Topics: self-attention, multi-head attention, positional encodings (sinusoidal, RoPE, ALiBi), layer norm, residual connections, encoder vs decoder, causal masking, KV cache.

**Resources — ★**
- 📄 [Attention Is All You Need (Vaswani et al., 2017)](https://arxiv.org/abs/1706.03762) — read it. Seriously.
- 📖 [The Illustrated Transformer (Jay Alammar)](https://jalammar.github.io/illustrated-transformer/)
- 📖 [The Annotated Transformer (Harvard NLP)](https://nlp.seas.harvard.edu/annotated-transformer/) — code alongside the paper
- 📹 [Karpathy — Let's build GPT from scratch](https://www.youtube.com/watch?v=kCc8FmEb1nY) — ★ the most important video in this roadmap
- 📖 [3Blue1Brown — But what is a GPT?](https://www.youtube.com/watch?v=wjZofJX0v4M)

### Week 11: Tokenization, Pre-training, Post-training
Topics: BPE, WordPiece, SentencePiece, the pre-training objective (next-token prediction), scaling laws, Chinchilla, RLHF, DPO, instruction tuning, reasoning models (o1/R1 style).

**Resources**
- 📹 [Karpathy — Let's build the GPT Tokenizer](https://www.youtube.com/watch?v=zduSFxRajkE)
- 📹 [Karpathy — Intro to LLMs (1hr)](https://www.youtube.com/watch?v=zjkBMFhNj_g)
- 📹 [Karpathy — Deep Dive into LLMs (3.5hr)](https://www.youtube.com/watch?v=7xTGNNLPyMI) — ★ best single resource on modern LLMs
- 📄 [Chinchilla: Training Compute-Optimal LLMs (Hoffmann et al., 2022)](https://arxiv.org/abs/2203.15556)
- 📄 [InstructGPT / RLHF paper (Ouyang et al., 2022)](https://arxiv.org/abs/2203.02155)
- 📄 [Direct Preference Optimization (Rafailov et al., 2023)](https://arxiv.org/abs/2305.18290)
- 📖 [Lilian Weng — The Transformer Family](https://lilianweng.github.io/posts/2023-01-27-the-transformer-family-v2/)

### Week 12: Using LLMs as an engineer
Topics: prompt engineering, few-shot, chain-of-thought, structured outputs (JSON mode), function/tool calling, streaming, cost/latency/quality tradeoffs, the model zoo (Claude, GPT, Gemini, Llama, Qwen, DeepSeek, Mistral).

**Resources**
- 📖 [Prompt Engineering Guide (DAIR.AI)](https://www.promptingguide.ai/)
- 📖 [Anthropic Prompting Docs](https://docs.claude.com/en/docs/build-with-claude/prompt-engineering/overview)
- 📖 [OpenAI Cookbook](https://cookbook.openai.com/)
- 📖 [LLM Leaderboards: Artificial Analysis](https://artificialanalysis.ai/), [LMSys Chatbot Arena](https://lmarena.ai/)
- 📹 [Hamel Husain — Fuck You, Show Me The Prompt](https://hamel.dev/blog/posts/prompt/) — wise blog

**Build**
- [ ] **nanoGPT clone** — train a character-level GPT on Tiny Shakespeare
- [ ] **BPE tokenizer from scratch** — follow Karpathy's minbpe
- [ ] **Attention head from scratch in NumPy** — no PyTorch, single head
- [ ] **Multi-provider LLM wrapper** — one Python class that hits Groq, Gemini, and a local Ollama model with the same API

---

## Phase 6 — RAG Engineering (Weeks 13–15)

**Goal:** Build a real, production-quality RAG system. This is the core of the curriculum you shared.

### Week 13: RAG Foundations
Topics: the RAG paradigm, when to use RAG vs fine-tuning vs long context, document ingestion (PDFs, HTML, markdown, code), basic indexing, dense vs sparse retrieval, first end-to-end pipeline.

**Resources**
- 📄 [Retrieval-Augmented Generation paper (Lewis et al., 2020)](https://arxiv.org/abs/2005.11401)
- 📖 [LlamaIndex — RAG Concepts](https://docs.llamaindex.ai/en/stable/getting_started/concepts/)
- 📖 [Haystack Tutorials](https://haystack.deepset.ai/tutorials) — used in your curriculum
- 📖 [Qdrant — RAG Evaluation Guide](https://qdrant.tech/articles/) (browse articles)
- 📹 [LangChain — RAG from Scratch (14 videos)](https://www.youtube.com/playlist?list=PLfaIDFEXuae2LXbO1_PKyVJiQ23ZztA0x) — ★ excellent
- 📖 [Jason Liu — RAG is more than just embeddings](https://jxnl.co/writing/2024/05/11/low-hanging-fruit-for-rag-search/) — required reading

**Build**
- [ ] **Q&A over MCP docs** — Qdrant + Haystack + FastEmbed + Gemini (mirrors your curriculum Week 1)

### Week 14: Chunking & Embeddings
Topics: 7 chunking strategies (fixed, sentence, recursive, semantic, propositional, content-aware, hierarchical), embedding models (FastEmbed, BGE, Voyage, OpenAI, Cohere), cosine vs dot product vs Euclidean, dimension tradeoffs.

**Resources**
- 📖 [Pinecone — Chunking Strategies](https://www.pinecone.io/learn/chunking-strategies/)
- 📖 [Greg Kamradt — 5 Levels of Text Splitting](https://www.youtube.com/watch?v=8OJC21T2SL4)
- 📖 [MTEB Leaderboard (embedding benchmark)](https://huggingface.co/spaces/mteb/leaderboard)
- 📄 [Propositional Chunking (Chen et al., 2023)](https://arxiv.org/abs/2312.06648)

**Build**
- [ ] **Chunking shootout** — test all 7 strategies on the same corpus, evaluate with LLM-as-Judge, Streamlit dashboard

### Week 15: Advanced Retrieval
Topics: HNSW, IVF, approximate nearest neighbors, hybrid search (BM25 + dense), Reciprocal Rank Fusion (RRF), cross-encoders vs bi-encoders, reranking (BGE-reranker, Cohere, Voyage), metadata filtering, LLM-based routing, query decomposition, HyDE.

**Resources**
- 📄 [HNSW paper (Malkov & Yashunin, 2016)](https://arxiv.org/abs/1603.09320)
- 📖 [Pinecone — HNSW visualized](https://www.pinecone.io/learn/series/faiss/hnsw/)
- 📄 [ColBERT (Khattab & Zaharia, 2020)](https://arxiv.org/abs/2004.12832) — late interaction
- 📄 [HyDE: Precise Zero-Shot Dense Retrieval (Gao et al., 2022)](https://arxiv.org/abs/2212.10496)
- 📖 [Qdrant — Hybrid Search Guide](https://qdrant.tech/articles/hybrid-search/)

**Build**
- [ ] **Retrieval shootout** — naive dense vs BM25 vs hybrid+RRF vs hybrid+rerank, on the same golden eval set

---

## Phase 7 — Evaluation & Production (Weeks 16–17)

**Goal:** You cannot improve what you don't measure. Then you deploy it.

### Week 16: Evaluation
Topics: synthetic test generation, LLM-as-Judge (pitfalls + calibration), golden datasets, RAGAS metrics (faithfulness, answer relevancy, context precision/recall), DeepEval, triangulation, A/B testing LLMs.

**Resources**
- 📄 [RAGAS paper (Es et al., 2023)](https://arxiv.org/abs/2309.15217)
- 📖 [RAGAS docs](https://docs.ragas.io/)
- 📖 [DeepEval docs](https://docs.confident-ai.com/)
- 📖 [Eugene Yan — Evaluation & Hallucination Detection for Abstractive Summaries](https://eugeneyan.com/writing/abstractive/)
- 📖 [Hamel Husain — Your AI Product Needs Evals](https://hamel.dev/blog/posts/evals/) — ★ required reading
- 📖 [Shreya Shankar — Who Validates the Validators?](https://arxiv.org/abs/2404.12272)

### Week 17: Production Engineering
Topics: FastAPI for serving, semantic caching with Redis, conversation memory, query rewriting, intent routing, observability (Opik, Langfuse, Phoenix), Docker, cost tracking, rate limiting, structured logging.

**Resources**
- 📖 [FastAPI docs](https://fastapi.tiangolo.com/) — the tutorial
- 📖 [Redis Semantic Cache tutorial](https://redis.io/docs/latest/develop/ai/langcache/)
- 📖 [Langfuse docs (self-hostable)](https://langfuse.com/docs)
- 📖 [Phoenix by Arize (free)](https://phoenix.arize.com/)
- 📖 [Docker 101 Tutorial](https://www.docker.com/101-tutorial/)
- 📖 [12-factor App](https://12factor.net/) — the production bible

**Build**
- [ ] **Production chatbot** — FastAPI + Redis semantic cache + Langfuse + Dockerized, deployed on [Fly.io](https://fly.io) or [Railway](https://railway.com) (both free tiers)

---

## Phase 8 — Agents & MCP (Weeks 18–19)

**Goal:** Build agents that use tools, self-correct, and route queries intelligently.

### Week 18: Agent Fundamentals + MCP
Topics: the intelligence spectrum (single call → workflow → agent), ReAct, tool use, function calling, MCP (Model Context Protocol) — what it is and why it matters, building MCP servers.

**Resources**
- 📄 [ReAct: Reasoning and Acting in Language Models (Yao et al., 2022)](https://arxiv.org/abs/2210.03629)
- 📖 [Anthropic — Building effective agents](https://www.anthropic.com/research/building-effective-agents) — ★ must read
- 📖 [MCP spec](https://modelcontextprotocol.io/) + [MCP quickstart](https://modelcontextprotocol.io/quickstart)
- 📹 [Build an MCP server (various tutorials on the site)](https://modelcontextprotocol.io/)
- 📖 [LangGraph docs](https://langchain-ai.github.io/langgraph/) — graph-based agent framework

### Week 19: Advanced Agents — CRAG, Adaptive RAG, Security
Topics: Corrective RAG (CRAG), Self-RAG, Adaptive RAG, multi-tool routing, confidence-based fallback (web search with Tavily), prompt injection, jailbreaks, retrieval validation, output sanitization.

**Resources**
- 📄 [Corrective RAG (Yan et al., 2024)](https://arxiv.org/abs/2401.15884)
- 📄 [Self-RAG (Asai et al., 2023)](https://arxiv.org/abs/2310.11511)
- 📄 [Adaptive-RAG (Jeong et al., 2024)](https://arxiv.org/abs/2403.14403)
- 📖 [OWASP Top 10 for LLMs](https://genai.owasp.org/llm-top-10/)
- 📖 [Simon Willison — Prompt Injection Series](https://simonwillison.net/tags/prompt-injection/) — the canonical resource
- 📖 [Lilian Weng — LLM Powered Autonomous Agents](https://lilianweng.github.io/posts/2023-06-23-agent/)
- 📖 [Lilian Weng — Adversarial Attacks on LLMs](https://lilianweng.github.io/posts/2023-10-25-adv-attack-llm/)

**Build**
- [ ] **MCP server** — expose a real API (GitHub? your email?) as MCP tools
- [ ] **CRAG agent** — grades retrieval, falls back to Tavily web search when confidence is low

---

## Phase 9 — Fine-Tuning & Research (Weeks 20–22)

**Goal:** Know when to fine-tune (rarely) and how (LoRA/QLoRA). Learn to read papers.

### Week 20: Parameter-Efficient Fine-Tuning
Topics: full fine-tuning vs LoRA vs QLoRA, PEFT library, datasets for SFT, instruction formats (ChatML, Llama, Alpaca), evaluation of fine-tunes.

**Resources**
- 📄 [LoRA paper (Hu et al., 2021)](https://arxiv.org/abs/2106.09685)
- 📄 [QLoRA paper (Dettmers et al., 2023)](https://arxiv.org/abs/2305.14314)
- 📖 [Hugging Face PEFT Course](https://huggingface.co/learn/cookbook/en/index) + their [LLM course](https://huggingface.co/learn/llm-course/)
- 📖 [Unsloth docs](https://docs.unsloth.ai/) — fastest free fine-tuning in Colab
- 📹 [Sebastian Raschka — LoRA from scratch](https://magazine.sebastianraschka.com/p/lora-and-dora-from-scratch)

### Week 21: Distillation, Quantization, Serving
Topics: knowledge distillation, 8-bit/4-bit quantization, GGUF, vLLM, SGLang, Ollama, llama.cpp, model merging.

**Resources**
- 📄 [Distilling the Knowledge in a NN (Hinton et al., 2015)](https://arxiv.org/abs/1503.02531)
- 📖 [vLLM docs](https://docs.vllm.ai/)
- 📖 [Ollama docs](https://github.com/ollama/ollama) — run local LLMs in one command
- 📖 [llama.cpp](https://github.com/ggerganov/llama.cpp)

### Week 22: Reading Research
Topics: how to read a paper (3-pass method), tracking the field, benchmarks, reproducibility.

**Resources**
- 📖 [How to Read a Paper (Keshav)](https://web.stanford.edu/class/ee384m/Handouts/HowtoReadPaper.pdf)
- 📖 [Papers With Code](https://paperswithcode.com/)
- 📖 [AlphaXiv](https://www.alphaxiv.org/) — arxiv with discussions
- 📖 [Huggingface Daily Papers](https://huggingface.co/papers)
- 📧 Subscribe: [Sebastian Raschka's Ahead of AI](https://magazine.sebastianraschka.com/), [Lilian Weng's blog](https://lilianweng.github.io/), [Simon Willison](https://simonwillison.net/), [The Batch (Andrew Ng)](https://www.deeplearning.ai/the-batch/), [Interconnects (Nathan Lambert)](https://www.interconnects.ai/)

**Build**
- [ ] **Fine-tune a 3B–8B model** on a domain task using Unsloth + Colab's free T4 GPU
- [ ] **Paper reproduction** — pick one recent paper and reproduce its main result in a notebook
- [ ] **Weekly paper notes** — in your Obsidian vault, 1 paper per week from now on, permanently

---

## Phase 10 — Capstone & Portfolio (Weeks 23–24)

**Goal:** Ship one thing so good that it speaks for you at interviews.

### Week 23: Build the Capstone
Pick **one** of these archetypes. Make it yours. Use your own data or a niche domain.
- **Vertical RAG agent** — e.g., "Ask your codebase", "Ask your legal docs", "Ask your papers"
- **Multi-modal assistant** — voice + vision + text (OS assistant archetype)
- **Agentic tool** — does real work (refactor a repo, book travel, research a company)
- **Research-flavored project** — reproduce + improve a recent paper
- **Domain-specialized fine-tune** — a 7B model fine-tuned for your niche that outperforms base models on a clear benchmark

Non-negotiables for every capstone:
1. ✅ Public GitHub repo with **good README** (problem, demo gif, how to run, architecture, eval results)
2. ✅ **Deployed demo** (HuggingFace Spaces, Fly.io, Railway — all free tiers)
3. ✅ **Evaluation section** with metrics, not vibes
4. ✅ **Blog post** on your own site or dev.to explaining your design decisions

### Week 24: Polish + Shipping
- [ ] Rewrite your README for a recruiter audience — architecture diagram, decisions/tradeoffs, eval results
- [ ] Record a 90-second Loom demo
- [ ] Post on LinkedIn, X, and HN Show HN
- [ ] Update your resume: AI Engineer, not Python developer
- [ ] Apply to 10 roles. Reference your projects, not buzzwords.

---

## 📊 Weekly Tracker

This repo ships with two trackers:
- **`tracker.html`** — a standalone HTML page you can open in your browser. Uses localStorage, fully offline, no server needed.
- **`obsidian-vault/journal/`** — weekly markdown templates for reflection and Obsidian's built-in kanban/tracking plugins.

You can also fork this repo, enable GitHub Pages (Settings → Pages → Deploy from `/` root, main branch), and your tracker will be live at `https://<your-username>.github.io/<repo-name>/`.

---

## 🕸️ Obsidian Knowledge Graph

The `obsidian-vault/` folder is a complete Obsidian vault where every concept is a note, and notes link to each other with `[[wikilinks]]`. Open the vault in Obsidian, press `Ctrl/Cmd + G`, and you'll see the entire AI engineering landscape as an interactive graph.

**How to use it:**
1. Install [Obsidian](https://obsidian.md/) (free)
2. Open Obsidian → "Open folder as vault" → pick `obsidian-vault/`
3. Explore via the graph view, or start at `00-START-HERE.md`
4. As you learn, **edit the notes** — add your own examples, corrections, links to papers you read. This is YOUR second brain now.

The vault is pre-seeded with:
- 📘 **~100 concept notes** (each atomic, linked to related ideas)
- 📚 **Phase & Week MOCs** (Maps of Content — hub notes for each phase)
- 📝 **Journal templates** for weekly reflection
- 📄 **Paper note templates** for reading research

---

## 🙏 Contributing

Found a dead link? A better resource? Shipped a cool capstone? **Open a PR.** This is meant to be a living document maintained by the people who follow it.

## 📜 License

MIT. Fork it, share it with your friends, remix it.

---

**Now stop reading. Start Phase 0.** 🚀
