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
\begin{align}\langle T \mathbf{v}, \mathbf{v}\rangle = 0
\quad\forall\mathbf{v}\in V
\end{align}
```

````

````{prf:proof}

For any vector $\mathbf{v} \in V$, we have

```{math}
:label: eq:48
\begin{align}\langle T \mathbf{v}, \mathbf{v}\rangle
- \overline{\langle T \mathbf{v}, \mathbf{v} \rangle}&= \langle T \mathbf{v}, \mathbf{v}\rangle
- \langle\mathbf{v}, T \mathbf{v}\rangle\nonumber\\&= \langle T^\ast\mathbf{v}, \mathbf{v}\rangle\nonumber\\&= \langle(T - T^\ast) \mathbf{v}, \mathbf{v}\rangle\end{align}
```

If {eq}`eq:47` holds, then {eq}`eq:48` yields that

```{math}
\begin{align*}\langle(T - T^\ast) \mathbf{v}, \mathbf{v}\rangle\quad\forall\mathbf{v}\in V
\end{align*}
```

It then follows from {prf:ref}`pro:8`
that $T - T^\ast$ is the zero map,
equivalently, $T$ is self-adjoint.

Conversely, if $T$ is self-adjoint, then {eq}`eq:48`
implies {eq}`eq:47`.

````
