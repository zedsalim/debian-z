#!/bin/bash

cd ~/.config/scripts/themes

# List all the themes
themes=(*.sh)
theme_names=()

# Loop through the themes and collect their names
for theme in "${themes[@]}"; do
  theme_names+=("${theme%.sh}")
done

# Prompt the user to select a theme using dmenu
selected_theme=$(printf '%s\n' "${theme_names[@]}" | rofi -dmenu -p "Select a theme:")

# Find the selected theme
selected_index=-1
for index in "${!theme_names[@]}"; do
  if [[ "${theme_names[$index]}" == "$selected_theme" ]]; then
    selected_index=$index
    break
  fi
done

# Check if a valid theme was selected
if [ "$selected_index" -eq -1 ]; then
  echo "Invalid theme"
  exit 1
fi

# Get the name of the selected theme
selected_theme_file="${themes[$selected_index]}"
source "$selected_theme_file"

