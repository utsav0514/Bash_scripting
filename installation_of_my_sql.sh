#!/bin/bash
if command -v mysql >/dev/null 2>&1 ; then
        echo "you already have mysql"
        mysql --version
        sudo apt-get update -y
	sudo systemctl status mysql
else
        echo "Now installing mysql server"
        sudo apt-get update -y
        sudo apt-get upgrade -y
        sudo apt-get install -y mysql-server
        mysql --version
        sudo systemctl start mysql
        sudo systemctl enable mysql
	sudo systemclt status mysql 
fi

