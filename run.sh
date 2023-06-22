#!/bin/bash

printf "\e[1;32m
###################################
___  ____ ___  _ ____ _  _    ___
|  \ |___ |__] | |__| |\ | __   /
|__/ |___ |__] | |  | | \|     /__

####################################
\e[0m\n"

#--------- Programs ---------
# Installing nala
sudo apt install nala -y
sudo nala update

# X Window System and Input
sudo nala install -y xorg xbacklight xbindkeys xvkbd xinput xorg-dev wmctrl
#brightnessctl

# Python
sudo nala install -y python3-pip

# Java
#sudo nala install default-jdk

# CPU Microcode Updates
#sudo nala install -y amd64-microcode
sudo nala install -y intel-microcode

# Network Management
sudo nala install -y network-manager-gnome

# Appearance and Customization
sudo nala install -y lxappearance arandr xclip

# System Utilities
sudo nala install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends
sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# Terminal Emulators
sudo nala install -y alacritty 

# Modern replacement for ls
sudo nala install -y exa

# File Managers
sudo nala install -y pcmanfm ranger

# XFCE Settings
sudo nala install -y xfce4-settings xfce4-power-manager

# Audio Control
sudo nala install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa

# System Information and Monitoring
sudo nala install -y neofetch htop

# Screenshots
sudo nala install -y flameshot

# Printer Support
sudo nala install -y cups simple-scan
sudo systemctl enable cups

# Bluetooth Support
#sudo nala install -y bluez blueman
#sudo systemctl enable bluetooth

# Messaging
sudo nala install -y telegram-desktop

# Menu and Window Managers
sudo nala install -y sxhkd numlockx rofi dunst libnotify-bin picom dmenu

# Archive Management
sudo nala install -y unzip file-roller

# Text Editors
sudo nala install -y geany vim mousepad

# Image Viewer
sudo nala install -y viewnior feh sxiv ueberzug

# Media Player
sudo nala install -y mpv

# Document Viewer
sudo nala install -y mupdf

# Disk Utilities and Cleaning Tools
sudo nala install -y gnome-disk-utility bleachbit

# Required packages for i3-gaps installation
sudo nala install -y meson dh-autoreconf libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev libxcb-shape0 libxcb-shape0-dev cmake i3status 

# Brave-Browser
sudo nala install -y curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo nala update

sudo nala install -y brave-browser

# Install Codium
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | gpg --dearmor | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg

echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' | sudo tee /etc/apt/sources.list.d/vscodium.list

sudo nala update

sudo nala install -y codium

#--------- Configuration ---------
# Update User Directories (Documents,Downloads,...)
xdg-user-dirs-update

# Installing i3 gaps
cd
cd Downloads
git clone https://github.com/Airblader/i3 i3-gaps
cd i3-gaps
mkdir -p build && cd build
meson --prefix /usr/local
ninja
sudo ninja install

# Installing dependencies for Ly Console Manager
sudo apt install -y libpam0g-dev libxcb-xkb-dev

# Installing Ly Console Display Manager
cd 
cd Downloads
git clone --recurse-submodules https://github.com/fairyglade/ly
cd ly/
make
sudo make install installsystemd
sudo systemctl enable ly.service

# Configure xsessions
if [[ ! -d /usr/share/xsessions ]]; then
    sudo mkdir /usr/share/xsessions
fi

cat > ./temp << "EOF"
[Desktop Entry]
Encoding=UTF-8
Name=i3
Comment=Manual Window Manager
Exec=i3
Icon=i3
Type=XSession
EOF
sudo cp ./temp /usr/share/xsessions/i3.desktop;rm ./temp

#--------- Fonts ---------
sudo nala install -y fonts-font-awesome fonts-powerline

fonts_dir="$HOME/.local/share/fonts"

if [[ ! -d "$fonts_dir" ]]; then
    mkdir -p "$fonts_dir"
fi

cd /tmp
fonts=( 
"FiraCode" 
"JetBrainsMono" 
)

for font in ${fonts[@]}
do
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/$font.zip
    unzip $font.zip -d $HOME/.local/share/fonts/$font/
    rm $font.zip
done

cd
cd debian-z/
tar xzvf Hack-NerdFont.tar.gz
cd Hack-NerdFont/
mv *ttf ~/.local/share/fonts
cd ..
rm -r Hack-NerdFont/

fc-cache -fv

#--------- My Rice ---------
# Installing Polybar
sudo nala install -y polybar
#--------------------------------------------------
# For image viewer in kitty
#pip install pillow (for debian 11)
sudo nala install -y python3-pillow
#--------------------------------------------------
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
unzip Flat-Remix-Grey-Dark.zip
tar xzf Dracula.tar.gz
tar xzf Dracula-icons.tar.gz
cp -r BlueSky-Clean-Dark ~/.themes
cp -r Dracula ~/.themes
cp -r Adwaita-dark ~/.themes
cp -r Nordic ~/.themes 
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
#--------------------------------------------------
sudo nala autoremove

printf "\e[1;32m
#####################################################
____ _ ____ ____ ___     ___  _   _    ___  ____ ___  
|__/ | |    |___ |  \    |__]  \_/       /  |___ |  \ 
|  \ | |___ |___ |__/    |__]   |       /__ |___ |__/ 

######################################################
\e[0m\n"