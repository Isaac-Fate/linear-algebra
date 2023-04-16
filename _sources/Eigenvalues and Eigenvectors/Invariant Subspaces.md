# Invariant Subspaces

````{prf:example}
:label: eg:1

Consider the linear operator on $\R^2$ whose matrix representation with respect to the standard basis is given by

```{math}
\begin{align*}[T] = \begin{bmatrix}
\cos\theta & -\sin\theta \\
\sin\theta & \cos\theta
\end{bmatrix}\quad\sin\theta\neq 0
\end{align*}
```

Geometrically, $T$ rotates any point $(x, y)$ on the $2$-dimensional plane counterclockwise through an angle $\theta$ about the origin. But since we additionally require that $\sin\theta \neq 0$, the point cannot land at $(x, y)$ or $(-x, -y)$ after rotation. That is, it cannot land on the *line* passing through the origin and $(x, y)$, which is precisely $\Span\{(x, y)^\top\}$. Therefore, we see that $T$ has no eigenvalues.

````

````{admonition} Exercise 5.1

Show by computation that the linear operator $T$ in {prf:ref}`eg:1` indeed does not have any eigenvalues.

````
