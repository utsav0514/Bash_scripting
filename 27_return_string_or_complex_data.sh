#!/bin/bash

function greet () {
	echo "Hello ,$1"
}
greet_message=$(greet "Utsav")
echo "$greet_message"



function greet_2 () {
	echo "HEllo,$1"
}
greet_2 "Utsav"


<<comment
 Here both function will return output as Hello,Utsav but
the difference is that the first function uses the 
command subsitution method to store the output for the 
future use.

Another function simply print the output as Hello,Utsav
we can't use this output in future.
comment

