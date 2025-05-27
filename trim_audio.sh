#!/bin/env sh

secs=$1

if [ $# -lt 2 ] || [ $secs -lt 0 ]; then
    echo "Bad arguments"
    echo "Please give seconds as an integer and files you want to trim"
    echo "Example: $0 10 file.mp3 file2.mp3"
    exit 1
fi

shift

files=$@
n_files=$#

echo "Trimming $n_files down to $secs seconds"

for file in $files
do
    file_base=$(basename $file .mp3)
    ffmpeg -t $secs -i "$file" -acodec copy "${file_base}_trimmed.mp3"
done

exit
