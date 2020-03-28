#!/bin/bash

WORKSPACE=$1
FILE_MANAGER=$2

i3-msg "workspace $WORKSPACE; append_layout ~/.config/i3/workspace-4.json"

# File Manager
$FILE_MANAGER & disown

exit 0
