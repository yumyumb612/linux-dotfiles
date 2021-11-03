#!/bin/bash

wifi="$(ip a | grep wlo1 | grep inet | wc -l)"

if [ $wifi = 1 ]; then
	dbm=`expr $(iwconfig wlo1 | awk -F '=' '/Quality/ {print $3}' | cut -d ' ' -f 1) / 10 / 2`
	case $dbm in
		 0)  bar='泌 ----⏽' ;;
		-1)  bar='泌 ---⏽' ;;
		-2)  bar='泌 --⏽' ;;
		-3)  bar='泌 -⏽' ;;
		-4)  bar='泌 ⏽' ;;
		-5)  bar='泌⏽' ;;
		 *)  bar='泌⏽' ;;
	esac

	echo "$bar"
else 
    echo " "
fi 
