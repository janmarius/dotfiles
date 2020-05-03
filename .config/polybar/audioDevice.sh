#!/bin/bash

DEVICE=`pactl list short sinks | grep RUNNING | awk -F' ' '{print $2}'`

if [ "$DEVICE" == "alsa_output.usb-Conexant_Sennheiser_Main_Audio_00000000-00.analog-stereo" ]; then
	echo ""
elif [ "$DEVICE" == "alsa_output.pci-0000_00_1f.3.analog-stereo" ]; then
	echo ""
else
	echo ""
fi
