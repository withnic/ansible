#!/usr/bin/env bash

apt-get update
apt-get -y install nginx php-fpm

# 強制上書き
cp -f /vagrant/init/php.ini /etc/php/7.0/fpm/php.ini
cp -f /vagrant/init/default /etc/nginx/sites-available/default
cp -f /vagrant/init/info.php /var/www/html/info.php

service nginx reload
service php7.0-fpm reload
