#!/bin/bash

echo "What is your name"
read name

echo "my name is $name"

read -p "where do you live " address
echo "I live at $address"

read -sp "Enter your password " password
echo -e "\npassword save"

echo "Enter your first name and last name"
read firstname lastname
echo "my full name is $firstname $lastname"

