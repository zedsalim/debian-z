
/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &

picom -b &
dunst &

killall nm-applet
nm-applet &
#killall blueman-applet
#blueman-applet &

killall volumeicon
volumeicon &

numlockx on &

killall xfce4-power-manager 
xfce4-power-manager &

killall sxhkd
sxhkd -c ~/.config/sxhkd/sxhkdrc &

ibus-daemon -drx &

