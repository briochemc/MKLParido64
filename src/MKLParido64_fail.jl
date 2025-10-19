using Pkg
Pkg.activate(".")
Pkg.instantiate()

using MKL
using LinearAlgebra
using SparseArrays
# Load my branch of Pardiso that forces MklInt = Int64
# https://github.com/briochemc/Pardiso.jl/tree/MKL_force_Int64
using Pardiso

ps = MKLPardisoSolver()

A = sparse(rand(10, 10))
B = rand(10, 2)
X = zeros(10, 2)
solve!(ps, X, A, B)