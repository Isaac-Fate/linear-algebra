# Self-Adjoint and Normal Operators

````{prf:proposition}
:label: pro:8

Let $V$ be a complex inner product space.
If $T \in \mathcal{L}(V)$ is an operator such that

```{math}
:label: eq:46
\begin{align}\langle T \mathbf{v}, \mathbf{v}\rangle = 0
\quad\forall\mathbf{v}\in V
\end{align}
```

then $T = 0$, i.e., $T$ is the zero map.

````

:::{note}

Note that $V$ can have infinite dimension.
The proof of this proposition is rather constructive.

:::

````{prf:proof}

To prove $T$ is the zero map, we want to show

```{math}
:label: eq:45
\begin{align}\langle T \mathbf{u}, \mathbf{w}\rangle = 0
\quad\forall\mathbf{u}, \mathbf{w}\in V
\end{align}
```

One can verify that the following
identity holds through brute force calculation
of the right-hand side:

```{math}
\begin{multline*}\langle T \mathbf{u}, \mathbf{w}\rangle
= \frac{1}{4}\brk{
\langle T (\mathbf{u} + \mathbf{w}),
\mathbf{u} + \mathbf{w} \rangle
-\langle T (\mathbf{u} - \mathbf{w}),
\mathbf{u} - \mathbf{w} \rangle
}\\
+ \frac{i}{4}\brk{
\langle T (\mathbf{u} + i\mathbf{w}),
\mathbf{u} + i\mathbf{w} \rangle
-\langle T (\mathbf{u} - i\mathbf{w}),
\mathbf{u} - i \mathbf{w} \rangle
}\end{multline*}
```

Therefore, we see that {eq}`eq:45` indeed holds.

````

It should be emphasized that {prf:ref}`pro:8` does not hold
in general if $V$ is over a *real* field.
The following is a typical example.


````{prf:example}
:label: eg:6

Let $V$ be a $2$-dimensional real inner product space.
Suppose $\mathcal{B} = (\mathbf{e}_1, \mathbf{e}_2)$
is an orthonormal basis.
Let operator $T$ be defined by

```{math}
\begin{align*}
T \mathbf{e}_1 = \mathbf{e}_2
\quad\text{and}\quad
T \mathbf{e}_2 = -\mathbf{e}_1
\end{align*}
```

For an arbitrary
vector $\mathbf{v} = a\mathbf{e}_1 + b\mathbf{e}_2$,
we have

```{math}
\begin{align*}\langle T \mathbf{v}, \mathbf{v}\rangle&= \langle T (a\mathbf{e}_1 + b\mathbf{e}_2),
a\mathbf{e}_1 + b \mathbf{e}_2 \rangle\\&= a^2 \langle T \mathbf{e}_1, \mathbf{e}_1 \rangle
+ ab \langle T \mathbf{e}_1, \mathbf{e}_2 \rangle
+ ba \langle T \mathbf{e}_2, \mathbf{e}_1 \rangle
+ b^2 \langle T \mathbf{e}_2, \mathbf{e}_2 \rangle\\&= a^2 \cdot 0 + ab \cdot 1 + ba \cdot(-1) + b^2 \cdot 0 \\&= 0
\end{align*}
```

Note that {eq}`eq:46` is satisfied.
But $T$ is clearly not the zero map.

More specifically, if we take $V = \R^2$
and let $\mathcal{B}$ be the standard basis,
then the matrix representation of this $T$
is

```{math}
\begin{align*}[T] = \begin{bmatrix}
0 & -1\\
1 & 0
\end{bmatrix}\end{align*}
```

Geometrically, it rotates a vector in $\R^2$$90$ degrees anticlockwise.

````

````{prf:corollary}
:label: cor:8

Let $V$ be a finite-dimensional complex inner product space.
Then operator $T$ is self-adjoint if and only if

```{math}
:label: eq:47
\begin{align}\langle T \mathbf{v}, \mathbf{v}\rangle\in\R\quad\forall\mathbf{v}\in V
\end{align}
```

