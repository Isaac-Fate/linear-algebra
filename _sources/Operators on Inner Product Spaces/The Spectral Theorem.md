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
and hence $\restr{T}{U}$ is a normal operator on $U$
by {prf:ref}`pro:13`.
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

````{prf:theorem} Real Spectral Theorem
:label: thm:17

Let $V$ be a finite-dimensional real inner product space,
and $T \in \mathcal{L}(V)$.
Then there exists an orthonormal basis $\mathcal{B}$ for $V$
consisting of eigenvectors of $T$
if and only if $T$ is self-adjoint.

````

````{prf:proof}

We first show the necessity.
By the given condition $[T]_{\mathcal{B}}$
is a real diagonal matrix.
Since $\mathcal{B}$ is orthonormal,
the matrix representation of $T^\ast$ is the Hermitian transpose,
and hence

```{math}
\begin{align*}[T^\ast]_{\mathcal{B}} = [T]_{\mathcal{B}}^H
= [T]_{\mathcal{B}}^\top
= [T]_{\mathcal{B}}\end{align*}
```

Therefore, $T$ is self-adjoint.

Next, we shall prove the sufficiency by mathematical induction.
The induction hypothesis is that this theorem holds for every
such vector space $V$ with dimension less than or equal to $n$
where $n \in \N^\ast$.

**Base case:** If $\dim V = 1$,
then the conclusion is trivial since any unit vector
is an eigenvector of $T$.

**Inductive step:** Suppose the hypothesis holds
for $n = k$, then we need to show that it also holds
when $n = k+1$.
Note that it suffices to show that the theorem holds
for $\dim V = k+1$.
By {prf:ref}`lem:3`, $T$ has at least one eigenvalue $\lambda$.
Let

```{math}
\begin{align*}
U = \im(T - \lambda I)
\end{align*}
```

Note that this subspace $U$ is invariant under $T$ since
for any $\mathbf{u} \in U$, we have

```{math}
\begin{align*}
T \mathbf{u} = T (T - \lambda I) \mathbf{v}
= (T - \lambda I) T \mathbf{v}\in U
\end{align*}
```

Hence, $\restr{T}{U}$ is a linear operator on $U$.
Moreover, we claim that $\restr{T}{U}$ is self-adjoint.
To see this, we only need to show $U$
is also invariant under $T^\ast$.
By {prf:ref}`thm:12`, we can write

```{math}
\begin{align*}
V = U \oplus U^\perp\end{align*}
```

Then, for any $\mathbf{u} \in U$, we have

```{math}
\begin{align*}\langle T^\ast\mathbf{u}, \mathbf{w}\rangle
= \langle T \mathbf{u}, \mathbf{w}\rangle
= 0
\quad\forall\mathbf{w}\in U^\perp\end{align*}
```

Therefore, $T^\ast \mathbf{u} \in U$,
and hence $U$ is $T^\ast$-invariant,
which implies

```{math}
\begin{align*}(\restr{T}{U})^\ast = \restr{T^\ast}{U}
= \restr{T}{U}\end{align*}
```

Next, by applying the induction hypothesis on space $U$
and operator $\restr{T}{U}$,
we conclude that there exists a basis $\mathcal{B}^\prime$
for $U$ such that

```{math}
\begin{align*}[\restr{T}{U}]_{\mathcal{B}^\prime} =
\begin{bmatrix}
\lambda_1 & & \\
& \ddots & \\
& & \lambda_m
\end{bmatrix}\end{align*}
```

where $m = \dim U$.
Then, we may use {prf:ref}`cor:4` to
extend $\mathcal{B}^\prime$ to an orthonormal
basis $\mathcal{B}^{\prime\prime}$ for $V$.
The matrix representation of $T$
w.r.t. $\mathcal{B}^{\prime\prime}$ is

```{math}
\begin{align*}[T]_{\mathcal{B}^{\prime\prime}} =
\begin{bmatrix}
\lambda_1 & &  & \ast & \cdots & \ast \\
& \ddots & & \vdots & \ddots & \vdots \\
& & \lambda_m & \ast & \cdots & \ast \\
& & & \mu_1 & \cdots & \ast \\
& & &       & \ddots & \vdots \\
& & & & & \mu_k
\end{bmatrix}\end{align*}
```

Because $\mathcal{B}^{\prime\prime}$ is orthonormal,

```{math}
\begin{align*}[T^\ast]_{\mathcal{B}{\prime\prime}}
= [T]^H_{\mathcal{B}{\prime\prime}}
= [T]^\top_{\mathcal{B}{\prime\prime}}\end{align*}
```

But $[T]_{\mathcal{B}{\prime\prime}} = [T^\ast]_{\mathcal{B}{\prime\prime}}$
since $T$ is self-adjoint.
Therefore, $[T]_{\mathcal{B}{\prime\prime}}$ must be diagonal.
This completes the proof.

````

Let operator $T$ be self-adjoint,
or more generally, normal when the underlying field $\FF$ is complex.
In such cases, the corollary presented below offers
a highly desirable decomposition of the vector space $V$
into subspaces that are invariant under $T$.
Specifically, when restricted on each $\ker (T - \lambda_j I)$,
the operator $T$ acts as a scalar multiplication by
the eigenvalue $\lambda_j$.


````{prf:corollary}
:label: cor:11

Let $V$ a finite-dimensional inner product space.
Suppose $T \in \mathcal{L}(V)$ is a self-adjoint operator,
or more generally, a normal operator when $\FF = \C$,
and suppose all distinct eigenvalues of $T$
consist of $\lambda_1, \ldots, \lambda_m$.
Then $V$ can be decomposed as

```{math}
\begin{align*}
V = \ker(T - \lambda_1 I) \oplus\cdots\oplus\ker(T - \lambda_m I)
\end{align*}
```

Moreover, any two vectors taking from different subspaces are orthogonal
to each other.
That is,

```{math}
\begin{align*}\mathbf{u}\in\ker(T - \lambda_i I),
\mathbf{v}\in\ker(T - \lambda_j I),
i \neq j
\implies\langle\mathbf{u}, \mathbf{v}\rangle = 0
\end{align*}
```

````

````{prf:proof}

The decomposition of $V$ can be proved
by applying {prf:ref}`thm:15`, {prf:ref}`thm:17`
and {prf:ref}`pro:12`.
And orthogonality can be proved by {prf:ref}`cor:10`.

````
