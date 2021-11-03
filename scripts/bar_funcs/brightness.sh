#!/bin/sh

level=$(brightnessctl | head -n 2 | tail -n 1 | sed -r "s/.*\((.*)%\).*/\1/")

if [[ $level -le 40 ]]; then
	icon=""
elif [[ $level -ge 41 ]] && [[ $level -le 70 ]]; then
	icon=""
elif [[ $level -ge 71 ]] && [[ $battery -le 100 ]]; then
	icon=""
fi

echo "$icon $level% "
