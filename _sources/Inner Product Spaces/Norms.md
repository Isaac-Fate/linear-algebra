# Norms

````{prf:definition}

Let $V$ be an inner product space. The norm of a vector $\mathbf{v} \in V$ is defined as

```{math}
\begin{align*}\norm{\mathbf{v}} = \sqrt{\left\langle\mathbf{v}, \mathbf{v} \right \rangle}\end{align*}
```

````
In the following, we list some fundamental properties of the norms, which can be proved using the properties of inner products.


````{prf:proposition}

For vectors $\mathbf{v}, \mathbf{w}$ in an inner product space, we have
- ➀ (Positive-Definiteness) $\norm{\mathbf{v}} \geq 0$ and $\norm{\mathbf{v}} = 0$ if and only if $\mathbf{v} = \mathbf{0}$.
- ➁ (Homogeneity) $\norm{a \mathbf{v}} = \abs{a} \norm{\mathbf{v}}$ where $a \in \FF$.
- ➂ (Triangle Inequality) $\norm{\mathbf{v} + \mathbf{w}} \leq \norm{\mathbf{v}} + \norm{\mathbf{w}}$.


````

````{prf:proof}

Here we only prove the first and the second property, which are immediate results of the properties of inner products. To prove the third property, i.e., the triangle inequality (see {prf:ref}`thm:7`), we need to use the Cauchy-Schwarz Inequality, which will be shown later.

It is clear from the definition of norms that $\norm{\mathbf{v}} \geq 0$. Moreover,

```{math}
\begin{align*}\norm{\mathbf{v}} = 0
\iff\left\langle\mathbf{v}, \mathbf{v}\right\rangle = 0
\iff\mathbf{v} = \mathbf{0}\end{align*}
```
We now prove the second property. We have

```{math}
\begin{align*}\norm{a \mathbf{v}}^2
&= \langle a \mathbf{v}, a \mathbf{v}\rangle\\&= \bar{a} a \langle\mathbf{v}, \mathbf{v}\rangle\\&= \abs{a}^2 \norm{\mathbf{v}}^2
\end{align*}
```

Hence, $\norm{a \mathbf{v}} = \abs{a} \norm{\mathbf{v}}$.

````

````{prf:definition}

```{index} orthogonal
```

Two vectors $ \mathbf{u} $ and $\mathbf{v}$ in an inner product space are said to be **orthogonal** to each other if

```{math}
\begin{align*}\left\langle\mathbf{u}, \mathbf{v}\right\rangle = 0
\end{align*}
```

````

````{prf:theorem} Pythagoean Theorem
:label: thm:9

Let $\mathbf{u}$ and $\mathbf{v}$ be two orthogonal vectors in an inner product space $V$. Then we have the inequality:

```{math}
:label: eq:20
\begin{align}\norm{\mathbf{u} + \mathbf{v}}^2
= \norm{\mathbf{u}}^2 + \norm{\mathbf{v}}^2
\end{align}
```

````

````{prf:proof}

We have

```{math}
:label: eq:19
\begin{align}\norm{\mathbf{u} + \mathbf{v}}^2
&= \left\langle\mathbf{u} + \mathbf{v}, \mathbf{u} + \mathbf{v}\right\rangle\nonumber\\&= \left\langle\mathbf{u}, \mathbf{u}\right\rangle
+ \left\langle\mathbf{u}, \mathbf{v}\right\rangle
+ \left\langle\mathbf{v}, \mathbf{u}\right\rangle
+ \left\langle\mathbf{v}, \mathbf{v}\right\rangle\nonumber\\&= \norm{\mathbf{u}}^2
+ 2 \RE\left\langle\mathbf{u}, \mathbf{v}\right\rangle
+ \norm{\mathbf{v}}^2
\end{align}
```

Because $\mathbf{u}$ and $\mathbf{v}$ are orthogonal, we have $\left\langle\mathbf{u}, \mathbf{v} \right \rangle = 0$. Then {eq}`eq:19` reduces to {eq}`eq:20`.

````

:::{note}

We are very familiar with the equality

