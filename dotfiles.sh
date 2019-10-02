#!/bin/bash

# Create dotfiles_old directory for backup of any old dotfiles
echo "Creating dotfiles_old directory in ~/dotfiles_old"
mkdir -p ~/dotfiles_old/.config/i3
mkdir -p ~/dotfiles_old/.config/polybar
echo "...done"

# Change to ~/dotfiles/.config/i3 directory
echo "Changing to the ~/dotfiles/.config/i3 directory"
cd ~/dotfiles/.config/i3
echo "...done"


FILES=`ls`

# Cleaning up ~/.config/i3
echo "Cleaning up ~/.config/i3"
for FILE in $FILES; do
	if [ \( -L ~/.config/i3/$FILE \) ]
		then
		echo "Deleting existing symbolic link file: $FILE"
		rm ~/.config/i3/$FILE
	fi
	if [ \( -e ~/.config/i3/$FILE \) -a ! \( -L ~/.config/i3/$FILE \) ]
		then
			echo "Moving $FILE to ~/dotfiles_old/.config/i3/$FILE"
			mv ~/.config/i3/$FILE ~/dotfiles_old/.config/i3
	fi
done
echo "...done"

# Creating symbolic link files for all dotfiles
echo "Creating symbolic link files for all dotfiles"
for FILE in $FILES; do
	ln -s ~/dotfiles/.config/i3/$FILE ~/.config/i3/$FILE
done

# Change to ~/dotfiles/.config/polybar directory
echo "Changing to the ~/dotfiles/.config/polybar directory"
cd ~/dotfiles/.config/polybar
echo "...done"


FILES=`ls`

# Cleaning up ~/.config/polybar
echo "Cleaning up ~/.config/polybar"
for FILE in $FILES; do
	if [ \( -L ~/.config/polybar/$FILE \) ]
		then
		echo "Deleting existing symbolic link file: $FILE"
		rm ~/.config/polybar/$FILE
	fi
	if [ \( -e ~/.config/polybar/$FILE \) -a ! \( -L ~/.config/polybar/$FILE \) ]
		then
			echo "Moving $FILE to ~/dotfiles_old/.config/polybar/$FILE"
			mv ~/.config/polybar/$FILE ~/dotfiles_old/.config/polybar
	fi
done
echo "...done"

# Creating symbolic link files for all dotfiles
echo "Creating symbolic link files for all dotfiles"
for FILE in $FILES; do
	ln -s ~/dotfiles/.config/polybar/$FILE ~/.config/polybar/$FILE
done

