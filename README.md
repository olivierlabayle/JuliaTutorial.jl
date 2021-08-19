# JuliaTutorial

## Setup

- Open the Julia REPL 
- To enter the Package Manager: press `]`
- Julia has native environments that you need to activate (like conda). By default, the base environment will be active. A new environment is defined by a `Project.toml` file, you can have a look at the one in this folder. To activate the environment, type `activate .`
- Now let's add some packages to our project: `add Revise` and look at the `Project.toml` file again.
- To exit the Package Manager press `<-`
- And run `using Revise`
- To get help from the REPL you can type `?` followed by any name you want like `?+`


Now open the `src/JuliaTutorial.jl` file and happy coding :-)