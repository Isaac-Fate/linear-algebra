# Subspaces
```{index} vector subspace
```

Let $U$ be a subset of the vector space $V$.
We say that $U$ is a  **vector subspace**  of $V$(or simply subspace of $V$)
if $U$ is also a vector space with the same addition and scalar multiplication
defined on $V$.

To check whether a given subset $U \subseteq V$,
we may simply check that if $U$ contains the zero vector
and if it is closed under
the addition and scalar multiplication.


````{prf:proposition} 

Let $U$ be a subset of $V$.
Then $U$ is a vector subspace of $V$ if and only if
1. $\mathbf{0} \in U$,
2. $\mathbf{u} + \mathbf{v} \in U$ for all $\mathbf{u}, \mathbf{v} \in U$, and
3. $a \mathbf{u} \in U$ for all $a \in \F$ and $\mathbf{u} \in U$.

````

By simple observations,
one may notice that the additive identity in the subspace $U$
is exactly the one in the superspace $V$
and $\mathbf{w}$ is the additive inverse of $\mathbf{u}$ in $U$ if and only if
it is also the additive inverse of $u$ in $V$.


````{prf:example}
$\{\mathbf{0}\}$ and $V$ are subspaces of $V$,
which are the simplest examples of vector spaces.

````

````{prf:example}
$\{(x, 0, 0) \mid x \in \F\}$ and $\{(x, y, 0) \mid x, y \in \F\}$
are subspaces of $\F^3$.
Specially, when $\F = \R$, this means that
the 1D $x$-axis line and the
2D $x$-$y$ plane are subspaces of
the 3D space.

In fact, all 1D lines and 2D planes that pass through the origin
are subspaces of the 3D space.

````