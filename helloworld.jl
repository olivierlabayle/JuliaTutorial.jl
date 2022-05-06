###############################################################################
#####                         JULIA SYNTAX                                #####
###############################################################################

## Basics
# Just basic syntax which will convince you that this is a high level language

myinteger = 1
mystring = "Hello World!"
myarray = [1, 2, "Olivier"]

# Every declared block needs to end with an... "end" 
for element in myarray
    if element == 1
        println("This is the first element on myarray!")
    elseif element == "Olivier"
        println("This is just Olivier...")
    else
        println("Something weird is happening here!")
        push!(myarray, rand())
    end
end

## Functions
# You can define functions in 2 main ways:
# - oneliner
# - with the keyword function

"""
    myfirstfunction(x)

This is an incredible function
"""
myfirstfunction(x) = x + 1
myfirstfunction(1)

# try: ?myfirstfunction

"""
This is very lame however
"""
function mysecondfunction(x)
    return x + 2
end
mysecondfunction(1)

function mythirdfunction(x)
    #Todo
end
mythirdfunction()

###############################################################################
#####                       PACKAGE MANAGER                               #####
###############################################################################

## Installing and Using packages

# Getting in the package manager mode: ]
# Displaying installed packages: status
# Adding a package: add Example
# Type: <- (backspace) to get back to the REPL

using Example

hello("Toto")

## Environments

# Go back to the package manager mode and notice the (@v1.x) indicating you are in the default julia Environment
# Type: activate .
# This will declare that you want the current folder to become a proper Environment
# As before, you can list current packages installed in your active Environment

# Let's add some more things:
# add DataFrames MLJLinearModels MLJBase
# Notice the automatic creation of the Project.toml and Manifest.toml files that provide a reproducible state of your environment

using DataFrames, MLJLinearModels, MLJBase

n, p = 100, 3
X = DataFrame(rand(n, p), :auto)
y = rand(n)
model = LinearRegressor()
res = MLJBase.fit(model, 1, X, y)

mach = machine(model, X, y)
fit!(mach, verbosity=0)
fitted_params(mach)
report(mach)
