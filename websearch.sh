#!/bin/bash

if [ $# -eq 0 ]; then
        clipboard="primary"
        echo "Using '$clipboard' selection by default"
elif [ $# -eq 1 ]; then
        clipboard=$1
        echo "Using '$clipboard' selection"
else
        echo "Usage:"
        echo "$0 [primary|secondary|clipboard]"
        exit 1
fi

# engine="https://www.gibiru.com/results.html?q="
engine="https://duckduckgo.com/q=query"
query="$(xsel -o --$clipboard)"

xdg-open "$engine$query"

exit
