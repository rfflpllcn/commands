https://medium.com/swlh/how-to-install-and-configure-apache-as-a-web-server-on-ubuntu-16-04-77fa7f57dea2

###
* apache conf in /etc/apache2/apache2.conf

### add virtual hosts
* /etc/apache2/sites-available

### restart

sudo service apache2 restart

# permissions to the /var/www/html folder.

sudo gpasswd -a username www-data  (user "username" added to group "www-data")

sudo chown -R www-data:www-data /var/www/html (assign ownership to group "www-data" for all files under "/var/www/html")

sudo chmod -R g+rwx /var/www/html (assign rwx rights at group level)
