#!/bin/sh

state="$(ip a | grep tun0 | grep inet | wc -l)"
    
if [ $state = 1 ]; then
    echo "廬"
else
    echo "輦"
fi
