# Diagonal Matrices
For an operator $T$ on a real vector space, it may not have any eigenvalues, as we have seen in {prf:ref}`eg:1`. Hence, it is possible that no $1$-dimensional subspace exists that is invariant under $T$.

However, the following theorem states that a $T$-invariant subspace with dimension $1$ or $2$ is always possible to find.


````{prf:theorem}
:label: thm:6

Let $V$ be a finite-dimensional nonzero vector space over $\R$, and $T \in \mathcal{L}(V)$. Then there exists a subspace $U \leq V$ such that $U$ is invariant under $T$ and $\dim U = 1$ or $\dim U = 2$.

````

````{prf:proof}

Suppose $\dim V = n$. Pick a nonzero vector $\mathbf{v} \neq \mathbf{0}$ in $V$. Consider the following list of vectors

```{math}
\begin{align*}(\mathbf{v}, T \mathbf{v}, \ldots, T^n \mathbf{v})
\end{align*}
```

Notice that it is clearly linearly dependent since it consists of $n+1$ vectors. Then there exist some real numbers $a_j$'s that are not all zeros such that

```{math}
\begin{align*}
a_0 \mathbf{v} + a_1 T \mathbf{v} + \cdots a_n T^n \mathbf{v} = \mathbf{0}\end{align*}
```

Let $a_m$($m \leq n$) be the last one among all $a_j$'s that is nonzero. Then the equation above reduces to

```{math}
:label: eq:12
\begin{align}
a_0 \mathbf{v} + a_1 T \mathbf{v} + \cdots a_m T^m \mathbf{v} = \mathbf{0}\quad a_m \neq 0
\end{align}
```
Define a polynomial

```{math}
\begin{align*}
p(x) = a_0 x + a_1 x + \cdots a_m x^m
\end{align*}
```

Recall {prf:ref}`thm:5`, which says that we can factorization $p(x)$ into

```{math}
\begin{align*}
p(x) = c (x - \lambda_1) \cdots(x - \lambda_k)
(x^2 + \alpha_1 x + \beta_1) \cdots(x^2 + \alpha_l x + \beta_l)
\end{align*}
```

where $c \neq 0$ is some constant and $\alpha_j, \beta_j$ satisfy $\alpha_j^2 < 4\beta_j$. Apply $p$ to $T$, and it then follows from {eq}`eq:12` that

```{math}
:label: eq:13
\begin{align}(T - \lambda_1 I) \cdots(T - \lambda_k I)
(T^2 + \alpha_1 T + \beta_1 I) \cdots(T^2 + \alpha_l T + \beta_l I) \mathbf{v}
= \mathbf{0}\end{align}
```

Recall $\mathbf{v} \neq 0$. Then {eq}`eq:13` implies that the linear map composition on the left-hand side is not injective, which further implies there exists at least one linear map in this composition that is not injective. This leads to two cases.

(Case 1) If $T - \lambda_j I$ is not injective for some $j$, then $\lambda_j$ is clearly an eigenvalue of $T$. Let $\mathbf{u}$ be its corresponding eigenvector, and let $U = \Span(\mathbf{u})$. It is clear that $U$ has dimension $1$ and is invariant under $T$.

(Case 2) Suppose $T^2 + \alpha_j T + \beta_j I$ is not injective for some $j$. There exists $\mathbf{u} \neq \mathbf{0}$ such that

```{math}
:label: eq:14
\begin{align}(T^2 + \alpha_j T + \beta_j I) \mathbf{u} = \mathbf{0}\end{align}
```

Notice that $\Span(\mathbf{u}, T \mathbf{u})$ clearly has dimension $1$ or $2$. (In fact, it has dimension $2$. But we do not need to know this for sure in the proof of this theorem. See the note after the proof.) Now, we show that $\Span(\mathbf{u}, T \mathbf{u})$ is invariant under $T$. Any vector in $\Span(\mathbf{u}, T \mathbf{u})$ can be written as

```{math}
\begin{align*}
c_1 \mathbf{u} + c_2 T \mathbf{u}\end{align*}
```

