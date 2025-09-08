#!/bin/bash
gnome-terminal -- bash -c "pwd ; wmctrl -r :ACTIVE: -b toggle,above ; exec bash -i"
gnome-terminal -- bash -c "pwd ; exec bash -i"
gnome-terminal -- bash -c "exec bash -i"

# exec bash -i
#execute as shortcut
gnome-terminal -- bash -c "wmctrl -i -r $(xdotool getactivewindow) -e 0,0,0,600,800; wmctrl -i -r $(xdotool getactivewindow)  -b toggle,above;exec bash -i"

gnome-terminal -- bash -c "wmctrl -i -r $(xdotool getactivewindow) -e 0,0,0,600,800 && wmctrl -i -r $(xdotool getactivewindow)  -b toggle,above && exec bash -i"

gnome-terminal -- bash -c "id; exec bash"

#execute as shortcut
gnome-terminal -- bash -c "echo $(xdotool getactivewindow); exec bash"

gnome-terminal -- bash -c "echo $(xdotool getactivewindow); wmctrl -i -r $(xdotool getactivewindow)  -b toggle,above ; exec bash"

# -r :ACTIVE: 
gnome-terminal -- bash -c "echo $(xdotool getactivewindow); wmctrl -i  -r :ACTIVE:   -b toggle,above ; exec bash"

# echo $(wmctrl -l|tail -n 1 |tail -n 1 | awk '{print $1}')

gnome-terminal -- bash -c "echo $(xdotool getactivewindow); echo $(($(wmctrl -l|tail -n 1 |tail -n 1 | awk '{print $1}')));exec bash"

echo $(($(wmctrl -l|tail -n 1 |tail -n 1 | awk '{print $1}'))) && \
gnome-terminal -- bash -c "echo $(xdotool getactivewindow); echo $(($(wmctrl -l|tail -n 1 |tail -n 1 | awk '{print $1}')));exec bash"

##
echo $(($(wmctrl -l|tail -n 1 |tail -n 1 | awk '{print $1}'))) && gnome-terminal -- bash -c "echo \"wait\":sleep 1;echo $(xdotool getactivewindow); echo $(($(wmctrl -l|tail -n 1 |tail -n 1 | awk '{print $1}')));exec bash"

wmctrl -l | awk '{print $1}'

# convert octal to decimal
# echo $(($(wmctrl -l|tail -n 1 |tail -n 1 | awk '{print $1}')))
# echo $(wmctrl -l|tail -n 1 |tail -n 1 | awk '{print $1}')

# oct to decimal
# echo $((0x0480000a)) => 75497482

gnome-terminal -- bash -c "echo $(xdotool getactivewindow); echo $(wmctrl -l|tail -n 1 |tail -n 1 | awk '{print $1}'); exec bash"

gnome-terminal -- bash --execute "wmctrl -i -r $(xdotool getactivewindow) -e 0,0,0,600,800 && wmctrl -i -r $(xdotool getactivewindow)  -b toggle,above;exec bash"

gnome-terminal -- bash -c "pwd ; exec bash -i"

gnome-terminal -- "bash -c pwd;/usr/bin/wmctrl -i -r $(/usr/bin/xdotool getactivewindow)  -b toggle,above;bash"

gnome-terminal -- "/bin/bash -c /bin/pwd;/usr/bin/wmctrl -i -r $(/usr/bin/xdotool getactivewindow)  -b toggle,above;exec /bin/bash -i"