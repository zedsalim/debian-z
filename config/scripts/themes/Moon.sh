#!/bin/bash

cp ~/.config/scripts/themes/Moon/dunstrc ~/.config/dunst/

cp ~/.config/scripts/themes/Moon/config.rasi ~/.config/rofi/

cp ~/.config/scripts/themes/Moon/colors.conf ~/.config/i3/

cp ~/.config/scripts/themes/Moon/alacritty.yml ~/.config/alacritty/

cp ~/.config/scripts/themes/Moon/config ~/.config/polybar/

cp ~/.config/scripts/themes/Moon/settings.ini ~/.config/gtk-3.0/
cp ~/.config/scripts/themes/Moon/.gtkrc-2.0 ~/

cp ~/.config/scripts/themes/Moon/.fehbg ~/

i3-msg restart; notify-send 'Theme Set To:' 'Moon'
