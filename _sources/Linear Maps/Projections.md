# Projections

````{prf:definition}
:label: def:1

```{index} projection
```

Let $V$ be a vector space. We say a linear operator $P \in \mathcal{L}(V)$ is a **projection** if it satisfies

```{math}
\begin{align*}
P^2 = P
\end{align*}
```

````

````{prf:proposition}

Let $V$ be a finite-dimensional vector space, and $P \in \mathcal{L}(V)$ a projection. Suppose $U = \im P$ and $W = \ker P$. Then we have
- ➀ $V = U \oplus W$, and
- ➁ $P \mathbf{v} = \mathbf{u} \; \forall \mathbf{v} \in V$ provided that $\mathbf{v} = \mathbf{u} + \mathbf{w}$ where $\mathbf{u} \in U$ and $\mathbf{w} \in W$.


In particular, $P \mathbf{u} = \mathbf{u} \; \forall \mathbf{u} \in U$.

````

````{prf:proof}

TODO

````

````{prf:proposition}
:label: pro:4

Let $V$ be a finite-dimensional vector space. Suppose that $V = U \oplus W$. Let a linear operator $P \in \mathcal{L}(V)$ be defined by

```{math}
\begin{align*}
P \mathbf{v} = \mathbf{u}\quad\forall\mathbf{v}\in V
\end{align*}
```

where $\mathbf{v} = \mathbf{u} + \mathbf{w}$, $\mathbf{u} \in U$ and $\mathbf{w} \in W$. (Notice that $P$ is well-defined since each $\mathbf{v} \in V$ can be uniquely written as $\mathbf{v} = \mathbf{u} + \mathbf{w}$ where $\mathbf{u} \in U$ and $\mathbf{w} \in W$.) Then $P$ is in fact a projection. Moreover,

```{math}
\begin{align*}
U &= \im P & W &= \ker P
\end{align*}
```

````

````{prf:proof}

TODO

````

````{prf:proposition}
:label: pro:5

Suppose $V$ is a finite-dimensional vector space and $V = U \oplus W$. For each $\mathbf{v} \in V$, write $\mathbf{v} = \mathbf{u} + \mathbf{w}$ where $\mathbf{u} \in U$ and $\mathbf{w} \in W$. Let $P_U, P_W \in \mathcal{L}(V)$ be defined by

```{math}
\begin{align*}
P_U \mathbf{v}&= \mathbf{u}&
P_W \mathbf{v}&= \mathbf{w}\end{align*}
```
(We know from {prf:ref}`pro:4` that $P_U$ and $P_W$ are projections.) We have

```{math}
\begin{align*}
P_U + P_W = I
\end{align*}
```

````

````{prf:proof}

The conclusion of this proposition is evident since it is clear from the definition that

```{math}
\begin{align*}\mathbf{v} = \mathbf{u} + \mathbf{w}
= P_U(\mathbf{v}) + P_W(\mathbf{v})
\end{align*}
```

for each $\mathbf{v} \in V$ with $\mathbf{v} = \mathbf{u} + \mathbf{w}$ where $\mathbf{u} \in U$ and $\mathbf{w} \in W$.

````
