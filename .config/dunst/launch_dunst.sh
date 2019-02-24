#!/usr/bin/env bash

pkill dunst

# Update custom color file if older than the config file
if [ "$HOME/.config/dunst/dunstrc"\
         -ot "$HOME/.config/dunst/dunstrc_xcolors" ]; then
    exec "$HOME/.config/dunst/dunst_xr_theme_changer.sh" &
fi
sleep 1
if [ -f "$HOME/.config/dunst/dunstrc_xr_colors" ]; then
    dunst -config "$HOME/.config/dunst/dunstrc" &
    echo "Retrieved Xcolors"
else
    dunst -config "$HOME/.config/dunst/dunstrc_xcolors" &
fi
