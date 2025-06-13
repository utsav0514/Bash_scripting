#!/bin/bash

AGE=18
is_nepali_citizen=1
have_licence=1

#And operation 

if [[ "$AGE" -ge 18 && "$is_nepali_citizen" -eq 1 ]]; then
       echo "you are allowed to vote"


#OR operation 

elif [[ "$AGE" -ge 18 || "$have_licence" -eq 1 ]]; then
   	echo "you can drive the bike or car"
else 
	echo "you are not allowed to vote as well as to drive bike or car"
fi
