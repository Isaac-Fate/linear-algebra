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
Let

````
