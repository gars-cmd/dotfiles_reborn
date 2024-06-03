#!/bin/bash

## get the actual layout

DEVICE='logitech-mx-keys' 
LANGUAGE=`hyprctl devices | grep -A 3 "$DEVICE$" | grep "active keymap:" | tail -n 1 | awk '{print tolower(substr($3,1,2))}'`

# if the actual is on US we swtch for IL
if [[ $LANGUAGE == "en" ]]; then
	dunstify -I /home/gars/.config/dunst/icons/israel.png -r 2593 -u normal "IL"
	hyprctl keyword input:kb_layout il
	echo "the language is now IL"
else
	dunstify -I /home/gars/.config/dunst/icons/united-states.png -r 2593 -u normal "US"
	hyprctl keyword input:kb_layout us
	echo "the language is now US"
fi



