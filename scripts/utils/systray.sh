#!/bin/sh

state="$(ip a | grep tun0 | grep inet | wc -l)"
    
if [ $state = 1 ]; then
    vpn "廬"
else
    vpn "輦"
fi