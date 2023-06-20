#!/bin/bash

# script requires sxiv and feh

# background directory
bgdir="$HOME/.config/wallpapers"

# current wallpaper so the lockscreen script will match
cbg="$HOME/.config/wallpapers/ign_astronaut.png"


# reads stdout of sxiv mark after quitting (Mark with m and q to quit)
# (currently reads last wallpaper selected no matter how many you select)
choice="$(sxiv -t -o -r "$bgdir")"
choicenum="$(echo "$choice" | wc -l)"

# If no choice for wallpaper was made, exit the script
[ -z "$choice" ] && exit 0
[ "$choicenum" == 1 ] && lastwp="$(echo "$choice")"
[ "$choicenum" -gt 1 ] && lastwp="$(echo "$choice" | tail -n1)"

# Check if feh is installed and set the command accordingly
if [ -x "$(command -v feh)" ]; then
  set="feh --bg-fill"
else
  echo "feh is not installed. Please install feh to set wallpapers."
  exit 1
fi

$set "$lastwp" && cp "$lastwp" "$cbg"

echo "#!/bin/bash" > ~/.config/scripts/last-single-wallpapers.sh

echo feh --bg-fill "$lastwp" >> ~/.config/scripts/last-single-wallpapers.sh
