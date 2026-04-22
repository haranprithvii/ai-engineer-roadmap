# Deep Learning — Map of Content

All concept notes in this cluster. Use the Graph view (Cmd/Ctrl+G) to see how they interconnect.

- [[Perceptron]] — y = step(wx + b). The first artificial neuron (Rosenblatt 1958). Foundation of neural nets.
- [[Multi-Layer Perceptron]] — Stacked fully-connected layers with non-linear activations. Universal function approximator.
- [[Forward Pass]] — Compute outputs layer by layer: aₗ = σ(Wₗaₗ₋₁ + bₗ).
- [[Backpropagation]] — Compute gradients via chain rule, starting from loss and propagating backward through the network. The reason deep learning works.
- [[Gradient Descent]] — Update θ := θ - η·∇L. Stochastic (batch of samples). The entire training loop.
- [[Activation Functions]] — Non-linearities between layers: ReLU, GELU, sigmoid, tanh, softmax. Without them, stacked layers collapse to a single linear layer.
- [[Loss Functions]] — What you minimize: MSE (regression), cross-entropy (classification), contrastive (embeddings).
- [[Optimizer]] — Algorithm that uses gradients to update weights: SGD, SGD+momentum, Adam, AdamW. Adam(W) is the default for LLMs.
- [[Weight Initialization]] — How you start weights matters. Xavier/Glorot, Kaiming/He. Bad init = dead or exploding neurons.
- [[Convolutional Layer]] — Sliding learned filters over spatial data. Translation-equivariant. Dominates computer vision.
- [[Pooling]] — Downsample feature maps: max pool, average pool. Adds translation invariance.
- [[Batch Normalization]] — Normalize activations across a batch to zero mean/unit variance, then learn scale/shift. Stabilizes training.
- [[Dropout]] — Randomly zero out a fraction of activations during training. Acts as ensemble regularization.
- [[Residual Connection]] — y = F(x) + x. The 'skip connection' behind ResNet and every modern transformer. Enables 100+ layer networks.
- [[RNN]] — Recurrent Neural Network: hidden state carried forward through time. Good for sequences, bad at long-range deps.
- [[LSTM]] — Long Short-Term Memory: RNN with gated cell state. Solved vanishing gradients. Superseded by transformers but still used for small sequence problems.
- [[Autoencoder]] — Encoder compresses x → z, decoder reconstructs z → x̂. Train to minimize reconstruction loss. Variants: denoising, variational.
- [[Learning Rate Schedule]] — Change LR during training: warmup, cosine decay, step decay. Huge impact on final performance.
- [[Early Stopping]] — Stop when val loss stops improving. Simple, effective regularization.
- [[Data Augmentation]] — Transform training data (flip, crop, rotate, mixup) to increase effective dataset size.
- [[Transfer Learning]] — Start from a pretrained model, fine-tune on your task. Almost always beats training from scratch.
- [[Mixed Precision Training]] — Train in fp16/bf16 with master weights in fp32. ~2x faster, ~half the memory, same accuracy.
- [[Variational Autoencoder]] — Autoencoder with a probabilistic latent space (Gaussian). Minimizes reconstruction + KL to prior.
- [[GAN]] — Generator vs Discriminator game. Generator fools the discriminator; discriminator gets better at detection. Produces sharp samples.
- [[Diffusion Model]] — Learn to reverse a gradual noising process. Dominates image generation (Stable Diffusion, Imagen, DALL-E).

## Tags
#moc #deep-learning
