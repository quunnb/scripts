#!/bin/env sh

sox $1 output.mp3 silence 1 0.1 1% reverse silence 1 0.1 1% reverse
mv output.mp3 $(date +"%s").mp3
rm output.mp3
