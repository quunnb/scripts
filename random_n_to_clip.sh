#!/bin/env sh

dd if=/dev/random count=4 bs=1 | od -An --format=dI | grep -o "\w\+" | xclip -sel c

