# Basic (from https://github.com/qyjohn/simple-lamp)

### clone the source code from git

$ cd /var

$ sudo chown -R ubuntu:ubuntu www

$ cd /var/www/html

$ git clone https://github.com/qyjohn/simple-lamp

### create MySQL db and a mySQL user

$ mysql -u root -p

mysql> CREATE DATABASE simple_lamp;

mysql> CREATE USER 'username'@'localhost' IDENTIFIED BY 'password';

mysql> GRANT ALL PRIVILEGES ON simple_lamp.* TO 'username'@'localhost';

mysql> quit

### populate db with sample data

$ cd /var/www/html/simple-lamp

$ mysql -u username -p simple_lamp < simple_lamp.sql

### edit config.php

(1) Use a text editor to open config.php, then change the username and password for your MySQL installation.

(2) Change the ownership of folder “uploads” to “www-data” so that Apache can upload files to this folder.

$cd /var/www/html/simple-lamp

$ sudo chown -R www-data:www-data uploads

### go to http://ip-address/simple-lamp/index.php
