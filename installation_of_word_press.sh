#!/bin/bash
set -e

if command -v apache2 >/dev/null 2>&1 && command -v php >/dev/null 2>&1 && [ -d "/srv/www/wordpress" ]; then
    echo "All the packages you required are already installed"
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

    echo "<VirtualHost *:80>
    DocumentRoot /srv/www/wordpress
    <Directory /srv/www/wordpress>
        Options FollowSymLinks
        AllowOverride Limit Options FileInfo
        DirectoryIndex index.php
        Require all granted
    </Directory>
    <Directory /srv/www/wordpress/wp-content>
        Options FollowSymLinks
        Require all granted
    </Directory>
</VirtualHost>" > utsav.local.conf

    sudo mv utsav.local.conf /etc/apache2/sites-available/
    sudo a2ensite utsav.local.conf
    sudo a2enmod rewrite
    sudo a2dissite 000-default
    sudo systemctl reload apache2

    # Create MySQL database and user
    sudo mysql <<EOF
CREATE DATABASE wordpress;
CREATE USER wordpress@localhost IDENTIFIED BY 'Hello1111#';
GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP,ALTER ON wordpress.* TO wordpress@localhost;
FLUSH PRIVILEGES;
EOF

    echo "Your WordPress installed successfully"
fi

