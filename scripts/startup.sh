#!/bin/sh

# Sets
bat=$(cat /sys/class/power_supply/BAT0/capacity)
batstat=$(cat /sys/class/power_supply/BAT0/status)
wifi=$(ip a | grep wlo1 | grep inet | wc -l)
name=$(nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -c 5-)

# set brightness to battery level
/usr/bin/amixer -q set Master "$bat"% &
/usr/bin/brightnessctl -q s "$bat"% &

# set wallpaper
#nitrogen --restore &
#/usr/bin/feh --bg-scale ~/.config/wallpaper.png &&

# compositor
#picom --config /home/kshly/.config/picom/compton.conf &
/usr/bin/picom -b &

# run my daily
#$(/usr/bin/code & /usr/bin/discord) &

# dunst greeter
if [ $wifi = 1 ]; then
	net="and ur connected to $name"
else
	net="and ur offline"
fi
/usr/bin/notify-send -i ~/.config/moji.png -t 64800 "moji" "hewo yum.\nbattery is at $bat%, currently $batstat $net"