for some real numbers $c_1$ and $c_2$. We have

```{math}
\begin{align*}
T (c_1 \mathbf{u} + c_2 T \mathbf{u})
= c_1 T \mathbf{u} + c_2 T^2 \mathbf{u}
= -c_2 \beta_j \mathbf{u} + (c_1 - c_2 \alpha_j) T \mathbf{u}\in\Span(\mathbf{u}, T \mathbf{u})
\end{align*}
```

where the second last equality follows form {eq}`eq:14`. This implies $\Span(\mathbf{u}, T \mathbf{u})$ is indeed invariant under $T$.

````

:::{note}

As we have commented in the proof, $\Span(\mathbf{u}, T \mathbf{u})$ actually has dimension $2$, which is equivalent to say $\mathbf{u}$ and $T \mathbf{u}$ are linearly independent. To see this, we assume they are linearly dependent and hence, there exists some real number $a$ such that

```{math}
\begin{align*}
T \mathbf{u} = a \mathbf{u}\end{align*}
```

Substitute $a \mathbf{u}$ for $T \mathbf{u}$ in the equation {eq}`eq:14` for several times, and we will obtain

```{math}
\begin{align*}(a^2 + a\alpha_j + \beta_j) \mathbf{u} = \mathbf{0}\end{align*}
```

Recall $\mathbf{u} \neq \mathbf{0}$, which implies

```{math}
\begin{align*}
a^2 + a\alpha_j + \beta_j = 0
\end{align*}
```

But this equation has no real solutions since $\alpha_j^2 < \beta_j$. Therefore, there does not exist a real $a$ such that $T \mathbf{u} = a \mathbf{u}$. Hence, $\dim \Span(\mathbf{u}, T \mathbf{u}) = 2$.

:::

````{prf:theorem}

Let $V$ be an odd-dimensional real vector space. Then any linear operator $T \in \mathcal{L}(V)$ has an eigenvalue.

````

````{prf:proof}

Suppose $\dim V = 2n - 1$($n \in \N^\ast$). We shall prove by induction on $n$. Let the induction hypothesis $P(n)$ be that

```{math}
\begin{align*}
P(n): \text{This theorem holds for $\dim V = 2n-1$.}\end{align*}
```
(Base Case) Let $n = 1$, then $\dim V = 1$. It is clear that $T$ has an eigenvalue in this case. Hence, $P(1)$ holds.

(Inductive Step) Assume $P(k)$ holds, we shall prove $P(k+1)$. It follows from {prf:ref}`thm:6` that there exists a subspace $U \leq V$ such that $U$ is invariant under $T$ and $\dim U = 1$ or $\dim U = 2$. If $\dim U = 1$, then it is clear that $T$ has an eigenvalue whose eigenspace *contains*$U$.

We now consider the scenario where $\dim U = 2$. First, we notice that there exists a subspace $W$ such that

```{math}
\begin{align*}
V = U \oplus W
\end{align*}
```

Notice that $\dim W = 2k-1$ since $\dim V = 2k+1$ and $\dim U = 2$. It is tempting to apply the induction hypothesis to $W$. But unfortunately, there is no guarantee that $W$ is invariant under $T$!.

Hence, instead of finding an eigenvalue of $T$ directly, we are going to first composite $T$ with a projection so that $W$ is invariant under the composition map, and then obtain an eigenvalue for that composition map. For each $\mathbf{v} \in V$ with $\mathbf{v} = \mathbf{u} + \mathbf{w}$($\mathbf{u} \in U$, $\mathbf{w} \in W$), define linear operators

```{math}
\begin{align*}
P_U \mathbf{v}&= \mathbf{u}&
P_W \mathbf{v}&= \mathbf{w}\end{align*}
```

We know from {prf:ref}`pro:4` that both $P_U$ and $P_W$ are projections. For the time being, we will only make use of $P_W$. (We will need $P_U$ later.) Notice that $W$ is clearly invariant under the composition $P_W T$. Then applying the induction hypothesis $P(k)$, we may conclude that there exists an eigenvalue $\lambda$ for $P_W T$. Let $\mathbf{w}$ be one of its corresponding eigenvectors.

