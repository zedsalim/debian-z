#!/bin/bash

cp ~/.config/scripts/themes/BlueNova/dunstrc ~/.config/dunst/

cp ~/.config/scripts/themes/BlueNova/config.rasi ~/.config/rofi/

cp ~/.config/scripts/themes/BlueNova/colors.conf ~/.config/i3/

cp ~/.config/scripts/themes/BlueNova/alacritty.yml ~/.config/alacritty/

cp ~/.config/scripts/themes/BlueNova/config ~/.config/polybar/

cp ~/.config/scripts/themes/BlueNova/settings.ini ~/.config/gtk-3.0/
cp ~/.config/scripts/themes/BlueNova/.gtkrc-2.0 ~/

cp ~/.config/scripts/themes/BlueNova/.fehbg ~/

cp ~/.config/scripts/themes/synth-shell-prompt.config ~/.config/synth-shell

 i3-msg restart; notify-send 'Theme Set To:' 'BlueNove'
