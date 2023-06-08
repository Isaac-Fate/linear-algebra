# The Spectral Theorem

The most elegant operators on $V$
are those that possess an orthonormal basis of $V$,
with respect to which the operator has a diagonal matrix.
These operators
are precisely the ones that have an orthonormal basis of $V$
consisting of eigenvectors of $T$.
Our objective in this section is to establish the spectral theorem,
which characterizes these operators as normal operators when $\FF = \C$,
and as self-adjoint operators when $\FF = \R$.
The spectral theorem is, without a doubt,
the most valuable tool in the study of operators
on inner product spaces.

Given that the conclusion of the spectral theorem is dependent on $\FF$,
we will divide the spectral theorem into two parts,
known as the complex spectral theorem and the real spectral theorem.



````{prf:theorem}
:label: thm:15

Let $V$ be a finite-dimensional complex inner product space,
and $T \in \mathcal{L}(V)$ a linear operator.
Then there exists an orthonormal basis of $V$ consisting
of eigenvectors of $T$
if and only if $T$
is a normal operator.

````

````{prf:proof}

We first show the necessity.
Suppose there exists an orthonormal
basis $\mathcal{B} = (\mathbf{e}_1, \ldots, \mathbf{e}_n)$
of $V$ consisting of eigenvectors of $T$, with respect to
eigenvalues $\lambda_1, \ldots, \lambda_n$.
Then the matrix representation of $T$ w.r.t. $\mathcal{B}$ is

```{math}
\begin{align*}[T]_{\mathcal{B}} =
\begin{bmatrix}
\lambda_1 & & 0 \\
& \ddots & \\
0 & & \lambda_n
\end{bmatrix}\end{align*}
```

Since $\mathcal{B}$ is orthonormal, by {prf:ref}`thm:16`,
we have

```{math}
\begin{align*}[T^\ast]_{\mathcal{B}} =
[T]^{H}_{\mathcal{B}}\begin{bmatrix}
\bar{\lambda}_1 & & 0 \\
& \ddots & \\
0 & & \bar{\lambda}_n
\end{bmatrix}\end{align*}
```

It is then clear that

```{math}
\begin{align*}\norm{T \mathbf{v}} = \norm{T^\ast \mathbf{v}}\quad\forall\mathbf{v}\in V
\end{align*}
```

Therefore, $T$ is a normal operator by {prf:ref}`pro:10`.

The proof of sufficiency is relatively more involved.
In the following, we suppose that $T$ is a normal operator.
We shall prove by induction on $\dim V$.

**Base case:** Suppose $\dim V = 1$.
Then any nonzero vector can be treated as a basis of $V$,
and is meanwhile an eigenvector of $T$.

**Inductive step:** Suppose the sufficiency of
this theorem holds for any vector space with dimension $k$.
We need to show that it also holds for $V$ with dimension $k+1$.
By {prf:ref}`cor:3`,
we know there exits an orthonormal
basis $\mathcal{B} = (\mathbf{e}_1, \ldots, \mathbf{e}_{k+1})$
such that $[T]_{\mathcal{B}}$ is upper triangular.
Let subspace $U$ be the span of the first $k$ basis vectors,
i.e., $U = \Span (\mathbf{e}_1, \ldots, \mathbf{e}_k)$.
Note that $U$ is invariant under $T$,
and hence $\restr{T}{U}$ is an operator on $U$.
Moreover, $\restr{T}{U}$ is clearly a normal operator.
Therefore, by the induction hypothesis,
there exists an orthonormal
basis $\mathcal{B}^\prime = (\mathbf{f}_1, \ldots, \mathbf{f}_k)$
of $U$ such that $[\restr{T}{U}]_{\mathcal{B}^\prime}$ is diagonal.
Write

```{math}
\begin{align*}[\restr{T}{U}]_{\mathcal{B}^\prime} =
\begin{bmatrix}
\mu_1 & & 0 \\
& \ddots & \\
0 & & \mu_k
\end{bmatrix}\end{align*}
```

By applying the Gram-Schmidt process ({prf:ref}`cor:1`),
we may extend $\mathcal{B}^\prime$ to an orthonormal
basis, $\mathcal{B}^{\prime\prime}$ with
one vector $\mathbf{f}_{k+1}$ added,
of the whole vector space $V$.
Then the matrix representations of $T$ and $T^\ast$
w.r.t. $\mathcal{B}^{\prime\prime}$ are

```{math}
\begin{align*}[T]_{\mathcal{B}^{\prime\prime}} =
\begin{bmatrix}
\mu_1 & & 0 & a_1\\
& \ddots & & \vdots \\
0 & & \mu_k & a_k \\
0  & \cdots & 0 & \mu_{k+1}
\end{bmatrix}\quad\text{and}\quad[T^\ast]_{\mathcal{B}^{\prime\prime}} =
\begin{bmatrix}
\bar{\mu}_1 & & 0 & 0\\
& \ddots & & \vdots \\
0 & & \bar{\mu}_k & 0 \\
\bar{a}_1  & \cdots & \bar{a}_k & \bar{\mu}_{k+1}
\end{bmatrix}\end{align*}
```

since $\mathcal{B}^{\prime\prime}$ is orthonormal.
Because $T$ is a normal operator, we must have

```{math}
\begin{align*}\norm{T \mathbf{f}_{k+1}} = \norm{T^\ast \mathbf{f}_{k+1}}\end{align*}
```

But

```{math}
\begin{align*}\norm{T \mathbf{f}_{k+1}}^2 &= \abs{a_1}^2 + \cdots + \abs{a_k}^2
+ \abs{\mu_{k+1}}^2 \\\norm{T^\ast \mathbf{f}_{k+1}}^2 &= \abs{\bar{\mu}_k}^2
= \abs{\mu_{k+1}}^2
\end{align*}
```

It then follows that

```{math}
\begin{align*}
a_1 = \cdots = a_k = 0
\end{align*}
```

Hence, $[T]_{\mathcal{B}^{\prime\prime}}$ is actually a diagonal matrix.
This completes the proof.

````
