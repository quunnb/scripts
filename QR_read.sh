#!/usr/bin/env sh

maim -qs | zbarimg -q --raw - | xclip -selection clipboard -f
