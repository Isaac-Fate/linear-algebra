# Upper Triangular Matrices

````{prf:theorem}
:label: thm:2

Any operator on a finite-dimensional nonzero complex vector space has an eigenvalue.

````

````{prf:proof}

TODO

````

````{prf:proposition}
:label: pro:2

Let $V$ be a vector space and $T \in \mathcal{L}(V)$. Suppose $(\mathbf{v}_1, \ldots, \mathbf{v}_n)$ is a basis for $V$, then the following are equivalent:
- ➀ $[T]$ is an upper triangular matrix with respect to the basis $(\mathbf{v}_1, \ldots, \mathbf{v}_n)$.
- ➁ $T \mathbf{v}_k \in \Span(\mathbf{v}_1, \ldots, \mathbf{v}_k)$ for all $k = 1, \ldots, n$.
- ➂ $\Span(\mathbf{v}_1, \ldots, \mathbf{v}_k)$ is invariant under $T$ for all $k = 1, \ldots, n$.


````

````{prf:proof}

TODO

````

````{prf:theorem}
:label: thm:3

Let $V$ be a complex vector space, and $T \in \mathcal{L}(V)$. Then there exists some basis $B$ for $V$ such that $[T]_B$ is upper triangular.

````

````{prf:remark}

In fact, as we shall see in {doc}`/Inner Product Spaces/Upper Triangular Matrices With Respect to Orthonormal Bases`, we can find an *orthonormal* basis $B$ such that $[T]_B$ is upper triangular, which is a stronger version of this theorem.

````
To prove this theorem, we first use {prf:ref}`thm:2` to find an eigenvalue $\lambda$ for $T$. After that, we construct a $T$-invariant subspace $\im(T - \lambda I)$, which has smaller dimension of $V$. Then we may prove this by mathematical induction.


````{prf:proof}

We shall prove by mathematical induction. The hypothesis $P(n)$ is stated as

```{math}
\begin{align*}
P(n): \text{This theorem holds for $\dim V \leq n$.}\end{align*}
```
(Base Case: $\dim V = 1$) If $V$ has dimension $1$, then this theorem holds trivially since $[T]$ consists of one entry, which clearly upper triangular.

(Inductive Step) Assume $P(k)$($k \geq 1$) holds, we need to show that $P(k+1)$ also holds. Note that it suffices to prove this theorem holds for $\dim V = k+1$. Firstly, by {prf:ref}`thm:2`, $T$ has an eigenvalue $\lambda$. Consider the subspace

```{math}
\begin{align*}
U = \im(T - \lambda I)
\end{align*}
```
We claim that $U$ is invariant under $T$. Pick any $\mathbf{u} \in U$, we need to show $T \mathbf{u} \in U$. Since $\mathbf{u} \in U$, there exists some $\mathbf{v} \in V$ such that $\mathbf{u} = (T - \lambda I) \mathbf{v}$. It then follows that

```{math}
\begin{align*}
T \mathbf{u} = T(T - \lambda I) \mathbf{v}
= (T - \lambda I) T \mathbf{v}
= (T - \lambda I) (T \mathbf{v})
\in U
\end{align*}
```

This shows $U$ is indeed invariant under $T$, which implies that the restricted map $T|_{U}$ is an operator on $U$.

Note that $\dim U < \dim V = k+1$, which implies $\dim U \leq k$. Now, we may apply the induction hypothesis $P(k)$ on $U$. It follows that the operator $[T|_U]_{B^\prime}$ is upper triangular for some basis

```{math}
\begin{align*}
B^\prime = (\mathbf{u}_1, \ldots, \mathbf{u}_m)
\end{align*}
```

of subspace $U$.

We then extend $B^\prime$ to a basis $B$ for $V$ by adding some vectors $\mathbf{v}_1, \ldots, \mathbf{v}_{k-m+1}$. In this case,

