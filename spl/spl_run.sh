#!/bin/bash

# Define the main directory where the .spl files are located (including subdirectories)
SOURCE_DIR="/home/nandana/myexpos/spl"

# Define the directory where the ./spl command is located
SPL_DIR="/home/nandana/myexpos/spl"

# Navigate to the SPL directory where the ./spl command exists
cd "$SPL_DIR" || { echo "Failed to navigate to SPL directory!"; exit 1; }

# Find all .spl files in the source directory and its subdirectories
find "$SOURCE_DIR" -type f -name "*.spl" | while read -r FILE; do
  # Run the ./spl command on each found file
  echo "Running ./spl on $FILE"
  ./spl "$FILE"
done
