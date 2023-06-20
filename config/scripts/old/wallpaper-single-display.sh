#!/bin/bash

# Set the directory containing the wallpapers
wallpaper_dir="/home/zed/.config/wallpapers/"

# Launch ranger to navigate to the wallpaper directory
kitty ranger "$wallpaper_dir"

# Get a list of image names in the wallpaper directory
image_list=("$wallpaper_dir"/*)

# Check if any images exist
if [ "${#image_list[@]}" -eq 0 ]; then
    echo "No images found in the directory."
    exit 1
fi

echo "Select an image for DVI (Enter the index):"
echo

# Prompt user to enter the index of the selected image for DVI
read -p "Enter the index of the selected image for DVI: " dvi_index

# Validate the selected index
if [[ "$dvi_index" =~ ^[0-9]+$ ]] && [ "$dvi_index" -ge 1 ] && [ "$dvi_index" -le "${#image_list[@]}" ]; then
    # Get the corresponding image name
    selected_image_dvi="${image_list[$((dvi_index-1))]}"

    # Trim leading/trailing whitespaces from the selected image
    selected_image_dvi=$(echo "$selected_image_dvi" | awk '{$1=$1};1')

    # Extract the filename
    dvi_filename=$(basename "$selected_image_dvi")

    # Display the selected image
    echo "Selected image for DVI: $selected_image_dvi"

    echo "#!/bin/bash" > ~/.config/scripts/single-display.sh
    echo "xrandr --output DVI-D-0 --mode 1920x1080 --pos 0x0 --output HDMI-0 --off" >> ~/.config/scripts/single-display.sh
    echo "feh --bg-fill ~/.config/wallpapers/$dvi_filename" >> ~/.config/scripts/single-display.sh
    echo "" >> ~/.config/scripts/single-display.sh
 
	source ~/.config/scripts/single-display.sh
else
    echo "Invalid index. No wallpaper selected."
fi

