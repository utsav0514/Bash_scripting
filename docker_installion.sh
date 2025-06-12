#!/bin/bash
set -e

	if command -v docker >/dev/null 2>&1 ; then



		echo "docker is already available in the system.....
		................updating the system"
		sudo apt update -y	
	else
		echo "Your system donot have docker so installing docker .........."
		sudo apt update -y 
		sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
		sudo install -m 0755 -d /etc/apt/keyrings
		sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
		sudo chmod a+r /etc/apt/keyrings/docker.asc
		# Add the repository to Apt sources:
		echo \
  		"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
 		 $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  		sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
		sudo apt-get update -y
		sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
		
		echo "checking the docker version"
			docker --version
			echo "your docker is sucessfully installed"
fi
		
