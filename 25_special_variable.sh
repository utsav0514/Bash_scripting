#!/bin/bash

function special_variable () {

	echo "some mathematical solution"
	read -p "Enter the value of a " a
	read -p "Enter the value of b " b
	read -p "Enter the value of c " c

	(( sum = $a + $b + $c ))
	echo "sum:$sum"
	echo "The numbe of argument in this function $#"
}

special_variable 
