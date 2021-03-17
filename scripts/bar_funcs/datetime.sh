#!/bin/sh

day=$(date +%a)
d=$(date +%d)
t=$(date +%R)
# j=$(date +%j)

time=$(date '+%I')

case "$time" in
    "00") clock="" ;;
    "01") clock="" ;;
    "02") clock="" ;;
    "03") clock="" ;;
    "04") clock="" ;;
    "05") clock="" ;;
    "06") clock="" ;;
    "07") clock="" ;;
    "08") clock="" ;;
    "09") clock="" ;;
    "10") clock="" ;;
    "11") clock="" ;;
    "12") clock="" ;;
esac

case "%d" in 
    "01") suffix="st" ;;
    "02") suffix="nd" ;;
    "03") suffix="rd" ;;
       *) suffix="th" ;;
esac

echo " $day $d$suffix $clock $t"
