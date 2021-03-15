#!/bin/sh

day=$(date +%a)
d=$(date +%d)
t=$(date +%R)
j=$(date +%j)

case "%d" in 
    "01") suffix="st" ;;
    "02") suffix="nd" ;;
    "03") suffix="rd" ;;
esac

if [ $d -ge 04 ]; then
    suffix="th"
fi

echo " $day $d$suffix, $t [$j]"
