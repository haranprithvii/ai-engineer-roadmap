# Research & Fine-Tuning — Map of Content

All concept notes in this cluster. Use the Graph view (Cmd/Ctrl+G) to see how they interconnect.

- [[Fine-Tuning]] — Continue training a pretrained model on domain/task data. Full FT is rare; PEFT (LoRA/QLoRA) is standard.
- [[LoRA]] — Low-Rank Adaptation: freeze base weights, learn low-rank update matrices A·B. 1000x fewer trainable params, near-FT quality.
- [[QLoRA]] — LoRA + 4-bit quantized base model + paged optimizer. Fine-tunes 65B on a single 48GB GPU. Free-tier T4 can do 7B.
- [[PEFT]] — Parameter-Efficient Fine-Tuning: family of techniques (LoRA, adapters, prefix tuning) that tune <1% of params.
- [[Instruction Format]] — The template that wraps prompts during SFT: ChatML, Llama-2, Alpaca. Must match at inference.
- [[SFT]] — Supervised Fine-Tuning: train on (prompt, ideal_response) pairs. Standard after pre-training.
- [[Quantization]] — Reduce weight precision (fp32 → int8/int4). Massive memory + speed savings, small quality hit. Post-training or QAT.
- [[Knowledge Distillation]] — Train a small student model to match a large teacher's output distribution. The 'compress the big model' trick.
- [[GGUF]] — Binary format for quantized LLMs (successor to GGML). Powers llama.cpp, Ollama, LM Studio.
- [[vLLM]] — High-throughput inference server with PagedAttention. The production choice for self-hosted LLMs.
- [[Ollama]] — One-command local LLM runner built on llama.cpp. Perfect for dev + prototyping.
- [[Reading Papers]] — 3-pass method (Keshav): scan → read → deep dive. Don't try to understand everything first pass.
- [[Benchmarks]] — Standardized eval sets: MMLU, HumanEval, GSM8K, MATH, GPQA, SWE-bench, ARC-AGI. Good for comparisons, bad for product quality.
- [[Reproducibility]] — Can someone else get your result? Requires: code, data, seeds, env. The lowest bar for real research.

## Tags
#moc #research
