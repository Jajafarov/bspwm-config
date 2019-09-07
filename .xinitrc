#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

export PATH="${PATH}:/home/jafarov/.scripts:$HOME/.pub-cache/bin"
export GUIVAR=value
export _JAVA_AWT_WM_NONREPARENTING=1

xrdb ~/.Xresources
# xrandr --output DP1 --rotate left
xmodmap .Xmodmap
wal -R
exec bspwm
start_jack.sh
