#!/bin/bash

# FROM HERE
# https://stackoverflow.com/questions/73436334/how-to-make-terminal-always-on-top-most-from-command-line
# https://packages.debian.org/stable/x11/wmctrl
gnome-terminal --geometry 35x45 -- bash -c "wmctrl -r :ACTIVE: -b toggle,above &&pwd && exec bash -i"