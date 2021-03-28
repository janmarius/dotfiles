#!/bin/bash

CURRENT_WORKSPACE=$(i3-msg -t get_workspaces \
					| jq '.[] | select(.visible==true and .focused==true).name')
OTHER_WORKSPACE=$(i3-msg -t get_workspaces \
					| jq '.[] | select(.visible==true and .focused==false).name')
PRIMARY_WORKSPACE=$(i3-msg -t get_outputs \
					| jq '.[] | select(.primary==true).current_workspace')

if [[ $CURRENT_WORKSPACE == $PRIMARY_WORKSPACE ]]; then
	i3-msg -q workspace $CURRENT_WORKSPACE
	i3-msg -q move workspace to output right
	i3-msg -q workspace $OTHER_WORKSPACE
	i3-msg -q move workspace to output right
else
	i3-msg -q workspace $OTHER_WORKSPACE
	i3-msg -q move workspace to output right
	i3-msg -q workspace $CURRENT_WORKSPACE
	i3-msg -q move workspace to output right
fi
