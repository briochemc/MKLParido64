using Pkg
Pkg.activate(".")
Pkg.instantiate()

using MKL
using LinearAlgebra
using SparseArrays
using Pardiso # from my branch forcing MklInt = Int64

ps = MKLPardisoSolver()

A = sparse(rand(10, 10))
B = rand(10, 2)
X = zeros(10, 2)
solve!(ps, X, A, B)