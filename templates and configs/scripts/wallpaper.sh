#!/bin/bash
export PATH=$PATH:/usr/bin:/usr/local/bin

# Folder with wallpapers
WALLPAPER_DIR="$HOME/Pictures/Wallpapers"

# File to store last wallpaper index
STATE_FILE="$HOME/.current_wallpaper_index"

# Get all wallpapers in alphabetical order
wallpapers=($(find "$WALLPAPER_DIR" -type f \( -iname '*.jpg' -o -iname '*.png' -o -iname '*.jpeg' \) | sort))

# Check if there are wallpapers
if [ ${#wallpapers[@]} -eq 0 ]; then
    echo "No wallpapers found in $WALLPAPER_DIR"
    exit 1
fi

# Read last index, default to -1 if file doesn't exist
if [ -f "$STATE_FILE" ]; then
    last_index=$(cat "$STATE_FILE")
else
    last_index=-1
fi

# Compute next index (wrap around if needed)
next_index=$(( (last_index + 1) % ${#wallpapers[@]} ))

# Save the next index for the next run
echo "$next_index" > "$STATE_FILE"

# Set the next wallpaper
/usr/bin/swww img "${wallpapers[$next_index]}" --transition-type=any
