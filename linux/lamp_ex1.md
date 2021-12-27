create database bookstorerp;

create user rp@localhost identified by 521978;

grant all on bookstorerp.* to "rp"@"localhost";

flush privileges;

### 
sudo mysql -u rp -p bookstorerp < bookDB.sql


### bookDB.sql:
DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `_title` varchar(45) NOT NULL,
  `author_name` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `release_year` int(11) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `product_id_UNIQUE` (`_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'The Philosopher\'s Stone','J. K. Rowling','UK',1997),(2,'The Chamber of Secrets','J. K. Rowling','UK',1998),(3,'The Prisoner of Azkaban','J. K. Rowling','UK',1999),(4,'The Goblet of Fire','J. K. Rowling','UK',2000),(5,'The Order of the Phoenix','J. K. Rowling','UK',2003),(6,'The Half-Blood Prince','J. K. Rowling','UK',2005),(7,'The Deathly Hallows','J. K. Rowling','UK',2007),(8,'American Gods','Neil Gaiman','UK',2001),(14,'Introduction to Algorithms','Thomas H. Cormen','USA',1990),(15,'The Underground Railroad','Colson Whitehead','USA',2016),(16,'The Magic','Rhonda Byrne','USA',2012),(17,'Srikanta','Sarat Chandra Chattopadhyay','India',1917),(18,'CyberStorm','Matthew Mather','USA',2013),(19,'Alice in Wonderland','Lewis Carroll','UK',1865);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
