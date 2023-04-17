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

Let $V$ be a finite-dimensional inner product space,
and $U$ a subspace of $V$.
Then

```{math}
\begin{align*}
V = U \oplus U^\perp\end{align*}
```

````

````{prf:proof}

Suppose $U$ is not $\{\mathbf{0}\}$ or $V$.
Otherwise the conclusion is trivial.
By {prf:ref}`cor:2`,
there is an orthonormal basis $\mathcal{B}_1=(\mathbf{e}_1, \ldots, \mathbf{e}_m)$
for $U$.
We can then extend this basis to an orthonormal basis for
the entire vector space $V$ by {prf:ref}`cor:1`.
Suppose the extended list of vectors is

```{math}
\begin{align*}\mathcal{B} = (\mathbf{e}_1, \ldots, \mathbf{e}_m, \mathbf{f}_1, \ldots, \mathbf{f}_n)
\end{align*}
```

Let $\mathcal{B}_2$ denote the newly added vectors,
i.e., $\mathcal{B}_2 = (\mathbf{f}_1, \ldots, \mathbf{f}_n)$.
We want to show that $\mathcal{B}_2$ is exactly
the basis for $U^\perp$.

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
which implies $\mathcal{B}$ is linearly independent.
Therefore, $\mathcal{B}$ is indeed a basis for $U^\perp$.

Then, it is clear that $V = U + U^\perp$
since for any vector $\mathbf{v} \in V$,
it can be written as

```{math}
\begin{align*}\mathbf{v} = \underbrace{a_1 \mathbf{e}_1 + \cdots + a_m \mathbf{e}_m}_{\in U}
+ \underbrace{b_1 \mathbf{f}_1 + \cdots + b_n \mathbf{f}_n}_{\in U^\perp}\end{align*}
```

Finally, we finish the proof by showing

```{math}
:label: eq:33
\begin{align}\mathbf{0} = \mathbf{u} + \mathbf{w}, \;\mathbf{u}\in U, \;\mathbf{w}\in U^\perp\implies\mathbf{u} = \mathbf{0}, \;\mathbf{w} = \mathbf{0}\end{align}
```

We have

```{math}
\begin{align*}
0 = \langle\mathbf{0}, \mathbf{w}\rangle
= \langle\mathbf{u}, \mathbf{w}\rangle
+ \langle\mathbf{w}, \mathbf{w}\rangle
= 0 + \langle\mathbf{w}, \mathbf{w}\rangle\end{align*}
```

It follows that $\mathbf{w} = \mathbf{0}$.
Plugging $\mathbf{w} = \mathbf{0}$
into $\mathbf{0} = \mathbf{u}+ \mathbf{w}$,
we find $\mathbf{u} = \mathbf{0}$.
Therefore, {eq}`eq:33` holds and hence $V = U \oplus U^\perp$.

````

Actually, we have a simpler proof of the theorem above.
(See {ref}`Exercise 6.4<ex:2>`, which is the
proof given in {cite}`axlerLinearAlgebraDone1997`.)
But the reason why I presented a constructive and completed proof
here is that
I would like to address that
the basis of $U^\perp$ can be found by the Gram-Schmidt Process.


````{admonition} Exercise 6.4
:name: ex:2

Come up with a simpler proof of {prf:ref}`thm:12`
by considering

```{math}
\begin{align*}\mathbf{v} = \underbrace{
a_1 \mathbf{e}_1 + a_m \mathbf{e}_m
}_{\mathbf{u}} + \underbrace{\mathbf{v} - a_1 \mathbf{e}_1 - \cdots - a_m \mathbf{e}_m}_{\mathbf{w}}\end{align*}
```

where $\mathbf{v} \in V$ and $(\mathbf{e}_1, \ldots, \mathbf{e}_m)$
is an orthonormal basis for $U$.

````
