#!/bin/sh

[ $# -eq 0 ] && {
	exit 1
}

# $1 = name of the attachment
# $2 = open with a different viewer
FNAME="$1"
OPENWITH="$2"

ATTDIR=~/.mutt/attach
rm -rf $ATTDIR/*

TMPDIR=`mktemp -d $ATTDIR/att.XXXXXX` || exit 3
ANAME=$(basename $FNAME)
ME="$TMPDIR/$ANAME"

# copy before mutt deletes it
cp $FNAME $TMPDIR/$ANAME || exit 3

if [ $# -eq 1 ]; then
	open "$ME"
elif [ $# -eq 2 ]; then
	open -a "$OPENWITH" "$ME"
else
	exit 4
fi
