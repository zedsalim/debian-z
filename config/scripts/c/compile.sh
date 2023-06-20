#!/bin/bash

cd /home/zed/Documents/c_projects

# List all directories in the current directory
dirs=(*/)
echo "Choose your project:"

# Loop through the directories and print a numbered list
for i in "${!dirs[@]}"; do
  printf "%s\t%s\n" "$i" "${dirs[$i]}"
done

# Prompt the user to enter a number
read num

# Check that the input is a valid number
re='^[0-9]+$'
if ! [[ $num =~ $re ]] ; then
   echo "Error: Not a valid number" >&2; exit 1
fi

# Get the name of the selected directory
name=${dirs[$num]}
name=${name::-1}

cd "$name"

# Remove a.out if it exists
if [ -f a.out ]; then
  rm a.out
fi
clear
# Compile and run main.c
gcc -Wall -Wextra main.c
./a.out
