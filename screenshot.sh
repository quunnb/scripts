#!/bin/bash

selection=$(hacksaw)  # add hacksaw arguments inside as you wish
shotgun -g "$selection" - | xclip -t 'image/png' -selection clipboard
