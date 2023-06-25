#!/bin/bash

# Installing nala
sudo apt install nala -y
sudo nala update

# X Window System and Input
sudo nala install -y xorg xbacklight xbindkeys xvkbd xinput xorg-dev
#brightnessctl

# Python
sudo nala install -y python3-pip

# npm
#sudo nala install -y npm
# Java
#sudo nala install default-jdk

# CPU Microcode Updates
#sudo nala install -y amd64-microcode
sudo nala install -y intel-microcode

# Network Management
sudo nala install -y network-manager-gnome

# Appearance and Customization
sudo nala install -y lxappearance qt5ct arandr xclip

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
sudo nala install -y sxhkd numlockx rofi dunst libnotify-bin picom dmenu polybar 

# Archive Management
sudo nala install -y unzip file-roller

# Text Editors
sudo nala install -y vim mousepad

# Image Viewer
sudo nala install -y viewnior feh sxiv ueberzug python3-pillow
#pip install pillow (for debian 11)

# Media Player
sudo nala install -y mpv

# Calculator
sudo nala install -y galculator

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