```{math}
\begin{align*}
B = (\mathbf{u}_1, \ldots, \mathbf{u}_m, \mathbf{v}_1, \ldots, \mathbf{v}_{k-m+1})
\end{align*}
```

One may conjecture that $[T]_B$ is an upper triangular matrix, which is indeed true, and we shall now prove this by verifying statement 2 in {prf:ref}`pro:2`. Since $U$ is invariant under $T$, it is clear

```{math}
\begin{align*}
T \mathbf{u}_j \in\Span(\mathbf{u}_1, \ldots, \mathbf{u}_j)
\quad\forall j = 1, \ldots, m
\end{align*}
```

As for $\mathbf{v}_j$, we have

```{math}
\begin{align*}
T \mathbf{v}_j
= (T - \lambda I) \mathbf{v}_j + \lambda\mathbf{v}_j
\end{align*}
```

Note that $(T - \lambda I) \mathbf{v}_j \in U$. Thus,

```{math}
\begin{align*}(T - \lambda I) \mathbf{v}_j
\in\Span(\mathbf{u}_1, \ldots, \mathbf{u}_j, \mathbf{v}_j)
\subset\Span(\mathbf{u}_1, \ldots, \mathbf{u}_j, \mathbf{v}_1, \ldots, \mathbf{v}_j)
\quad\forall j = 1, \ldots, k-m+1
\end{align*}
```

Therefore, $[T]_B$ is indeed upper triangular. This completes the proof.

````
If somehow we know that the matrix representation of a linear operator $T$ is upper triangular for some basis $B$. Then it becomes extremely easy to check whether it is invertible. In a word, $T$ is invertible if and only if all diagonal entries of matrix $[T]_B$ are nonzero as stated in {prf:ref}`pro:3`.


To make the proof of {prf:ref}`pro:3` cleaner, we fist prove the following lemma.


````{prf:lemma}
:label: lem:1

Let $V$ be a finite-dimensional vector space, and $T \in \mathcal{L}(V)$. Suppose $[T]_B$ is an upper triangular matrix for some basis $B = (\mathbf{v}_1, \ldots, \mathbf{v}_n)$ of $V$. Then $(T \mathbf{v}_1, \ldots, T \mathbf{v}_n)$ is linearly independent if all diagonal entries of $[T]_B$ are nonzero.

````

````{prf:proof}

We shall prove by induction on $\dim V = n$.

(Base Case: $n = 1$) In this case, suppose $B = (\mathbf{v})$, and then we have $[T]_B = [\lambda]$ for some nonzero $\lambda$. It follows that $T \mathbf{v} = \lambda \mathbf{v} \neq 0$. The list $(T \mathbf{v})$ is clearly linearly independent since it consists only one nonzero vector.

(Inductive Step) Assume this lemma holds for $\dim V = k$($k \geq 1$). Now, suppose $\dim V = k+1$ and the basis $B = (\mathbf{v}_1, \ldots, \mathbf{v}_{k+1})$. Write

```{math}
\begin{align}[T]_B = \begin{bmatrix}
\lambda_1 & a_{1,2} & a_{1,3} & \cdots & a_{1,k+1} \\
& \lambda_2  & a_{2,3} &  \cdots & a_{2,k+1} \\
& & \ddots & \ddots & \vdots\\
& & & \lambda_{k} & a_{k,k+1}\\
0 & & & & \lambda_{k+1}
\label{eq:8}
\end{bmatrix}\end{align}
```

The given condition implies that $\lambda_j \neq 0 \; \forall j=1, \ldots, k+1$.

Let

```{math}
\begin{align*}
U = \Span(\mathbf{v}_1, \ldots, \mathbf{v}_k)
\end{align*}
```

We know from statement 3 in {prf:ref}`pro:2` that $U$ is invariant under $T$. Hence, $T|_U$ is an operator on $U$. Let $B^\prime = (\mathbf{v}_1, \ldots, \mathbf{v}_k)$. It is clear that

