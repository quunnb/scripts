#!/bin/env sh
while true; do
    f=/tmp/random_int
    r=/dev/random
    dd status=none if=$r of=$f count=4 bs=1

    LC_TIME="en_US.UTF-8"

    unix_time=$(od -An --format=dI $f)
    weekday_nro=$(date --date="@$unix_time" +"%w")
    weekday_short=$(date --date="@$unix_time" +"%a")
    weekday_long=$(date --date="@$unix_time" +"%A")
    corrects=($weekday_nro $weekday_short $weekday_long)
    correct=1

    LC_TIME="fi_FI.UTF-8"
    date=$(date --date="@$unix_time" +"%x")

    echo "Press Return when ready..."
    read input
    SECONDS=0
    echo -e "\nWhat weekday is: $date?"
    read input

    for ans in ${corrects[@]}; do
        if [ $input == $ans ]; then
            echo -e "\nCorrect! 😻"
            echo -e "It's $weekday_long"
            correct=0
            break
        elif [ $input == "q" ]; then
            echo "Bye!     😽"
            exit 0
        fi
    done

    if [ $correct -eq 1 ]; then
        echo -e "\nSorry, that's wrong! 😿"
        echo "The answer is $weekday_long"
    fi
    echo "Time: $SECONDS seconds"
    echo -e "\n============================\n"


done
