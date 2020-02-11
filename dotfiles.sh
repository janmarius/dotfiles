#!/bin/bash

DIRECTORY1=~/dotfiles/
DIRECTORY2=~/
DIRECTORY3=~/dotfiles_old/

IFS='
'

CREATE_SYMBOLIC_LINKS () {
	DIRECTORIES=(".")
	FILES=()

	# Find all files and directories
	ELEMENTS=($(ls -1A $1 */))
	for ELEMENT in ${ELEMENTS[@]};
	do
		if [[ -L $1$ELEMENT ]]; then
			echo "Error: Found symbolic link in your dotfiles directory!"
		elif [ \( -d $1$ELEMENT \) -a  ! \( "$ELEMENT" ==  ".git" \) ]; then
			DIRECTORIES+=($ELEMENT/)
		elif [ \( -f $1$ELEMENT \) -a ! \( "$ELEMENT" == "dotfiles.sh" \) -a ! \( "$ELEMENT" == "README.md" \) ]; then
			FILES+=($ELEMENT)
		fi
	done

	for DIRECTORY in ${DIRECTORIES[@]};
	do	
		# Creating dotfiles_old directory
		echo "Creating $3$DIRECTORY for backup of any old dotfiles"	
		mkdir -p $3$DIRECTORY

		# Creating directory for symlinks
		echo "Creating $2$DIRECTORY for symlinks"
		mkdir -p $2$DIRECTORY
		
		# Cleaning up directory
		echo "Cleaning up $2"
		for FILE in ${FILES[@]}; do
			if [ \( -L $2$FILE \) ]; then
				echo "Deleting existing symbolic link file: $FILE"
				rm $2$FILE
			fi
			if [ \( -e $2$FILE \) -a ! \( -L $2$FILE \) ]; then
				echo "Moving $2$FILE to $3$FILE"
				mv $2$FILE $3$FILE
			fi
		done
		echo "...done"
		echo ""

		if [ $DIRECTORY != "." ]; then
			CREATE_SYMBOLIC_LINKS $1$DIRECTORY $2$DIRECTORY $3$DIRECTORY
		fi
	done

	# Find all files
	ALL_FILES=($(ls -1A $1 */))
	SYMLINK_FILES=()

	for FILE in ${ALL_FILES[@]};
	do
		if [[ -L $1$FILE ]]; then
			echo "Error: Found symbolic link in your dotfiles directory!"
		elif [ \( -f $1$FILE \) -a ! \( "$FILE" == "dotfiles.sh" \) -a ! \( "$FILE" == "README.md" \) ]; then
			SYMLINK_FILES+=($FILE)
		fi
	done

	# Creating symbolic link files for all dotfiles
	echo "Creating symbolic link files for all dotfiles"
	for FILE in ${SYMLINK_FILES[@]}; do
		echo "Creating symbolic link: ln -s $1$FILE $2$FILE"
		ln -s $1$FILE $2$FILE
	done
}

CREATE_SYMBOLIC_LINKS $DIRECTORY1 $DIRECTORY2 $DIRECTORY3
