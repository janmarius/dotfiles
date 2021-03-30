#!/bin/bash
QUOTES[1]="Sometimes it is the people no one can imagines anything of who do the things no one can imagine. - Alan Turing"
QUOTES[2]="Code is like humor. When you have to explain it, it's bad. - Cory House"

SIZE=${#QUOTES[@]}
INDEX=$(($RANDOM % $SIZE))
QUOTE=${QUOTES[$INDEX+1]}

cowsay -f moose $QUOTE
