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
By {prf:ref}`cor:2`,
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

through the Gram-Schmidt process ({prf:ref}`cor:1`).
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
