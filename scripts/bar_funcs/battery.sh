#!/bin/bash

batstat="$(cat /sys/class/power_supply/BAT0/status)"
battery="$(cat /sys/class/power_supply/BAT0/capacity)"

if [[ $battery -le 10 ]]; then
    if [[ $batstat = 'Charging' ]]; then
        icon=""
    else
        icon=""
    fi
elif [[ $battery -ge 11 ]] && [[ $battery -le 19 ]]; then
    icon=""
elif [[ $battery -ge 20 ]] && [[ $battery -le 29 ]]; then
    icon=""
elif [[ $battery -ge 30 ]] && [[ $battery -le 39 ]]; then
    icon=""
elif [[ $battery -ge 40 ]] && [[ $battery -le 49 ]]; then
    icon=""
elif [[ $battery -ge 50 ]] && [[ $battery -le 59 ]]; then
    icon=""
elif [[ $battery -ge 60 ]] && [[ $battery -le 69 ]]; then
    icon=""
elif [[ $battery -ge 70 ]] && [[ $battery -le 79 ]]; then
    icon=""
elif [[ $battery -ge 80 ]] && [[ $battery -le 89 ]]; then
    icon=""
elif [[ $battery -ge 90 ]] && [[ $battery -le 95 ]]; then
    icon=""
elif [[ $battery -gt 95  ]];then
    icon=""
fi

if [[ $batstat = 'Charging' ]]; then
    echo " $battery%" 
else
    echo "$icon $battery%" 
fi
