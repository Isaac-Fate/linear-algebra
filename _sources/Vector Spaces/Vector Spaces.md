# Vector Spaces
```{index} vector space
```

Through this book, we use the symbol $\F$(F for field) to denote $\R$ or $\C$.
Like many mathematical definitions,
the abstraction of  **vector spaces** 
comes from the nice properties possessed by the concrete mathematical object $\F^n$.


````{prf:definition} 
:label: def:1

Let $V$ be a set.
We say $V$ is a vector space over field $F$(or we simply say $V$ is a vector space if $\F$ is clear from the context)
if
the following properties hold:
1. **Commutativity** $\mathbf{u} + \mathbf{v} = \mathbf{v} + \mathbf{u}$
for all $\mathbf{u}, \mathbf{v} \in V $.
2. **Associativity** $(\mathbf{u}+\mathbf{v})+\mathbf{w} = \mathbf{u}+(\mathbf{v}+\mathbf{w})$ for all $\mathbf{u}, \mathbf{v}, \mathbf{w} \in V$.
3. **Additive Identity**  There exists an element $\mathbf{0} \in V$
such that $\mathbf{v} + \mathbf{0} = \mathbf{v}$ for all $\mathbf{v} \in V$.
(We only assume the existence of element $\mathbf{0}$,
nothing is said about its uniqueness.
Although it is indeed unique, we still need to prove this.)
4. **Additive Inverse**  For every $\mathbf{v} \in V$,
there exists an element $\mathbf{w} \in V$ such that $\mathbf{v} + \mathbf{w} = \mathbf{0}$ where $\mathbf{0}$ is the same as the one given above.
5. **Multiplicative Identity** $1 \mathbf{v} = \mathbf{v}$ for all $\mathbf{v} \in V$ where $1$ is simply the real number $1$.
6. **Distributive Property of Scalar Multiplication over Vector Addition** $a(\mathbf{u} + \mathbf{v}) = a\mathbf{u} + a\mathbf{v}$
for all $a \in \F$ and all $\mathbf{u}, \mathbf{v} \in V$.
7. **Distributive Property of Scaler Multiplication over Scalar Addition** $(a+b) \mathbf{v} = a\mathbf{v} + b\mathbf{v}$ for all $a, b \in F$ and all $\mathbf{v} \in V$.

````
```{index} Abelian group
```

:::{note}

In fact, if a set satisfies property 1 - 4, we say that it is
an  **Abelian group** 
:::

As noted, we need to prove that such element $\mathbf{0}$ is unique.


````{prf:proposition} 

Let $V$ be an Abelian group. Suppose both elements $\mathbf{0}$ and $\mathbf{0}^\prime$
satisfy properties 3 in {prf:ref}`def:1`.
Then $\mathbf{0} = \mathbf{0}^\prime$.

````

````{prf:proof}

Regarding $\mathbf{0}$ as  *an*  additive identity, by property 3,
we have

```{math}
:label: eq:1
\mathbf{0}^\prime + \mathbf{0} = \mathbf{0}^\prime
```

On the other hand, regarding $\mathbf{0}^\prime$ as  *an*  additive identity,
we also have

```{math}
:label: eq:2
\mathbf{0} + \mathbf{0}^\prime = \mathbf{0}
```

Because the vector addition is commutative (property 1),
the left-hand sides of {eq}`eq:1` and {eq}`eq:2` are equal
and hence $\mathbf{0} = \mathbf{0}^\prime$.

````

Now, we can safely say $\mathbf{0}$ is  *the*  additive identity.
Moreover, the element $\mathbf{w}$ in property 4 is also unique
as we shall prove in the following proposition.


````{prf:proposition} 

Let $V$ be an Abelian group.
Pick an element $\mathbf{v} \in V$.
Suppose both elements $\mathbf{w}$ and $\mathbf{w}^\prime$
satisfy properties 4 in {prf:ref}`def:1`.
Then $\mathbf{w} = \mathbf{w}^\prime$.

````

````{prf:proof}

We have

```{math}
\mathbf{w}^\prime + \mathbf{0} = \mathbf{w}^\prime
```

Replacing $\mathbf{0}$ with $\mathbf{v} + \mathbf{w}$ yields

```{math}
& & & \mathbf{w}^\prime + (\mathbf{v} + \mathbf{w}) = \mathbf{w}\\& \implies& & (\mathbf{w}^\prime + \mathbf{v}) + \mathbf{w} = \mathbf{w}^\prime\\& \implies& & \mathbf{0} + \mathbf{w} = \mathbf{w}^\prime\\& \implies& & \mathbf{w} = \mathbf{w}^\prime
```

````

Therefore, for each $\mathbf{v}$, the choice of its
additive inverse $\mathbf{w}$ is unique.
We may then say that such $\mathbf{w}$ is  *the*  additive inverse of $\mathbf{v}$.
And to make the notation more intuitive, we shall denote
the additive inverse of $\mathbf{v}$ by $-\mathbf{v}$.
