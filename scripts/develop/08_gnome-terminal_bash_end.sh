#!/bin/bash
# a={wmctrl -l|tail -n 1 |tail -n 1 | awk '{print $1;}' }
a=$(wmctrl -l|tail -n 1 |tail -n 1 | awk '{print $1;}')
echo "$a";
gnome-terminal -- bash -c "ls && a=$(wmctrl -l|tail -n 1 |tail -n 1 | awk '{print $1;}') && echo $a && wmctrl -i -r $a -e 0,0,0,600,800 && bash"

#echo $(wmctrl -l|tail -n 1 |tail -n 1 | awk '{print $1}')

# printf %b