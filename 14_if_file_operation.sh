#!/bin/bash

FILE="/home/utsav/somescirpts/git.sh"

if [ -e "$FILE" ]; then
	echo "File found git.sh"

else 
	echo "unable to locate file"
fi


#-f for the regular files
#-d for the regular directories 
#-e does the file or directores exits
#-r is it readable 
#-w is it writable 
#-x is it executabe 
