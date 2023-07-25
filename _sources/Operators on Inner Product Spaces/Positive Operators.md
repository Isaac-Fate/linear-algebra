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


The following is a simple observation about the eigenvalues
of a square root.


````{prf:proposition}
:label: pro:15

Let $V$ be an inner product space.
If $T$ is a positive operator and $S$ is
its positive square root,
then every eigenvalue $\mu$ of $S$
satisfies

```{math}
\begin{align*}\mu^2 = \lambda\end{align*}
```

where $\lambda$ is some eigenvalue of $T$.

````

````{prf:proof}

Suppose $\mu$ is an eigenvalue of $S$,
and $\mathbf{v}$ is the corresponding eigenvector.
We have

```{math}
\begin{align*}
S \mathbf{v} = \mu\mathbf{v}\end{align*}
```

Applying $S$ to both sides yields

```{math}
\begin{align*}
T \mathbf{v} = S^2 \mathbf{v} = \mu S \mathbf{v}
= \mu^2 \mathbf{v}\end{align*}
```

Therefore, $\mu^2$ is an eigenvalue of $T$.

````

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

**Proof of 3 $\implies$ 4:**
Suppose $S$ is a positive square root of $T$.
As we have noted from the definition of positive operators, $S$ must
be self-adjoint.
Therefore, $S$ is also a self-adjoint square root of $T$, as desired.

**Proof of 4 $\implies$ 5:**
Let $S$ be a self-adjoint square root of $T$.
We have

```{math}
\begin{align*}
T = S^2 = S^\ast S
\end{align*}
```

since $S = S^\ast$.

**Proof of 5 $\implies$ 1:**
For any vector $\mathbf{v} \in V$, we have

```{math}
\begin{align*}\langle T \mathbf{v}, \mathbf{v}\rangle
= \langle S^\ast S \mathbf{v}, \mathbf{v}\rangle
= \langle S \mathbf{v}, S \mathbf{v}\rangle\geq 0
\end{align*}
```

Hence, $T$ is a positive operator.

````

````{prf:proposition}
:label: pro:14

Every positive operator $T$
on a finite-dimensional inner product space $V$
has a unique positive square root.

````

````{prf:proof}

Because $T$ is positive, and hence self-adjoint, $V$
can be decomposed as

```{math}
:label: eq:71
\begin{align}
V = \ker(T - \lambda_1 I) \oplus\cdots\oplus\ker(T - \lambda_m I)
\end{align}
```

where $\lambda_1, \ldots, \lambda_m$ are
all distinct eigenvalues of $T$
by {prf:ref}`cor:11`.

We know from {prf:ref}`thm:19`, $T$ has a positive square root $S$.
And then by {prf:ref}`pro:15`,
we know $\sqrt{\lambda_1}, \ldots, \sqrt{\lambda_m}$(note that each $\lambda_j$ is non-negative)
are all distinct eigenvalues of $S$.
Then, applying the same arguments as before, $V$ can also
be decomposed as

```{math}
:label: eq:72
\begin{align}
V = \ker(S - \sqrt{\lambda_1} I)
\oplus\cdots\oplus\ker(S - \sqrt{\lambda_m} I)
\end{align}
```

Next, we want to show that $\ker (S - \sqrt{\lambda_j} I) \subseteq \ker(T - \lambda_j I)$ for each $j$.
Indeed, for every $\mathbf{v} \in \ker(S - \sqrt{\lambda_j} I)$,
we have

```{math}
\begin{align*}
S \mathbf{v} = \sqrt{\lambda_j}\mathbf{v}\end{align*}
```

Applying $S$ to both sides yields

```{math}
\begin{align*}
T \mathbf{v} = S^2 \mathbf{v}
= \sqrt{\lambda_j} S \mathbf{v}
= \lambda_j \mathbf{v}\end{align*}
```

which implies $\mathbf{v} \in \ker(T - \lambda_j I)$.
Therefore, indeed $\ker (S - \sqrt{\lambda_j} I) \subseteq \ker(T - \lambda_j I)$.
Consequently,

```{math}
\begin{align*}\dim\ker(S - \sqrt{\lambda_j} I)
\leq\dim\ker(T - \lambda_j I)
\end{align*}
```

Then by comparing {eq}`eq:71` and {eq}`eq:72`,
we must have

```{math}
:label: eq:73
\begin{align}\ker(S - \sqrt{\lambda_j} I) = \ker(T - \lambda_j I)
\end{align}
```

Otherwise, the dimension would not match.
Note that the interpretation
of {eq}`eq:73` is that on each
subspace $\ker(T - \lambda_j I)$, operator $S$
is just a multiplication by $\sqrt{\lambda_j}$.
Therefore, $S$ is uniquely determined by $T$,
and hence the positive square root $S$ is unique.

````
