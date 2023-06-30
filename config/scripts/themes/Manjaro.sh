#!/bin/bash

cp ~/.config/scripts/themes/Manjaro/dunstrc ~/.config/dunst/

cp ~/.config/scripts/themes/Manjaro/config.rasi ~/.config/rofi/

cp ~/.config/scripts/themes/Manjaro/colors.conf ~/.config/i3/

cp ~/.config/scripts/themes/Manjaro/alacritty.yml ~/.config/alacritty/

cp ~/.config/scripts/themes/Manjaro/config ~/.config/polybar/

cp ~/.config/scripts/themes/Manjaro/settings.ini ~/.config/gtk-3.0/
cp ~/.config/scripts/themes/Manjaro/.gtkrc-2.0 ~/

cp ~/.config/scripts/themes/Manjaro/.fehbg ~/

cp ~/.config/scripts/themes/synth-shell-prompt.config ~/.config/synth-shell

i3-msg restart; notify-send 'Theme Set To:' 'Manjaro'
