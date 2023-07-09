# Positive Operators

````{prf:definition}
:label: def:6

```{index} positive operator
```

Let $V$ be an inner product space.
An operator $T \in \mathcal{L}(V)$ is said to
be a **positive operator**
if it is self-adjoint and

```{math}
:label: eq:70
\begin{align}\langle T \mathbf{v}, \mathbf{v}\rangle\geq 0
\quad\forall\mathbf{v}\in V
\end{align}
```

````

:::{note}

Equation {eq}`eq:70` implicitly implies that
the inner product is a real number.
Hence, if $\FF = \C$, then by {prf:ref}`cor:8`
there is no need to assume $T$ is self-adjoint in the condition
since this must be the case.

:::

```{index} square root of an operator
```

An operator $S$ is said to be a **square root**
of an operator $T$
if $S^2 = T$.


The following theorem lists some equivalent conditions of being
a positive operator.


````{prf:theorem}
:label: thm:19

Let $V$ be a finite-dimensional inner product space,
and $T \in \mathcal{L}(V)$.
Then the following are equivalent:
- ➀ $T$ is a positive operator.
- ➁ $T$ is self-adjoint and the eigenvalues of $T$ are non-negative.
- ➂ $T$ has a positive square root.
- ➃ $T$ has a self-adjoint square root.
- ➄ There exists an operator $S$ such that $T = S^\ast S$.


````

````{prf:proof}

We shall prove 1 $\implies$ 2 $\implies$ 3 $\implies$ 4 $\implies$
5 $\implies$ 1.

**Proof of 1 $\implies$ 2:**
First, by definition, $T$ is of course self-adjoint.
Let $\lambda$ be an eigenvalue of $T$,
and $\mathbf{v}$ the corresponding eigenvector.
We want to show $\lambda \geq 0$.
Indeed, we have

```{math}
\begin{align*}
0 \leq\langle T \mathbf{v}, \mathbf{v}\rangle
= \langle\lambda\mathbf{v}, \mathbf{v}\rangle
= \bar{\lambda}\norm{\mathbf{v}}^2
\end{align*}
```

Since $\mathbf{v} \neq \mathbf{0}$, $\lambda$ must be a real number
and it is non-negative.

**Proof of 2 $\implies$ 3:**
By the spectral theorems ({prf:ref}`thm:15` and {prf:ref}`thm:17`),
there exists an orthonormal
basis $\mathcal{B} = (\mathbf{e}_1, \ldots, \mathbf{e}_n)$
such that

```{math}
\begin{align*}[T]_{\mathcal{B}} =
\begin{bmatrix}
\lambda_1 & & \\
& \ddots & \\
& & \lambda_n
\end{bmatrix}\end{align*}
```

where $\lambda_1, \ldots, \lambda_n$ are eigenvalues of $T$,
and hence are all non-negative.
Let operator $S$ be defined by

```{math}
\begin{align*}
S \mathbf{e}_j = \sqrt{\lambda_j}\mathbf{e}_j
\quad\forall j = 1, \ldots, n
\end{align*}
```

Note that $S$ is a positive operator since
for $\mathbf{v} = a_1 \mathbf{e}_1 + \cdots + a_n \mathbf{e}_n$,
we have

```{math}
\begin{align*}\langle S \mathbf{v}, \mathbf{v}\rangle&= \langle\sum_{j=1}^n a_j S \mathbf{e}_j,
\sum_{j=1}^n a_j \mathbf{e}_j \rangle\\&= \sum_{i=1}^n \sum_{j=1}^n
\bar{a}_i a_j
\langle S \mathbf{e}_i, \mathbf{e}_j \rangle\\&= \sum_{i=1}^n \sum_{j=1}^n
\bar{a}_i a_j
\langle\sqrt{\lambda_i}\mathbf{e}_i, \mathbf{e}_j \rangle\\&= \sum_{j=1}^n \abs{a_j}^2
\sqrt{\lambda}_j \\&\geq 0
\end{align*}
```

And because the matrix representation of $S$ w.r.t. $\mathcal{B}$
is simply

```{math}
\begin{align*}[S]_{\mathcal{B}} =
\begin{bmatrix}
\sqrt{\lambda_1} & & \\
& \ddots & \\
& & \sqrt{\lambda_n}
\end{bmatrix}\end{align*}
```

it is clear that $S^2 = T$.


````
