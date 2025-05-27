#!/usr/bin/env sh

if [ $# -ne 1 ]; then
        echo "Must be called with exactly one argument in format 'filepath:line:col'"
        exit 1
fi

debug=0
# vim="vim"
# vim="nvim"
vim="nvr -s"       # open in nvim server instance

input=$1
file=$(echo $input | awk -F ':' '{ print $1 }')
line=$(echo $input | awk -F ':' '{ print $2 }')
column=$(echo $input | awk -F ':' '{ print $3 }')

if [ $debug -ne 0 ]; then
        echo "input: $input"
        echo "file: $file"
        echo "line: $line"
        echo "column: $column"
fi

$vim $file "+call cursor($line, $column)"
