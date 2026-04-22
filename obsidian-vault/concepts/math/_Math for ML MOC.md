# Math for ML — Map of Content

All concept notes in this cluster. Use the Graph view (Cmd/Ctrl+G) to see how they interconnect.

- [[Vector]] — An ordered list of numbers representing a point or direction in n-dimensional space. The building block of all ML.
- [[Matrix]] — A rectangular array of numbers. In ML, matrices represent datasets (rows=samples, cols=features) and also linear transformations.
- [[Matrix Multiplication]] — The composition of two linear transformations. C[i,j] = Σ A[i,k] * B[k,j]. The single most-called operation in deep learning.
- [[Dot Product]] — A·B = Σ aᵢbᵢ. Measures how aligned two vectors are. Forms the basis of cosine similarity and attention.
- [[Norm]] — The length of a vector. L2 (Euclidean) norm = √(Σ xᵢ²). L1 norm = Σ|xᵢ|. Used in regularization and distance metrics.
- [[Eigenvector]] — A vector that only gets scaled (not rotated) by a matrix. Eigenvalues = how much it's scaled. Foundation of PCA.
- [[SVD]] — Singular Value Decomposition: any matrix A = UΣVᵀ. Generalizes eigendecomposition to non-square matrices. Foundation of PCA and LoRA.
- [[Derivative]] — The instantaneous rate of change of a function. Tells gradient descent which way to nudge parameters.
- [[Gradient]] — The vector of partial derivatives of a scalar function. Points in the direction of steepest ascent. We descend it to minimize loss.
- [[Chain Rule]] — d(f(g(x)))/dx = f'(g(x)) · g'(x). The engine of backpropagation.
- [[Jacobian]] — The matrix of all first-order partial derivatives of a vector-valued function. Generalizes the gradient.
- [[Random Variable]] — A variable whose value is the outcome of a random process. Can be discrete or continuous.
- [[Probability Distribution]] — A function that assigns probabilities to outcomes of a random variable.
- [[Gaussian Distribution]] — The bell curve. p(x) = (1/√(2πσ²)) exp(-(x-μ)²/(2σ²)). Shows up everywhere in ML via the Central Limit Theorem.
- [[Bayes Theorem]] — P(A|B) = P(B|A)P(A) / P(B). Updates beliefs given evidence. Foundation of probabilistic ML.
- [[Maximum Likelihood Estimation]] — MLE: choose parameters θ that maximize the likelihood of the observed data. Equivalent to minimizing negative log-likelihood (= cross-entropy loss for classification).
- [[Entropy]] — H(X) = -Σ p(x) log p(x). A measure of uncertainty in a distribution. More uniform = higher entropy.
- [[KL Divergence]] — KL(P||Q) = Σ p(x) log(p(x)/q(x)). Measures how one distribution differs from another. Asymmetric. Used in VAEs, RL, DPO.
- [[Cross Entropy]] — H(P,Q) = -Σ p(x) log q(x). The standard classification loss. Equal to entropy + KL divergence.

## Tags
#moc #math