```{math}
\begin{align*}(a + b)^2 = a^2 + 2ab + b^2
\end{align*}
```

which resembles {eq}`eq:19` except that the middle term on the right-hand side of {eq}`eq:19` is taken the real part.

Since we also consider the complex vector space, we cannot change the order of two vectors in an inner product at will, that is, $\left\langle\mathbf{u}, \mathbf{v} \right \rangle \neq \left\langle\mathbf{v}, \mathbf{u} \right \rangle$ in general.

:::
Next, we shall present the Cauchy-Schwarz Inequality, which is a very important inequality in mathematics. This inequality has many forms across different fields of mathematics, some of which may appear as long scary expressions. In linear algebra, the Cauchy-Schwarz inequality can be simply written as

```{math}
\begin{align*}\abs{\left\langle\mathbf{u}, \mathbf{v} \right \rangle}\leq\norm{\mathbf{u}}\norm{\mathbf{v}}\end{align*}
```
The general idea of its proof is by considering the projection of one vector onto the other one. Suppose $\mathbf{\mathbf{u}} \neq \mathbf{0}$, we define a linear map

```{math}
:label: eq:22
\begin{align}\proj_{\mathbf{u}}\mathbf{v}
= \frac{\left\langle\mathbf{u}, \mathbf{v} \right \rangle}{\norm{\mathbf{u}}^2}\mathbf{u}\end{align}
```

It is an exercise ({ref}`Exercise 6.1<ex:1>`) to verify that $\proj_\mathbf{u} \mathbf{v}$ is indeed a linear map. As the notation suggests, $\proj_\mathbf{u} \mathbf{v}$ is the projected vector of $\mathbf{v}$ onto $\mathbf{u}$. See {numref}`fig:1`
```{figure} /figures/projection.png
---
name: fig:1
---
Projection of one vector onto another.

```
Though it is intuitive to see the map $\proj_\mathbf{u}$ is a *projection*, we cannot claim so for the time being. Recall we have a formal definition for projections ({prf:ref}`def:1`). That is, a projection $P$ is a linear map satisfying $P^2 = P$. We now show that $\proj_\mathbf{u}$ indeed satisfies this requirement. We have

```{math}
\begin{align*}\proj_\mathbf{u}^2 \mathbf{v}&= \proj_\mathbf{u}\left(\frac{\left\langle\mathbf{u}, \mathbf{v} \right \rangle}{\norm{\mathbf{u}}^2}\mathbf{u}\right)\\&= \frac{1}{\norm{\mathbf{u}}^2}\left\langle\mathbf{u},
\frac{\left\langle\mathbf{u}, \mathbf{v} \right \rangle}{\norm{\mathbf{u}}^2}\mathbf{u}\right\rangle\mathbf{u}\\&= \frac{
\left\langle\mathbf{u}, \mathbf{v} \right \rangle
}{\norm{\mathbf{u}}^4}\left\langle\mathbf{u}, \mathbf{u}\right\rangle\mathbf{u}\\&= \frac{\left\langle\mathbf{u}, \mathbf{v} \right \rangle}{\norm{\mathbf{u}}^2}\mathbf{u}\\&= \proj_\mathbf{u}\mathbf{v}\end{align*}
```

Therefore, indeed $\proj_\mathbf{u}^2 = \proj_\mathbf{u}$, i.e., $\proj_\mathbf{u}$ is a projection.

Note that $\mathbf{v}$ can be written as

```{math}
\begin{align*}\mathbf{v} = \proj_{\mathbf{u}}\mathbf{v} + (\mathbf{v} - \proj_{\mathbf{u}}\mathbf{v})
\end{align*}
```

We have

