#!/bin/sh

mkdir signed
if [ $# -eq 0 ]; then
	licence=~/Documents/licence.png
else
	licence=$1
fi

for f in ./*.pdf; do
	pdfstamp stamp --input "$f" --signature "$licence" --output ./signed/"$f" --bottom 15 --left 20
done
