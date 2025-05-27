#!/bin/bash

# Download range of video
yt-dlp -f 18 --downloader ffmpeg --external-downloader-args "ffmpeg_i:-ss $1 -to $2" "${@:3}"
