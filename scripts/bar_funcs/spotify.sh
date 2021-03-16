#!/bin/sh

if ps -C spotify > /dev/null; then
    PLAYER="spotify"
elif ps -C spotifyd > /dev/null; then
    PLAYER="spotifyd"
else
    printf " "
fi

if [ "$PLAYER" = "spotify" ] || [ "$PLAYER" = "spotifyd" ]; then
    ARTIST=$(playerctl metadata artist)
    TRACK=$(playerctl metadata title)
    POSITION=$(playerctl position | sed 's/..\{6\}$//')
    DURATION=$(playerctl metadata mpris:length | sed 's/.\{6\}$//')
    STATUS=$(playerctl status)
    SHUFFLE=$(playerctl shuffle)

    if [ "$TRACK" = "Advertisement" ]; then
        $(/usr/bin/amixer -q set Master 0 && /usr/bin/notify-send -i ~/.config/moji.png -t 800 "MOJI" "muted")
    elif [ "$TRACK" = "Spotify" ]; then
        $(/usr/bin/amixer -q set Master 0 && /usr/bin/notify-send -i ~/.config/moji.png -t 800 "MOJI" "muted")
    fi

    if [ "$STATUS" = "Playing" ]; then
            STATUS=""
    else
        STATUS=""
    fi

    printf "%s%s " "$STATUS" "$TRACK"
    printf "%0d:%02d ⏽" $((DURATION%3600/60)) $((DURATION%60))
fi
