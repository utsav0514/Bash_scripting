#!/bin/bash

for i in 1 2 3 4 5 6 
do 
	if [ "$i" -eq 4 ]; then
		break 
	fi
	echo "Numers: $i"
done

echo -e "\n"


for (( i=1; i<=10; i++ )); 
do 
	if [ "$i" -eq 6 ]; then 
		continue
	fi
	echo "Number: $i"
done