We will now prove $\lambda$ is also an eigenvalue of $T$ by showing that the linear operator $T - \lambda I$ is not injective. To do so, we will show that $T - \lambda I$ maps some subspace into a subspace with smaller dimension. Consider the subspace

```{math}
\begin{align*}
U \oplus\Span(\mathbf{w})
\end{align*}
```
(Recall $\mathbf{w}$ is an eigenvector of $P_W T$ corresponding to $\lambda$.) The reason why we can write $\oplus$ here is that $\mathbf{w} \in W$($\mathbf{w} \neq \mathbf{0}$) and hence $\mathbf{w} \notin U$. We claim that $T - \lambda I$ maps $U \oplus \Span(\mathbf{w})$ into $U$. To see this, we pick an arbitrary vector in $U \oplus \Span(\mathbf{w})$, which can be written as $\mathbf{u} + a \mathbf{w}$($\mathbf{u} \in U$, $a \in \R$), we have

```{math}
:label: eq:15
\begin{align}(T - \lambda I) (\mathbf{u} + a \mathbf{w})
= (T - \lambda I) \mathbf{u}
+ a T \mathbf{w}
- a \lambda\mathbf{w}\end{align}
```

Notice that

```{math}
:label: eq:16
\begin{align}\lambda\mathbf{w} = P_W T \mathbf{w}\end{align}
```
(Recall that we have defined $P_U$ previously, and we will use it here.) And it follows from {prf:ref}`pro:5` that

```{math}
:label: eq:17
\begin{align}
T \mathbf{w} = (P_U + P_W) T \mathbf{w}\end{align}
```

Plug {eq}`eq:16` and {eq}`eq:17` into {eq}`eq:15`, we obtain

```{math}
:label: eq:18
\begin{align}(T - \lambda I) (\mathbf{u} + a \mathbf{w})
&= (T - \lambda I) \mathbf{u}
+ a (P_U + P_W) T \mathbf{w}
- a P_W T \mathbf{w}\nonumber\\&= (T - \lambda I) \mathbf{u}
+ a P_U T \mathbf{w}\end{align}
```

Recall $U$ is invariant under $T$. Hence, $(T - \lambda I) \mathbf{u} \in U$. Moreover, since $P_U$ projects every vector into $U$, it is clear $a P_U T \mathbf{w} \in U$. Therefore, {eq}`eq:18` implies that

```{math}
\begin{align*}(T - \lambda I) (\mathbf{u} + a \mathbf{w}) \in U
\end{align*}
```

This shows that $T - \lambda I$ maps $U + \Span(\mathbf{w})$ into $U$. Since $U + \Span(\mathbf{w})$ clearly has larger dimension than that of $U$(actually, it is $1$ dimension larger), $T - \lambda I$ is not injective. Therefore, $\lambda$ is indeed an eigenvalue of $T$. This completes the proof.

````

````{prf:proposition}
:label: pro:12

Let $V$ be a finite-dimensional vector space
and $T \in \mathcal{L}(V)$.
Suppose $\lambda_1, \ldots, \lambda_m$ are all distinct eigenvalues
of $T$.
Then the following are equivalent:
- ➀ $[T]_{\mathcal{B}}$ is diagonal w.r.t. some basis $\mathcal{B}$
of $V$.
- ➁ $V$ has a basis consisting of eigenvectors of $T$.
- ➂ There exist $1$-dimensional vector
subspace $U_1, \ldots, U_n$,
each invariant under $T$,
such that

```{math}
\begin{align*}
V = U_1 \oplus\cdots\oplus U_n
\end{align*}
```
- ➃ $V$ can be decomposed as

```{math}
\begin{align*}
V = \ker(T - \lambda_1 I) \oplus\cdots\oplus\ker(T - \lambda_m I)
\end{align*}
```
- ➄ We have the equation

```{math}
\begin{align*}\dim V = \dim\ker(T - \lambda_1 I) + \cdots
+ \dim\ker(T - \lambda_m I)
\end{align*}
```


````
