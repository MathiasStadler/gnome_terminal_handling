#!/bin/bash
# a={wmctrl -l|tail -n 1 |tail -n 1 | awk '{print $1;}' }
# a=$(wmctrl -l|tail -n 1 |tail -n 1 | awk '{print $1;}')
# echo "$a";
# gnome-terminal -- bash -c "ls && a=$(wmctrl -l|tail -n 1 |tail -n 1 | awk '{print $1;}') && \\
# echo $a && \\
# wmctrl -i -r $a -e 0,0,0,600,800 && \\
# bash"

###
gnome-terminal -- bash -c "a=$(wmctrl -l|tail -n 1 |tail -n 1 | awk '{print $1;}') && \\
wmctrl -i -r $(xdotool getactivewindow) -e 0,0,0,600,800  && \\
wmctrl -r :ACTIVE: -b toggle,above  && \\
./sccache_mointor.sh " \\
#

# wmctrl -r :ACTIVE: -b toggle,above
# How to make terminal always on top most from command line?
# https://stackoverflow.com/questions/73436334/how-to-make-terminal-always-on-top-most-from-command-line