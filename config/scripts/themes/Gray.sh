#!/bin/bash

cp ~/.config/scripts/themes/Gray/dunstrc ~/.config/dunst/

cp ~/.config/scripts/themes/Gray/config.rasi ~/.config/rofi/

cp ~/.config/scripts/themes/Gray/colors.conf ~/.config/i3/

cp ~/.config/scripts/themes/Gray/alacritty.yml ~/.config/alacritty/

cp ~/.config/scripts/themes/Gray/config ~/.config/polybar/

cp ~/.config/scripts/themes/Gray/settings.ini ~/.config/gtk-3.0/
cp ~/.config/scripts/themes/Gray/.gtkrc-2.0 ~/

cp ~/.config/scripts/themes/Gray/.fehbg ~/

i3-msg restart; notify-send 'Theme Set To:' 'Gray'
