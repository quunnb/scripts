#!/bin/env sh

nmcli dev | awk -F '[[:space:]][[:space:]]+' ' $2 == "wifi" || $2 == "gsm" { print $1 }'
