###############################################################################
#####                      AWESOME ALGORITHM                              #####
###############################################################################


struct MyVector
    vector
end


"""
    +(x₁:MyVector, x₂::MyVector)

Two my MyVectors are added in a fancy way:
 - MyVectors don't like the value 2, each of them are replaced by a 0
 - MyVectors like to fight, the first one always wins and forces the second one 
 to be reversed first.

Example:
    +([3, 2, 1], [2, 1, 1]) = [4, 1, 3]
"""

function Base.:+(x₁::MyVector, x₂::MyVector)
    # You can do better than that!
    return MyVector([4, 1, 3])
end