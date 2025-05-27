#!/bin/bash

time=$(date +"%Y%m%d%H%M%S")
path="rec_"$time.mp4
echo "Recording screen into" $path

sleep 5; notify-send "🔴 '$path' 🔴"; wf-recorder -f $path
