#!/bin/bash

# This script handles brightness control using the brightnessctl utility.

# Configuration:
# - Use the 'brightnessctl -l' command to identify the backlight control directory specific to your system.
# - Update the 'intel_backlight' part in the decrease_brightness() and increase_brightness() functions with your specific backlight control directory.

function decrease_brightness() {
    brightnessctl -d intel_backlight set 10%-
}

function increase_brightness() {
    brightnessctl -d intel_backlight set 10%+
}

case "$1" in
    XF86MonBrightnessDown)
        decrease_brightness
        ;;
    XF86MonBrightnessUp)
        increase_brightness
        ;;
esac
