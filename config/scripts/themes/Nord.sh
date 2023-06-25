#!/bin/bash

cp ~/.config/scripts/themes/Nord/dunstrc ~/.config/dunst/

cp ~/.config/scripts/themes/Nord/config.rasi ~/.config/rofi/

cp ~/.config/scripts/themes/Nord/colors.conf ~/.config/i3/

cp ~/.config/scripts/themes/Nord/alacritty.yml ~/.config/alacritty/

cp ~/.config/scripts/themes/Nord/config ~/.config/polybar/

cp ~/.config/scripts/themes/Nord/settings.ini ~/.config/gtk-3.0/
cp ~/.config/scripts/themes/Nord/.gtkrc-2.0 ~/

 i3-msg restart; notify-send 'Theme Set To:' 'Nord'
