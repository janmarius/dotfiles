#!/bin/bash

DEVICE=`pactl list short sink-inputs | grep -n 1 | awk -F' ' '{print $2}'`
if [ "$DEVICE" == "0" ]; then
	echo ""
elif [ "$DEVICE" == "7" ]; then
	echo ""
fi
