#!/bin/bash

trap ' echo "The process is interruped by the user"; exit 1;' SIGINT

while true 
do 
	echo "Hello, devops"
	sleep 3s 
done


