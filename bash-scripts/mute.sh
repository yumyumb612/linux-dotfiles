#!/bin/sh

/usr/bin/amixer set Master toggle && /usr/bin/notify-send "Internal Speaker" "toggled mute"
