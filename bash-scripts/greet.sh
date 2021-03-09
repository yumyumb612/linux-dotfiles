#!/bin/sh

# Sets
bat=$(cat /sys/class/power_supply/BAT0/capacity)
batstat=$(cat /sys/class/power_supply/BAT0/status)
/usr/bin/amixer set Master "$bat"% &
/usr/bin/brightnessctl s "$bat"% &

# Wallpaper
#nitrogen --restore &
feh --bg-scale ~/.config/wallpaper.png &

# Compositor
#picom --config /home/kshly/.config/picom/compton.conf &
picom -b &

sleep 3 && $(code & discord) &

# Dunst Greeter
notify-send -i ~/.config/moji.png -t 64800 "MOJI" "hewwo yum ^o^ \n ur battery is at $bat%, currently $batstat" &



