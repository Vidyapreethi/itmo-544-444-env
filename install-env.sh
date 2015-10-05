#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y apache2

echo "Installed apache2" >> /tmp/webserver_install_log.txt

sudo apt-get install -y git

echo "Installed Git" >> /tmp/webserver_install_log.txt

git clone https://github.com/Vidyapreethi/itmo-544-444-fall2015.git

echo "Cloned GIT Repo" >> /tmp/webserver_install_log.txt

mv ./itmo-544-444-fall2015/images /var/www/html/images
mv ./itmo-544-444-fall2015/index.html /var/www/html

echo "Copied images and pages to Apache directory" >> /tmp/webserver_install_log.txt

echo "Hello!" > /tmp/hello.txt