```{math}
\begin{align*}[T|_U]_{B^\prime} = \begin{bmatrix}
\lambda_1 & a_{1,2} & \cdots & a_{1,k} \\
& \lambda_2  &  \cdots & a_{2,k} \\
& & \ddots & \vdots\\
0 & & & \lambda_{k}
\end{bmatrix}\end{align*}
```

It then follows from the induction hypothesis that $(T \mathbf{v}_1, \ldots, T \mathbf{v}_k)$ is linearly independent.

The last column of {eq}`eq:8` gives

```{math}
:label: eq:9
\begin{align}
T \mathbf{v}_{k+1}
= a_{1,k+1}\mathbf{v}_1
+ \cdots
+ a_{k,k+1}\mathbf{v}_k
+ \lambda_{k+1}\mathbf{v}_{k+1}\end{align}
```

Set

```{math}
:label: eq:11
\begin{align}
c_1 T \mathbf{v}_1 + \cdots + c_k T \mathbf{v}_k + c_{k+1} T \mathbf{v}_{k+1} = \mathbf{0}\end{align}
```

Plugin {eq}`eq:9`,

```{math}
:label: eq:10
\begin{align}
c_1 T \mathbf{v}_1 + \cdots
+ c_k T \mathbf{v}_k
+ c_{k+1}(
a_{1,k+1}\mathbf{v}_1
+ \cdots
+ a_{k,k+1}\mathbf{v}_k
) + c_{k+1}\lambda_{k+1}\mathbf{v}_{k+1}
= \mathbf{0}\end{align}
```

Note that all terms expect for the last one on the left-hand side of {eq}`eq:10` is in $\Span(\mathbf{v}_1, \ldots, \mathbf{v}_k)$. Hence, {eq}`eq:10` yields $c_{k+1} = 0$. Then {eq}`eq:10` itself reduces to

```{math}
\begin{align*}
c_1 T \mathbf{v}_1 + \cdots
+ c_k T \mathbf{v}_k
= \mathbf{0}\end{align*}
```

This implies $c_1 = \cdots = c_k = 0$ since we have already shown that $(T \mathbf{v}_1, \ldots, T \mathbf{v}_k)$ is linearly independent. In summary, {eq}`eq:11` finally yields that $c_1 = \cdots = c_{k+1} = 0$, which means $(T \mathbf{v}_1, \ldots, T \mathbf{v}_{k+1})$ is linearly independent. This completes the proof.

````

````{prf:proposition}
:label: pro:3

Let $T$ be a linear operator on $V$. Suppose $[T]_B$ is an upper triangular matrix for some basis $B$ of $V$. Then $T$ is invertible if and only if all diagonal entries of $[T]_B$ are nonzero.

````

````{prf:proof}

Suppose $\dim V = n$ and $B = (\mathbf{v}_1, \ldots, \mathbf{v}_n)$. Write

```{math}
\begin{align*}[T]_B = \begin{bmatrix}
\lambda_1 & a_{1,2} & a_{1,3} & \cdots & a_{1,n} \\
& \lambda_2  & a_{2,3} &  \cdots & a_{2,n} \\
& & \lambda_3 &  \cdots & a_{3, n} \\
& & &  \ddots & \vdots\\
0 & & & & \lambda_n
\end{bmatrix}\end{align*}
```

We have

```{math}
:label: eq:7
\begin{align}
T \mathbf{v}_j = a_{1,j}\mathbf{v}_1 + \cdots + a_{j-1, j}\mathbf{v}_{j-1} + \lambda_j \mathbf{v_j}\end{align}
```

Recall {prf:ref}`cor:2`, and what we need to prove will become that $(T \mathbf{v}_1, \ldots, T \mathbf{v}_n)$ is linearly independent if and only if $\lambda_j \neq 0 \; \forall j=1,\ldots,n$.

(Sufficiency) This is proved by {prf:ref}`lem:1`.

