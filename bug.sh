#!/bin/bash

# This script attempts to process a file, but it contains a subtle error that can lead to unexpected behavior.

filename="data.txt"

# Check if the file exists, but there's an error in the way the condition is checked
if [ -e "$filename" ]; then
  # Process the file (e.g., read its content)
  while IFS= read -r line; do
    echo "Processing line: $line"
  done < "$filename"
else
  echo "Error: File '$filename' not found."
fi