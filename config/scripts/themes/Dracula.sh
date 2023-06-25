#!/bin/bash

cp ~/.config/scripts/themes/Dracula/dunstrc ~/.config/dunst/

cp ~/.config/scripts/themes/Dracula/config.rasi ~/.config/rofi/

cp ~/.config/scripts/themes/Dracula/colors.conf ~/.config/i3/

cp ~/.config/scripts/themes/Dracula/alacritty.yml ~/.config/alacritty/

cp ~/.config/scripts/themes/Dracula/config ~/.config/polybar/

cp ~/.config/scripts/themes/Dracula/settings.ini ~/.config/gtk-3.0/
cp ~/.config/scripts/themes/Dracula/.gtkrc-2.0 ~/

cp ~/.config/scripts/themes/Dracula/.fehbg ~/

 i3-msg restart; notify-send 'Theme Set To:' 'Dracula'
