#!/bin/bash

if [ ! $# = 1 ]; then
        echo "Usage:"
        echo "$0 <up|down>"
        exit 1;
fi

case $1 in
'up')
        # brightnessctl --exponent set +5%;;
        brightnessctl set +5%;;
'down')
        # brightnessctl --exponent set 5%-;;
        brightnessctl set 5%-;;
*)
        echo "parsing error"
        exit 1 ;;
esac

nofify-send --replace-id 420 "$(brightnessctl -m | cut -d , -f 4)"

exit 0
