#!/usr/bin/sh

# Get messages of user from telegram export json file

user=$1
file=$2

jq ".chats.\"list\"[] | .messages[] | select(.from == \"$user\").text" $file
