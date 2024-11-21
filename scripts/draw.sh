#!/bin/bash

cell_number=$1

if [[ $cell_number -ge -9 && $cell_number -le -1 ]]; then
  color=$(cat assets/color.txt) 
  sed -i "s/[[\u26aa-\u2b50]](https://shayneintsu.github.io/DrawMeSomething.github.io?cell=$cell_number)/[$color](https://shayneintsu.github.io/DrawMeSomething.github.io?cell=$cell_number)/g" "./README.md"
else
  echo "Invalid cell number. Please enter a number between -1 and -9."
fi
