#!/bin/bash

if command -v git >/dev/null 2>&1 ; then
	
	echo "updating your system"
	sudo apt update -y

	echo "git is already in your system"

	echo "checking git version"
	git -v


else 
	echo "updating the system"
	sudo apt update -y

	echo "installing the git"
	sudo apt install git 

	echo "git verions"
	git -v

	echo "git installed sucessfully"
fi


