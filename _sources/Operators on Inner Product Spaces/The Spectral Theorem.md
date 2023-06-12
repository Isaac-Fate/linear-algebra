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
By {prf:ref}`cor:6`,
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

By applying the Gram-Schmidt process ({prf:ref}`cor:4`),
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

To prove the real spectral theorem,
we need the following two lemmas.


````{prf:lemma}
:label: lem:2

Let $V$ be a finite-dimensional real inner product space.
If $T \in \mathcal{L}(V)$ is a self-adjoint linear operator,
and $\alpha, \beta \in \R$ are two real numbers satisfying

```{math}
:label: eq:53
\begin{align}\alpha^2 - 4 \beta  < 0
\end{align}
```

then the operator

```{math}
:label: eq:55
\begin{align}
T^2 + \alpha T + \beta I
\end{align}
```

is invertible.

````

The idea of the proof of this lemma
arises from an analogous problem of showing the real number

```{math}
\begin{align*}
x^2 + \alpha x + \beta\end{align*}
```

is invertible,
where $\alpha$ and $\beta$ satisfy {eq}`eq:53`.
In fact, we are going to show that this real number is greater than zero,
which is a stronger condition.
Indeed, we have

```{math}
:label: eq:54
\begin{align}
x^2 + \alpha x + \beta
= \brk{x + \frac{\alpha}{2}}^2 + \brk{\beta - \frac{\alpha^2}{4}}
> 0
\end{align}
```

````{prf:proof}

To show operator {eq}`eq:55` is invertible,
it suffices to that it is injective.
Equivalently, we need to show the kernel of
the operator {eq}`eq:55` is $\{\mathbf{0}\}$.
Setting

```{math}
:label: eq:56
\begin{align}(T^2 + \alpha T + \beta I) \mathbf{v} = \mathbf{0}\end{align}
```

we want to show $\mathbf{v} = \mathbf{0}$.
Clearly, by {eq}`eq:56`, we have

```{math}
:label: eq:57
\begin{align}\langle(T^2 + \alpha T + \beta I) \mathbf{v}, \mathbf{v}\rangle = 0
\end{align}
```

Similar to {eq}`eq:54`, we have

```{math}
\begin{align*}
T^2 + \alpha T + \beta I
= \brk{T + \frac{\alpha}{2} I}^2 + \brk{\beta - \frac{\alpha^2}{4}} I
\end{align*}
```

Plugging into {eq}`eq:57`, we find

```{math}
\begin{align*}&\langle\brk{T + \frac{\alpha}{2} I}^2 \mathbf{v}, \mathbf{v}\rangle
+ \brk{\beta - \frac{\alpha^2}{4}}\langle\mathbf{v}, \mathbf{v}\rangle
= 0 \\\implies& \langle\brk{T + \frac{\alpha}{2} I}\mathbf{v}, \brk{T + \frac{\alpha}{2} I}^\ast\mathbf{v}\rangle
+ \brk{\beta - \frac{\alpha^2}{4}}\langle\mathbf{v}, \mathbf{v}\rangle
= 0 \\\implies& \langle\brk{T + \frac{\alpha}{2} I}\mathbf{v},
\brk{T^\ast + \overline{\brk{\frac{\alpha}{2}}} I^\ast}\mathbf{v}\rangle
+ \brk{\beta - \frac{\alpha^2}{4}}\langle\mathbf{v}, \mathbf{v}\rangle
= 0 \\\implies& \langle\brk{T + \frac{\alpha}{2} I}\mathbf{v}, \brk{T + \frac{\alpha}{2} I}\mathbf{v}\rangle
+ \brk{\beta - \frac{\alpha^2}{4}}\langle\mathbf{v}, \mathbf{v}\rangle
= 0
\end{align*}
```

where the last implication follows from the condition
that $T$ is self-adjoint.
Note that $\beta - \alpha^2 / 4 > 0$.
Therefore, we must have $\mathbf{v} = \mathbf{0}$.
This shows $T^2 + \alpha T + \beta I$ is indeed invertible.

