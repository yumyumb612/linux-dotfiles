#!/bin/bash

# hostname="${HOSTNAME:-${hostname:-$(hostname)}}"

# PRIVATE="$(nmcli -a | grep 'inet4 192' | awk '{print $2}')"
# PUBLIC="$(curl -s https://ipinfo.io/ip)"
# wiredname="$(nmcli -a | grep 'Wired connection' | awk 'NR==1{print $1}')"
wifiname="$(nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -c 5-)"

wire="$(ip a | grep 'eth0\|enp' | grep inet | wc -l)"
wifi="$(ip a | grep wlo1 | grep inet | wc -l)"


if [ $wire = 1 ]; then 
	echo -e ""
elif [ $wifi = 1 ]; then
	echo -e "  $wifiname"
else 
  echo -e "睊 offline"
fi

#echo -e "\e[1;36m $icon  $wifiname \e[0m"
