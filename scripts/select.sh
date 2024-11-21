#!/bin/bash

cell_number=$1

function cell_to_square() {
  case "$1" in
    -1) echo "🟥";;
    -2) echo "🟧";;
    -3) echo "🟨";;
    -4) echo "🟩";;
    -5) echo "🟦";;
    -6) echo "🟪";;
    -7) echo "🟫";;
    -8) echo "⬛";;
    -9) echo "⬜";;
    *) echo "Invalid cell number: $1";;
  esac
}



function cell_to_round() {
  case "$1" in
    -1) echo "🔴";;
    -2) echo "🟠";;
    -3) echo "🟡";;
    -4) echo "🟢";;
    -5) echo "🔵";;
    -6) echo "🟣";;
    -7) echo "🟤";;
    -8) echo "⚫";;
    -9) echo "⚪";;
    *) echo "Invalid cell number: $1";;
  esac
}


if [[ $cell_number -ge -9 && $cell_number -le -1 ]]; then
  square=$(cell_to_square "$cell_number")
  round=$(cell_to_round "$cell_number")
  echo "$square" > "./assets/color.txt"
  sed -i "s/\[$square\](https:\/\/shayneintsu.github.io\/DrawMeSomething.github.io?cell=$cell_number)/\[$round\](https:\/\/shayneintsu.github.io\/DrawMeSomething.github.io?cell=$cell_number)/g" "./README.md"
else
  echo "Invalid cell number. Please enter a number between -1 and -9."
fi
