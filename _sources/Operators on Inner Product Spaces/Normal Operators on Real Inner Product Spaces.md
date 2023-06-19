# Normal Operators on Real Inner Product Spaces

````{prf:lemma}
:label: lem:4

Let $V$ be a finite-dimensional real inner product space,
and $T \in \mathcal{L}(V)$.
Then the following are equivalent:
- ➀ $T$ is normal but not self-adjoint.
- ➁ The matrix representation $[T]_{\mathcal{B}}$
has the following form for any
orthonormal basis $\mathcal{B}$ of $V$:

```{math}
:label: eq:64
\begin{align}\begin{bmatrix}
a & -b \\ b & a
\end{bmatrix}\end{align}
```

with $b \neq 0$.
- ➂ There exist an orthogonal basis $\mathcal{B}$
for $V$ such that $[T]_{\mathcal{B}}$
has the form

```{math}
\begin{align*}\begin{bmatrix}
a & -b \\ b & a
\end{bmatrix}\end{align*}
```

where $b > 0$.


````

````{prf:proof}

We prove each implication in the following.

**Proof of 1 $\implies$ 2:** Let $\mathcal{B}$
be an orthonormal basis.
Write

```{math}
\begin{align*}[T]_{\mathcal{B}} =
\begin{bmatrix}
a & c \\ b & d
\end{bmatrix}\quad\text{and}\quad[T^\ast]_{\mathcal{B}} =
\begin{bmatrix}
a & b \\ c & d
\end{bmatrix}\end{align*}
```

Note that $[T^\ast]_{\mathcal{B}}$ can be written
in this way, the transpose of $[T]_{\mathcal{B}}$,
because $\mathcal{B}$ is orthonormal,
We need to show $c = -b$ and $d = a$.
Because $T$ is normal, it commutes with its adjoint.
We have

```{math}
\begin{align*}[T T^\ast]_{\mathcal{B}} = [T^\ast T]_{\mathcal{B}}\end{align*}
```

And the explicit expressions of the matrices on the both sides are

```{math}
\begin{align*}[T T^\ast]_{\mathcal{B}}&= [T]_{\mathcal{B}}[T^\ast]_{\mathcal{B}}
= \begin{bmatrix}
a^2 + c^2 & ab + cd \\
ab + cd & b^2 + d^2
\end{bmatrix}\\[T^\ast T]_{\mathcal{B}}&= [T^\ast]_{\mathcal{B}}[T]_{\mathcal{B}}
= \begin{bmatrix}
a^2 + b^2 & ac + bd \\
ac + bd & c^2 + d^2
\end{bmatrix}\end{align*}
```

It then follows that

```{math}
\begin{align*}\begin{cases}
b^2 = c^2 \\
(a-d)(b-c) = 0 \quad \text{which is the simplification
of $ab + cd = ac + bd$}
\end{cases}\end{align*}
```

Since $T$ is not self-adjoint, $b \neq 0$ and $b \neq c$.
Therefore, we must have $b = -c \neq 0$ and $a = d$,
which is as desired.

**Proof of 2 $\implies$ 3:** If $\mathcal{B}$
happens to be a basis with respect to which, $b > 0$
in the matrix representation {eq}`eq:64` of $T$,
then there is nothing to prove.
We now suppose that $b < 0$, and our goal is to find
an orthonormal basis $\mathcal{B}^\prime$ such that
the lower left entry of $[T]_{\mathcal{B}^\prime}$ is positive.
Suppose $\mathcal{B} = (\mathbf{e}_1, \mathbf{e}_2)$.
In fact, the basis $\mathcal{B}^\prime$ we aim to find
is simply $\mathcal{B}^\prime = (\mathbf{e}_2, \mathbf{e}_1)$.
To see this, we note that

```{math}
\begin{align*}
T \mathbf{e}_2
&= -b \mathbf{e}_1 + a\mathbf{e}_2
= a \mathbf{e}_2 + (-b) \mathbf{e}_1 \\
T \mathbf{e}_1
&= a \mathbf{e}_1 + b\mathbf{e}_2
= b \mathbf{e}_2 + a \mathbf{e}_1
\end{align*}
```

Therefore, the matrix representation $[T]_{\mathcal{B}^\prime}$ is

```{math}
\begin{align*}[T]_{\mathcal{B}^\prime} =
\begin{bmatrix}
a & b \\ -b & a
\end{bmatrix}\end{align*}
```

where the lower left entry $-b > 0$.

**Proof of 3 $\implies$ 1:** Firstly,
since $b > 0$, $T$ is clearly not self-adjoint.
Since $\mathcal{B}$ is orthonormal, $[T^\ast]_{\mathcal{B}}$
is the transpose of $[T]_{\mathcal{B}}$.
We have

```{math}
\begin{align*}[T]_{\mathcal{B}} =
\begin{bmatrix}
a & -b \\ b & a
\end{bmatrix}\quad\text{and}\quad[T]_{\mathcal{B}^\prime} =
\begin{bmatrix}
a & b \\ -b & a
\end{bmatrix}\end{align*}
```

To show that it is normal,
we simply compare the matrices $[T T^\ast]_{\mathcal{B}}$
and $[T^\ast T]_{\mathcal{B}}$.
We find

```{math}
\begin{align*}[T T^\ast]_{\mathcal{B}} =
\begin{bmatrix}
a^2 + b^2 & 0 \\
0 & a^2 + b^2
\end{bmatrix}
= [T^\ast T]_{\mathcal{B}}\end{align*}
```

Therefore, $T$ is indeed a normal operator.

````
