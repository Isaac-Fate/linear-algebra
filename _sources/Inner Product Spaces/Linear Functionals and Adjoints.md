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
\langle\mathbf{e}_i, \mathbf{e}_j \rangle\nonumber\\&= \sum_{i=1}^n \varphi(\mathbf{e}_i) a_j
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
