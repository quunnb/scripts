#!/bin/env sh

if [ $# -eq 0 ]; then
    city="$CITY"
else
    city=$1
fi

curl wttr.in/$city?M | less
