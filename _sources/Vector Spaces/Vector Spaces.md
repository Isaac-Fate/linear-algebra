# Vector Spaces
```{index} vector space
```

Through this book, we use the symbol $\F$(F for field) to denote $\R$ or $\C$.
Many mathematical definitions arises from simple concrete objects
with certain properties.
The abstraction of  **vector spaces** 
comes from the nice properties possessed by $\F^n$.


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
We also say $\mathbf{0}$ is the zero vector.

```{index} cancellation property
```

The next proposition is known as
the  **cancellation property** .


````{prf:proposition} Cancellation Property

Let $V$ be an Abelian group.
Suppose $\mathbf{u}, \mathbf{v}, \mathbf{w} \in V$, we have

```{math}
\mathbf{u} + \mathbf{w} = \mathbf{v} + \mathbf{w}\implies\mathbf{u} = \mathbf{v}
```

````

````{prf:proof}

By property 4 in {prf:ref}`def:1`, there exists $\mathbf{w}^\prime$
such that $\mathbf{w} + \mathbf{w}^\prime = \mathbf{0}$.
It then follows that

```{math}
& \quad& & \mathbf{u} + \mathbf{w} = \mathbf{v} + \mathbf{w}\\& \implies& & \mathbf{u} + (\mathbf{w}+ \mathbf{w}^\prime)
= \mathbf{v} + (\mathbf{w} + \mathbf{w}^\prime) \\& \implies& & \mathbf{u} + \mathbf{0}
= \mathbf{v} + \mathbf{0}\\& \implies& & \mathbf{u} = \mathbf{v}
```

````

The number zero $0$ times any vector is the zero vector $\mathbf{0}$.


````{prf:proposition} 
:label: prop:1

Let $V$ be a vector space. Then for any $\mathbf{v} \in V$,
we have $0 \cdot \mathbf{v} = \mathbf{0}$.

````

The proof is simple.
But we do not skip any intermediate steps to demonstrate
how each property is applied.


````{prf:proof}

Let $\mathbf{v} \in V$ be arbitrary. We have

```{math}
\mathbf{v} + 0 \cdot\mathbf{v}
= 1 \cdot\mathbf{v} + 0 \cdot\mathbf{v}
= (1 + 0) \cdot\mathbf{v}
= 1 \cdot\mathbf{v}
= \mathbf{v}
= \mathbf{v} + \mathbf{0}
```

Then applying the cancellation property yields $0 \cdot \mathbf{v} = \mathbf{0}$.

````

Any scalar in $\F$ times the zero vector $\mathbf{0}$
is the zero vector itself.


````{prf:proposition} 

Let $V$ be a vector space. For any $a \in \F$,
we have $a \mathbf{0} = \mathbf{0}$.

````

````{prf:proof}

We have

```{math}

a\mathbf{0} + \mathbf{0} = a \mathbf{0} = a (\mathbf{0} + \mathbf{0}) = a \mathbf{0} + a \mathbf{0}
```

Then by the cancellation property, we conclude that $a\mathbf{0} = \mathbf{0}$.

````

The element $\mathbf{w}$ in property 4 is also unique
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

where the last equality follows from {prf:ref}`prop:1`.

````

Therefore, for each $\mathbf{v}$, the choice of its
additive inverse $\mathbf{w}$ is unique.
We may then say that such $\mathbf{w}$ is  *the*  additive inverse of $\mathbf{v}$.
And to make the notation more intuitive, we shall denote
the additive inverse of $\mathbf{v}$ by $-\mathbf{v}$.

The additive inverse $-\mathbf{v}$ of $\mathbf{v}$ can be computed by
the scalar multiplication $-1 \cdot \mathbf{v}$.


````{prf:proposition} 

Let $V$ be a vector space and $\mathbf{v} \in V$.
We have $-\mathbf{v} = -1 \cdot \mathbf{v}$.

````

````{prf:proof}

We have

```{math}
\mathbf{v} + (-1 \cdot\mathbf{v}) = 1 \cdot\mathbf{v} + (-1) \cdot\mathbf{v}
= (1 + (-1)) \mathbf{v}
= 0 \cdot\mathbf{v}
= \mathbf{0}
```

This shows $-1 \cdot \mathbf{v}$ is indeed the additive inverse of $\mathbf{v}$.

````

The subtraction operator $-: V \times V \to V$ is defined
as $\mathbf{u} - \mathbf{v} := \mathbf{u} + (-\mathbf{v})$.


