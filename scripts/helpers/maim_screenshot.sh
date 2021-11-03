#!/bin/sh

#echo "" | dmenu -p "hi:" | xargs -I _ echo "_"

call () {
	name=scrnshot-$(date +%j-%H%M%S).png
	output=~/pictures/screenshots/$name
	path=~/pictures/screenshots
}

timer() {
	echo "" | /usr/local/bin/dmenu -m 0 -c -p "seconds wait:" | xargs -I _ sleep "_"
}

if [[ "$1" = "full_save" ]]; then
	call
  timer && /usr/bin/maim "$output"
  /usr/bin/notify-send -i $output -t 6480 "MOJI" "i saved the shot as $name"
		
elif [[ "$1" = "full_clip" ]]; then
	call
	/usr/bin/maim | xclip -selection clipboard -t image/png
	/usr/bin/notify-send -i ~/.config/moji.png -t 6480 "MOJI" "i saved the shot on ur clipboard"

elif [[ "$1" = "select_save" ]]; then
	call
	/usr/bin/maim -s "$output"
	/usr/bin/notify-send -i $output -t 6480 "MOJI" "i saved the shot as $name"
	
elif [[ "$1" = "select_clip" ]]; then
	call
	/usr/bin/maim -s | xclip -selection clipboard -t image/png
	/usr/bin/notify-send -i ~/.config/moji.png -t 6480 "MOJI" "i saved the shot on ur clipboard"

else
	/usr/bin/notify-send -i ~/.config/moji.png -t 6480 "MOJI" "huh"
fi
