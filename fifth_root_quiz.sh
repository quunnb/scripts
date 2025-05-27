#!/bin/env bash

num=$(( $RANDOM % 100 ))
question=$((  $num ** 5 ))

read -p "What is the fifth root of $(numfmt --grouping $question)?"$'\n -> ' answer

echo ""
if [ $answer -eq $num ]; then
        printf "Correct!\n"
        printf "The fifth root of $(numfmt --grouping $question) is $answer!\n"
else
        printf "Wrong!\n"
        printf "The fifth root of $(numfmt --grouping $question) is $answer!\n"
fi

exit
