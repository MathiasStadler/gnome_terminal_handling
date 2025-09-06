#!/bin/bash

# FROM HERE
# https://www.baeldung.com/linux/gnome-terminal-command-line
gnome-terminal -- bash -c "pwd ; wmctrl -r :ACTIVE: -b toggle,above ; exec bash -i"
