# Orthogonal Projections

````{prf:definition}
:label: def:2

```{index} orthogonal complement
```

Let $U$ be a vector subspace of an inner product space $V$,
the **orthogonal complement**
of $U$, denoted by, $U^\perp$ is defined as the
vector subspace of $V$ consists of
all vectors in $V$ that are orthogonal to every vector in $U$.
Formally,

```{math}
\begin{align*}
U^\perp := \set{\mathbf{v} \in V}{\langle \mathbf{u}, \mathbf{v} \rangle \; \forall \mathbf{u} \in U}\end{align*}
```

````

In the definition above, we claim that $U^\perp$
is a vector subspace.
Now, we prove this briefly in the following.
Suppose $\mathbf{v}_1, \mathbf{v}_2 \in U^\perp$,
then for every $\mathbf{u} \in U$,
we have $\langle \mathbf{u}, \mathbf{v}_1 \rangle = \langle \mathbf{u}, \mathbf{v}_1 \rangle = 0$.
It follows that $\langle \mathbf{u}, \mathbf{v}_1 - \mathbf{v}_2 \rangle = 0$.
Hence, $\mathbf{v}_1 = \mathbf{v}_2 \in U^\perp$.
Now, suppose $\mathbf{v} \in U^\perp$.
We have $\langle \mathbf{u}, \mathbf{v} \rangle = 0 \; \forall \mathbf{u} \in U$.
For any scalar $a \in \FF$, it follows
that $\langle \mathbf{u}, a \mathbf{v} \rangle = a \langle \mathbf{u},  \mathbf{v} \rangle = 0$.
And hence, $a \mathbf{v} \in U^\perp$.
Therefore, we see that $U^\perp$ is indeed a vector subspace of $V$.

We also have the following simple observations:
- ➀ $V^\perp = \{\mathbf{0}\}$
- ➁ $\{\mathbf{0}\}^\perp = V$
- ➂ $U_1, U_2 \leq V, \; U_1 \leq U_2 \implies U_1^\perp \geq U_2^\perp$


In what follows, we shall again confine ourselves
to finite-dimensional vector spaces to investigate
several important results.


````{prf:theorem}
:label: thm:12

Let $V$ be a inner product space,
and $U$ a finite-dimensional subspace of $V$.
Then

```{math}
\begin{align*}
V = U \oplus U^\perp\end{align*}
```

````

:::{note}

Note that $V$ may have infinite dimension.
But its subspace $U$ is assumed finite-dimensional.

:::

````{prf:proof}

Suppose $U$ is not $\{\mathbf{0}\}$ or $V$.
Otherwise the conclusion is trivial.
By {prf:ref}`cor:5`,
there is an orthonormal basis $(\mathbf{e}_1, \ldots, \mathbf{e}_m)$
for $U$.
For any $\mathbf{v} \in V$, we can write

```{math}
:label: eq:34
\begin{align}\mathbf{v} = \underbrace{
\langle \mathbf{e}_1, \mathbf{v} \rangle \mathbf{e}_1
+ \langle \mathbf{e}_m, \mathbf{v} \rangle \mathbf{e}_m
}_{\mathbf{u}} + \underbrace{\mathbf{v}
- \langle \mathbf{e}_1, \mathbf{v} \rangle \mathbf{e}_1
- \cdots
- \langle \mathbf{e}_m, \mathbf{v} \rangle \mathbf{e}_m}_{\mathbf{w}}\end{align}
```

:::{note}

The interpretation of {eq}`eq:34` is that
we first choose a vector $\mathbf{u} \in U$ by

```{math}
\begin{align*}\mathbf{u} = \langle\mathbf{e}_1, \mathbf{v}\rangle\mathbf{e}_1
+ \langle\mathbf{e}_m, \mathbf{v}\rangle\mathbf{e}_m
\end{align*}
```

And then let $\mathbf{w} = \mathbf{v} - \mathbf{u}$.
The construction of $\mathbf{u}$ is very clever
since in this way, $\mathbf{w}$ is orthogonal to $\mathbf{u}$
as we will see later.

:::

Note that $\mathbf{w} \in U^\perp$
since

```{math}
\begin{align*}\langle\mathbf{e}_j, \mathbf{w}\rangle
= \langle\mathbf{e}_j, \mathbf{v}\rangle
- \sum_{k=1}^m \langle\mathbf{e}_j, \mathbf{v}\rangle\langle\mathbf{e}_j, \mathbf{e}_k \rangle
= 0
\quad\forall j = 1, \ldots, m
\end{align*}
```