```{math}
\begin{align*}\left\langle\proj_{\mathbf{u}}\mathbf{v},
\mathbf{v} - \proj_{\mathbf{u}}\mathbf{v}\right\rangle&= \left\langle\proj_{\mathbf{u}}\mathbf{v},
\mathbf{v}\right\rangle
- \left\langle\proj_{\mathbf{u}}\mathbf{v},
\proj_{\mathbf{u}}\mathbf{v}\right\rangle\\&= \overline{\frac{\left\langle\mathbf{u}, \mathbf{v} \right \rangle}{\norm{\mathbf{u}}^2}}\left\langle\mathbf{u}, \mathbf{v}\right\rangle
-  \overline{\frac{\left\langle\mathbf{u}, \mathbf{v} \right \rangle}{\norm{\mathbf{u}}^2}}\frac{\left\langle\mathbf{u}, \mathbf{v} \right \rangle}{\norm{\mathbf{u}}^2}\left\langle\mathbf{u}, \mathbf{u}\right\rangle\\&= \frac{\abs{\left\langle\mathbf{u}, \mathbf{v} \right \rangle}^2}{\norm{\mathbf{u}}^2} - \frac{\abs{\left\langle\mathbf{u}, \mathbf{v} \right \rangle}^2}{\norm{\mathbf{u}}^2}\\&= 0
\end{align*}
```

That is,

```{math}
:label: eq:23
\begin{align}\proj_{\mathbf{u}}\mathbf{v}\bot(\mathbf{v} - \proj_{\mathbf{u}}\mathbf{v})
\end{align}
```

This implies that $\mathbf{v}$ can be decomposed as a sum of two orthogonal vectors, one of which is its projection onto $\mathbf{u}$. As illustrated in {numref}`fig:1`, $\proj_{\mathbf{u}} \mathbf{v} \bot \mathbf{w}$ where $\mathbf{w} = \mathbf{v} - \proj_{\mathbf{u}} \mathbf{v}$.

From {numref}`fig:1`, we observe that the length of the projected vector is less than or equal to that of the original one, i.e., $\norm{\proj_{\mathbf{u}} \mathbf{v}} \leq \norm{\mathbf{v}}$. This is precisely the idea of the proof of Cauchy-Schwarz inequality.


````{admonition} Exercise 6.1
:name: ex:1

Show that $\proj_\mathbf{u} \mathbf{v}$ defined in {eq}`eq:22` is a linear map. What if we replace its definition with $(\left\langle\mathbf{v}, \mathbf{u} \right \rangle / \norm{\mathbf{u}}^2) \mathbf{u}$? Is it still a linear map?

````

````{prf:theorem} Cauchy-Schwarz Inequality\index{Cauchy-Schwarz inequality}
:label: thm:10

Let $\mathbf{u}$ and $\mathbf{v}$ be two vectors in an inner product space. Then

```{math}
:label: eq:21
\begin{align}\abs{\left\langle\mathbf{u}, \mathbf{v} \right \rangle}\leq\norm{\mathbf{u}}\norm{\mathbf{v}}\end{align}
```

The equality in {eq}`eq:21` holds if and only if $\mathbf{u}$ and $\mathbf{v}$ are linearly dependent.

````

````{prf:proof}

If $\mathbf{u} = \mathbf{0}$, then the conclusion is trivial since the equality of {eq}`eq:21` holds and $\mathbf{u}$ and $\mathbf{v}$ are linearly dependent.

In the following, we assume $\mathbf{u} \neq \mathbf{0}$. Note that $\mathbf{v}$ can be written as

```{math}
\begin{align*}\mathbf{v} = \proj_{\mathbf{u}}\mathbf{v} + (\mathbf{v} - \proj_{\mathbf{u}}\mathbf{v})
\end{align*}
```

We have shown in {eq}`eq:23` that $\mathbf{v} \bot (\mathbf{v} - \proj_{\mathbf{u}} \mathbf{v})$. Then the Pythagorean Theorem ({prf:ref}`thm:9`) implies

```{math}
:label: eq:24
\begin{align}\norm{\mathbf{v}}^2
= \norm{\proj_{\mathbf{u}} \mathbf{v}}^2 + \norm{\mathbf{v} - \proj_{\mathbf{u}} \mathbf{v}}^2
\geq\norm{\proj_{\mathbf{u}} \mathbf{v}}^2
= \frac{\abs{\left\langle\mathbf{u}, \mathbf{v} \right \rangle}^2}{\norm{\mathbf{u}}^2}\end{align}
```

Rearranging the terms in {eq}`eq:24` and then taking the square root gives

