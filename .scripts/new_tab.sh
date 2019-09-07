#!/bin/bash

# used commands
xprop_command=`which xprop`
xdotool_command=`which xdotool`
xte_command=`which xte`

if [ -n "$xprop_command" -a -n "$xdotool_command" -a -n "$xte_command" ]; then
  # get active window id
  active_window_id=`$xdotool_command getactivewindow`

  # get class of the active window
  window_class=`$xprop_command -id $active_window_id WM_NAME | awk '{print $NF}' | awk '{print substr($0, 1, length($0)-1)}' `

  # execute only when active windows is Firefox
  if [ "$window_class" = "Firefox" ]; then
    # press F6, Home, enter "https://" string and press return
    $xte_command "keydown Control_L" "key t" "usleep 400000" "key l" "keyup Control_L" 
  fi
fi
