 #!/bin/sh
keyboard="at 5613b93ff750"
hyprctl switchxkblayout $keyboard next
value=$(hyprctl devices | grep -i $keyboard -A 2 | tail -n1 | cut -f3,4 -d' ')
notify-send "changed keyboard layout to ${value}" 