Hence, {eq}`eq:34` implies that $V = U + U^\perp$.

We also need to show $V = U \oplus U^\perp$,
which can be proved by additionally showing
that $U \cap U^\perp = \{\mathbf{0}\}$.
Indeed, suppose $\mathbf{v} \in U \cap U^\perp$,
then

```{math}
\begin{align*}\langle\mathbf{v}, \mathbf{v}\rangle = 0
\end{align*}
```

where $\mathbf{v}$ in the first slot
can be regarded as a vector coming from $U$,
and the second $\mathbf{v}$
is treated as a vector in $U^\perp$.
This completes the proof.

````

If $V$ is finite-dimensional,
we can then extend the orthogonal basis
of $U$, $\mathcal{B}_1=(\mathbf{e}_1, \ldots, \mathbf{e}_m)$,
to a basis for $V$,

```{math}
\begin{align*}\mathcal{B} = (\mathbf{e}_1, \ldots, \mathbf{e}_m, \mathbf{f}_1, \ldots, \mathbf{f}_n)
\end{align*}
```

through the Gram-Schmidt process ({prf:ref}`cor:4`).
It is natural to guess that $\mathcal{B}_2=(\mathbf{f}_1, \ldots, \mathbf{f}_m)$
forms a basis for the orthogonal complement $U^\perp$.
The proof is left as an exercise ({ref}`Exercise 6.4<ex:2>`).


````{admonition} Exercise 6.4
:name: ex:2

Suppose $V$ is finite-dimensional
in the assumption of  {prf:ref}`thm:12`.
Show that $\mathcal{B}_2$
forms a basis for $U^\perp$.

````

````{admonition} Solution
:class: tip, dropdown

First, we show that $U^\perp$ is contained in
the span of $\mathcal{B}_2$.
Let $\mathbf{w} \in U^\perp$.
By definition we have

```{math}
:label: eq:32
\begin{align}\langle\mathbf{e}_j, \mathbf{w}\rangle = 0
\quad\forall j=1, \ldots, m
\end{align}
```

But $\mathbf{w}$ can be written as a linear combination
of vectors in $\mathcal{B}$
```{math}
\begin{align*}\mathbf{w} = a_1 \mathbf{e}_1 + \cdots
+ a_m \mathbf{e}_m + b_1 \mathbf{f}_1 + \cdots + b_n \mathbf{f}_n
\end{align*}
```

Expanding $\mathbf{w}$ in {eq}`eq:32`, we find

```{math}
\begin{align*}
0 = \sum_{k=1}^m a_k \langle\mathbf{e}_j, a_k \mathbf{e}_k \rangle
+ \sum_{k=1}^n b_k \langle\mathbf{e}_j, \mathbf{f}_k \rangle
= a_j \langle\mathbf{e}_j, \mathbf{e}_j \rangle
= a_j
\quad\forall j=1, \ldots, m
\end{align*}
```

This shows that $\mathbf{w}$ actually can represented
by a linear combination of vectors in $\mathcal{B}_2$.
Hence, $U^\perp \subseteq \Span \mathcal{B}_2$.

On the other hand, for any vector $\mathbf{w} \in \Span \mathcal{B}_2$,
clearly we have $\langle \mathbf{e}_j, \mathbf{w} \rangle = 0$
for each $j$.
Therefore, the span of $\mathcal{B}_2$ is also contained in $U^\perp$.

In summary, we have shown

```{math}
\begin{align*}
U^\perp = \Span\mathcal{B}_2
\end{align*}
```

Note that $\mathcal{B}_2$ is orthonormal,
which implies $\mathcal{B}_2$ is linearly independent.
Therefore, $\mathcal{B}_2$ is indeed a basis for $U^\perp$.

````

````{prf:corollary}
:label: cor:7

Let $V$ be an inner product space,
and $U$ a finite-dimensional vector subspace.
Then

```{math}
\begin{align*}
U = (U^\perp)^\perp\end{align*}
```

````

````{prf:proof}

We first show that $U \subseteq (U^\perp)^\perp$.
Let $\mathbf{u} \in U$
For any $\mathbf{w} \in U^\perp$,
by definition, we have

```{math}
\begin{align*}\langle\mathbf{u}, \mathbf{w}\rangle = 0
\end{align*}
```

Equivalently,

