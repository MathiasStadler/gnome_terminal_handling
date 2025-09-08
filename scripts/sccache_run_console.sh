#!/bin/bash

# FROM HERE
# https://www.baeldung.com/linux/gnome-terminal-command-line

xdotool getactivewindow
WID=$(($(wmctrl -l|tail -n 1 |tail -n 1 | awk '{print $1}')))
wmctrl -i  -r $WID   -b toggle,above
wmctrl -i -r $WID -e 0,1600,0,800,400


echo "cols $(tput cols)";
echo "lines $(tput lines)";
# cd ~/.cache/sccache && watch -n 5 du -h . -d 1

#~/sccache_mointor.sh


cd /home/trapapa/.cache/sccache &&
SCCACHE_LOG=debug SCCACHE_START_SERVER=1 SCCACHE_NO_DAEMON=1 sccache