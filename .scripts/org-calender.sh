#! /usr/bin/env bash

# Background color
# xrdb -query | awk '/*.background/ { print $2 }'

color1=$( xrdb -query | awk '/*.background/ { print $2 }' )
color2=$( xrdb -query | awk '/*.color7/ { print $2 }' )

perl ~/.scripts/org2remind.pl ~/Dropbox/GTD/pnt.org | ( echo "" ; remind -c+4 -m - )| dzen2 -l 52 -w 550 -p -fn Cherry-11-r -bg $color1 -fg $color2 -x -550

# remind -n -
