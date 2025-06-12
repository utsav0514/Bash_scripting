#!/bin/bash

if command -v apache2 >/dev/null 2>&1 ; then 
	echo "you have already apache2 in the system"
	apache2 -v

else 
	sudo apt update -y
	sudo apt install apache2 
	apache2 --version
	echo " sucessfully installed apache2"
fi 
