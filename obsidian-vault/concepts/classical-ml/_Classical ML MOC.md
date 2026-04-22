# Classical ML — Map of Content

All concept notes in this cluster. Use the Graph view (Cmd/Ctrl+G) to see how they interconnect.

- [[Train Val Test Split]] — Split data into train (fit), validation (tune), test (final eval). Never, ever tune on test.
- [[Cross Validation]] — k-fold CV: split train into k parts, train k times with each as val once. Better estimate of generalization.
- [[Bias Variance Tradeoff]] — High bias = underfits, high variance = overfits. The core tension of ML.
- [[Overfitting]] — Model memorizes training data, fails on new data. Signs: train loss << val loss.
- [[Regularization]] — Techniques to prevent overfitting: L1 (lasso, sparsity), L2 (ridge, shrinkage), dropout, early stopping, data augmentation.
- [[Feature Engineering]] — Creating informative inputs from raw data. Binning, interactions, target encoding, scaling. Often matters more than model choice.
- [[Hyperparameter Tuning]] — Find best learning rate, depth, regularization strength. Grid, random, Bayesian (Optuna). Tune on val, not test.
- [[Experiment Tracking]] — Log every run's config + metrics. Tools: Weights & Biases, MLflow, Comet. Non-negotiable for real work.
- [[Linear Regression]] — Fit y = wx + b by minimizing MSE. The starting point for every tabular problem.
- [[Logistic Regression]] — Linear regression + sigmoid → binary classification. Cross-entropy loss. Still a strong baseline.
- [[K-Nearest Neighbors]] — Classify by majority vote of k nearest training points. No training; O(n) inference. The OG vector search.
- [[Decision Tree]] — Recursive binary splits on features to minimize impurity (Gini/entropy). Interpretable but prone to overfitting.
- [[Random Forest]] — Bagging of decision trees: each tree sees a bootstrap sample and random feature subset. Averages predictions.
- [[Gradient Boosting]] — Sequentially fit trees to the residuals of prior trees. XGBoost/LightGBM/CatBoost dominate tabular Kaggle.
- [[Support Vector Machine]] — Find the hyperplane with max margin separating classes. Kernel trick for non-linear.
- [[K-Means]] — Unsupervised clustering: iteratively assign points to nearest centroid, update centroids. Must pick k.
- [[PCA]] — Principal Component Analysis: find orthogonal axes of max variance (eigenvectors of covariance matrix). Linear dim reduction.
- [[t-SNE and UMAP]] — Non-linear dim reduction for visualization. t-SNE preserves local structure; UMAP is faster + preserves some global structure too.
- [[Precision Recall F1]] — Precision = TP/(TP+FP). Recall = TP/(TP+FN). F1 = harmonic mean. Use instead of accuracy when classes are imbalanced.
- [[ROC AUC]] — Area under the ROC curve (TPR vs FPR). Threshold-independent classifier quality. 0.5 = random, 1.0 = perfect.
- [[Confusion Matrix]] — 2x2 table of (predicted, actual). The root of every classification metric.

## Tags
#moc #classical-ml
