#!/bin/sh

TOKEN="7ac6c5f9c80164c456f94dcd8448f09f5c4ee0fa"

notifications=$(curl -fs https://api.github.com/notifications?access_token=$TOKEN | jq ".[].unread" | grep -c true)

if [ "$notifications" -gt 0 ]; then
    echo "%{F#222}  $notifications "
else
    echo "%{F#222}  0 "
fi