(Necessity) For the necessity, we shall prove by *contrapositive*. Assume $\lambda_j = 0$ for some $j$. If $j = 1$, then {eq}`eq:7` yields $T \mathbf{v}_1 = \mathbf{0}$, which implies $(T \mathbf{v}_1, \ldots, T \mathbf{v}_n)$ is linearly dependent. If $j \geq 2$, then it follows from {eq}`eq:7` that

```{math}
\begin{align*}
T \mathbf{v}_j \in\Span(T\mathbf{v}_1, \ldots, T\mathbf{v}_{j-1})
\end{align*}
```

This again implies $(T \mathbf{v}_1, \ldots, T \mathbf{v}_n)$ is linearly dependent.

````
Another application of {prf:ref}`pro:3` is to prove the following theorem, which states that the eigenvalues of $T$ consists precisely of the diagonal entries of $[T]_B$ provided that it is an upper triangular matrix.


````{prf:theorem}

Let $V$ be a vector space and $T \in \mathcal{L}(V)$. If $[T]_B$ is upper triangular for some basis $B$ of $V$, then the eigenvalues of $T$ consists precisely of diagonal entries of $[T]_B$.

````

````{prf:remark}

This theorem in fact says two things. One is that all diagonal entries of $[T]_B$ must be eigenvalues. And the other one is that if $\lambda$ is an eigenvalue of $T$, then it must appear at the diagonal of $[T]_B$.

````

````{prf:proof}

Write

```{math}
\begin{align*}[T]_B = \begin{bmatrix}
\lambda_1 & & \ast \\
& \ddots & \\
0 & & \lambda_n
\end{bmatrix}\end{align*}
```
We first show that each $\lambda_j$ is an eigenvalue of $T$. It is clear that

```{math}
\begin{align*}[T - \lambda_j I]_B = \begin{bmatrix}
\lambda_1 - \lambda_j & & & & \ast \\
& \ddots & & & \\
& & \lambda_j - \lambda_j = 0 & &\\
& &   & \ddots &\\
0 & & & & \lambda_n - \lambda_j
\end{bmatrix}\end{align*}
```

Since $[T - \lambda_j I]_B$ is upper triangular and there exists a zero entry on its diagonal, it then follows from {prf:ref}`pro:3` that $T - \lambda_j I$ is not invertible, which implies $\lambda_j$ is an eigenvalue of $T$.

Let $\lambda$ be an eigenvalue of $T$, we also need to show that $\lambda$ appears on the diagonal of $[T]_B$. We have

```{math}
\begin{align*}[T - \lambda I]_B = \begin{bmatrix}
\lambda_1 - \lambda & & \ast \\
& \ddots & \\
0 & & \lambda_n - \lambda
\end{bmatrix}\end{align*}
```

Note that $[T - \lambda I]_B$ is upper triangular and $T - \lambda I$ is not invertible since $\lambda$ is an eigenvalue of $T$. Thus, again by {prf:ref}`pro:3`, we conclude that there is some zero entry on the diagonal of $[T - \lambda I]_B$. That is, $\lambda_j = \lambda$ for some $j$, which implies $\lambda$ indeed appears on the diagonal of $[T]_B$.

````
Let $B_1$ and $B_2$ be two bases of $V$, and $T$ a linear operator. Suppose $[T]_{B_1}$ and $[T]_{B_2}$ are both upper triangular matrices. Now, we know that the **sets** of diagonal entries of $[T]_{B_1}$ and $[T]_{B_2}$ must the same, which both consist of **distinct** eigenvalues of $T$.

But is it possible that the occurrence of the same eigenvalue $\lambda$ on the diagonal differ from each other? For example, if $\lambda$ appears $k$ times on the diagonal of $[T]_{B_1}$, then must $\lambda$ appear also $k$ times on the diagonal of $[T]_{B_2}$?

The answer is yes. But to prove this we need to introduce the concept of **characteristic polynomials**, which will be covered in a later chapter.



