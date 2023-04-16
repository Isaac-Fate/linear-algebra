# Inner Products

````{prf:definition}

An inner product $\langle \cdot, \cdot \rangle$ on a vector space $V$ over $\FF$ is a mapping

```{math}
\begin{align*}\langle\cdot, \cdot\rangle: V \times V \to\FF\end{align*}
```

with the following properties:
- ➀ (Positive-Definiteness) $\left\langle\mathbf{v}, \mathbf{v} \right \rangle \geq 0 \quad \forall \mathbf{v} \in V$ and $\left\langle\mathbf{v}, \mathbf{v} \right \rangle = 0 \iff \mathbf{v} = \mathbf{0}$.
- ➁ (Conjugate Symmetry) $\left\langle\mathbf{v}, \mathbf{w} \right \rangle = \overline{\left\langle\mathbf{w}, \mathbf{v} \right \rangle} \quad \forall \mathbf{v}, \mathbf{w} \in V$.
- ➂ (Linearity in the Second Slot) $\left\langle\mathbf{v}, a \mathbf{w} + b \mathbf{u} \right \rangle = a \left\langle\mathbf{v}, \mathbf{w} \right \rangle + b \left\langle\mathbf{v}, \mathbf{u} \right \rangle$ for all $a, b \in \FF $ and for all $\mathbf{v}, \mathbf{w}, \mathbf{u} \in V$.


```{index} inner product space
```

We say $V$ is an **inner product space** if there is an inner product defined on it.

````

:::{note}

In most mathematical contexts, a slightly different definition is adopted where the inner product is assumed linear in the first slot, which in fact follows the original definition of inner products. However, as mentioned before, the reason why we require the inner product to be linear in the second slot is to match the notation of Hermitian transpose $\mathbf{x}^H \mathbf{y}$.

:::

````{prf:remark}

Note that we do not assume $V$ is finite-dimensional in this definition. But in most cases, we shall confine ourselves only to finite-dimensional inner product spaces.

````
