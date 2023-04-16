# LU Decomposition with Partial Pivoting
Sometimes, even when $A$ is a nonsingular matrix, it may not admit an LU decomposition. To fix this, we need to first rearrange the rows of $A$ in some way, and then it is guaranteed to have an LU decomposition if it is nonsingular.

The rearrangement of rows of $A$ can be done by multiplying a permutation matrix $P$ on the left of $A$. In this case, the decomposition can be written as

```{math}
\begin{align*}
P A = L U
\end{align*}
```

````{prf:algorithm} LU Decomposition with Partial Pivoting
:label: alg:1
```{image} /alg-snippets/659d8f5df7c900cd580b59e704d55f535732480185ed6ff7e05e10e4aad3a2b2.png
:alt: LU Decomposition with Partial Pivoting
:align: center
```
````
