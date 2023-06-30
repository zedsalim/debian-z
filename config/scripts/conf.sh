#!/bin/bash

# Define the choices
choices=("i3-config" "i3-workspaces" "i3-colors" "sxhkd" "polybar" "alacritty" "kitty" "ranger"  "GitHub" "scripts" "themes")

# Prompt the user to select a choice using rofi
selected_choice=$(printf '%s\n' "${choices[@]}" | rofi -dmenu -p "Select a config file:")

# Define the corresponding config file paths
case $selected_choice in
    "i3-config")
        config_file="$HOME/.config/i3/config"
        ;;
    "i3-workspaces")
        config_file="$HOME/.config/i3/workspaces.conf"
        ;;
    "i3-colors")
        config_file="$HOME/.config/i3/colors.conf"
        ;;
    "sxhkd")
        config_file="$HOME/.config/sxhkd/sxhkdrc"
        ;;
    "polybar")
        config_file="$HOME/.config/polybar/config"
        ;;
    "alacritty")
        config_file="$HOME/.config/alacritty/alacritty.yml"
        ;;
    "kitty")
        config_file="$HOME/.config/kitty/kitty.conf"
        ;;
    "ranger")
        config_file="$HOME/.config/ranger/rc.conf"
        ;;
    "GitHub")
        config_file="ranger $HOME/Documents/GitHub/"
        ;;
    "scripts")
        config_file="ranger $HOME/.config/scripts"
        ;;
    "themes")
        config_file="ranger $HOME/.config/scripts/themes"
        ;;
    *)
        echo "Invalid choice"
        exit 1
        ;;
esac

# Check if the config file exists
if [[ $config_file == ranger* ]]; then
    # Open the selected directory with Ranger
    $config_file
else
    # Open the selected config file with Vim
    nvim "$config_file"
fi
