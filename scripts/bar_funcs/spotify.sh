#!/bin/sh

# Dependencies: spotify/spotifyd, playerctl

spotify () {
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
            $(/usr/bin/amixer -q set Master 0 && /usr/bin/notify-send -i ~/.config/moji.png -t 6480 "MOJI" "muted")
        elif [ "$TRACK" = "Spotify" ]; then
            $(/usr/bin/amixer -q set Master 0 && /usr/bin/notify-send -i ~/.config/moji.png -t 6480 "MOJI" "muted")
        fi
        

        if [ "$STATUS" = "Playing" ]; then
                STATUS=""
            else
                STATUS=""
            fi


        if [ "$PLAYER" = "spotify" ]; then
            printf "%s%s " "$SEP1" "$STATUS" "$TRACK"
            printf "%0d:%02d " $((DURATION%3600/60)) $((DURATION%60))
            printf "%s\n" "$SEP2"
        else
            printf "%s%s %s - %s " "$SEP1" "$STATUS" "$ARTIST" "$TRACK"
            printf "%0d:%02d/" $((POSITION%3600/60)) $((POSITION%60))
            printf "%0d:%02d" $((DURATION%3600/60)) $((DURATION%60))
            printf "%s%s\n" "$SHUFFLE" "$SEP2"
        fi
    fi
}


spotify
