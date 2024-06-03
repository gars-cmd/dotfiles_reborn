#!/bin/bash


function send_notification_p {
  dunstify -I /home/gars/.config/dunst/icons/play_pause_icon.png -r 2593 -u normal "PAUSE/PLAY"
}

function send_notification_b {
  dunstify -I /home/gars/.config/dunst/icons/backward_icon.png -r 2593 -u normal "BACKWARD"
}

function send_notification_f {
  dunstify -I /home/gars/.config/dunst/icons/forward_icon.png -r 2593 -u normal "FORWARD"
}

case "$1" in
  pplay) 
    playerctl play-pause
    send_notification_p
  ;;
  forw) 
    playerctl next
    send_notification_f
  ;;
  back) 
    playerctl previous
    send_notification_b
  ;;
esac
