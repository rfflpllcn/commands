* create database bookstorerp;
* create user rp@localhost identified by 521978;
* grant all on bookstorerp.* to "rp"@"localhost";
* flush privileges;

### run query 

* sudo mysql -u rp -p bookstorerp < bookDB.sql (bookDB.sql example given below)

### check db in MySQL Workbench:

* Database/Manage Connections/New

### check webapp

* http://localhost/simpleEmailApp/sendmymail.php




## bookDB.sql

>DROP TABLE IF EXISTS `books`;
>
>CREATE TABLE `books` (
>  `_id` int(11) NOT NULL AUTO_INCREMENT,
>  `_title` varchar(45) NOT NULL,
>  `author_name` varchar(45) NOT NULL,
>  `country` varchar(45) NOT NULL,
>  `release_year` int(11) NOT NULL,
>  PRIMARY KEY (`_id`),
>  UNIQUE KEY `product_id_UNIQUE` (`_id`)
>) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
>
>LOCK TABLES `books` WRITE;
>
>INSERT INTO `books` VALUES (1,'The Philosopher\'s Stone','J. K. Rowling','UK',1997),(2,'The Chamber of Secrets','J. K. Rowling','UK',1998);
>
>UNLOCK TABLES;
