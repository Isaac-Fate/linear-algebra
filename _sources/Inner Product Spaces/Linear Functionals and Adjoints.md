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

Since $\mathbf{u}$(uniquely) depends on $\mathbf{w}$(and of course, also on $T$),
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

Next, we will show some properties
of the function $T \mapsto T^\ast$.

:::{note}

In proving these properties, we will frequently use
the following simple observations:

```{math}
:label: eq:42
\begin{align}\langle T_1 \mathbf{v}, \mathbf{w}\rangle
= \langle T_2 \mathbf{v}, \mathbf{w}\rangle\quad\forall\mathbf{v}\in V \;\forall\mathbf{w}\in W
\implies
T_1 = T_2
\end{align}
```

To show {eq}`eq:42`, we note that

```{math}
\begin{align*}\langle(T_1 - T_2) \mathbf{v}, \mathbf{w}\rangle
= 0
\quad\forall\mathbf{v}\in V \;\forall\mathbf{w}\in W
\end{align*}
```

Taking $\mathbf{w} = (T_1 - T_2)\mathbf{v}$ yields

```{math}
\begin{align*}(T_1 - T_2)\mathbf{v} = \mathbf{0}\quad\forall\mathbf{v}\in V
\end{align*}
```

It then follows that $T_1 = T_2$.

:::

````{prf:proposition}
:label: pro:6

Let $V$ and $W$ be finite-dimensional inner product spaces,
and $T : V \to W$ a linear map.
We have
- ➀ $(S + T)^\ast = S^\ast + T^\ast$
where $S: V \to W$ is another linear map.
- ➁ $(a T)^\ast = \bar{a} T^\ast$
- ➂ $(T^\ast)^\ast = T$
- ➃ $I^\ast = I$
where $I$ is the identity map on $V$.
- ➄ $(S T)^\ast = T^\ast S^\ast$
where $U$ is another finite-dimensional
inner product space,
and $S: W \to U$ is a linear map.


````

:::{note}

We have seen in {prf:ref}`eg:4` that
the adjoint of a complex matrix is
its Hermitian transpose.
If we replaces the linear maps with matrices,
then all these properties should look very familiar.

:::

````{prf:proof}

We only prove 1 and 5 since the proofs of the rest are similar.


(Proof of 1) We have

```{math}
\begin{align*}\langle(S + T) \mathbf{v}, \mathbf{w}\rangle
= \langle\mathbf{v}, (S + T)^\ast\mathbf{w}\rangle\quad\forall\mathbf{v}\in V \;\forall\mathbf{w}\in W
\end{align*}
```

On the other hand,

```{math}
\begin{align*}\langle(S + T) \mathbf{v}, \mathbf{w}\rangle&= \langle S \mathbf{v}, \mathbf{w}\rangle
+\langle T \mathbf{v}, \mathbf{w}\rangle\\&= \langle\mathbf{v}, S^\ast\mathbf{w}\rangle
+\langle\mathbf{v}, T^\ast\mathbf{w}\rangle\\&= \langle\mathbf{v}, (S^\ast + T^\ast) \mathbf{w}\rangle\quad\forall\mathbf{v}\in V \;\forall\mathbf{w}\in W
\end{align*}
```

Equating the right-hand sides of above two equations yields

```{math}
\begin{align*}\langle\mathbf{v}, (S + T)^\ast\mathbf{w}\rangle
= \langle\mathbf{v}, (S^\ast + T^\ast) \mathbf{w}\rangle\quad\forall\mathbf{v}\in V \;\forall\mathbf{w}\in W
\end{align*}
```

Therefore, $(S + T)^\ast = S^\ast + T^\ast$.

(Proof of 5) By treating $S T$ as one linear map, we have

```{math}
:label: eq:44
\begin{align}\langle S T \mathbf{v}, \mathbf{w}\rangle
= \langle\mathbf{v}, (ST)^\ast\mathbf{w}\rangle\quad\forall\mathbf{v}\in V \;\forall\mathbf{w}\in W
\end{align}
```

If we regard $ST \mathbf{v}$ as a vector $T\mathbf{v}$ applied to $S$,
then

```{math}
\begin{align*}\langle S T \mathbf{v}, \mathbf{w}\rangle
= \langle T \mathbf{v}, S^\ast\mathbf{w}\rangle\quad\forall\mathbf{v}\in V \;\forall\mathbf{w}\in W
\end{align*}
```

We can then move $T$ to the second slot of the inner product,
and replace it with $T^\ast$:

```{math}
\begin{align*}\langle T \mathbf{v}, S^\ast\mathbf{w}\rangle
= \langle\mathbf{v}, T^\ast S^\ast\mathbf{w}\rangle\quad\forall\mathbf{v}\in V \;\forall\mathbf{w}\in W
\end{align*}
```

Hence,

```{math}
:label: eq:43
\begin{align}\langle S T \mathbf{v}, \mathbf{w}\rangle
= \langle\mathbf{v}, T^\ast S^\ast\mathbf{w}\rangle\quad\forall\mathbf{v}\in V \;\forall\mathbf{w}\in W
\end{align}
```

Equating the right-hand sides of {eq}`eq:44` and {eq}`eq:43`,
we obtain $(ST)^\ast = T^\ast S^\ast$.

````

The following statements describe
the relations between the image and kernel of a linear map
and that of its adjoint.


````{prf:proposition}
:label: pro:7

Let $T \in \mathcal(V, W)$ be a linear map
between two finite-dimensional inner product spaces $V$ and $W$.
Then we have
- ➀ $\ker T^\ast = (\im T)^\perp$
- ➁ $\im T^\ast = (\ker T)^\perp$
- ➂ $\ker T = (\im T^\ast)^\perp$
- ➃ $\im T = (\ker T^\ast)^\perp$


````

````{prf:proof}

Firstly, note that 3 and 4 follow directly from 1 and 2, respectively,
by replacing $T$ with $T^\ast$.
And 2 can be proved by taking the orthogonal complement
on both sides of 1 (due to {prf:ref}`cor:7`).
Hence, we only need to prove 1.

We have

```{math}
\begin{align*}& \mathbf{w}\in\ker T^\ast\\\iff& T^\ast\mathbf{w} = \mathbf{0}\\\iff& \langle\mathbf{v}, T^\ast\mathbf{w}\rangle = 0
\quad\forall\mathbf{v}\in V \\\iff& \langle T \mathbf{v}, \mathbf{w}\rangle = 0
\quad\forall\mathbf{v}\in V \\\iff& \mathbf{w}\in(\im T)^\perp\end{align*}
```

Therefore, $\ker T^\ast = (\im T)^\perp$.

````

Let $\mathcal{B}_1$ and $\mathcal{B}_2$ be the bases
of two finite-dimensional inner product spaces $V$ and $W$,
respectively, and $T: V \to W$ a linear map.
Inspired by {prf:ref}`eg:4`, one may conjecture that
the matrix representation of $T^\ast$ is the Hermitian transpose
of that of $T$.
However, this is not true in general.
See the following example.


````{prf:example}
:label: eg:5

````
