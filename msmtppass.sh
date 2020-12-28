#!/bin/sh

op="$1"

if [ "$op" == "set" ]; then
	security add-internet-password -s smtp.gmail.com -r smtp -a xxxx@gmail.com -w
elif [ "$op" == "get" ]; then
	security find-internet-password -s smtp.gmail.com -r smtp -a xxxx@gmail.com -w
fi
