#!/bin/bash

# FROM HERE
# https://www.baeldung.com/linux/gnome-terminal-command-line

xdotool getactivewindow
WID=$(($(wmctrl -l|tail -n 1 |tail -n 1 | awk '{print $1}')))
wmctrl -i  -r $WID   -b toggle,above
wmctrl -i -r $WID -e 0,1629,200,300,500


echo "cols $(tput cols)";
echo "lines $(tput lines)";
cd ~/.cache/sccache && watch -n 5 du -h . -d 1

# ~/sccache_mointor.sh

