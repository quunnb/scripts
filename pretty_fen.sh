#!/bin/env sh

~/scripts/pretty_fen "$(xclip -sel c -o)" | xclip -sel c
