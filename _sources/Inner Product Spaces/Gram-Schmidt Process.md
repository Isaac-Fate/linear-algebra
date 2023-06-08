
```{index} Gram-Schmidt process
```
# Gram-Schmidt Process

We appreciate all the benefits and good properties orthonormal bases can bring us. But how can we construct such an orthonormal basis? Suppose we have a list of linearly independent vectors, then we can apply the **Gram-Schmidt process**, which will be introduced in the next theorem, to construct an orthonormal list of vectors out it with the same span.


````{prf:theorem} Gram-Schmidt
:label: thm:1

Let $V$ be a finite-dimensional inner product space over $\FF$. Suppose $(\mathbf{v}_1, \ldots, \mathbf{v}_m)$ is a list of linearly independent vectors in $V$, then there exists a list of **orthonormal** vectors $(\mathbf{e}_1, \ldots, \mathbf{e}_m)$ in $V$ such that

```{math}
:label: eq:3
\begin{align}\Span(\mathbf{e}_1, \ldots, \mathbf{e}_j)
= \Span(\mathbf{v}_1, \ldots, \mathbf{v}_j)
\quad\forall 1 \leq j \leq m
\end{align}
```

````

````{prf:proof}

We shall prove by induction on $m$.

(Base Case) If $m = 1$, then the theorem holds trivially by letting $\mathbf{e}_1 = \frac{1}{\norm{\mathbf{v}_1}} \mathbf{v}_1$.

(Inductive Step) Assume that this theorem holds for $m = k$, we shall show that it also holds for $m = k+1$. Let $(\mathbf{v}_1, \ldots, \mathbf{v}_{k+1})$ be a list of $k+1$ linearly independent vectors in $V$. Applying the induction hypothesis to the first $k$ vectors, it follows that there exists as a list of orthonormal vectors $(\mathbf{e}_1, \ldots, \mathbf{e}_k)$ such that

```{math}
:label: eq:4
\begin{align}\Span(\mathbf{e}_1, \ldots, \mathbf{e}_j)
= \Span(\mathbf{v}_1, \ldots, \mathbf{v}_j)
\quad\forall 1 \leq j \leq k
\end{align}
```
We now construct the vector $\mathbf{e}_{k+1}$. Define

```{math}
:label: eq:1
\begin{align}\mathbf{u} = \mathbf{v}_{k+1} - \sum_{j=1}^k \left\langle\mathbf{e}_j, \mathbf{v}_{k+1}\right\rangle\mathbf{e}_j
\end{align}
```

Note that $\mathbf{u} \neq \mathbf{0}$. Assume $\mathbf{u} = \mathbf{0}$, then {eq}`eq:1` would imply that

```{math}
\begin{align*}\mathbf{v}_{k+1}\in\Span(\mathbf{e}_1, \ldots, \mathbf{e}_k)
= \Span(\mathbf{v}_1, \ldots, \mathbf{v}_k)
\end{align*}
```

which contradicts that $(\mathbf{v}_1, \ldots, \mathbf{v}_{k+1})$ are linearly independent. Now, it is safe to define

```{math}
:label: eq:2
\begin{align}\mathbf{e}_{k+1} = \frac{1}{\norm{\mathbf{u}}}\mathbf{u}\end{align}
```
It is clear $\norm{\mathbf{e}_{k+1}} = 1$. We then need to verify that $\mathbf{e}_{k+1}$ is orthogonal to each $\mathbf{e}_j$($1 \leq j \leq k$). It follows from {eq}`eq:1` and {eq}`eq:2` that

```{math}
\begin{align*}\left\langle\mathbf{e}_j, \mathbf{e}_{k+1}\right\rangle
= \frac{1}{\norm{\mathbf{u}}}\left(\left\langle\mathbf{e}_j, \mathbf{v}_{k+1}\right\rangle
- \left\langle\mathbf{e}_j, \mathbf{v}_{k+1}\right\rangle\cdot 1
\right)= 0
\quad\forall 1 \leq j \leq k
\end{align*}
```

Therefore, $(\mathbf{e}_1, \ldots, \mathbf{e}_{k+1})$ is indeed a list of orthonormal vectors.

We also need to show {eq}`eq:3` is satisfied for $m = k+1$. Note that {eq}`eq:1` and {eq}`eq:2` imply that $\mathbf{v}_{k+1} \in \Span(\mathbf{e}_1, \ldots, \mathbf{e}_{k+1})$. On the other hand, $\mathbf{e}_{k+1}$ can be written as a linear combination of $\mathbf{e}_1, \ldots, \mathbf{e}_k$ and $\mathbf{v}_{k+1}$. Recall {eq}`eq:4`, and we will note that $\mathbf{e}_{k+1}$ can also be written as a linear combination of $(\mathbf{v}_1, \ldots, \mathbf{v}_{k+1})$. Therefore,

```{math}
\begin{align*}\mathbf{v}_{k+1}&\in\Span(\mathbf{e}_1, \ldots, \mathbf{e}_{k+1}) &
\mathbf{e}_{k+1}&\in\Span(\mathbf{v}_1, \ldots, \mathbf{v}_{k+1})
\end{align*}
```

Combined with {eq}`eq:4`, we obtain that

```{math}
\begin{align*}\Span(\mathbf{e}_1, \ldots, \mathbf{e}_j)
= \Span(\mathbf{v}_1, \ldots, \mathbf{v}_j)
\quad\forall 1 \leq j \leq k+1
\end{align*}
```

This completes the proof.

````

