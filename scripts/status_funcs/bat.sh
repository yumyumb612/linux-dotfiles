#!/bin/bash

bat() {
	batstat="$(cat /sys/class/power_supply/BAT0/status)"
	battery="$(cat /sys/class/power_supply/BAT0/capacity)"
	if [[ $batstat = 'Unknown' ]] || [[ $batstat = 'Charging' ]]; then
		icon=""
	elif [[ $battery -le 10 ]]; then
		icon=""
	elif [[ $battery -ge 11 ]] && [[ $battery -le 19 ]]; then
		icon=""
	elif [[ $battery -ge 20 ]] && [[ $battery -le 39 ]]; then
		icon=""
	elif [[ $battery -ge 40 ]] && [[ $battery -le 59 ]]; then
		icon=""
	elif [[ $battery -ge 60 ]] && [[ $battery -le 79 ]]; then
		icon=""
	elif [[ $battery -ge 80 ]] && [[ $battery -le 95 ]]; then
		icon=""
	elif [[ $battery -ge 96 ]] && [[ $battery -le 99 ]]; then
		icon=""
	elif [[ $battery -eq 100 ]]; then
		icon=""
	fi

	echo "$icon  battery: $battery%"
}

bat