```{math}
:label: eq:25
\begin{align}\abs{\left\langle\mathbf{u}, \mathbf{v} \right \rangle}\leq\norm{\mathbf{u}}\norm{\mathbf{v}}\end{align}
```
Note that the equality in {eq}`eq:25` holds if and only if the equality in {eq}`eq:24` holds. And that happens if and only if

```{math}
\begin{align*}\mathbf{v} - \proj_{\mathbf{u}}\mathbf{v} = \mathbf{0}\end{align*}
```

which is equivalent to that $\mathbf{u}$ and $\mathbf{v}$ are linearly dependent. This completes the proof.

````
The famous triangle inequality can be proved using the Cauchy-Schwarz inequality.


````{prf:theorem} Triangle Inequality
:label: thm:7

For $\mathbf{u}, \mathbf{v}$ in an inner product space, we have the following inequality:

```{math}
:label: eq:26
\begin{align}\norm{\mathbf{u} + \mathbf{v}}\leq\norm{\mathbf{u}} + \norm{\mathbf{v}}\end{align}
```

The equality in {eq}`eq:26` holds if and only if one vector is a **nonnegative** multiple of the other.

````

````{prf:proof}

If $\mathbf{u} = \mathbf{0}$, then {eq}`eq:26` clearly holds since both sides of are equal to $\norm{\mathbf{v}}$. And in this case, we can say $\mathbf{u}$ is a nonnegative multiple of $\mathbf{v}$ by writing $\mathbf{u} = 0 \mathbf{v}$.

We now assume $\mathbf{u} \neq 0$ in the rest of the proof. We have

```{math}
:label: eq:27
\begin{align}\norm{\mathbf{u} + \mathbf{v}}^2
&= \norm{\mathbf{u}}^2 + 2 \RE\left\langle\mathbf{u}, \mathbf{v}\right\rangle + \norm{\mathbf{v}}^2 \nonumber\\&\leq\norm{\mathbf{u}}^2 + 2 \abs{\left\langle\mathbf{u}, \mathbf{v} \right \rangle} + \norm{\mathbf{v}}^2
\end{align}
```

Applying the Cauchy-Schwarz inequality ({prf:ref}`thm:10`) to the right-hand side of {eq}`eq:27` gives

```{math}
:label: eq:28
\begin{align}\norm{\mathbf{u}}^2 + 2 \abs{\left\langle\mathbf{u}, \mathbf{v} \right \rangle} + \norm{\mathbf{v}}^2
&\leq\norm{\mathbf{u}}^2 + 2 \abs{\mathbf{u}, \mathbf{v}} + \norm{\mathbf{v}}^2 \nonumber\\&= (\norm{\mathbf{u}} + \norm{\mathbf{v}})^2
\end{align}
```

Inequality {eq}`eq:26` then follows by combining {eq}`eq:27` and {eq}`eq:28`.

Now, we discuss when the equality holds in {eq}`eq:26`. It is clear from the context that the equality in {eq}`eq:26` holds if and only if the equalities hold simultaneously in {eq}`eq:27` and {eq}`eq:28`. We know that the equality in {eq}`eq:27` holds if and only if $\left\langle\mathbf{u}, \mathbf{v} \right \rangle \geq 0$(this implicitly requires that the inner product is a real number). On the other hand, as stated in {prf:ref}`thm:10`, the equality in {eq}`eq:28` holds if and only if $\mathbf{u}$ and $\mathbf{v}$ are linearly dependent. Since $\mathbf{u} \neq \mathbf{0}$, this is equivalent to that $\mathbf{v} = a \mathbf{u}$ for some $a \in \FF$. In summary, the equality in {eq}`eq:26` holds if and only if

```{math}
\begin{align*}\begin{cases}
\left\langle\mathbf{u}, \mathbf{v} \right \rangle \geq 0 \\
\exists a \in \FF, \; \mathbf{v} = a \mathbf{u}
\end{cases}\end{align*}
```

This is equivalent to saying that $\mathbf{v}$ is a nonnegative multiple of $\mathbf{u}$.

````
