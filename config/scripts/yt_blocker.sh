#!/bin/bash

# YouTube domain to block
youtube_domain="www.youtube.com"

# IP address to redirect to (localhost)
redirect_ip="127.0.0.1"

# Prompt for the duration using dmenu
duration=$(rofi -dmenu -p "Enter block duration (minutes): ")

# Backup the original hosts file
cp /etc/hosts /etc/hosts.backup

# Add an entry to redirect YouTube to the specified IP address
bash -c "echo $redirect_ip $youtube_domain >> /etc/hosts"

# Wait for the specified duration
sleep "${duration}m"

# Remove the entry from the hosts file to unblock YouTube
sed -i "/$youtube_domain/d" /etc/hosts

# Remove the backup file
sudo rm /etc/hosts.backup

# Notification
notify-send 'Y-Blocker' 'YouTube unblocked'

exit 0
