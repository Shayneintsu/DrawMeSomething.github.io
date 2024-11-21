#!/bin/bash

cell_number=$1

color=$(cat assets/color.txt) 
sed -i "s/[[\u26aa-\u2b50]](https://shayneintsu.github.io/DrawMeSomething.github.io?cell=$cell_number)/[$color](https://shayneintsu.github.io/DrawMeSomething.github.io?cell=$cell_number)/g" "./README.md"

