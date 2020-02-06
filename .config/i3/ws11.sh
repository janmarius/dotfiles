#!/bin/bash

WORKSPACE=$1
CODE_EDITOR=$2

i3-msg "workspace $WORKSPACE; append_layout ~/.config/i3/workspace-11.json"

# Code Editor
$CODE_EDITOR & disown

exit 0
