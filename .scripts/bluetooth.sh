#!/bin/sh

pacmd_bluetooth=$(pacmd list-sinks | grep bluetooth)

if [ -z "$pacmd_bluetooth" ]; then
    echo "%{F#222}  "
else
    echo "%{F#222}  "
fi
