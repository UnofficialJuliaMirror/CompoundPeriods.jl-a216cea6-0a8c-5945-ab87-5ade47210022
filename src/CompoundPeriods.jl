module CompoundPeriods

export Period, CompoundPeriod,
   typesof, canonical

import Base: start, done, next, getindex, eltype, length,
    min, max, minmax, typemin, typemax

import Dates: Period, CompoundPeriod
using Dates

include("timeunitper.jl")
include("iterable.jl")
include("indexable.jl")
include("min_max.jl")
include("selector.jl")
include("compare.jl")


# foreach nonempty Period in a CompoundPeriod, get type of Period
typesof(x::CompoundPeriod) = map(typeof, x.periods)
typesof(x::P) where {P<:Period} = (P,)

end # Compound Periods
