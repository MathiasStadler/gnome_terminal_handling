#!/bin/bash

# FROM HERE
# https://www.baeldung.com/linux/gnome-terminal-command-line

#WID=$(xdotool getactivewindow)
#xdotool windowfocus "$WID"
#xdotool key ctrl+shift+t
#xdotool key ctrl+alt+t
#WID=$(xdotool getactivewindow)
#xdotool windowfocus "$WID"
#wmctrl -i -a "$WID"


#wmctrl -i -r "$(xdotool getactivewindow)" -e 0,0,0,600,800; 
#wmctrl -i -r "$(xdotool getactivewindow)"  -b toggle,above

# manual
xdotool getactivewindow
WID=$(($(wmctrl -l|tail -n 1 |tail -n 1 | awk '{print $1}')))
echo $WID;
wmctrl -i  -r $WID   -b toggle,above
# wmctrl -i -r $WID -e 0,0,200,64,4
# wmctrl -i -r $WID -e 0,0,0,600,800
# right side
wmctrl -i -r $WID -e 0,1629,200,300,500
#1929x1080

# terminal cols
# terminal lines
# 44x4

echo "cols $( tput cols )";
echo "lines $( tput lines )";
cd ~/.cache/sccache && watch -n 3 du -h . -d 1
# tput lines
# ~/sccache_mointor.sh

