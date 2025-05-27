#!/bin/env sh

files=$@

for file in $files
do
    ffmpeg -i $file -vcodec copy -an /tmp/"${file%.*}-nosound.${file#*.}"
    rm $file
    mv /tmp/"${file%.*}-nosound.${file#*.}" $file
done

exit
