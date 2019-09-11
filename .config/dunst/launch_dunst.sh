#!/usr/bin/env bash

pkill dunst

# Update custom color file if older than the config file
rm -f ~/.config/dunst/dunstrc
ln -s ~/.cache/wal/dunstrc ~/.config/dunst/dunstrc

dunst & disown 2> /dev/null
