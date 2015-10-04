
#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y apache2
git clone https://github.com/Vidyapreethi/itmo-544-444-fall2015.git
mv itmo-544-444-fall2015/images /var/www/html/images
mv itmo-544-444-fall2015/index.html /var/www/html


echo "Hello!" > /tmp/hello.txt



