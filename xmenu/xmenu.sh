#!/bin/sh

cat <<EOF | xmenu | sh &
 day $(date +%j)	notify-send 'hewo' 'test'
$(~/.SYSTEM/scripts/status_funcs/net.sh)
$(~/.SYSTEM/scripts/status_funcs/bat.sh)
$(~/.SYSTEM/scripts/status_funcs/vol.sh)
$(~/.SYSTEM/scripts/status_funcs/bri.sh)

Applications
	﬏ vscode	code
	 thunar	thunar
	 image editor	gimp
	阮 spotify	spotify
	 virutalbox	virtualbox
Web
	 firefox	firefox
	ﭮ discord	discord
Games
	ﲅ veloren	alacritty -e airshipper
	ﳼ bastet	alacritty -e bastet
	 pacman	alacritty -e pacman4console
Terminal
	 alacritty	alacritty
	 st		st
﫸 stealth mode	alacritty -e sudo openvpn ~/documents/vpn/us-free-01.protonvpn.com.udp.ovpn & firefox https://account.protonvpn.com/account & notify-send -i ~/.config/moji.png -t 6580 "MOJI" "QUICK HIDE!"

Screenshot
	 full
		 save	~/.SYSTEM/scripts/api/scrnshot.sh full_save
		 clipboard	~/.SYSTEM/scripts/api/scrnshot.sh full_clip	
	 select
		 save	~/.SYSTEM/scripts/api/scrnshot.sh select_save
		 clipboard	~/.SYSTEM/scripts/api/scrnshot.sh select_clip
YeeeEEEeeeT
	 Shutdown	poweroff
	 Reboot	reboot
	 Sleep	systemctl suspend
