
```{index} QR decomposition
```
# QR Decomposition

We have studied how to conduct the Gram-Schmidt process to construct an orthonormal basis out of any given basis. In terms of matrices, there is a very important matrix decomposition called the **QR decomposition** that corresponds to the Gram-Schmidt process.

Suppose there is a matrix $A \in \FF^{m \times n}$($m \geq n$) with full rank, in this case, rank $n$. Its column vectors are interpreted as linearly independent vectors in $\FF^m$. Note that if $m = n$, then the column vectors form a basis. By conducting the Gram-Schmidt process, or in terms of matrices, we have

```{math}
\begin{align*}
A = QR
\end{align*}
```

```{index} orthogonal matrix
```

```{index} unitary matrix
```

```{index} classical Gram-Schmidt Process
```

```{index} modified Gram-Schmidt process
```

where $Q$ is an $m \times n$ matrix whose column vectors are orthonormal and $R$ is an upper-triangular matrix with *positive* diagonal entries. By convention, we use letters Q and R to denote these two matrices, hence the name QR decomposition. We have special names for matrices like $Q$ provided they are square matrices. We call a *real**square* matrix an **orthogonal matrix** if it consists of orthonormal columns. The name is changed to **unitary matrix** if the square matrix is *complex*.

It is clear that $A$ consists of the original list of linearly independent vectors, and $Q$ consists of the desired orthonormal vectors. But what is $R$ made of? We shall soon answer this question. Briefly speaking, it consists of the inner products (see {eq}`eq:5`) we compute during the Gram-Schmidt process.

In fact, we often have two ways to implement the QR decomposition in practice. One is called the **classical Gram-Schmidt Process**, and the other is called the **modified Gram-Schmidt process**.


## Classical Gram-Schmidt Process

The classical Gram-Schmidt process is described in {prf:ref}`alg:2`, which is nothing but an algorithmic representation of {eq}`eq:5`.


````{prf:algorithm} Classical Gram-Schmidt QR Decomposition
:label: alg:2
```{image} /alg-snippets/6da6ad4f625d916ea1966a1955914e697578325ff6152931ca44ad91251a50ec.png
:alt: Classical Gram-Schmidt QR Decomposition
:align: center
```
````

To associate with the notations we are familiar with, write

```{math}
\begin{align*}
A = \begin{bmatrix}
\mathbf{v}_1 & \cdots & \mathbf{v}_n
\end{bmatrix}\quad\text{and}\quad
Q = \begin{bmatrix}
\mathbf{e}_1 & \cdots & \mathbf{e}_n
\end{bmatrix}\end{align*}
```

By comparing with {eq}`eq:5`, we note that line 2, 6 and 10 in {prf:ref}`alg:2` define the entries of $R = (r_{ij})$ in the following way:

```{math}
\begin{align*}
r_{ij} = \begin{cases}
\left\langle\mathbf{e}_i, \mathbf{v}_j \right \rangle
&i < j \\
\norm{\mathbf{u}_j}
&i=j \\
0
&i > j
\end{cases}\end{align*}
```

This answers our previous question about what $R$ looks like.

You might worry that {prf:ref}`alg:2` may fail when executing line 11 if $R[j,j] = 0$. But please be rest assured that this cannot happen since we have already shown in the proof of {prf:ref}`thm:1` that $\mathbf{u} \neq 0$, i.e., $R[j,j] \neq 0$. So, is our work done here? Is there anything we have yet to prove? Though {prf:ref}`alg:2` will not generate any errors, it will always produce matrices $Q$ and $R$, and $Q$ consists of orthonormal columns, we have not however justified that the product of $Q$ and $R$ is $A$, i.e., $A = QR$. We now prove this in the following.

In each iteration $j$, line 11 in {prf:ref}`alg:2` gives

```{math}
:label: eq:31
\begin{align}\mathbf{u}
= R[j,j] Q[:, j]
= r_{jj}\mathbf{e}_j
\end{align}
```

Replacing $\mathbf{u}$ using line 4 through line 9 yields

```{math}
:label: eq:32
\begin{align}\mathbf{u}
= A[:, j] - \sum_{i=1}^{j-1} R[i,j] Q[:, i]
= \mathbf{v}_j - \sum_{i=1}^{j-1} r_{ij}\mathbf{e}_i
\end{align}
```

