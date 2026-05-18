# gs_examples
![GitHub](https://img.shields.io/github/license/mrfrenik/gs_examples)
[![Discord](https://img.shields.io/discord/485178488203116567?label=discord&logo=discord)](https://discord.gg/QXwpETB)
![GitHub top language](https://img.shields.io/github/languages/top/mrfrenik/gs_examples)

Library of working examples to demonstrate the [gunslinger](https://github.com/MrFrenik/gunslinger) multimedia framework.

## Cloning instructions: 
- Use the following command to clone the repo and init the gunslinger submodule
```
git clone --recursive https://github.com/MrFrenik/gs_examples
```

## Updating GS instructions (updates gunslinger submodule and rebases to main branch): 
```
git submodule update --remote --rebase --recursive
```

## Building

From the `gs_examples` root directory, you can build all the examples at once
with the command:

```
bash build_all.sh
```
To build an individual example (or an example collection, such as `ex_demos`),
just run the build script in its root.  For example to build `ex_demos` from the
`gs_examples` root directory:

```
bash ./ex_demos/build-all.sh
```