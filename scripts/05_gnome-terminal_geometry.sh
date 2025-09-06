#!/bin/bash

# FROM HERE
# https://askubuntu.com/questions/1037463/how-to-resize-terminal-window-permanently-using-cli
gnome-terminal --geometry 80x24 -- bash -c "pwd && exec bash -i"