````

:::{note}

Of course, this corollary does
not hold for real inner product space either.
Using the same example ({prf:ref}`eg:6`),
we see that {eq}`eq:47` is satisfied
and yet $T$ is not self-adjoint
since the standard basis $\mathcal{B}$ is orthonormal
and $[T]_\mathcal{B} \neq[T]^\top_\mathcal{B}$.

:::

````{prf:proof}

For any vector $\mathbf{v} \in V$, we have

```{math}
:label: eq:48
\begin{align}
0 = \langle T \mathbf{v}, \mathbf{v}\rangle
- \overline{\langle T \mathbf{v}, \mathbf{v} \rangle}&= \langle T \mathbf{v}, \mathbf{v}\rangle
- \langle\mathbf{v}, T \mathbf{v}\rangle\nonumber\\&= \langle T^\ast\mathbf{v}, \mathbf{v}\rangle\nonumber\\&= \langle(T - T^\ast) \mathbf{v}, \mathbf{v}\rangle\end{align}
```

If {eq}`eq:47` holds, then {eq}`eq:48` yields that

```{math}
\begin{align*}\langle(T - T^\ast) \mathbf{v}, \mathbf{v}\rangle = 0
\quad\forall\mathbf{v}\in V
\end{align*}
```

It then follows from {prf:ref}`pro:8`
that $T - T^\ast$ is the zero map,
equivalently, $T$ is self-adjoint.

Conversely, if $T$ is self-adjoint, then {eq}`eq:48`
implies {eq}`eq:47`.

````

We have already seen satisfying {eq}`eq:46` does not imply
that $T = 0$ in finite-dimensional real inner product space.
However, if we further require that $T$ is self-adjoint,
then $T$ must be the zero map, as stated in the next proposition.


````{prf:proposition}
:label: pro:9

Let $V$ be a finite-dimensional inner product space.
If $T$ is a self-adjoint operator on $V$ satisfying

```{math}
\begin{align*}\langle T \mathbf{v}, \mathbf{v}\rangle = 0
\quad\forall\mathbf{v}\in V
\end{align*}
```

then $T = 0$.

````

:::{note}

Note that we have already proved this proposition
in {prf:ref}`pro:8`
if $V$ is over a complex field,
without even assuming $V$ is finite-dimensional
and $T$ is self-adjoint.
Therefore, this proposition especially contributes to
the case where $V$ is over a real field.

:::

````{prf:proof}

As we have already noted, we only need to prove this proposition
concerning the case where $V$ is over a real field.

We want to show

```{math}
:label: eq:50
\begin{align}\langle T \mathbf{u}, \mathbf{w}\rangle = 0
\quad\forall\mathbf{u}, \mathbf{w}\in V
\end{align}
```

Consider the inner product $\langle T(\mathbf{u} + \mathbf{w}), \mathbf{u} + \mathbf{w} \rangle$.
We have

```{math}
:label: eq:49
\begin{multline}
0 = \langle T(\mathbf{u} + \mathbf{w}), \mathbf{u} + \mathbf{w}\rangle
= \langle T\mathbf{u}, \mathbf{u}\rangle
+ \langle T\mathbf{u}, \mathbf{w}\rangle
+ \langle T\mathbf{w}, \mathbf{u}\rangle
+ \langle T\mathbf{w}, \mathbf{w}\rangle\\
= \langle T\mathbf{u}, \mathbf{w}\rangle
+ \langle T\mathbf{w}, \mathbf{u}\rangle\end{multline}
```

Since $T$ is self-adjoint, we have

```{math}
\begin{align*}\langle T \mathbf{w}, \mathbf{u}\rangle
= \langle\mathbf{w}, T^\ast\mathbf{u}\rangle
= \langle\mathbf{w}, T \mathbf{u}\rangle
= \langle T \mathbf{u}, \mathbf{w}\rangle\end{align*}
```

where the last equality follows because
we are now considering the real field.
Therefore, the right-hand side of {eq}`eq:49`
reduces to $2 \langle T\mathbf{u}, \mathbf{w} \rangle$
and hence {eq}`eq:50` follows.

