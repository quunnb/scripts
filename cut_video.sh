#!/bin/env sh

input="$1"
start=$2
end=$3

filename=$input
# extension="${filename##*.}"
filename="${filename%.*}"

# ffmpeg -i "$input" -c copy -ss "$start" -to $end "$filename"_cut."$extension"
ffmpeg -i "$input" -vcodec libx265 -crf 28 -ss "$start" -to $end "$filename"_cut.mp4
