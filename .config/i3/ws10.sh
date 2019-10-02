#!/bin/bash

WORKSPACE=$1
EQUALIZER=$2
MUSIC_PLAYER=$3

i3-msg "workspace $WORKSPACE; append_layout ~/.config/i3/workspace-10.json"

# Equalizer
$EQUALIZER & disown

# Music Player
$MUSIC_PLAYER & disown

exit 0
