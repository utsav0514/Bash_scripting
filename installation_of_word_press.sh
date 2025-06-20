#!/bin/bash
set -e 
if command -v apache2 >/dev/null 2>&1 && command -v php >/dev/null 2>&1 && [ -d "/srv/www/wordpress" ] ; then
	echo "all the packages you required are installed"
	sudo apt update -y
	sudo apt upgrade -y

else
	sudo apt update -y 
	sudo apt install -y apache2 \
                 ghostscript \
                 libapache2-mod-php \
                 mysql-server \
                 php \
                 php-bcmath \
                 php-curl \
                 php-imagick \
                 php-intl \
                 php-json \
                 php-mbstring \
                 php-mysql \
                 php-xml \
                 php-zip
	sudo mkdir -p /srv/www
	sudo chown www-data: /srv/www
	curl https://wordpress.org/latest.tar.gz | sudo -u www-data tar zx -C /srv/www
 
	echo "you wordpress installed sucessfully"	
fi
