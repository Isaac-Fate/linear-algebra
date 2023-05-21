
```{index} orthonormal
```
# Orthonormal Bases
A list of vectors $(\mathbf{e}_1, \ldots, \mathbf{e}_m)$ is called **orthonormal** if

```{math}
\begin{align*}\left\langle\mathbf{e}_i, \mathbf{e}_j
\right\rangle = \begin{cases}
1 &i=j\\
0 &i \neq j
\end{cases}\end{align*}
```

That is, each pair of vectors in the list is orthogonal and every vector itself is a unit vector.



````{admonition} Exercise 6.2

Suppose $V = \R^3$. What is the norm of the vector $ 3 \mathbf{e}_1 + 4 \mathbf{e}_2 + 12 \mathbf{e}_3 $ where $(\mathbf{e}_1, \mathbf{e}_2, \mathbf{e}_3)$ is the standard basis of $\R^3$?


````

````{admonition} Solution
:class: tip, dropdown

By definition, squaring the norm in question gives

```{math}
\begin{alignat*}2\left\langle3 \mathbf{e}_1 + 4 \mathbf{e}_2 + 12 \mathbf{e}_3,
3 \mathbf{e}_1 + 4 \mathbf{e}_2 + 12 \mathbf{e}_3
\right\rangle&=& \;& 3^2 \left\langle\mathbf{e}_1, \mathbf{e}_1 \right\rangle
+ 3 \times 4 \left\langle\mathbf{e}_1, \mathbf{e}_2 \right\rangle
+ 3 \times 12 \left\langle\mathbf{e}_1, \mathbf{e}_3 \right\rangle\\&&& +4 \times 3 \left\langle\mathbf{e}_2, \mathbf{e}_1 \right\rangle
+ 4^2 \left\langle\mathbf{e}_2, \mathbf{e}_2 \right\rangle
+ 4 \times 12 \left\langle\mathbf{e}_2, \mathbf{e}_3 \right\rangle\\&&& +12 \times 3 \left\langle\mathbf{e}_3, \mathbf{e}_1 \right\rangle
+ 12 \times 4 \left\langle\mathbf{e}_3, \mathbf{e}_2 \right\rangle
+ 12^2 \left\langle\mathbf{e}_3, \mathbf{e}_3 \right\rangle\\&=&& 3^2 + 4^2 + 12^2 \\&=&& 13^2
\end{alignat*}
```

Hence, the norm is $13$.

Geometrically, one can also argue by the Pythagorean theorem that $3 \mathbf{e}_1 + 4 \mathbf{e}_2 = (3, 4, 0)^\top$ is a vector in a $2$-dimensional plane with norm $5$. Since $12 \mathbf{e}_3 = (0, 0, 12)^\top$ is orthogonal to $(3, 4, 0)^\top$, we can then apply the Pythagorean theorem again to obtain the final result.

````
The second solution to the preceding exercise reveals a deeper meaning of this question and inspires us to generalize the Pythagorean theorem as shown in the next proposition.


````{prf:proposition}
:label: pro:6

If $(\mathbf{e}_1, \ldots, \mathbf{e}_m)$ is a list of orthonormal vectors in an inner product space, then

```{math}
\begin{align*}\norm{a_1 \mathbf{e}_1 + \cdots + a_m \mathbf{e}_m}^2
= \abs{a_1}^2 + \cdots + \abs{a_m}^2
\end{align*}
```

where $a_1, \ldots, a_m \in \FF$.

````

````{prf:proof}

We shall prove by induction on $m$.

(Base Case: $m = 1$) In this case, by the properties of norms we have

```{math}
\begin{align*}\norm{a_1 \mathbf{e}_1} = \abs{a_1}\norm{\mathbf{e}_1} = \abs{a_1}\end{align*}
```
(Inductive Step) Assume this proposition holds for $m = k$ orthonormal vectors, we need to show it also holds for $m = k+1$. Note that

```{math}
\begin{align*}\langle
a_{k+1}\mathbf{e}_{k+1},
a_1 \mathbf{e}_1 + \cdots + a_k \mathbf{e}_k
\rangle
= \sum_{j=1}^k \bar{a}_{k+1} a_j \langle\mathbf{e}_{k+1},
\mathbf{e}_{j}\rangle
= 0
\end{align*}
```

