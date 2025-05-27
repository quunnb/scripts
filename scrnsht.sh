#!/bin/bash

if [ ! $# = 1 ]; then
		echo "Usage:"
		echo "$0 <clip|save|open>"
		exit 1;
fi

color="1.0,0.0,0.0"
border="2.0"
maim_options="--select --nodrag --hidecursor --noopengl --color=${color} --bordersize=${border}"
echo "maim_options: ${maim_option}"

case $1 in
'clip')
		tmp_file="/tmp/"$(date +%s)".png"
		maim ${maim_options} | tee ${tmp_file} | xclip -selection clipboard -target image/png
		echo "Saved to clipboard"
		;;
'save')
		save_path="~/Pictures/screenshots"
		filename="$(date +%s)"
		mkdir -p "$save_path"
		maim -su "$maim_options" "$save_path/${filename}.png"
		echo "Saving to $save_path/$filename"
		;;
'open')
		echo "This would open screenshot for editing"
		;;
*)
		echo "parsing error"
		exit 1
		;;
esac

canberra-gtk-play -i camera-shutter > /dev/null
