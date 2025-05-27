#!/bin/env sh

# Connect to VPN is WLAN interface is UP

status=$(ip a | awk '{ if ($2 ~ /wlan/) print $9 }')

while [ $status == "DOWN" ]; do 
    dustify "Network interface DOWN, sleeping 5 sec"
    sleep 5
done

[ $status == "UP" ] && protonvpn-cli c --cc NL

exit
