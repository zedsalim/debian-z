#!/bin/bash

cp ~/.config/scripts/themes/Pink/dunstrc ~/.config/dunst/

cp ~/.config/scripts/themes/Pink/config.rasi ~/.config/rofi/

cp ~/.config/scripts/themes/Pink/colors.conf ~/.config/i3/

cp ~/.config/scripts/themes/Pink/alacritty.yml ~/.config/alacritty/

cp ~/.config/scripts/themes/Pink/config ~/.config/polybar/

cp ~/.config/scripts/themes/Pink/settings.ini ~/.config/gtk-3.0/
cp ~/.config/scripts/themes/Pink/.gtkrc-2.0 ~/

 i3-msg restart; notify-send 'Theme Set To:' 'Pink'
