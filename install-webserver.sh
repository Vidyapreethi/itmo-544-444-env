#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y apache2 git php5 php5-curl mysql-client curl php5-mysql
sudo apt-get install php5 php5-imagick
sudo apt-get install -y git
git clone https://github.com/Vidyapreethi/itmo-544-444-fall2015.git


echo "Cloned Git Repo" >> /tmp/webserver_install_log.txt

mv ./itmo-544-444-fall2015/images /var/www/html/images
mv ./itmo-544-444-fall2015/index.html /var/www/html
mv ./itmo-544-444-fall2015/page2.html /var/www/html
mv ./itmo-544-444-fall2015/*.php /var/www/html
mv ./itmo-544-444-fall2015/*.css /var/www/html
mv ./itmo-544-444-fall2015/*.js /var/www/html


curl -sS https://getcomposer.org/installer | sudo php &> /tmp/getcomposer.txt

sudo php composer.phar require aws/aws-sdk-php &> /tmp/runcomposer.txt

sudo mv vendor /var/www/html &> /tmp/movevendor.txt

cd /var/www/html

sudo php /var/www/html/setup.php &> /tmp/database-setup.txt

chmod 600 /var/www/html/setup.php
echo "Changed permission to setup.php"
echo "Hello!" > /tmp/hello.txt
