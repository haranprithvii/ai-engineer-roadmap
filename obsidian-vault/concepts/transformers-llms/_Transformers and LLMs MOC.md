# Transformers & LLMs — Map of Content

All concept notes in this cluster. Use the Graph view (Cmd/Ctrl+G) to see how they interconnect.

- [[Transformer]] — The 2017 architecture (Vaswani et al.) that replaced RNNs. All modern LLMs are variants. Key ingredients: self-attention + residuals + layer norm + MLP blocks.
- [[Attention]] — A mechanism that computes a weighted sum of values, where weights come from query-key similarities. Lets each token look at any other token.
- [[Self-Attention]] — Attention where Q, K, V all come from the same input sequence. Each token attends to every other token (in decoder-only: only earlier tokens).
- [[Multi-Head Attention]] — Run multiple attention operations in parallel with different learned projections. Concatenate. Lets the model attend to different relationships at once.
- [[Positional Encoding]] — Inject position information into the model. Original: sinusoidal. Modern: RoPE (rotary), ALiBi.
- [[Causal Masking]] — Prevents a token from attending to future tokens during training. Makes decoder-only models auto-regressive.
- [[KV Cache]] — Cache keys and values during generation so you don't recompute them for each new token. Makes autoregressive inference fast.
- [[Layer Normalization]] — Normalize activations within a single example across features (vs BN which is across batch). Standard in transformers.
- [[Tokenization]] — Converting text to integer tokens. Modern LLMs use subword tokenization (BPE, WordPiece, SentencePiece).
- [[BPE]] — Byte-Pair Encoding: start with characters, iteratively merge most frequent adjacent pair. Used by GPT models.
- [[Pre-training]] — Self-supervised training on massive text to learn next-token prediction. The foundational phase of any LLM.
- [[Next-Token Prediction]] — The pre-training objective: given context, predict the next token. Loss = cross-entropy over the vocabulary.
- [[Scaling Laws]] — Test loss scales predictably with compute, data, and parameters (Kaplan 2020, Chinchilla 2022). You can predict model capability before training.
- [[Instruction Tuning]] — SFT on (instruction, response) pairs. Turns a base model into a helpful assistant.
- [[RLHF]] — Reinforcement Learning from Human Feedback. Train a reward model on human prefs, then RL against it (PPO). Aligns models with human preferences.
- [[DPO]] — Direct Preference Optimization: replace RLHF's reward model + PPO with a single classification loss over preference pairs. Simpler, often better.
- [[Reasoning Models]] — LLMs trained with RL on verifiable tasks to produce long chains of thought (o1, R1, etc.). Trade latency for accuracy on hard problems.
- [[Prompt Engineering]] — Crafting inputs to get better outputs. Techniques: clear instructions, examples, role-setting, delimiters, output format specification.
- [[Chain of Thought]] — Prompt the model to reason step-by-step before answering. Massively improves performance on reasoning tasks.
- [[Few-Shot Learning]] — Include a handful of examples in the prompt. Lets the model learn the pattern without fine-tuning.
- [[Structured Outputs]] — Force the model to emit valid JSON (or other schemas). Grammar-constrained decoding or JSON mode.
- [[Tool Calling]] — LLM emits structured function calls that the host code executes. Foundation of every agent.
- [[Streaming]] — Emit tokens as they're generated (SSE, WebSockets). Improves perceived latency dramatically.
- [[Temperature and Sampling]] — Temperature scales logits before softmax (higher = more random). Top-k, top-p, min-p constrain the sampling pool.

## Tags
#moc #transformers-llms
