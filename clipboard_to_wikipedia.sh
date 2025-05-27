#!/bin/env sh

clipboard="$(xclip -sel c -o)"

xdg-open "https://fi.wikipedia.org/wiki/$clipboard"