````

````{prf:definition}
:label: def:5

```{index} normal operator
```

Let $V$ be a finite-dimensional inner product space.
Operator $T \in \mathcal{L}(V)$ is said to
be **normal** if
it commutes with its adjoint.
Formally,

```{math}
\begin{align*}
T T^\ast = T^\ast T
\end{align*}
```

````

Clearly, a self-adjoint operator is of course normal.
However, the converse is not true.
See the following exercise ({ref}`Exercise 7.1<ex:4>`) for an example
of a normal operator not being self-adjoint.


````{admonition} Exercise 7.1
:name: ex:4

We have seen that the operator $T$ defined
in {prf:ref}`eg:6` is not self-adjoint.
Show that it is however a normal operator.

````

````{admonition} Solution
:class: tip, dropdown

Through a few steps of computation, we find that the adjoint $T^\ast$
is given by

```{math}
\begin{align*}
T^\ast\mathbf{e}_1 = -\mathbf{e}_2
\quad\text{and}\quad
T^\ast\mathbf{e}_2 = \mathbf{e}_1
\end{align*}
```

It then follows that

```{math}
\begin{align*}\begin{cases}
T T^\ast \mathbf{e}_1 = -T \mathbf{e}_2 = \mathbf{e}_1 \\
T T^\ast \mathbf{e}_2 = T \mathbf{e}_1 = \mathbf{e}_2
\end{cases}\quad\text{and}\quad\begin{cases}
T^\ast T \mathbf{e}_1 = T^\ast \mathbf{e}_2 = \mathbf{e}_1 \\
T^\ast T \mathbf{e}_2 = -T^\ast \mathbf{e}_1 = \mathbf{e}_2
\end{cases}\end{align*}
```

Therefore, in this case, $T T^\ast = T^\ast T$(and in fact equating the identity),
and hence $T$ is a normal operator.

````

The following proposition provides a simple characterization
of all normal operators.


````{prf:proposition}
:label: pro:10

Let $V$ be a finite-dimensional inner product space.
Operator $T \in \mathcal{L}(V)$ is normal
if and only if

```{math}
\begin{align*}\norm{T \mathbf{v}} = \norm{T^\ast \mathbf{v}}\quad\forall\mathbf{v}\in V
\end{align*}
```

````

````{prf:proof}

For any $\mathbf{v} \in V$, we have

```{math}
\begin{align*}\norm{T \mathbf{v}}^2 - \norm{T^\ast \mathbf{v}}^2
&= \langle T \mathbf{v}, T \mathbf{v}\rangle
- \langle T^\ast\mathbf{v}, T^\ast\mathbf{v}\rangle\\&= \langle\mathbf{v}, T^\ast T \mathbf{v}\rangle
- \langle\mathbf{v}, T T^\ast\mathbf{v}\rangle\\&= \langle\mathbf{v}, (T^\ast T - T T^\ast) \mathbf{v}\rangle\end{align*}
```

Therefore,

```{math}
\begin{align*}\norm{T \mathbf{v}} = \norm{T^\ast \mathbf{v}}\quad\forall\mathbf{v}\in V
&\iff\langle\mathbf{v}, (T^\ast T - T T^\ast) \mathbf{v}\rangle = 0
\quad\forall\mathbf{v}\in V \\&\iff T^\ast T - T T^\ast = 0
\end{align*}
```

where the last step follows from {prf:ref}`pro:9`
and the fact that $T^\ast T - T T^\ast$ is self-adjoint.
This completes the proof.

````

We have seen in {prf:ref}`pro:11` that
the set of all eigenvalues of $T$
are exactly the set of the conjugates of the eigenvalue of $T^\ast$.
But the eigenvectors may be different.
However, if we impose that $T$ is normal,
then, as we will see in the following corollary,
the eigenvectors of $T$ and $T^\ast$ are the same.


````{prf:corollary}
:label: cor:9

