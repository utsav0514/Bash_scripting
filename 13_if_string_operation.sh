#!/bin/bash

NAME=""

if [ "$NAME" == "Utsav Shrestha" ]; then
	echo "String matched"

elif [ "$NAME" != "Utsav Shrestha" ]; then
	echo "your String doesnot matched"

elif [ -z "$NAME" ]; then
	echo "your String is empty"
elif [ -n "$NAME" ]; then
	echo "your string is not empty"
else 
	echo "some thing went wrong"
fi
