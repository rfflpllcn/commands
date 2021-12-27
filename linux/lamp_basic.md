https://www.lifewire.com/create-lamp-web-server-using-ubuntu-4135422

# Basic

### install

sudo apt-get install tasksel

sudo tasksel install lamp-server

### secure MySQL db

sudo mysql_secure_installation

### phpmyadmin

sudo dpkg-reconfigure phpmyadmin

name for the MySQL database to be used by phpmyadmin: phpmyadmin

MySQL Username for phpmyadmin to register with the database server: phpmyadmin@localhost

MySQL application password for phpmyadmin: 521978

Name of the database's administrative user: debian-sys-maint (the name of the account with which this package should perform administrative actions. This user is   the one with the power to create new database users.)
