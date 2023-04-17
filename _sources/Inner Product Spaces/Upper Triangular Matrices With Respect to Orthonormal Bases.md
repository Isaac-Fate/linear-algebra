# Upper Triangular Matrices With Respect to Orthonormal Bases

Previously, we introduced the upper triangular matrix representation of an operator $T$ in a general vector space. If a vector space is now upgraded to an inner product space by defining an inner product, and we know that $[T]$ is upper triangular with respect to some basis, then we can always find an *orthonormal* basis with respect to which $[T]$ is upper triangular.


````{prf:theorem}
:label: thm:11

Suppose $V$ is a finite-dimensional inner product space, and $T \in \mathcal{L}(V)$ is an operator on $V$. If there exists some basis $B$ for $V$ with respect to which $[T]_B$ is upper triangular, then there must also exist an orthonormal basis $B^\prime$ such that $[T]_{B^\prime}$ is upper triangular.

````

````{prf:proof}

Write

```{math}
\begin{align*}
B = (\mathbf{v}_1, \ldots, \mathbf{v}_n)
\end{align*}
```

Since $[T]_B$ is upper triangular, by the equivalent condition in {prf:ref}`pro:2`, we have

```{math}
\begin{align*}\Span(\mathbf{v}_1, \ldots, \mathbf{v}_k)
\end{align*}
```

is invariant under $T$ for all $k = 1, \ldots, n$. And using the Gram-Schmidt process ({prf:ref}`thm:1`), we can construct an orthonormal basis

```{math}
\begin{align*}
B^\prime = (\mathbf{e}_1, \ldots, \mathbf{e}_n)
\end{align*}
```

with

```{math}
\begin{align*}\Span(\mathbf{e}_1, \ldots, \mathbf{e}_k)
= \Span(\mathbf{v}_1, \ldots, \mathbf{v}_k)
\quad\forall k = 1, \ldots, n
\end{align*}
```

Therefore, $\Span (\mathbf{e}_1, \ldots, \mathbf{e}_k)$ is also invariant under $T$ for each $k$. Hence, $[T]_{B^\prime}$ is upper triangular by {prf:ref}`pro:2`.

````

Recall that we have shown in {prf:ref}`thm:3` that every operator
on a complex vector space can be represented as an upper triangular matrix
with respect to some basis.
By applying {prf:ref}`thm:11`,
we can specify that basis to be orthonormal.


````{prf:corollary}
:label: cor:3

Let $V$ be a complex finite-dimensional inner product space,
and $T \in \mathcal{L}(V)$ an operator.
Then $[T]$ is upper triangular with respect to
some orthonormal basis of $V$.

````

````{prf:proof}

It follows directly from {prf:ref}`thm:3` and {prf:ref}`thm:11`.

````
