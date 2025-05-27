#!/bin/env sh

pacman -Qq > $HOME/data/$HOSTNAME$(date +"_%Y-week_%V").installs
