#!/bin/bash
TERMINAL=$1

declare options=("Random
Search
Quit")

choice=$(echo -e "${options[@]}" | dmenu -i -p 'Manpages: ')

case "$choice" in
	Quit)
		echo "Program terminated." && exit 1
	;;
	Random)
		find /usr/share/man/man1/ -type f | shuf | awk -F '/' '/1/ {print $6}' | sed 's/.gz//g' | head -1 | xargs $TERMINAL -e man & disown
	;;
	Search)
		man -k . | awk '{print $1}' | dmenu -i -p 'Search manpages: ' | xargs $TERMINAL -e man & disown
	;;
esac
