###############################################################################
#####             YOU MUST UNLEARN WHAT YOU HAVE LEARNED                  #####
###############################################################################

## Overview of the Type system

using TypeTree

typeof(1) === Int64
typeof(1.) === Float64

[1, 2, 3] isa Array
[1, 2, 3] isa Vector
[1, 2, 3] isa Vector{Int}

Vector{Int} <: Vector <: Array

tt(Real)

## Multiple dispatch
# Functions / Methods / Specializations

# A function is a name
function myf end
# But we don't have any implementation
methods(myf)

# A method is a function implementation for a set of types, here any type
myf(x, y) = x + y
methods(myf) # this is a vector with one element
methods(myf)[1].specializations # This is currently empty

# Now let's run some code
myf(1, 2)
methods(myf)[1].specializations # There is one specialization for (Int,Int)
myf(1, 2.)
methods(myf)[1].specializations # Now two specializations

# Let's define a new method
myf(x, y::Float64) = x - y
myf(1, 2.)
methods(myf) # 2 elements, you can also look at specializations for each method

# yet another method
myf(x::String, y) = string(x, y)
myf("toto", 1)

# Now, what happens with the next line?
myf("toto", 1.)

# Can you solve that?
