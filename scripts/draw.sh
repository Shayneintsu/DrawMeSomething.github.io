#!/bin/bash

cell_number=$1

color=$(cat assets/color.txt) 
sed -i "s/\[[⬜⬛🟫🟪🟦🟩🟨🟧🟥]\](https:\/\/shayneintsu.github.io\/DrawMeSomething.github.io?cell=$cell_number)/\[$color\](https:\/\/shayneintsu.github.io\/DrawMeSomething.github.io?cell=$cell_number)/g" "./README.md"

