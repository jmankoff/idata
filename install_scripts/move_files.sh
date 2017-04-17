#! /bin/bash
sudo cp idata.conf /etc/apache2/sites-available/
sudo chgrp -R google-sudoers /usr/local/
mkdir /usr/local/www
mkdir /usr/local/www/html
echo '<!doctype html><html><body><h1>Hello World!</h1></body></html>' | sudo tee /usr/local/www/html/index.html
mkdir /usr/local/www/media
mkdir /usr/local/www/wsgi-scripts
sudo a2dissite 000-default.conf
sudo a2ensite idata.conf
sudo service apache2 restart
mkdir /usr/local/wsgi-scripts
sudo cp default.wsgi /usr/local/www/wsgi-scripts
mkdir /usr/local/www/idata
sudo mount --bind ~/idata/idata /usr/local/www/idata
sudo service apache2 restart


