#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

export PATH="${PATH}:/home/jafarov/.scripts"
export GUIVAR=value

xmodmap .Xmodmap
wal -R
exec bspwm
