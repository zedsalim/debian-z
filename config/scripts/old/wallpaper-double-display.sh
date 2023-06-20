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

# Prompt user to enter the index of the selected image for DVI
read -p "Enter the index of the selected image for DVI: " dvi_index

echo "Select an image for HDMI (Enter the index):"

# Prompt user to enter the index of the selected image for HDMI
read -p "Enter the index of the selected image for HDMI: " hdmi_index

# Validate the selected indices
if [[ "$dvi_index" =~ ^[0-9]+$ ]] && [ "$dvi_index" -ge 1 ] && [ "$dvi_index" -le "${#image_list[@]}" ] &&
   [[ "$hdmi_index" =~ ^[0-9]+$ ]] && [ "$hdmi_index" -ge 1 ] && [ "$hdmi_index" -le "${#image_list[@]}" ]; then
    # Get the corresponding image names
    selected_image_dvi="${image_list[$((dvi_index-1))]}"
    selected_image_hdmi="${image_list[$((hdmi_index-1))]}"

    # Trim leading/trailing whitespaces from the selected images
    selected_image_dvi=$(echo "$selected_image_dvi" | awk '{$1=$1};1')
    selected_image_hdmi=$(echo "$selected_image_hdmi" | awk '{$1=$1};1')

    # Extract the filenames
    dvi_filename=$(basename "$selected_image_dvi")
    hdmi_filename=$(basename "$selected_image_hdmi")

    # Display the selected images
    echo "Selected image for DVI: $selected_image_dvi"
    echo "Selected image for HDMI: $selected_image_hdmi"

    # Export the filenames as environment variables
    export DVI_FILENAME="$dvi_filename"
    export HDMI_FILENAME="$hdmi_filename"

    echo "#!/bin/bash" > ~/.config/scripts/double-display.sh 
    echo "" >> ~/.config/scripts/double-display.sh 
    echo "xrandr --output DVI-D-0 --mode 1920x1080 --pos 900x0 --output HDMI-0 --mode 1600x900 --pos 0x0 --rotate right" >> ~/.config/scripts/double-display.sh 
    echo "" >> ~/.config/scripts/double-display.sh 
    echo "feh --bg-fill ~/.config/wallpapers/$DVI_FILENAME --bg-fill ~/.config/wallpapers/$HDMI_FILENAME" >> ~/.config/scripts/double-display.sh 
    echo "" >> ~/.config/scripts/double-display.sh 
    echo "xrandr --output DVI-D-0 --mode 1920x1080 --pos 900x0 --output HDMI-0 --mode 1600x900 --pos 0x0 --rotate right" >> ~/.config/scripts/double-display.sh 
    echo "clear" >> ~/.config/scripts/double-display.sh 

##################
    echo "#!/bin/bash" > ~/.config/scripts/single-display.sh
    echo "xrandr --output DVI-D-0 --mode 1920x1080 --pos 0x0 --output HDMI-0 --off" >> ~/.config/scripts/single-display.sh
    echo "feh --bg-fill ~/.config/wallpapers/$DVI_FILENAME" >> ~/.config/scripts/single-display.sh
    echo "" >> ~/.config/scripts/single-display.sh
#################  
    source ~/.config/scripts/double-display.sh
    echo "Wallpapers set successfully."
else
    echo "Invalid index(es). No wallpapers selected."

fi

