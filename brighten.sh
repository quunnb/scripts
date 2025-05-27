#!/bin/bash

input=$1
output=$2

ffmpeg -i "$1" -vf "eq=brightness=0.2:contrast=0.8" "$output"
