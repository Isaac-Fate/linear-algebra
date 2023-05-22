# Linear Functionals and Adjoints

````{prf:definition}
:label: def:3

A linear functional, $\varphi$, on $V$ is a linear map
from $V$ to $\FF$,

```{math}
\begin{align*}\varphi: V \to\FF\end{align*}
```

````

Recall that
the inner product $\langle \cdot, \cdot \rangle: V \times V \to \FF$
is a bilinear form, and it is linear in the second slot.
If we hold the vector $\mathbf{u}$ in the first slot
of $\langle \mathbf{u}, \mathbf{v} \rangle$ fixed,
then this inner product can be regarded as a linear map from $V$ to $\FF$,
which is a linear functional.
In fact, as we will see in the next theorem,
any linear functional on $V$ can be characterized in this form.



````{prf:theorem}
:label: thm:14

If $\varphi$ is a linear functional on
a finite-dimensional inner product space $V$,
then there exits a unique vector $\mathbf{u} \in V$
such that

```{math}
\begin{align*}\varphi(\mathbf{v})
= \langle\mathbf{u}, \mathbf{v}\rangle\quad\forall\mathbf{v}\in V
\end{align*}
```

````

:::{note}

Note that the inner product space is assumed to have finite dimension.

:::

````{prf:proof}

We first show the existence of such $\mathbf{u}$.
Suppose that $(\mathbf{e}_1, \ldots, \mathbf{e}_n)$
is an orthogonal basis of $V$.
Let $\mathbf{v} \in V$ be arbitrary.
We can write

```{math}
\begin{align*}\mathbf{v} = a_1 \mathbf{e}_1 + \cdots a_n \mathbf{e}_n
\end{align*}
```

Let $\mathbf{u}$ be given by

```{math}
\begin{align*}\mathbf{u} = \overline{\varphi(\mathbf{e}_1)}\mathbf{e}_1
+ \cdots + \overline{\varphi(\mathbf{e}_n)}\mathbf{e}_n
\end{align*}
```

We have

```{math}
:label: eq:37
\begin{align}\langle\mathbf{u}, \mathbf{v}\rangle&= \langle\sum_{i=1}^n \overline{\varphi(\mathbf{e}_i)}\mathbf{e}_i,
\sum_{j=1}^n a_j \mathbf{e}_j \rangle\nonumber\\&= \sum_{i=1}^n \sum_{j=1}^n \varphi(\mathbf{e}_i) a_j
\langle\mathbf{e}_i, \mathbf{e}_j \rangle\nonumber\\&= \sum_{i=1}^n \varphi(\mathbf{e}_i) a_i
\end{align}
```

On the other hand, since $\varphi$ is linear, it follows that

```{math}
:label: eq:38
\begin{align}\varphi(\mathbf{v})
= \varphi(\sum_{i=1}^n a_i \mathbf{e}_i)
= \sum_{i=1}^n a_i \varphi(\mathbf{e}_i)
\end{align}
```

Comparing {eq}`eq:37` and {eq}`eq:38`, we find

```{math}
\begin{align*}\langle\mathbf{u}, \mathbf{v}\rangle
= \varphi(\mathbf{v})
\end{align*}
```

This shows such vector $\mathbf{u}$ is as desired.

Next, we show the uniqueness of $\mathbf{u}$.
Suppose

```{math}
\begin{align*}\langle\mathbf{u}, \mathbf{v}\rangle
= \langle\mathbf{w}, \mathbf{v}\rangle\quad\forall\mathbf{v}\in V
\end{align*}
```

Then

```{math}
\begin{align*}\langle\mathbf{u} - \mathbf{w}, \mathbf{v}\rangle\quad\forall\mathbf{v}\in V
\end{align*}
```

In particular, letting $\mathbf{v} = \mathbf{u} - \mathbf{w}$
yields $\mathbf{u} - \mathbf{w} = \mathbf{0}$,
which shows that such $\mathbf{u}$ is unique.

````

````{prf:definition}
:label: def:4

Let $V$ and $W$ both be finite-dimensional inner product spaces
over field $\FF$,
and

```{index} adjoint of linear map
```

```{math}
\begin{align*}
T: V \to W
\end{align*}
```

a linear map. Then the **adjoint**
of $T$, denoted by $T^\ast$,
is the linear map

```{math}
\begin{align*}
T^\ast: W \to V
\end{align*}
```

such that

```{math}
:label: eq:39
\begin{align}\langle T \mathbf{v}, \mathbf{w}\rangle
= \langle\mathbf{v}, T^\ast\mathbf{w}\rangle\quad\forall\mathbf{v}\in V \;\forall\mathbf{w}\in W
\end{align}
```

is satisfied.

````

