#!/bin/sh

updatesarch="$(checkupdates 2> /dev/null | wc -l)"
updatesaur="$(yay -Qum 2> /dev/null | wc -l)"


printf " %s  %s \\n" "$updatesarch" "$updatesaur"
