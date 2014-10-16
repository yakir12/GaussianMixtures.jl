## GMMs.jl  Some functions for potentially large Gaussian Mixture Models
## (c) 2013 David A. van Leeuwen

module GMMs

## some init code.  Turn off subnormal computation, as it is slow.  This is a global setting...
ccall(:jl_zero_subnormals, Bool, (Bool,), true)

using NumericExtensions
using BigData
using Distributions
using Clustering
using HDF5, JLD
using MAT

include("gmmtypes.jl")

include("gmms.jl")
include("train.jl")
include("io.jl")
include("stats.jl")
include("rand.jl")
include("recognizer.jl")

export GMM, CSstats, Stats, History, split, em!, map, llpg, avll, posterior, history, show, stats, readmat, nparams, means, covars, weights, setmem, vec, rand

end
