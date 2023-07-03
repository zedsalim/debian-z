#!/bin/bash

# Set the path to the PDF bookmarks file
bookmarks_file="/home/$USER/.config/pdf_bookmarks.txt"
temp_file="/home/$USER/.config/pdf_bookmarks.tmp"

# Get the title of the active PDF file
title=$(xdotool getactivewindow getwindowname)

# Remove leading/trailing whitespaces from the title
title=$(echo "$title" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')

# Check if the bookmarks file exists, otherwise create it
if [ ! -f "$bookmarks_file" ]; then
    touch "$bookmarks_file"
fi

# Prompt the user to enter the page number using rofi
page=$(rofi -dmenu -p "Enter the page number for $title:")

# If the user cancels or leaves the page number empty, exit the script
if [ -z "$page" ]; then
    exit
fi

# Check if the PDF file is already bookmarked
existing_bookmark=$(grep -F "$title:" "$bookmarks_file")

# If the PDF file is already bookmarked, update the page number
if [ -n "$existing_bookmark" ]; then
    # Create a temporary file and remove the original bookmark entry
    grep -v "^$title:" "$bookmarks_file" > "$temp_file"
else
    # If it's a new PDF file, copy the existing bookmarks to the temporary file
    cp "$bookmarks_file" "$temp_file"
fi

# Append the updated bookmark entry to the temporary file
echo "$title:$page" >> "$temp_file"

# Replace the original file with the updated version
mv "$temp_file" "$bookmarks_file"
