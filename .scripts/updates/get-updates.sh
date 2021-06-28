#!/bin/bash

checkupdates > /home/janmarius/.scripts/updates/pacman-updates.txt && yay -Qum > /home/janmarius/.scripts/updates/aur-updates.txt
