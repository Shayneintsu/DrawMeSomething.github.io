#!/bin/bash

# Function to generate a random hex color code
function generate_random_color() {
  local r g b
  r=$(printf '%02x' $((RANDOM%256)))
  g=$(printf '%02x' $((RANDOM%256)))
  b=$(printf '%02x' $((RANDOM%256)))
  echo "#$r$g$b"
}

# Get the filename from the command line argument
filename="./test.svg"

# Check if a filename was provided
if [ -z "$filename" ]; then
  echo "Please provide a filename as an argument."
  exit 1
fi

# Check if the file exists
if [ ! -f "$filename" ]; then
  echo "File '$filename' not found."
  exit 1
fi

# Generate a random color
random_color=$(generate_random_color)

# Use sed to replace the fill value with the random color
sed -i "s/fill=\"#[a-fA-F0-9]{6}\"/fill=\"$random_color\"/g" "$filename"

echo "Random color applied to '$filename': $random_color"