```{math}
\begin{align*}\langle\mathbf{w}, \mathbf{u}\rangle = 0
\quad\forall\mathbf{w}\in U^\perp\end{align*}
```

Therefore, $\mathbf{u} \in (U^\perp)^\perp$
and hence $U \subseteq (U^\perp)^\perp$.

:::{note}

In the proof of $U \subseteq (U^\perp)^\perp$,
we did not use the assumption that $U$ is finite-dimensional
nor {prf:ref}`thm:12`.
But we will need this theorem
in proving $U \supseteq (U^\perp)^\perp$.
Actually, it suffices to apply
the partial result of {prf:ref}`thm:12`
that $V = U + U^\perp$.

:::

We also need to show the other direction of inclusion.
That is, for $\mathbf{v} \in (U^\perp)^\perp$,
we need to show $\mathbf{v} \in U$.
By {prf:ref}`thm:12`, $\mathbf{v}$ can be written as

```{math}
\begin{align*}\mathbf{v} = \mathbf{u} + \mathbf{w}\end{align*}
```

for some $\mathbf{u} \in U$ and $\mathbf{w} \in U^\perp$.
Taking the inner product with $\mathbf{w}$ yields

```{math}
\begin{align*}
0
= \langle\mathbf{w}, \mathbf{v}\rangle
= \langle\mathbf{w}, \mathbf{u}\rangle
+ \langle\mathbf{w}, \mathbf{w}\rangle
= 0 + \langle\mathbf{w}, \mathbf{w}\rangle\end{align*}
```

It then follows that $\mathbf{w} = \mathbf{0}$
and hence $\mathbf{v} = \mathbf{u} \in U$, as desired.

````

Recall we have already defined what is a projection
in {prf:ref}`def:1`.
A linear operator $P$ is a projection if

```{math}
\begin{align*}
P^2 = P
\end{align*}
```

This definition is very general but it is also rather abstract.
Now, having the concepts of inner product space and orthogonal complement,
we can define a projection on an inner-product space with more intuitive
physical meanings.

Let $V$ be an inner product space, and $U$
a *finite-decomposition* subspace.
By {prf:ref}`thm:12`, we know that every $\mathbf{v} \in V$
can be uniquely written as

```{math}
\begin{align*}\mathbf{v} = \mathbf{u} + \mathbf{w}\end{align*}
```

where $\mathbf{u} \in U$ and $\mathbf{w} \in U^\perp$.
Then the projection $P_U$
that maps any vector in $V$ to the subspace $U$
can be simply defined by

```{math}
\begin{align*}
P_U \mathbf{v} = \mathbf{u}\end{align*}
```

Firstly, observe that it is well-defined since the
representation $\mathbf{v} = \mathbf{u} + \mathbf{w}$ is unique.
And it is indeed a projection since

```{math}
\begin{align*}
P^2_U \mathbf{v} = P_U (P_U \mathbf{v}) = P_U \mathbf{u} = \mathbf{u}
= P_U \mathbf{v}\end{align*}
```

The following are several more properties,
the proof of which is left as an exercise ({ref}`Exercise 6.5<ex:3>`).
- ➀ $\im P_U = U$
- ➁ $\ker P_U = U^\perp$
- ➂ $\mathbf{v} - P_U \mathbf{v} \in U^\perp \; \forall \mathbf{v} \in V$
- ➃ $\norm{P_U \mathbf{v}} \leq \norm{\mathbf{v}} \; \forall \mathbf{v} \in V$


````{admonition} Exercise 6.5
:name: ex:3

Prove the above properties.

````

````{admonition} Solution
:class: tip, dropdown

````

Moreover, suppose that $(\mathbf{e}_1, \ldots, \mathbf{e}_m)$ is an orthonormal
basis for $U$, then by {eq}`eq:34`, $P_U \mathbf{v}$ can be written as

```{math}
:label: eq:34
\begin{align}
P_U \mathbf{v} = \langle\mathbf{e}_1, \mathbf{v}\rangle\mathbf{e}_1
+ \cdots\langle\mathbf{e}_m, \mathbf{v}\rangle\mathbf{e}_m
\end{align}
```

By comparing the above equation {eq}`eq:34` with the
definition of projection on to a single vector, {eq}`eq:22`,
we immediately find the relation

```{math}
\begin{align*}
P_U \mathbf{v} = \proj_{\mathbf{e}_1}\mathbf{v}
+ \cdots + \proj_{\mathbf{e}_m}\mathbf{v}\end{align*}
```

