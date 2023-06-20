#!/bin/bash

choice=$(cat ~/.config/bookmarks.txt | rofi -dmenu -p "Choose Website: ")
[ -z "$choice" ] && exit 0 || echo "$choice" | xargs "$BROWSER" || echo "$choice" | xargs brave-browser


sleep 1 && exit
