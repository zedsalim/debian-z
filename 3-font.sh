#!/bin/bash

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