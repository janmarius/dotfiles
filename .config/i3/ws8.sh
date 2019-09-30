#!/bin/bash

WORKSPACE=$1
TO_DO_LIST=$2
CALENDAR=$3
NOTES_EDITOR=$4
NOTES_PATH=$5

i3-msg "workspace $WORKSPACE; append_layout ~/.config/i3/workspace-8.json"

# To-Do List
$TO_DO_LIST & disown

# Calendar
sleep 0.5
$CALENDAR & disown

# Notes
$NOTES_EDITOR $NOTES_PATH & disown

exit 0
