#!/bin/bash

# Open Chrome
google-chrome &

# Open VSCode
code &

# Open Tilix
tilix &

sleep 3
# Start CopyQ
/usr/bin/copyq &

# Start Flameshot
# /usr/bin/flameshot gui &
sleep 10
google-chat-electron &

# Check if the tab is already open in Chrome
while true; do
    if google-chrome https://hr.talenta.co/employee/dashboard; then
        notify-send "Talnta tab is ready, breaking the loop"
        break  # Exit the loop when the tab is ready
    else
        echo "Waiting for the tab to be ready..."
        sleep 3  # Adjust the sleep duration as needed
    fi
done

microsoft-edge https://chat.openai.com &
