#!/bin/bash


sudo apt-get update -y
sudo apt-get install -y apache2 git php5-curl mysql-client 

sudo apt-get install -y git

git clone https://github.com/Vidyapreethi/itmo-544-444-fall2015.git

echo "Cloned Git Repo" >> /tmp/webserver_install_log.txt

mv ./itmo-544-444-fall2015/images /var/www/html/images
mv ./itmo-544-444-fall2015/index.html /var/www/html
mv ./itmo-544-444-fall2015/page2.html /var/www/html
mv ./itmo-544-444-fall2015/*.php /var/www/html

echo "Hello!" > /tmp/hello.txt



