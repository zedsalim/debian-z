#!/bin/bash

sudo apt install -y ibus ibus-m17n m17n-db xfonts-intl-arabic
im-config -n ibus

printf "\e[1;32mlog out and log back in to apply the changes and then run (ibus-setup)\e[0m\n"


