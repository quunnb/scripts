#!/bin/env sh

# Convert selection back to regular fen string
~/scripts/pretty_fen --revert "$(xclip -o)" | xclip
# -r is for removing trailing newline
~/scripts/pretty_fen "$(xclip -o)" | xclip -r -sel c
