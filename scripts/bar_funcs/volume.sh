#!/bin/sh

# Dependencies: alsa-utils

STATUS=$(amixer sget Master | tail -n1 | sed -r "s/.*\[(.*)\]/\1/")
VOL=$(amixer get Master | tail -n1 | sed -r "s/.*\[(.*)%\].*/\1/")
if [ "$STATUS" = "off" ]; then
		icon="婢"
else
	if [ "$VOL" -eq 0 ]; then
		icon="ﱜ"
	elif [ "$VOL" -ge 1 ] && [ "$VOL" -le 20 ]; then
		icon="奄"
	elif [ "$VOL" -gt 20 ] && [ "$VOL" -le 50 ]; then
		icon="奔"
	elif [ "$VOL" -gt 50 ] && [ "$VOL" -le 99 ]; then
		icon="墳"
	else
		icon=""
	fi
fi
echo "$icon $VOL%"
