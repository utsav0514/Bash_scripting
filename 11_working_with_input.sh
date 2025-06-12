#!/bin/bash

echo "What is your name"
read name

echo "my name is $name"

# Give prompt insed the read use -p 

read -p "where do you live " address
echo "I live at $address"

# Silent input use -sp
read -sp "Enter your password " password
echo -e "\npassword save"

#for the multiple input 
echo "Enter your first name and last name"
read firstname lastname
echo "my full name is $firstname $lastname"

