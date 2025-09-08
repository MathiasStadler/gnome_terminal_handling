#!/bin/bash

# FROM HERE
# https://www.baeldung.com/linux/gnome-terminal-command-line

#WID=$(xdotool getactivewindow)
#xdotool windowfocus "$WID"
#xdotool key ctrl+shift+t
xdotool key ctrl+alt+t
WID=$(xdotool getactivewindow)
xdotool windowfocus "$WID"
wmctrl -i -a "$WID"


wmctrl -i -r "$(xdotool getactivewindow)" -e 0,0,0,600,800; 
wmctrl -i -r "$(xdotool getactivewindow)"  -b toggle,above