````

Recall {prf:ref}`thm:2`, which says
any operator on a finite-dimension complex vector space
has an eigenvalue.
We have noted that this conclusion is not true in general
for a real vector space.
However, if the operator $T$ is self-adjoint
(of course, we must first define the inner product),
then as we will see in the
following lemma, $T$ is guaranteed to have an eigenvalue.


````{prf:lemma}
:label: lem:3

Let $V$ be a finite-dimensional inner product space.
If $T \in \mathcal{L}(V)$ is a self-adjoint operator,
then $T$ has an eigenvalue.

````

:::{note}

Note that we did not assume $V$ is over a real field
since this lemma clearly holds for complex vector space
by {prf:ref}`thm:2`.
Hence, this lemma only offers new information
for the real vector space.

:::

````{prf:proof}

It suffices to prove this lemma when $V$ is nontrivial
and $\FF = \R$.
Suppose $\dim V = n$.
Let $\mathbf{v}$ be a nonzero vector.
Then the list of vectors

```{math}
\begin{align*}(\mathbf{v}, T \mathbf{v}, \ldots, T^n \mathbf{v})
\end{align*}
```

is linearly dependent since it consists of $n+1$ vectors.
There exist real numbers $a_0, a_1, \ldots, a_n$ that
are not all zeros such that

```{math}
:label: eq:58
\begin{align}
a_0 \mathbf{v} + a_1 T \mathbf{v} + \cdots
+ a_n T^n \mathbf{v}
= \mathbf{0}\end{align}
```

Let $m$ be the largest integer such that $a_m \neq 0$.
Equation {eq}`eq:58` is reduced to

```{math}
:label: eq:59
\begin{align}
a_0 \mathbf{v} + a_1 T \mathbf{v} + \cdots
+ a_m T^m \mathbf{v}
= \mathbf{0}\end{align}
```

Define a polynomial

```{math}
:label: eq:60
\begin{align}
p(x) = a_0 + a_1 x + \cdots + a_m x^m
\end{align}
```

By {prf:ref}`thm:5`, $p(x)$ can be factorized as

```{math}
:label: eq:61
\begin{align}
p(x) = a_m (x - \lambda_1) \cdots(x - \lambda_k)
(x^2 + \alpha_1 x + \beta_1) \cdots(x^2 + \alpha_l x + \beta_l)
\end{align}
```

where $\alpha_j, \beta_j \in \R$ and satisfy $\alpha_j^2 < 4 \beta_j$.
Then applying the polynomial $p$ to the operator $T$,
by {eq}`eq:59` and {eq}`eq:60`, we find

```{math}
\begin{align*}
p(T) \mathbf{v} = \mathbf{0}\end{align*}
```

It then follows from {eq}`eq:61` that

```{math}
:label: eq:62
\begin{align}
a_m (T - \lambda_1 I) \cdots(T - \lambda_k I)
\underbrace{(T^2 + \alpha_1 T + \beta_1 I)
\cdots (T^2 + \alpha_l T + \beta_l I) \mathbf{v}}_{\mathbf{w}}
= \mathbf{0}\end{align}
```

By {prf:ref}`lem:2`, we know each
operator $T^2 + \alpha_j T + \beta_j I$ is invertible,
and hence $\mathbf{w} \neq \mathbf{0}$ since $\mathbf{v}$ is nonzero.
Dropping the nonzero scalar $a_m$, {eq}`eq:62` reduces to

```{math}
:label: eq:63
\begin{align}(T - \lambda_1 I) \cdots(T - \lambda_k I) \mathbf{w} = \mathbf{w}\end{align}
```

Assume $T$ does not have an eigenvalue, then each
operator $T - \lambda_j I$ is injective,
which further implies the left-hand side of {eq}`eq:63` is nonzero
since $\mathbf{w}$ is not and the product
of injective operators remains injective.
This leads to a contradiction.
Therefore, $T$ must have an eigenvalue.

````
