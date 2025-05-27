#!/bin/env sh

fen="$(xclip -sel c -o)"

xdg-open "https://lichess.org/analysis/standard/$fen"
