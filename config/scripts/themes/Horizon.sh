#!/bin/bash

cp ~/.config/scripts/themes/Horizon/dunstrc ~/.config/dunst/

cp ~/.config/scripts/themes/Horizon/config.rasi ~/.config/rofi/

cp ~/.config/scripts/themes/Horizon/colors.conf ~/.config/i3/

cp ~/.config/scripts/themes/Horizon/alacritty.yml ~/.config/alacritty/

cp ~/.config/scripts/themes/Horizon/config ~/.config/polybar/

cp ~/.config/scripts/themes/Horizon/settings.ini ~/.config/gtk-3.0/
cp ~/.config/scripts/themes/Horizon/.gtkrc-2.0 ~/

cp ~/.config/scripts/themes/Horizon/.fehbg ~/

cp ~/.config/scripts/themes/synth-shell-prompt.config ~/.config/synth-shell

 i3-msg restart; notify-send 'Theme Set To:' 'Horizon'
