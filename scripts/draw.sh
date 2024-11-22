#!/bin/bash

cell_number=$1

color=$(cat assets/color.txt) 
sed -i "s/\[[\u2B1B\uD83D\uDFEB\uD83D\uDFEA\uD83D\uDFE9\uD83D\uDFE6\uD83D\uDFE8\uD83D\uDFE7\uD83D\uDFE5\u2B1C]\](https:\/\/shayneintsu.github.io\/DrawMeSomething.github.io?cell=$cell_number)/\[$color\](https:\/\/shayneintsu.github.io\/DrawMeSomething.github.io?cell=$cell_number)/g" "./README.md"

