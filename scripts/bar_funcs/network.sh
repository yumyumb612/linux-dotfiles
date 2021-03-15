#!/bin/bash

hostname="${HOSTNAME:-${hostname:-$(hostname)}}"

# PRIVATE="$(nmcli -a | grep 'inet4 192' | awk '{print $2}')"
# PUBLIC="$(curl -s https://ipinfo.io/ip)"

wire="$(ip a | grep 'eth0\|enp' | grep inet | wc -l)"
wifi="$(ip a | grep wlo1 | grep inet | wc -l)"

network() {

if [ $wire = 1 ]; then 
	echo "  $(nmcli -a | grep 'Wired connection' | awk 'NR==1{print $1}')"
elif [ $wifi = 1 ]; then
	echo "  $(nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -c 5-)"
else 
    echo "睊"
fi
}

vpn() {
    state="$(ip a | grep tun0 | grep inet | wc -l)"
    
if [ $state = 1 ]; then
    echo "廬"
else
    echo "ﮈ"
fi
}

echo "$(network) $(vpn)" 
