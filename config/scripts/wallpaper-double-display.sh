#!/bin/bash

# background directory
bgdir="$HOME/.config/wallpapers"

# current wallpaper for the first monitor
cbg1="$HOME/.config/wallpapers/monitor1_wallpaper.png"

# current wallpaper for the second monitor
cbg2="$HOME/.config/wallpapers/monitor2_wallpaper.png"

# reads stdout of sxiv mark after quitting (Mark with m and q to quit)
# (currently reads last wallpaper selected no matter how many you select)
choice="$(sxiv -t -o -r "$bgdir")"
choicenum="$(echo "$choice" | wc -l)"

# If no choice for wallpaper was made, exit the script
[ -z "$choice" ] && exit 0

# Check the number of selected wallpapers
if [ "$choicenum" -lt 2 ]; then
  echo "Please select at least two wallpapers."
  exit 1
fi

# Extract the first two wallpapers from the selected choices
wallpapers=($(echo "$choice" | head -n2))

# Check if feh is installed
if [ -x "$(command -v feh)" ]; then
  feh --bg-fill "${wallpapers[0]}" --bg-fill "${wallpapers[1]}"
else
  echo "feh is not installed. Please install feh to set wallpapers."
  exit 1
fi

# Copy the first wallpaper to the first monitor's current wallpaper path
cp "${wallpapers[0]}" "$cbg2"

# Copy the second wallpaper to the second monitor's current wallpaper path
cp "${wallpapers[1]}" "$cbg1"


#sed -i '5s/.*/feh --bg-fill "${wallpapers[1]}" --bg-fill "${wallpapers[0]}"/' ~/.config/scripts/double-display.sh

echo "#!/bin/bash" > ~/.config/scripts/last-two-wallpapers.sh

echo feh --bg-fill "${wallpapers[1]}" --bg-fill "${wallpapers[0]}" >> ~/.config/scripts/last-two-wallpapers.sh