To show that the adjoint $T^\ast$ is indeed well-defined, we need to show
- ➀ for each $\mathbf{w} \in W$,
there exists a unique vector $T^\ast \mathbf{w} \in V$(depending on $\mathbf{w}$)
such that {eq}`eq:39` is satisfied, and
- ➁ $T^\ast$ is indeed a linear map.


The first statement immediately follows from {prf:ref}`thm:14`.
To see this, we first let $\mathbf{w} \in W$ be fixed,
and then define a linear functional $\varphi$ on $V$ by

```{math}
\begin{align*}\varphi(\mathbf{v}) = \langle T \mathbf{v}, \mathbf{w}\rangle\end{align*}
```

Note that $\bar{\varphi}(\mathbf{v}) = \overline{\varphi(\mathbf{v})}$
is also a linear function on $V$.
Then by applying {prf:ref}`thm:14`,
there exits a unique vector $\mathbf{u} \in V$ such that

```{math}
\begin{align*}\bar{\varphi}(\mathbf{v}) = \langle\mathbf{u}, \mathbf{v}\rangle\quad\forall\mathbf{v}\in V
\end{align*}
```

Taking the conjugate, equivalently, we have

```{math}
\begin{align*}\varphi(\mathbf{v})
= \langle T \mathbf{v}, \mathbf{w}\rangle
= \langle\mathbf{v}, \mathbf{u}\rangle\quad\forall\mathbf{v}\in V
\end{align*}
```

Since $\mathbf{u}$(uniquely) depends on $\mathbf{w}$,
we can write $\mathbf{u}$ as a function of $\mathbf{w}$, $T^\ast \mathbf{w}$.
Hence, {eq}`eq:39` holds.

We also need to show that $T^\ast$ is indeed a linear map.
For any $\mathbf{w}_1, \mathbf{w}_2 \in W$ and $a, b \in \FF$, we have

```{math}
:label: eq:40
\begin{align}
a \langle T \mathbf{v}, \mathbf{w}_1 \rangle
+ b \langle T \mathbf{v}, \mathbf{w}_2 \rangle
= \langle T \mathbf{v}, a \mathbf{w}_1 + b \mathbf{w}_2 \rangle
= \langle\mathbf{v}, T^\ast(a \mathbf{w}_1 + b \mathbf{w}_2) \rangle\quad\forall\mathbf{v}\in V
\end{align}
```

Meanwhile, we also have

```{math}
:label: eq:41
\begin{align}\langle T \mathbf{v}, \mathbf{w}_1 \rangle
= \langle\mathbf{v}, T^\ast\mathbf{w}_1 \rangle\quad\text{and}\quad\langle T \mathbf{v}, \mathbf{w}_2 \rangle
= \langle\mathbf{v}, T^\ast\mathbf{w}_2 \rangle\quad\forall\mathbf{v}\in V
\end{align}
```

Comparing {eq}`eq:40` and {eq}`eq:41`, we find that

```{math}
\begin{align*}\langle\mathbf{v}, T^\ast(a \mathbf{w}_1 + b \mathbf{w}_2) \rangle
= a \langle\mathbf{v}, T^\ast\mathbf{w}_1 \rangle
+ b \langle\mathbf{v}, T^\ast\mathbf{w}_2 \rangle
= \langle\mathbf{v}, a T^\ast\mathbf{w}_1 + b T^\ast\mathbf{w}_2 \rangle\quad\forall\mathbf{v}\in V
\end{align*}
```

Therefore,

```{math}
\begin{align*}
T^\ast(a \mathbf{w}_1 + b \mathbf{w}_2)
= a T^\ast\mathbf{w}_1 + b T^\ast\mathbf{w}_2
\end{align*}
```

which implies $T^\ast$ is indeed linear.


````{prf:example}
:label: eg:4

The real matrix $A \in \R^{m \times n}$
can be regarded as a linear map from $\R^n$ to $\R^m$.
We have

```{math}
\begin{align*}\langle A \mathbf{x}, \mathbf{y}\rangle
= \mathbf{x}^\top A^\top\mathbf{y}
= \langle\mathbf{x}, A^\top\mathbf{y}\rangle\end{align*}
```

Therefore, the adjoint of $A$ is its transpose $A^\top$,
i.e., $A^\ast = A^\top$.

If $A \in \C^{m \times n}$ is a complex matrix, then

```{math}
\begin{align*}\langle A \mathbf{x}, \mathbf{y}\rangle
= \mathbf{x}^H A^H \mathbf{y}
= \langle\mathbf{x}, A^H \mathbf{y}\rangle\end{align*}
```

In this case, the adjoint of $A$ is
its Hermitian transpose $A^H$, or conjugate transpose ${\bar{A}}^\top$.
That is, $A^\ast = A^H = {\bar{A}}^\top$.

````
