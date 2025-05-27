#!/bin/sh


Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

clear

# printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
# printf "                                                                                               "
# printf "${Purple}"
# printf "Welcome $USER..." | pv -qL 10
# sleep 4
# printf "\n\n"
# printf "                                                                                               "
# printf "Follow the white rabbit." | pv -qL 10
# sleep 3
# cmatrix -s -C magenta

pond -s

if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
  SESSION_TYPE=remote/ssh
# many other tests omitted
else
  case $(ps -o comm= -p "$PPID") in
    sshd|*/sshd) SESSION_TYPE=remote/ssh;;
  esac
fi

if [ "$SESSION_TYPE" != "remote/ssh" ] && [ $1 == "login" ] ; then
    startx
fi

clear
