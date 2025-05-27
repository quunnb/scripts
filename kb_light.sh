#!/bin/env sh

b=$1

echo $1 > /sys/class/leds/tpacpi::kbd_backlight/brightness

