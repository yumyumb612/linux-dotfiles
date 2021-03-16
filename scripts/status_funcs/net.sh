#!/bin/sh

net () {
	wirename="$(ip a | grep 'eth0\|enp' | grep inet | wc -l)"
	wifiname="$(ip a | grep wlo1 | grep inet | wc -l)"

	wname="$(nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -c 5-)"
	w2name="$(nmcli -a | grep 'Wired connection' | awk 'NR==1{print $1}')"

	private="$(nmcli -a | grep 'inet4 192' | awk '{print $2}')"

	offline="$(ip a | grep 'inet 127' | cut -b 10-20)"

	if [ $wirename = 1 ]; then
		echo "  $w2name   $private"
	elif [ $wifiname = 1 ]; then
		echo "  $wname   $private"
	else
		echo "睊 offline  $offline"
	fi
}

net
