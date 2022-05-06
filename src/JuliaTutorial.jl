module JuliaTutorial

"""
    ModelThatIAmProudOf()

Structures are how you can define new types
"""
struct ModelThatIAmProudOf end

"""
This is your ambitious fitting procedure
"""
function fit(model, X, y) end

"""
This should probably output ŷ
"""
function predict(model, fitresult, X) end

end