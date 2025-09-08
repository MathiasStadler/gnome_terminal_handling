#!/bin/bash
# a={wmctrl -l|tail -n 1 |tail -n 1 | awk '{print $1;}' }
a=$(wmctrl -l|tail -n 1 |tail -n 1 | awk '{print $1;}')
echo "$a";
gnome-terminal -- bash -c "ls && $WID=$(wmctrl -l|tail -n 1 |tail -n 1 | awk '{print $1;}') && echo $WID && wmctrl -i -r $WID -e 0,0,0,600,800 && wmctrl -i -a $WID && bash"