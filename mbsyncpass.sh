#!/bin/sh

op=$1

if [ "$op" == "set" ]; then
	security add-internet-password -s imap.gmail.com -r imap -a xxxx@gmail.com -w
elif [ "$op" == "get" ]; then
	security find-internet-password -s imap.gmail.com -r imap -a xxxx@gmail.com -w
fi
