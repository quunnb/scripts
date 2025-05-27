#!/bin/bash

if [ ! $# = 1 ]; then
		echo "Usage:"
		echo "$0 <up|down|mute>"
		exit 1;
fi

sink="@DEFAULT_AUDIO_SINK@"
muted=$(wpctl get-volume $sink | cut -d  ' ' -f 3)

case $1 in
'up')
		# pamixer -i 5
    [ -n $muted ] && wpctl set-mute $sink 0
		wpctl set-volume $sink 5%+
		;;
'down')
		# pamixer -d 5
		wpctl set-volume $sink 5%-
		;;
'mute')
		# pamixer -t
		wpctl set-mute $sink toggle
		;;
*)
		echo "parsing error"
		exit 1
		;;
esac

volume=$(wpctl get-volume $sink | cut -d  ' ' -f 2)
muted=$(wpctl get-volume $sink | cut -d  ' ' -f 3)

notify-send --expire-time=1000 --urgency=low --replace-id=69 $volume $muted

exit 0
