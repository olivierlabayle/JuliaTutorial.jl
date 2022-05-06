# JuliaTutorial

## Before the day

Please try to complete the two following sections before the tutorial so that we can make the most of your time. If you have any problem please let me know so that we can fix it before the date.

### Installation

- Installing Julia: Visit [the Julia installation page](https://julialang.org/downloads/platform/) and follow the instructions associated with your platform. Check your installation by typing `julia` in a terminal from wherever you are and the REPL should appear.
- Installing VSCode: This is not strictly necessary but highly recommended. Visit [the VScode website](https://code.visualstudio.com/) and follow the installation instructions.
- Installing the Julia Extension in VSCode: VScode is a lightweight editor that works with plugins. We will need the [Julia plugin](https://www.julia-vscode.org/docs/dev/gettingstarted/#Installation-and-Configuration-1), to install it just look for "Julia" in VSCode's extension panel (on the left).
- Clone this repository and open it with VScode

### Taming VScode

A complete list of usual shortcuts can be found [here](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-windows.pdf) for reference.

The most useful one is the command palette:

`Ctrl+Shift+P, F1: Show Command Palette`

then you can type to look for any functionality. For instance, type "Terminal" and select "Create new terminal" and a terminal should appear at the bottom of the screen. You can also look for "Markdown" to view this file in a more human friendly way.

We will be mostly using in 3 VSCode Julia's shortcuts, to find them, from the command palette type:

- "julia start": locate "Start REPL" and try the associated shortcut, the REPL should appear at the bottom of the screen.
- "julia line": locate "Send current line or selection to REPL" and try the associated shortcut with the following line (put the cursor on it):

a = 1

- "julia stop": locate "Stop REPL" and try the associated shortcut.

Well done you are now a VSCode power user!

## On the day

The various parts of the tutorial are made available as Git branches:

### Part-1: Discovering

`git checkout --track origin/discovering`

Take home messages:

- Julia is a high level language
- You can write functions in mutiple ways
- The package manager allows you to declare environments and to add/remove dependencies to your project. The `Project.toml` and `Manifest.toml` represent the state of your dependencies.
  - Getting in and out of the Package Manager: `]` and `<-`
  - Adding, removing packages: `add/rm PkgName`
  - Seeing the current status of the Project dependencies: `status`

### Part-2: Understanding

`git checkout --track origin/understanding`

Take home messages:

- Everything has a type that can be accessed by `typeof()`
- The type system is a Tree
- Functions are declared names
- A function can have multiple methods, ie implementations/logics based on the type they support
- When called on arguments, a method gets automatically specialized for those arguments which will make it fast
- You don't want to "overtype" your function's arguments for performance reasons. Julia will specialize your method anyway. Enforcing strict types will just make your code less general.
- You can (and should) test your project to make sure it does what you intend. A software is a living thing, you may change the internals of a function but the output should remain the same. Automated tests are a safeguard from yourself.

### Part-3: Mastering

`git checkout --track origin/mastering`

Take home messages:

- Modules are namespaces. Functions defined in those namespaces are only visible through it. It means that from outside the module, you either need to:
  - Call `MyModule.myf`
  - `export myf` in the module itself.
- Packages are the way you want to structure your projects because:
  - You can automate the testing of your package via the Package Manager
  - You can distribute them so that they are available to everyone

## Concluding thoughts

It will take some time to process all the things we have seen today. Mostly, we have only scratched the surface, so here is a few references if you get stuck (and you will) or want to dig deeper:

- The [Julia Documentation](https://docs.julialang.org/en/v1/) is a great place to look for more content.
- [This youtube video](https://www.youtube.com/watch?v=QVmU29rCjaA) will take you more in depth into packages and continuous integration.
- I am quite happy to help ;-)

If you have any idea to improve the tutorial don't hesitate to let me know and post an issue on the Guthub repository!