Suppose $T$ is a normal operator on a
finite-dimensional inner product space, $V$
If $\mathbf{v}$ is an eigenvector of $T$ with eigenvalue $\lambda$,
then $\mathbf{v}$ is also an eigenvalue of $T^\ast$
with eigenvalue $\bar{\lambda}$.

````

````{prf:proof}

Consider the linear map $T - \lambda I$.
Through straightforward computation,
one may verify by definition
that $T - \lambda I$ is also a normal operator
since $T$ is normal.
Because $\mathbf{v}$ is an eigenvector of $T$ with eigenvalue $\lambda$,
we have

```{math}
\begin{align*}(T - \lambda I)\mathbf{v} = \mathbf{0}\end{align*}
```

It then follows from {prf:ref}`pro:10`
that

```{math}
\begin{align*}\norm{(T - \lambda I)^\ast \mathbf{v}}
= \norm{(T - \lambda I)\mathbf{v}}
= 0
\end{align*}
```

Therefore, $(T - \lambda I)^\ast \mathbf{v} = (T^\ast - \bar{\lambda} I) \mathbf{v}$ is a zero vector.
This completes the proof.

````

````{prf:corollary}
:label: cor:10

Let $V$ be a finite-dimensional inner product space.
If $T \in \mathcal{L}(V)$ is a normal operator,
then eigenvectors of $T$ corresponding to distinct
eigenvalues are orthogonal.
Formally, suppose $\mathbf{v}_1$ and $\mathbf{v}_2$
are eigenvectors of $T$ corresponding to
eigenvalues $\lambda_1$ and $\lambda_2$, respectively,
and $\lambda_1 \neq \lambda_2$.
Then $\langle \mathbf{v}_1, \mathbf{v}_2 \rangle = 0$.

````

````{prf:proof}

Consider the inner product $\langle \mathbf{v}_1, T \mathbf{v}_2 \rangle$.
We have

```{math}
:label: eq:51
\begin{align}\langle\mathbf{v}_1, T \mathbf{v}_2 \rangle
= \langle\mathbf{v}_1, \lambda_2 \mathbf{v}_2 \rangle
= \lambda_2 \langle\mathbf{v}_1,  \mathbf{v}_2 \rangle\end{align}
```

On the other hand, we also have

```{math}
:label: eq:52
\begin{align}\langle\mathbf{v}_1, T \mathbf{v}_2 \rangle
= \langle T^\ast\mathbf{v}_1, \mathbf{v}_2 \rangle
= \langle\bar{\lambda}_1 \mathbf{v}_1, \mathbf{v}_2 \rangle
= \lambda_1 \langle\mathbf{v}_1, \mathbf{v}_2 \rangle\end{align}
```

where the second last equality follows from {prf:ref}`cor:9`.
Taking the difference on the sides of {eq}`eq:51` and {eq}`eq:52`
yields

```{math}
\begin{align*}(\lambda_1 - \lambda_2) \langle\mathbf{v}_1, \mathbf{v}_2 \rangle
= 0
\end{align*}
```

Since $\lambda_1 \neq \lambda_2$, it then follows
that $\langle \mathbf{v}_1, \mathbf{v}_2 \rangle = 0$.

````

The following proposition lists
several useful properties about
a normal operator $T$
if we can find a $T$-invariant subspace $U$.


````{prf:proposition}
:label: pro:13

Let $V$ be a finite-dimensional inner product space,
and $T \in \mathcal{L}(V)$ a normal operator.
If subspace $U$ is invariant under $T$,
then we have the following:
- ➀ $U^\perp$ is invariant under $T$.
- ➁ $U$ is invariant under $T^\ast$.
- ➂ $(\restr{T}{U})^\ast = \restr{T^\ast}{U}$.
- ➃ $(\restr{T}{U^\perp})^\ast = \restr{T^\ast}{U^\perp}$.
- ➄ $\restr{T}{U}$ is a normal operator on $U$.
- ➅ $\restr{T}{U^\perp}$ is a normal operator on $U^\perp$.


