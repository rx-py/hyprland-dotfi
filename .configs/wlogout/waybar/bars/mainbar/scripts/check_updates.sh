#!/bin/bash

# Check for updates and count the number of pending updates
pending_updates=$(checkupdates | wc -l)

# Determine the icon and text based on the number of pending updates
if [ "$pending_updates" -gt 0 ]; then
    icon="pending-updates"
    text="$pending_updates"
else
    icon="updated"
    text="Up to date"
fi

# Output JSON for Waybar
echo "{\"text\": \"$text\", \"class\": \"$icon\"}"


