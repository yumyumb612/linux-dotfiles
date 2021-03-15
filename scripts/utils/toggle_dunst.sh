#!/bin/sh

/usr/bin/notify-send -i ~/.config/moji.png -t 3 "MOJI" "ive toogled dunst" && /usr/bin/notify-send "DUNST_COMMAND_TOGGLE" && /usr/bin/dunstctl history-pop
