#!/bin/bash

function is_even () {
	
	if (( "$1" % 2 == 0 )); then
	
		return 0
	
	else
	
		return 1 
	
	fi
}

is_even 4
echo "$?"

is_even 5
echo "$?"

