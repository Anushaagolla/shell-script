#!/bin/bash

# Check if a filename is provided as a command-line argument
if [ $# -eq 0 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

filename=$1

# Check if the file exists
if [ ! -f "$filename" ]; then
  echo "File not found: $filename"
  exit 1
fi

# Create a temporary file to store the reversed content
tempfile=$(mktemp)

# Read each line from the input file, reverse it, and write to the temporary file
while IFS= read -r line; do
  len=${#line}
  reversed=""
  for ((i=$len-1; i>=0; i--)); do
    reversed="$reversed${line:$i:1}"
  done
  echo "$reversed" >> "$tempfile"
done < "$filename"

# Overwrite the original file with the reversed content
mv "$tempfile" "$filename"

echo "Reversal completed. Check the file: $filename"
