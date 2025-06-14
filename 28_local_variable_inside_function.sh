#!/bin/bash

Name="Utsav Shrestha"

function Local_variable () {
	local Name="Sagar Sunwar"
	echo "This is the name inside the function $Name"
}
Local_variable

echo "This is the Global variable $Name"
