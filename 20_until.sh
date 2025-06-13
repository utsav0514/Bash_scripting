#!/bin/bash

count=1

until [ $count -eq 10 ]
do 
	echo "count: $count"
	((count++))
done
