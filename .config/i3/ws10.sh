#!/bin/bash

WORKSPACE=$1
MUSIC_PLAYER=$2

#i3-msg "workspace $WORKSPACE; append_layout ~/.config/i3/workspace-10.json"
i3-msg workspace $WORKSPACE

# Music Player
$MUSIC_PLAYER & disown

exit 0
