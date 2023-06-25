#!/bin/bash

cp ~/.config/scripts/themes/Darkness/dunstrc ~/.config/dunst/

cp ~/.config/scripts/themes/Darkness/config.rasi ~/.config/rofi/

cp ~/.config/scripts/themes/Darkness/colors.conf ~/.config/i3/

cp ~/.config/scripts/themes/Darkness/alacritty.yml ~/.config/alacritty/

cp ~/.config/scripts/themes/Darkness/config ~/.config/polybar/

cp ~/.config/scripts/themes/Darkness/settings.ini ~/.config/gtk-3.0/
cp ~/.config/scripts/themes/Darkness/.gtkrc-2.0 ~/

 i3-msg restart; notify-send 'Theme Set To:' 'Darkness'