As proposed in the proof of {prf:ref}`thm:1`, given a list of linearly independent vectors,

```{math}
\begin{align*}\mathbf{v}_1, \ldots, \mathbf{v}_m
\end{align*}
```

a list of orthonormal vectors can be found as follows.


```{math}
:label: eq:5
\begin{align}\begin{array}{clccl}
\mathbf{u}_1 &= \mathbf{v}_1
&\quad
&\mathbf{e}_1 &= \frac{1}{\norm{\mathbf{u}_1}} \mathbf{u}_1 \\
\mathbf{u}_2 &= \mathbf{v}_2 - \proj_{\mathbf{e}_1} \mathbf{v}_2
= \mathbf{v}_2 - \left\langle\mathbf{e}_1, \mathbf{v}_2 \right \rangle \mathbf{e}_1
&\quad
&\mathbf{e}_2 &= \frac{1}{\norm{\mathbf{u}_2}} \mathbf{u}_2 \\
\vdots&&&\vdots\\
\mathbf{u}_m &= \mathbf{v}_m - \sum_{j=1}^{m-1} \proj_{\mathbf{e}_j} \mathbf{v}_m
= \mathbf{v}_m - \sum_{j=1}^{m-1} \left\langle\mathbf{e}_j, \mathbf{v}_m \right \rangle \mathbf{e}_j
&\quad
&\mathbf{e}_m &= \frac{1}{\norm{\mathbf{u}_m}} \mathbf{u}_m
\end{array}\end{align}
```

If $(\mathbf{v}_1, \ldots, \mathbf{v}_n)$ forms a basis for $V$, then the list of vectors $(\mathbf{e}_1, \ldots, \mathbf{e}_n)$ given by {eq}`eq:5` is an orthonormal basis for $V$.


Given any basis of a finite-dimensional inner product space, we can always apply the Gram-Schmidt procedure to convert this basis to an orthonormal one.


````{prf:corollary}
:label: cor:5

Any finite-dimensional inner product space has an orthonormal basis.

````

````{prf:proof}

Let $V$ be an $n$-dimensional inner product space, and $(\mathbf{v}_1, \ldots, \mathbf{v}_n)$ its basis. {prf:ref}`thm:1` says there exists a list of orthonormal vectors $(\mathbf{e}_1, \ldots, \mathbf{e}_n)$ such that

```{math}
\begin{align*}\Span(\mathbf{e}_1, \ldots, \mathbf{e}_n)
= \Span(\mathbf{v}_1, \ldots, \mathbf{v}_n)
= V
\end{align*}
```

And we know from {prf:ref}`cor:3` that $(\mathbf{e}_1, \ldots, \mathbf{e}_n)$ is linearly independent. (Or we can conclude it is linearly independent just based on the fact that it spans $V$ with precisely $n$ vectors.) Hence, it indeed forms a basis.

````

Recall {prf:ref}`thm:10`. We know that we can extend a list of linearly independent vectors to a basis. Now, if we have a list of orthonormal vectors at hand, can we extend it to an *orthonormal* basis? Fortunately, we can do so by performing the Gram-Schmidt process.


````{prf:corollary}
:label: cor:4

Every orthonormal list of vectors $(\mathbf{e}_1, \ldots, \mathbf{e}_m)$ in a finite-dimensional inner product space can be extended to an orthonormal basis.

````

````{prf:proof}

If $\dim V = m$, then we are already done. Suppose the dimension of $V$ is larger than $m$, say $m + n$. By {prf:ref}`thm:10`, there exists $\mathbf{v}_1, \ldots, \mathbf{v}_n \in V$ such that

```{math}
\begin{align*}(\mathbf{e}_1, \ldots, \mathbf{e}_n, \mathbf{v}_1, \ldots, \mathbf{v}_n)
\end{align*}
```

forms a basis of $V$. Then by applying the Gram-Schmidt procedure ({prf:ref}`thm:1`) to this basis, we obtain an orthogonal list of vectors

```{math}
\begin{align*}(\mathbf{e}_1^\prime, \ldots, \mathbf{e}_n^\prime, \mathbf{f}_1, \ldots, \mathbf{f}_n)
\end{align*}
```

Since this list of vectors is linearly independent by {prf:ref}`cor:3`, and it contains $m+n = \dim V$ vectors, it must be a basis for $V$.

What is left to show is that the first $n$ vectors $(\mathbf{e}_1^\prime, \ldots, \mathbf{e}_n^\prime)$ remain unchanged. Referring to {eq}`eq:5`, we have

```{math}
\begin{align*}\mathbf{e}_1^\prime = \mathbf{e}_1
\end{align*}
```

Having

```{math}
\begin{align*}\mathbf{e}_i^\prime = \mathbf{e}_i
\quad\forall i=1, \ldots,j-1
\end{align*}
```

where $j \geq 2$, we can compute using {eq}`eq:5` that

```{math}
\begin{align*}\mathbf{e}_j^\prime
= \mathbf{e}_j - \sum_{i=1}^{j-1}\left\langle\mathbf{e}_i^\prime,
\mathbf{e}_j
\right\rangle\mathbf{e}_i^\prime
= \mathbf{e}_j - \sum_{i=1}^{j-1}\left\langle\mathbf{e}_i,
\mathbf{e}_j
\right\rangle\mathbf{e}_i
= \mathbf{e}_j
\end{align*}
```

Therefore, we have

```{math}
\begin{align*}\mathbf{e}_j^\prime = \mathbf{e}_j
\quad\forall j = 1, \ldots, m
\end{align*}
```

This completes the proof.

````
