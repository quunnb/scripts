#!/bin/bash

function turnoff {
    sudo su -c 'echo 0 > /sys/class/leds/tpacpi\:\:lid_logo_dot/brightness'
}

function turnon {
    sudo su -c 'echo 255 > /sys/class/leds/tpacpi\:\:lid_logo_dot/brightness'
}

unit=0.5

function dot {
    # dot is 1 unit long
    turnon
    sleep $unit
    turnoff
    sleep $unit
}

function dash {
    # dash is 3 units long
    turnon
    sleep $unit
    sleep $unit
    sleep $unit
    turnoff
    sleep $unit
}

function end_letter {
    # letter pause is 3 units long (2 + the one already at the end of every dot and dash)
    sleep $unit
    sleep $unit
}

function space {
    # space between words is 7 units long (6 + the one already at the end of every dot and dash)
    sleep $unit
    sleep $unit
    sleep $unit
    sleep $unit
    sleep $unit
    sleep $unit
    echo " "
}

function a {
    # .- a
    echo "a .-"
    dot dash
    end_letter
}

function b {
    # -... b
    echo "b -..."
    dash dot dot dot
    end_letter
}

function c {
    # -.-. c
    echo "c -.-."
    dash dot dash dot
    end_letter
}

function d {
    #  -.. d
    echo "d -.."
    dash dot dot
    end_letter
}

function e {
    # . e
    echo "e ."
    dot end_letter
}

function f {
    # ..-. f
    echo "..-. f"
    dot dot dash dot
    end_letter
}

function g {
    # --. g
    echo "g --."
    dash dash dot
    end_letter
}

function h {
    # .... h
    echo "h ...."
    dot dot dot dot
    end_letter
}

function i {
    # .. i
    echo "i .."
    dot dot
    end_letter
}

function j {
    # .--- j
    echo .--- j
    dot dash dash dash
    end_letter
}

function k {
    # -.- k
    "echo" -.- k
    dot dash dot
    end_letter
}

function l {
    # .-.. l
    echo "l .-.."
    dot dash dot dot
    end_letter
}

function m {
    # -- m
    echo "m --"
    dash dash
    end_letter
}

function n {
    # -- n
    echo "n -."
    dash dot
    end_letter
}

function o {
    # --- o
    echo "o ---"
    dash dash dash
    end_letter
}

function p {
    # .--.
    echo "p .--."
    dot dash dash dot
    end_letter
}

function q {
    # --.- q
    echo --.- q
    dash dash dot dash
}
function r {
    # .-.
    echo "r .-."
    dot dash dot
    end_letter
}

function s {
    # ... s
    echo "s ..."
    dot dot dot
    end_letter
}

function t {
    # - t
    echo "t -"
    dash
    end_letter
}

function u {
    # ..- u
    echo "u ..-"
    dot dot dash
    end_letter
}

function v {
    # ...- v
    echo "...- v"
    dot dot dot dash
}

function w {
    # .-- w
    echo ".-- w"
    dot dash dash
}

function x {
    # -..- x
    echo "-..- x"
    dash dot dot dash
}

function y {
    # -.-- y
    echo "-.-- y"
    dash dot dot dash
}

function z {
    # --..
    echo "--.."
    dash dash dot dot
}

function period {
    # .-.-.- .
    echo "period .-.-.-"
    dot
    dash
    dot
    dash
    dot
    dash
    end_letter
}

while true; do
    h
    e
    l
    p
    space
    i
    m
    space
    t
    r
    a
    p
    p
    e
    d
    space
    i
    n
    s
    i
    d
    e
    space
    t
    h
    i
    s
    space
    c
    o
    m
    p
    u
    t
    e
    r
    space
    space
    space
done
