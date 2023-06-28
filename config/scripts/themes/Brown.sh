#!/bin/bash

cp ~/.config/scripts/themes/Brown/dunstrc ~/.config/dunst/

cp ~/.config/scripts/themes/Brown/config.rasi ~/.config/rofi/

cp ~/.config/scripts/themes/Brown/colors.conf ~/.config/i3/

cp ~/.config/scripts/themes/Brown/alacritty.yml ~/.config/alacritty/

cp ~/.config/scripts/themes/Brown/config ~/.config/polybar/

cp ~/.config/scripts/themes/Brown/settings.ini ~/.config/gtk-3.0/
cp ~/.config/scripts/themes/Brown/.gtkrc-2.0 ~/

cp ~/.config/scripts/themes/Brown/.fehbg ~/

i3-msg restart; notify-send 'Theme Set To:' 'Brown'
