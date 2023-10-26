#!/bin/bash

# Define the devices and mount points
device1="/dev/sda"
device2="/dev/sdb"
mount_point1="/mnt/usb"
mount_point2="/mnt/usb2"

# Initialize variables to track the mount status
mounted_device1=false
mounted_device2=false

# Check if Device 1 is mounted
if mountpoint -q "$mount_point1"; then
    mounted_device1=true
fi

# Check if Device 2 is mounted
if mountpoint -q "$mount_point2"; then
    mounted_device2=true
fi

# Construct JSON output based on the mount status
if [ "$mounted_device1" = true ] && [ "$mounted_device2" = true ]; then
    output="{\"text\":\"BOTH\",\"class\":\"mounted\"}"
elif [ "$mounted_device1" = true ]; then
    output="{\"text\":\"/sda\",\"class\":\"mounted\"}"
elif [ "$mounted_device2" = true ]; then
    output="{\"text\":\"/sdb\",\"class\":\"mounted\"}"
else
    output="{\"text\":\"✘\",\"class\":\"unmounted\"}"
fi

# Print JSON output
echo "$output"

