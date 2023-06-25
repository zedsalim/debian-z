#!/bin/bash

cd /home/$USER/Documents/c_projects

# List all directories in the current directory
dirs=(*/)
echo "Please choose a project by entering the corresponding number:"

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

# Open main.c in nano
vim main.c
