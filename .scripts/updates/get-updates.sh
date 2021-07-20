#!/bin/bash

checkupdates > $HOME/.scripts/updates/pacman-updates.txt
yay -Qum > $HOME/.scripts/updates/aur-updates.txt