which means that $a_1 \mathbf{e}_1 + \cdots + a_k \mathbf{e}_k$ and $a_{k+1} \mathbf{e}_{k+1}$ are orthogonal to each other. Then by Pythagorean theorem ({prf:ref}`thm:9`), we have

```{math}
\begin{align*}\norm{a_1 \mathbf{e}_1 + \cdots + a_k \mathbf{e}_k + a_{k+1} \mathbf{e}_{k+1}}^2
&= \norm{a_1 \mathbf{e}_1 + \cdots + a_k \mathbf{e}_k}^2 + \norm{a_{k+1} \mathbf{e}_{k+1}}^2 \\&= \norm{a_1 \mathbf{e}_1 + \cdots + a_k \mathbf{e}_k}^2 + \abs{a_{k+1}}^2
\end{align*}
```

where the last equality follows from the properties of norms. We then apply the induction hypothesis to the vectors $(\mathbf{e}_1, \ldots, \mathbf{e}_k)$. It follows that

```{math}
\begin{align*}\norm{a_1 \mathbf{e}_1 + \cdots + a_k \mathbf{e}_k + a_{k+1} \mathbf{e}_{k+1}}^2
&= \norm{a_1 \mathbf{e}_1 + \cdots + a_k \mathbf{e}_k}^2 + \abs{a_{k+1}}^2 \\&= \abs{a_1}^2 + \cdots + \abs{a_k}^2 + \abs{a_{k+1}}^2
\end{align*}
```

This completes the proof.

````

The following corollary is a simple application of {prf:ref}`pro:6`, which says a list of nonzero orthogonal vectors must be linearly independent.


````{prf:corollary}
:label: cor:3

Every list of orthogonal nonzero vectors $(\mathbf{v}_1, \ldots, \mathbf{v}_m)$ in an inner product space is linearly independent.

````

````{prf:proof}

The equation

```{math}
\begin{align*}
a_1 \mathbf{v}_1 + \cdots a_m \mathbf{v}_m = \mathbf{0}\end{align*}
```

yields

```{math}
\begin{align*}\norm{a_1 \mathbf{v}_1 + \cdots a_m \mathbf{v}_m}^2 = 0
\end{align*}
```

We can then compute the square of the norm using {prf:ref}`pro:6`:

```{math}
\begin{align*}\abs{a_1}^2 \norm{\mathbf{v}_1}^2 + \cdots + \abs{a_m}^2 \norm{\mathbf{v}_m}^2 = 0
\end{align*}
```

This implies

```{math}
\begin{align*}
a_1 = \cdots = a_m = 0
\end{align*}
```

Hence, $(\mathbf{v}_1, \ldots, \mathbf{v}_m)$ is linearly independent.

````

In general, it is usually hard to find the components of a vector, $\mathbf{v}$, with respect to some basis. However, the given basis, $(\mathbf{e}_1, \ldots, \mathbf{e}_n)$, is orthonormal, then the component of $\mathbf{v}$ with respect to $\mathbf{e}_j$ is simply the inner product, $\left\langle\mathbf{e}_j, \mathbf{v} \right \rangle$.


````{prf:theorem}

Suppose $(\mathbf{v}_1, \ldots, \mathbf{v}_n)$ is an orthonormal basis of $V$. Then for every $\mathbf{v} \in V$, we have

```{math}
:label: eq:29
\begin{align}\mathbf{v}
= \left\langle\mathbf{e}_1, \mathbf{v}\right\rangle\mathbf{e}_1
+ \cdots
+ \left\langle\mathbf{e}_n, \mathbf{v}\right\rangle\mathbf{e}_n
\end{align}
```

and

```{math}
:label: eq:30
\begin{align}\norm{\mathbf{v}}^2
= \abs{\left\langle\mathbf{e}_1, \mathbf{v} \right \rangle}^2
+ \cdots
+ \abs{\left\langle\mathbf{e}_n, \mathbf{v} \right \rangle}^2
\end{align}
```

````

````{prf:proof}

Suppose $\mathbf{v} = \sum_{j=1}^n a_j \mathbf{e}_j$. Taking the inner product with $\mathbf{e}_i$ gives

```{math}
\begin{align*}\left\langle\mathbf{e}_i, \mathbf{v}\right\rangle
= \sum_{j=1}^n a_j \left\langle\mathbf{e}_i, \mathbf{e}_j \right\rangle
= a_i
\end{align*}
```

This proves {eq}`eq:29`. And {eq}`eq:30` follows directly from {prf:ref}`pro:6`
````
