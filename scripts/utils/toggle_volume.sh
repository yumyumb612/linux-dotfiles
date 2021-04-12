#!/bin/sh

/usr/bin/amixer -q set Master toggle && /usr/bin/notify-send -i ~/.config/moji.png -t 6480 "MOJI" "ive toggled the sounds"