Let $V$ be an inner product space, and $U$ a finite-dimensional subspace,
the problem of minimizing the distance between a
given vector $\mathbf{v} \in V$ and each $\mathbf{u} \in U$
occurs frequently in applications.
The solution is shown in the next theorem.


````{prf:theorem}
:label: thm:13

Let $V$ be an inner product space,
and $U$ a finite-dimensional subspace.
Then for each $\mathbf{v} \in V$, we have

```{math}
\begin{align*}
P_U \mathbf{v}
= \argmin_{\mathbf{u} \in U}\norm{\mathbf{v} - \mathbf{u}}\end{align*}
```

````

````{prf:proof}

Let $\mathbf{v}$ be fixed.
Because we have already know $P_U \mathbf{v} \in U$,
what is left to prove is the following inequality

```{math}
:label: eq:35
\begin{align}\norm{\mathbf{v} - P_U \mathbf{v}}\leq\norm{\mathbf{v} - \mathbf{u}}\quad\forall\mathbf{u}\in U
\end{align}
```

Note that

```{math}
\begin{align*}\mathbf{v} - \mathbf{u}
= \underbrace{\mathbf{v} - P_U \mathbf{v}}_{\in U^\perp}
+ \underbrace{P_U \mathbf{v} - \mathbf{u}}_{\in U}\end{align*}
```

By the Pythagorean Theorem ({prf:ref}`thm:9`),
we have

```{math}
\begin{align*}\norm{\mathbf{v} - \mathbf{u}}^2
= \norm{\mathbf{v} - P_U \mathbf{v}}^2
+ \norm{\mathbf{v} - \mathbf{u}}^2
\geq\norm{\mathbf{v} - P_U \mathbf{v}}^2
\end{align*}
```

Taking the square root on both sides yields {eq}`eq:35`.

````

The following examples show that
how {prf:ref}`thm:13` can be applied to
approximate a continuous function
using a polynomial.


````{prf:example}
:label: eg:2

Consider the vector space of all continuous real-valued
functions defined on $[-\pi, \pi]$, $C[-\pi, \pi]$.
Let the inner product of any pair of
functions $f$ and $g$ in $C[-\pi, \pi]$
be defined by

```{math}
\begin{align*}\langle f, g \rangle
= \int_{-\pi}^{\pi} f(x) g(x) \;\mathrm{d}x
\end{align*}
```

Suppose we want to approximate a target function $f(x)$
using a polynomial with degree no larger than $5$.
In other words, we want to find a polynomial $p(x)$
in the subspace $P_5(\R)$ such that the norm

```{math}
\begin{align*}\norm{f(x) - p(x)}\end{align*}
```

is minimized.

Then by {prf:ref}`thm:13` and {eq}`eq:34`,
the optimal polynomial should be

```{math}
:label: eq:36
\begin{align}
p(x) = \langle p_1, f \rangle p_1(x)
+ \cdots + \langle p_6, f \rangle p_6(x)
\end{align}
```

where $(p_1, \ldots, p_6)$ is an orthonormal basis for $P_5(\R)$.

:::{note}

Note that {prf:ref}`thm:13` is applicable here
because the subspace $P_5(\R)$ indeed
has finite dimension, namely $6$.

:::

To find such an orthonormal basis,
we can apply the Gram-Schmidt process to
the basis $(1, x, x^2, x^3, x^4, x^5)$.

Suppose the target function we want to approximate is $\sin x$,
then the polynomial calculated using {eq}`eq:36` is

```{math}
\begin{align*}
p(x) = 0.98786214 x - 0.15527141 x^3 + 0.00564312 x^5
\end{align*}
```

If the reader is familiar with calculus of mathematical analysis,
then one might suggest approximating $\sin x$ using
its Taylor expanding at $x=0$,

```{math}
\begin{align*}\hat{p}(x) = x - \frac{x^3}{3!} + \frac{x^5}{5!}\end{align*}
```
{numref}`fig:2` plots the graphs of the target function $\sin x$
along with the two polynomial approximations, $p(x)$ and $\hat{p}(x)$.
As we can see, the orthogonal projection is a better approximation
for it nearly overlaps with the target function.


```{figure} /figures/la-01.png
---
name: fig:2
---
Comparison of approximations using orthogonal projection and Taylor expansion.

```

````

````{prf:example}
:label: eg:3

````
