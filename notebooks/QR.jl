using LinearAlgebra
using Random

"""
Compute the QR decomposition using classical Gram-Schmidt process.
# Arguments
- `A`: `(m, n)` matrix.
# Returns
- `Q`: `(m, n)` orthogonal matrix.
- `R`: `(n, n)` upper triangular matrix.
"""
function classical_gram_schmidt(A::Matrix)::Tuple{Matrix, Matrix}
    # check if A has full rank
    m, n = size(A)
    @assert rank(A) == n

    # initialize Q and R
    if isa(A[1], Real)
        A = Matrix{Real}(A)
    else
        A = Matrix{Complex}(A)
    end
    Q = Matrix{eltype(A)}(undef, m, n)
    R = zeros(eltype(A), n, n)

    for j in 1:n
        # sum of the projections
        sum_of_proj = zeros(eltype(A), m)

        # project current vector onto orthonormal vectors at hand
        for i in 1:j-1
            R[i, j] = Q[:, i]' * A[:, j]
            sum_of_proj += R[i, j] * Q[:, i]
        end

        # compute the new orthonormal vector
        u = A[:, j] - sum_of_proj
        R[j, j] = norm(u)
        Q[:, j] = u / R[j, j]
    end

    return Q, R
end

# example
begin
    Q = [
        0 1 0;
        1 0 0;
        0 0 1
    ]

    R = [
        1 2 3;
        0 4 5;
        0 0 6
    ]

    A = Q * R

    Q, R = classical_gram_schmidt(A)
end

begin
    Q = [
        1im 1   0;
        1   1im 0;
        0   0   1
    ]

    R = [
        1 2 3;
        0 4 5;
        0 0 6
    ]

    A = Q * R

    Q, R = classical_gram_schmidt(A)
end

# example
begin
    Random.seed!(42)
    A = rand(6, 3)
    Q, R = classical_gram_schmidt(A)
end
