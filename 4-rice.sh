#!/bin/bash

# Rice
cd
mkdir ~/.themes
mkdir ~/.icons
cd debian-z/theme
tar -xf BlueSky-Clean-Dark.tar.xz
tar xf Sunity-cursors.tar.gz
tar xf Adwaita-dark.tar
tar -xf Papirus.tar.xz
unzip Nordic.zip
unzip Blackout.zip
unzip Flat-Remix-Grey-Dark.zip
tar xzf Dracula.tar.gz
tar xzf Dracula-icons.tar.gz
cp -r BlueSky-Clean-Dark ~/.themes
cp -r Dracula ~/.themes
cp -r Adwaita-dark ~/.themes
cp -r Nordic ~/.themes 
cp -r Blackout ~/.themes
cp -r Flat-Remix-Grey-Dark ~/.icons
cp -r Papirus ~/.icons
cp -r Dracula-icons/ ~/.icons/
cp -r Sunity-cursors/ ~/.icons/

cd
cd debian-z/
cp -r config/wallpapers/ ~/.config
cp -r config/i3/ ~/.config
cp -r config/sxhkd/ ~/.config
cp -r config/scripts/ ~/.config
cp -r config/alacritty/ ~/.config
cp -r config/dunst/ ~/.config
cp -r config/rofi/ ~/.config
cp -r config/neofetch/ ~/.config
cp -r config/ranger/ ~/.config
cp -r config/polybar/ ~/.config
cp config/guide.pdf ~/.config
cp config/bookmarks.txt ~/.config
cp -r optional/synth-shell ~/.config
cp optional/.bashrc ~/
cp optional/.inputrc ~/
cp config/.fehbg ~/
cp -r scripts ~/
chmod +x ~/.config/i3/autostart.sh
chmod +x ~/.config/i3/scripts/*

cd
if [[ ! -d ~/.config/gtk-3.0 ]]; then
    sudo mkdir -p ~/.config/gtk-3.0
fi

cd debian-z/
sudo cp config/settings.ini ~/.config/gtk-3.0/
cp config/.gtkrc-2.0 ~/ 
#--------------------------------------------------
# Fixing the volume keys
xbindkeys --defaults > ~/.xbindkeysrc

echo '# Increase volume
"amixer set Master 2%+"
   XF86AudioRaiseVolume

# Decrease volume
"amixer set Master 2%-"
   XF86AudioLowerVolume

# Mute volume
"amixer set Master toggle"
   XF86AudioMute' >> ~/.xbindkeysrc

xbindkeys -f ~/.xbindkeysrc
#--------------------------------------------------
sudo mkdir -p ~/.local/share/file-manager/actions/
sudo touch ~/.local/share/file-manager/actions/terminal.desktop 
sudo echo "[Desktop Entry]
Type=Action
Tooltip=Open Terminal
Name=Open Terminal
Profiles=profile-one;
Icon=utilities-terminal

[X-Action-Profile profile-one]
MimeTypes=inode/directory;
Exec=alacritty --working-directory %f
Name=Default profile" > ~/.local/share/file-manager/actions/terminal.desktop
#--------------------------------------------------
cd
cd debian-z/
source optional/keyboard_layout.sh
#source optional/nvidia.sh