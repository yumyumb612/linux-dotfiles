#!/bin/bash

#hostname="${HOSTNAME:-${hostname:-$(hostname)}}"

# PRIVATE="$(nmcli -a | grep 'inet4 192' | awk '{print $2}')"
# PUBLIC="$(curl -s https://ipinfo.io/ip)"
# wiredname="$(nmcli -a | grep 'Wired connection' | awk 'NR==1{print $1}')"
# wifiname="$(nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -c 5-)"

wire="$(ip a | grep 'eth0\|enp' | grep inet | wc -l)"
wifi="$(ip a | grep wlo1 | grep inet | wc -l)"


if [ $wire = 1 ]; then 
	icon=""
elif [ $wifi = 1 ]; then
	dbm=`expr $(iwconfig wlo1 | awk -F '=' '/Quality/ {print $3}' | cut -d ' ' -f 1) / 10 / 2`
	case $dbm in
		 0)  bar=' ----⏽' ;;
		-1)  bar=' ---⏽' ;;
		-2)  bar=' --⏽' ;;
		-3)  bar=' -⏽' ;;
		-4)  bar=' ⏽' ;;
		-5)  bar='⏽' ;;
		 *)  bar='⏽' ;;
	esac

	icon=""
	echo "泌$bar $icon"
else 
    icon="睊"
	echo "$icon"
fi
