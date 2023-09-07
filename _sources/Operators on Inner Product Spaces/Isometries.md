# Isometries

````{prf:definition}
:label: def:7

```{index} isometry
```

Let $V$ be an inner product space.
Then an operator $Q \in \mathcal{L}(V)$ is said to be
an **isometry** if
it preserves norms.
Mathematically,

```{math}
\begin{align*}\norm{Q \mathbf{v}} = \norm{\mathbf{v}}\quad\forall\mathbf{v}\in V
\end{align*}
```

````

````{prf:theorem}
:label: thm:20

Let $V$ be a finite-dimensional inner product space,
and $Q \in \mathcal{L}(V)$,
then the following are equivalent:
- ➀ $Q$ is an isometry.
- ➁ $ \langle Q \mathbf{u}, Q \mathbf{v} \rangle = \langle \mathbf{u}, \mathbf{v} \rangle $ for all $\mathbf{u}, \mathbf{v} \in V$.
- ➂ $Q^\ast Q = I$.
- ➃ $(Q \mathbf{e}_1, \ldots, Q \mathbf{e}_m)$ is orthonormal whenever $(\mathbf{e}_1, \ldots, \mathbf{e}_m)$ is an orthonormal list of vectors in $V$.
- ➄ There exists an orthonormal basis $(\mathbf{e}_1, \ldots, \mathbf{e}_n)$ of $V$ such that $(Q \mathbf{e}_1, \ldots, Q \mathbf{e}_n)$ is orthonormal.
- ➅ $Q^\ast$ is an isometry.
- ➆ $ \langle Q^\ast \mathbf{u}, Q^\ast \mathbf{v} \rangle = \langle \mathbf{u}, \mathbf{v} \rangle $ for all $\mathbf{u}, \mathbf{v} \in V$.
- ➇ $QQ^\ast = I$.
- ➈ $(Q^\ast \mathbf{e}_1, \ldots, Q^\ast \mathbf{e}_n)$ is orthonormal whenever $(\mathbf{e}_1, \ldots, \mathbf{e}_m)$ is an orthonormal list of vectors in $V$.
- ➉ There exists an orthonormal basis $(\mathbf{e}_1, \ldots, \mathbf{e}_n)$ of $V$ such that $(Q^\ast \mathbf{e}_1, \ldots, Q^\ast \mathbf{e}_n)$ is orthonormal.


````

````{prf:proof}

Upon initial inspection,
it may appear that there is a substantial amount to prove.
However, upon closer examination,
it becomes evident that statements 6 to 10 merely involve substituting $Q$ with $Q^\ast$ in statements 1 to 5.
Furthermore, it is apparent that statements 3 and 8 are equivalent, as expressed by the following relationship:

```{math}
\begin{align*}
Q^\ast Q = I \iff Q Q^\ast = I
\end{align*}
```

This equivalence arises from the fact that the left inverse of a linear operator is also its right inverse.
Consequently, our task is reduced to proving the equivalence of the first five statements. Once established, we can readily deduce that they are also equivalent to statements 6 to 10 (by substituting $Q$ with $Q^\ast$), given the equivalence of statements 3 and 8, as well as the fact that $(Q^\ast)^\ast = Q$.
In what follows, we prove

```{math}
\begin{align*}
1 \implies 2 \implies 3 \implies 4 \implies 5 \implies 1
\end{align*}
```
**1 $\implies$ 2:** Inspired by the proof of {prf:ref}`pro:8`, one may verify that
equations

```{math}
:label: eq:74
\begin{multline}\langle Q \mathbf{u}, Q \mathbf{v}\rangle
= \frac{1}{4}[\langle Q(\mathbf{u} + \mathbf{v}),
Q(\mathbf{u} + \mathbf{v}) \rangle
- \langle Q(\mathbf{u} - \mathbf{v}),
Q(\mathbf{u} - \mathbf{v}) \rangle]\\
- \frac{i}{4}[\langle Q(\mathbf{u} + i\mathbf{v}),
Q(\mathbf{u} + i\mathbf{v}) \rangle
- \langle Q(\mathbf{u} - i\mathbf{v}),
Q(\mathbf{u} - i\mathbf{v}) \rangle]\end{multline}
```

and

```{math}
:label: eq:75
\begin{multline}\langle\mathbf{u}, \mathbf{v}\rangle
= \frac{1}{4}[\left\langle(\mathbf{u} + \mathbf{v}),
(\mathbf{u} + \mathbf{v}) \right\rangle
- \left\langle(\mathbf{u} - \mathbf{v}),
(\mathbf{u} - \mathbf{v}) \right\rangle]\\
- \frac{i}{4}[\left\langle(\mathbf{u} + i\mathbf{v}),
(\mathbf{u} + i\mathbf{v}) \right\rangle
- \left\langle(\mathbf{u} - i\mathbf{v}),
(\mathbf{u} - i\mathbf{v}) \right\rangle]\end{multline}
```

hold. Since $Q$ is an isometry,
we have $ \langle Q \mathbf{v}, Q \mathbf{v} \rangle = \langle \mathbf{v}, \mathbf{v} \rangle $ for all $\mathbf{v}$ by definition.
Then, comparing {eq}`eq:74` and {eq}`eq:75`,
statement 2 is proved.

**2 $\implies$ 3:** In particular, we have

```{math}
\begin{align*}\langle Q \mathbf{v}, Q \mathbf{v}\rangle
= \langle\mathbf{v}, \mathbf{v}\rangle\quad\forall\mathbf{v}\in V
\end{align*}
```

Moving $Q$ to the second slot by taking the adjoint,
we obtain

```{math}
\begin{align*}\langle\mathbf{v}, Q^\ast Q \mathbf{v}\rangle
= \langle\mathbf{v}, \mathbf{v}\rangle\quad\forall\mathbf{v}\in V
\end{align*}
```

It then follows that

```{math}
\begin{align*}\langle\mathbf{v}, (Q^\ast Q - I) \mathbf{v}\rangle
= 0 \quad\forall\mathbf{v}\in V
\end{align*}
```

Therefore, $Q^\ast Q - I = 0$ by {prf:ref}`pro:9`
since operator $Q^\ast Q - I$ is self-adjoint.

**3 $\implies$ 4:**
````
