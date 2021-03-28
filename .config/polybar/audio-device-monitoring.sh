#!/bin/sh

DEVICE=`pactl list short sink-inputs | grep -n 1 | awk -F' ' '{print $2}' | head -n 1`
if [ "$DEVICE" == "1" ]; then
	echo ""
elif [ "$DEVICE" == "2" ]; then
	echo ""
elif [ "$DEVICE" == "" ]; then
	echo ""
fi
