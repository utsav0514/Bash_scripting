#!/bin/bash

#This tells how to see what your script is doing 
#we can use set -x to enable debug 
#we can use set +x to disable debug 

function my_fun () {
	set -x 
	a=20 
	b=30
	(( sum = a + b ))
	echo "The sum of $a and $b is $sum" 

	set +x 
}
my_fun 

