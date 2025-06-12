#!/bin/bash

read -p "Enter your age " Age

if [ $Age -gt 20 ]; then
	echo "you are able to drink alcohol"

elif [ $Age -lt 10 ]; then
	echo "you are only allowed to drink milk"

else
	echo "you are only allowed to dring colddrink"

fi

#-eq->equal
#-gt->greater than
#-lt->less than
#-ge->greater than equal to
#-le->less thna equal to 


