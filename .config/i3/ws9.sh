#!/bin/bash

WORKSPACE=$1
CHAT=$2
VOICE_COMMUNICATON=$3

i3-msg "workspace $WORKSPACE; append_layout ~/.config/i3/workspace-9.json"

# Chat
$CHAT & disown

# Voice Communication
$VOICE_COMMUNICATON & disown

exit 0