````

````{prf:proof}

We prove each statement in the following.
Once the first statement is proved,
all the others will follow immediately.

**Proof of 1:**
Let $(\mathbf{e}_1, \ldots, \mathbf{e}_m)$ be an orthonormal
basis of $U$.
We then apply {prf:ref}`cor:4`
to extend this to an orthonormal basis for $V$
by adding vectors $(\mathbf{f}_1, \ldots, \mathbf{f}_n)$.
It is clear that $(\mathbf{f}_1, \ldots, \mathbf{f}_n)$
forms an orthonormal basis for $U^\perp$({ref}`Exercise 6.4<ex:2>`).
Let

```{math}
\begin{align*}\mathcal{B}
= (\mathbf{e}_1, \ldots, \mathbf{e}_m,
\mathbf{f}_1, \ldots, \mathbf{f}_n)
\end{align*}
```

Since $U$ is invariant under $T$,
the matrix representation $[T]_{\mathcal{B}}$ has the form:

```{math}
:label: eq:68
\begin{align}[T]_{\mathcal{B}} =
\begin{bmatrix}
A & B \\
0 & C
\end{bmatrix}\end{align}
```

where $A$ is an $m$-by-$m$ matrix
corresponding to the basis of $U$.
(And $C$ is $n$-by-$n$ of course.)
Because $\mathcal{B}$ is orthonormal, $[T^\ast]_{\mathcal{B}}$
has the form

```{math}
:label: eq:67
\begin{align}[T^\ast]_{\mathcal{B}} = [T]^H_{\mathcal{B}} =
\begin{bmatrix}
A^H & 0 \\
B^H & C^H
\end{bmatrix}\end{align}
```

By referring to {eq}`eq:68`, we note that

```{math}
:label: eq:65
\begin{align}\sum_{j=1}^m \norm{T \mathbf{e}_j}^2
= \sum_{i,j}\abs{a_{i,j}}^2
\end{align}
```

where $a_{i,j}$ is the $(i,j)$-th entry of $A$.
In words, the right-hand side of {eq}`eq:65`
is the sum of squares of modulus of all entries of $A$.

On the other hand,
referring to {eq}`eq:67`,
we have

```{math}
:label: eq:66
\begin{align}\sum_{j=1}^m \norm{T^\ast \mathbf{e}_j}^2
= \sum_{i,j}\abs{a_{i,j}}^2
+ \sum_{i,j}\abs{b_{i,j}}^2
\end{align}
```

where $a_{i,j}$ and $b_{i,j}$
are entries of $A$ and $B$, respectively.

Because $T$ is a normal operator, by {prf:ref}`pro:10`,
the left-hand sides of {eq}`eq:65` and {eq}`eq:66`
are equal to each other.
Then by equating the right-hand sides of {eq}`eq:65`
and {eq}`eq:66`, we obtain

```{math}
\begin{align*}
b_{i,j} = 0
\quad\forall i = 1, \ldots, m \;\forall j = 1, \ldots, n
\end{align*}
```

That is, $B$ is a zero matrix.
Therefore,

```{math}
\begin{align*}[T]_{\mathcal{B}} =
\begin{bmatrix}
A & 0 \\
0 & C
\end{bmatrix}\end{align*}
```

and hence $U^\perp$ is indeed invariant under $T$.

**Proof of 2:**
Note that $V = U \oplus U^\perp$.
Let $\mathbf{u} \in U$,
we need to show that $T^\ast \mathbf{u} \in U$.
For any $\mathbf{w} \in U^\perp$, we have

```{math}
\begin{align*}\langle T^\ast\mathbf{u}, \mathbf{w}\rangle
= \langle\mathbf{u}, T \mathbf{w}\rangle
= 0
\end{align*}
```

where the last equality holds
because $T \mathbf{w} \in U^\perp$ for we have already
shown $U^\perp$ is invariant under $T$.
Therefore, $T^\ast \mathbf{u} \in (U^\perp)^\perp = U$.

````
