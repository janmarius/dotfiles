#!/usr/bin/env bash
# requires jq
# Source: https://gist.github.com/fbrinker/df9cfbc84511d807f45041737ff3ea02

IFS=:
INITIAL_WORKSPACE=$(i3-msg -t get_workspaces \
  | jq '.[] | select(.focused==true).name' \
  | cut -d"\"" -f2)

i3-msg -t get_outputs | jq -r '.[]|"\(.name):\(.current_workspace)"' | grep -v '^null:null$' | \
while read -r name current_workspace; do
    echo "moving ${current_workspace} right..."
    i3-msg workspace "${current_workspace}"
    i3-msg move workspace to output right   
done
i3-msg workspace $INITIAL_WORKSPACE
