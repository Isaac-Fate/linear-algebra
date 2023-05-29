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
Operator $T \in \mathcal{L}(V)$ is said to be **normal** if
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
