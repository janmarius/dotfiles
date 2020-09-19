#!/bin/sh

DEVICE=`pactl list short sink-inputs | grep -n 1 | awk -F' ' '{print $2}'`
if [ "$DEVICE" == "0" ]; then
	echo ""
elif [ "$DEVICE" == "1" ]; then
	echo ""
elif [ "$DEVICE" == "" ]; then
	echo ""
fi
