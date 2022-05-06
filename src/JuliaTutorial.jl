module JuliaTutorial

"""
    ModelThatIAmProudOf()

Structures are how you can define new types
"""
struct ModelThatIAmProudOf end

"""
This is your ambitious fitting procedure and should return at least a `fitresult` object.
"""
function fit(model, X, y) end

"""
This should output ŷ, a prediction for the new X.
"""
function predict(model, fitresult, X) end

end