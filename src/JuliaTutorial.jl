# This is only here to define a namespace
module JuliaTutorial


###############################################################################
# BASICS OF TYPES AND PACKAGES
###############################################################################
# This is how every packages that you will use work udner the hood.

# 1/ Use the function typeof() to get the type of anything you like


# 2/ Investigate the type hierarchy: 

1 isa Real
1 isa Integer
Integer <: Real

# 3/ Multiple dispatch: Define a function to add 2 numbers

function myaddition(a, b)
    return
end

myaddition(1, 2)

function myaddition(a, b::AbstractFloat)
    return
end

myaddition(1, 2)

# 4/ Let's do something a bit more fun

# Define a new Type
struct Cocktail
    ingredients::Tuple
end

function myaddition(a::Cocktail, b::Cocktail)
    return (a.ingredients..., b.ingredients...)
end

sexonthebeach = Cocktail(("vodka", "schnaps", "orange juice", "cranberry juice"))
tipunch = Cocktail(("rhum", "sugar", "lime juice"))

olivierssecret = myaddition(sexonthebeach, tipunch)

# Make your great function `myaddition` available to the public

export myaddition

# 5/ Bonus: move the methods into `functions.jl` and include the file in this module

# Let's move to the ML part --> `machinelearning.jl`

end

