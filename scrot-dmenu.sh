#!/bin/bash

DMENU="dmenu -i -p "Screenshot:""

choice=$(echo -e "Entire screen\nWindow with focus\nSelect area or window" | $DMENU)

case "$choice" in
    "Entire screen")
        scrot -f '%d-%m-%y@%H-%M-%S.png' -e 'mv $f ~/Pictures/screenshots/' && notify-send "Entire screen captured"
        ;;

    "Window with focus")
        scrot -fu '%d-%m-%y@%H-%M-%S.png' -e 'mv $f ~/Pictures/screenshots/' && notify-send "Focused window captured"
        ;;

    "Select area or window")
        scrot -fs '%d-%m-%y@%H-%M-%S.png' -e 'mv $f ~/Pictures/screenshots/' && notify-send "Selected area captured"
        ;;
esac
