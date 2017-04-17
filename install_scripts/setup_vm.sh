#! /bin/bash
sudo apt-get update && sudo apt-get install apache2 -y
sudo apt-get install apache2-dev
sudo chgrp -R google-sudoers /usr/local/
sudo chmod g+w /usr/local
sudo apt-get install git
sudo apt-get install emacs
sudo apt-get install libapache2-mod-wsgi
sudo apt-get install libapache2-mod-wsgi-py3
