#!/bin/bash

# FROM HERE
# https://www.baeldung.com/linux/gnome-terminal-command-line

WID=$(xdotool getactivewindow)
xdotool windowfocus "$WID"
# xdotool key ctrl+shift+t
xdotool key ctrl+alt+t
wmctrl -i -a "$WID"