We then equate the right-hand sides of {eq}`eq:31` and {eq}`eq:32`:

```{math}
\begin{align*}\mathbf{v}_j = \sum_{i=1}^j r_{ij}\mathbf{e}_i
\end{align*}
```

In terms of matrices, this is equivalent to

```{math}
\begin{align*}
A[:,j] = Q R[:, j]\end{align*}
```

since $r_{ij} = 0$ for $i > j$. Because the above equation holds for every $j$, by stacking $A[:,j]$ together, we finally obtain $A = QR$ as desired.

We summarize the QR decomposition into the following theorem.


````{prf:theorem} QR Decomposition

Let $A \in \FF^{m \times n}$($m \geq n$) be a matrix with full rank, i.e., rank $n$. Then $A$ can be decomposed as a product of a matrix $Q$ consisting of orthonormal columns and an upper triangular matrix $R$ with **positive** entries along the diagonal. That is,

```{math}
\begin{align*}
A = Q R
\end{align*}
```

````

Now, let us work on an example using the QR decomposition.


````{admonition} Exercise 6.3

Apply the QR decomposition to the matrix

```{math}
\begin{align*}
A = \begin{bmatrix}
0 & 4 & 5 \\
1 & 2 & 3 \\
0 & 0 & 6
\end{bmatrix}\end{align*}
```

````

````{admonition} Solution
:class: tip, dropdown

Suppose $A = \begin{bmatrix}
\mathbf{v}_1 & \mathbf{v}_2 & \mathbf{v}_3
\end{bmatrix}$(Step 1) $\mathbf{u}_1 = \mathbf{v}_1 = (0,1,0)^\top$. $r_{1,1} = \norm{\mathbf{u}_1} = 1$. $\mathbf{e}_1 = \mathbf{u}_1 / 1 = (0,1,0)^\top$.

(Step 2) $r_{1,2}$ is computed by

```{math}
\begin{align*}
r_{1,2}
= \left\langle\mathbf{e}_1, \mathbf{v}_2 \right\rangle
= (0,1,0) (4,2,0)^\top
= 2
\end{align*}
```

Subtracting the projections, we have

```{math}
\begin{align*}\mathbf{u}_2 = \mathbf{v}_2 - r_{1,2}\mathbf{e}_1
= (4,2,0)^\top - 2 \times(0,1,0)^\top
= (4,0,0)^\top\end{align*}
```

Then, $r_{2,2} = \norm{\mathbf{u}_2} = 4$, and $\mathbf{e}_2 = \mathbf{u}_2 / 4 = (1,0,0)^\top$.

(Step 3) $r_{1,3}$ and $r_{2,3}$ are computed by

```{math}
\begin{align*}
r_{1,3}&= \left\langle\mathbf{e}_1, \mathbf{v}_3 \right\rangle
= (0,1,0) (5,3,6)^\top
= 3 \\
r_{2,3}&= \left\langle\mathbf{e}_2, \mathbf{v}_3 \right\rangle
= (1,0,0) (5,3,6)^\top
= 5
\end{align*}
```

Subtracting the projections, we have

```{math}
\begin{align*}\mathbf{u}_3 = \mathbf{v}_3 - (r_{1,3}\mathbf{e}_1 + r_{2,3}\mathbf{e}_2)
= (5,3,6)^\top - (3 \times(0,1,0)^\top + 5 \times(1,0,0)^\top)
= (0,0,6)^\top\end{align*}
```

Then, $r_{3,3} = \norm{\mathbf{u}_3} = 6$, and $\mathbf{e}_3 = \mathbf{u}_3 / 6 = (0,0,1)^\top$.

In summary, matrices $Q$ and $R$ are given by

```{math}
\begin{align*}
Q = \begin{bmatrix}
0 & 1 & 0 \\
1 & 0 & 0 \\
0 & 0 & 1 \\
\end{bmatrix}\quad\text{and}\quad
R = \begin{bmatrix}
1 & 2 & 3 \\
0 & 4 & 5 \\
0 & 0 & 6 \\
\end{bmatrix}\end{align*}
```

````
## Modified Gram-Schmidt Process
