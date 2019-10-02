#!/bin/bash

DIRECTORY1=~/dotfiles/
DIRECTORY2=~/
DIRECTORY3=~/dotfiles_old/

CREATE_SYMBOLIC_LINKS () {
	CURRENT_DIRECTORY=$1
	HOME_DIRECTORY=$2	
	OLD_DIRECTORY=$3
	DIRECTORIES="."
	FILES=""

	# Find all files and directories
	ELEMENTS=`ls -A $CURRENT_DIRECTORY`
	for ELEMENT in $ELEMENTS;
	do
		if [[ -L $CURRENT_DIRECTORY/$ELEMENT ]]; then
			echo "Error: Found symbolic link in your dotfiles directory!"
		elif [ \( -d $CURRENT_DIRECTORY/$ELEMENT \) -a  ! \( "$ELEMENT" ==  ".git" \) ]; then
			DIRECTORIES="$DIRECTORIES $ELEMENT/"
		elif [ \( -f $CURRENT_DIRECTORY/$ELEMENT \) -a ! \( "$ELEMENT" == "dotfiles.sh" \) -a ! \( "$ELEMENT" == "README.md" \) ]; then
			FILES="$FILES $ELEMENT"
		fi
	done


	for DIRECTORY in $DIRECTORIES;
	do
		echo "Creating $OLD_DIRECTORY$DIRECTORY for backup of any old dotfiles"
		mkdir -p $OLD_DIRECTORY$DIRECTORY
		echo "...done"
		
		# Cleaning up $HOME_DIRECTORY$DIRECTORY
		echo "Cleaning up $HOME_DIRECTORY$DIRECTORY"
		for FILE in $FILES; do
			if [ \( -L $HOME_DIRECTORY$FILE \) ]; then
				echo "Deleting existing symbolic link file: $FILE"
				rm $HOME_DIRECTORY$FILE
			fi
			if [ \( -e $HOME_DIRECTORY$FILE \) -a ! \( -L $HOME_DIRECTORY$FILE \) ]; then
				echo "Moving $FILE to ~/dotfiles_old/.config/i3/$FILE"
				mv $HOME_DIRECTORY$FILE $OLD_DIRECTORY$FILE
			fi
		done
		echo "...done"
		


		if [ $DIRECTORY != "." ]; then
			SAVE_CURRENT_DIRECTORY=$CURRENT_DIRECTORY
			SAVE_HOME_DIRECTORY=$HOME_DIRECTORY
			SAVE_OLD_DIRECTORY=$OLD_DIRECTORY
			SAVE_FILES=$FILES
				
			CREATE_SYMBOLIC_LINKS $CURRENT_DIRECTORY$DIRECTORY $HOME_DIRECTORY$DIRECTORY $OLD_DIRECTORY$DIRECTORY

			CURRENT_DIRECTORY=$SAVE_CURRENT_DIRECTORY
			HOME_DIRECTORY=$SAVE_HOME_DIRECTORY
			OLD_DIRECTORY=$SAVE_OLD_DIRECTORY
		fi
	done

	# Find all files
	ALL_FILES=`ls -A $1`
	SYMLINK_FILES=""

	for FILE in $ALL_FILES;
	do
		if [[ -L $1/$FILE ]]; then
			echo "Error: Found symbolic link in your dotfiles directory!"
		elif [ \( -f $1/$FILE \) -a ! \( "$FILE" == "dotfiles.sh" \) -a ! \( "$FILE" == "README.md" \) ]; then
			SYMLINK_FILES="$SYMLINK_FILES $FILE"
		fi
	done

	# Creating symbolic link files for all dotfiles
	echo "Creating symbolic link files for all dotfiles"
	for FILE in $SYMLINK_FILES; do
		ln -s $1$FILE $2$FILE
	done
}

CREATE_SYMBOLIC_LINKS $DIRECTORY1 $DIRECTORY2 $DIRECTORY3
