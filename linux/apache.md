https://medium.com/swlh/how-to-install-and-configure-apache-as-a-web-server-on-ubuntu-16-04-77fa7f57dea2

###
* apache conf in /etc/apache2/apache2.conf

### add virtual hosts
* /etc/apache2/sites-available

### restart

sudo service apache2 restart

### permissions to the /var/www/html folder.

sudo gpasswd -a username www-data  (user "username" added to group "www-data")

sudo chown -R www-data:www-data /var/www/html (assign ownership to group "www-data" for all files under "/var/www/html")

sudo chmod -R g+rwx /var/www/html (assign rwx rights at group level)

### deleted index.php file

The default Apache 2 test page is part of the apache2-data package that automatically gets installed with apache2.

* cd /usr/share/apache2/default-site
* sudo cp -f  index.html /var/www/html/
* REMOVE index.php (index.html will work fine as well)


### to expose a local webserver:

https://dashboard.ngrok.com/get-started/tutorials

* ./ngrok http 80  (The output will list a forwarding URL, which will point to your local server.)
* ctrl+c to close the port
* ss -tulw (to check ports in use)

