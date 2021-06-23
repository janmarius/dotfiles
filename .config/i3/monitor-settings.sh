#!/bin/bash

MONITOR1=$1
MONITOR2=$2

xrandr --output $MONITOR1 --primary --mode 1920x1080 --pos 1920x0 --rotate normal --output $MONITOR2 --mode 1920x1080 --pos 0x0 --rotate normal
