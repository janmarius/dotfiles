#!/bin/bash

WORKSPACE=$1
CODE_EDITOR=$2
ANDROID_EMULATOR=$3

i3-msg "workspace $WORKSPACE; append_layout ~/.config/i3/workspace-11.json"

# Code Editor
$CODE_EDITOR & disown

# Android Emulator
$(cd ~/Android/Sdk/emulator ; ./emulator -avd $3) & disown

exit 0
