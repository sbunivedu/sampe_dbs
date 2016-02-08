create database CIS3323;
use CIS3323;

--
-- Table structure for table `Battles`
--

DROP TABLE IF EXISTS `Battles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Battles` (
  `name` varchar(20) DEFAULT NULL,
  `battledate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Battles`
--

LOCK TABLES `Battles` WRITE;
/*!40000 ALTER TABLE `Battles` DISABLE KEYS */;
INSERT INTO `Battles` VALUES ('North Atlantic','1941-05-24'),('Guadalcanal','1942-11-15'),('North Cape','1943-02-26'),('Suriago Strait','1944-10-25');
/*!40000 ALTER TABLE `Battles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Categories`
--

DROP TABLE IF EXISTS `Categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Categories` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categories`
--

LOCK TABLES `Categories` WRITE;
/*!40000 ALTER TABLE `Categories` DISABLE KEYS */;
INSERT INTO `Categories` VALUES (3,'red');
/*!40000 ALTER TABLE `Categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Categories_Products`
--

DROP TABLE IF EXISTS `Categories_Products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Categories_Products` (
  `category_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`category_id`,`product_id`),
  KEY `pkey` (`product_id`),
  CONSTRAINT `Categories_Products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `Categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Categories_Products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `Products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categories_Products`
--

LOCK TABLES `Categories_Products` WRITE;
/*!40000 ALTER TABLE `Categories_Products` DISABLE KEYS */;
INSERT INTO `Categories_Products` VALUES (3,1),(3,2);
/*!40000 ALTER TABLE `Categories_Products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Classes`
--

DROP TABLE IF EXISTS `Classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Classes` (
  `class` varchar(20) DEFAULT NULL,
  `type` varchar(2) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `numGuns` int(11) DEFAULT NULL,
  `bore` int(11) DEFAULT NULL,
  `displacement` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES ('Bismarck','bb','Germany',8,15,42000),('Iowa','bb','USA',9,16,46000),('Kongo','bc','Japan',8,14,32000),('North Carolina','bb','USA',9,16,37000),('Renown','bc','Gt. Britain',6,15,32000),('Revenge','bb','Gt. Britain',8,15,29000),('Tennessee','bb','USA',12,14,32000),('Yamato','bb','Japan',9,18,65000);
/*!40000 ALTER TABLE `Classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Laptop`
--

DROP TABLE IF EXISTS `Laptop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Laptop` (
  `model` varchar(4) DEFAULT NULL,
  `speed` int(11) DEFAULT NULL,
  `ram` int(11) DEFAULT NULL,
  `hd` int(11) DEFAULT NULL,
  `screen` float DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Laptop`
--

LOCK TABLES `Laptop` WRITE;
/*!40000 ALTER TABLE `Laptop` DISABLE KEYS */;
INSERT INTO `Laptop` VALUES ('2001',700,64,5,12.1,1448),('2002',800,96,10,15.1,2584);
/*!40000 ALTER TABLE `Laptop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Outcomes`
--

DROP TABLE IF EXISTS `Outcomes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Outcomes` (
  `ship` varchar(20) DEFAULT NULL,
  `battle` varchar(20) DEFAULT NULL,
  `result` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Outcomes`
--

LOCK TABLES `Outcomes` WRITE;
/*!40000 ALTER TABLE `Outcomes` DISABLE KEYS */;
INSERT INTO `Outcomes` VALUES ('Bismarck','North Atlantic','sunk'),('California','Surigao Strait','ok'),('Duke of York','North Cape','ok'),('Fuso','Surigao Strait','sunk'),('Hood','North Atlantic','sunk'),('King George V','North Atlantic','ok'),('Kirishima','Guadalcanal','sunk'),('Prince of Wales','North Atlantic','damaged'),('Rodney','North Atlantic','ok'),('Scharnhorst','North Cape','sunk'),('South Dakota','Guadalcanal','damaged'),('Tennessee','Surigao Strait','ok'),('Washington','Guadalcanal','ok'),('West Virginia','Surigao Strait','ok'),('Yamashiro','Surigao Strait','sunk');
/*!40000 ALTER TABLE `Outcomes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Products`
--

DROP TABLE IF EXISTS `Products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Products` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Products`
--

LOCK TABLES `Products` WRITE;
/*!40000 ALTER TABLE `Products` DISABLE KEYS */;
INSERT INTO `Products` VALUES (1,'mittens'),(2,'boots');
/*!40000 ALTER TABLE `Products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ships`
--

DROP TABLE IF EXISTS `Ships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ships` (
  `name` varchar(20) DEFAULT NULL,
  `class` varchar(20) DEFAULT NULL,
  `launched` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ships`
--

LOCK TABLES `Ships` WRITE;
/*!40000 ALTER TABLE `Ships` DISABLE KEYS */;
INSERT INTO `Ships` VALUES ('California','Tennessee',1921),('Haruna','Kongo',1915),('Hiei','Kongo',1914),('Iowa','Iowa',1943),('Kirishima','Kongo',1915),('Kongo','Kongo',1913),('Missouri','Iowa',1944),('Musashi','Yamato',1942),('New Jersey','Iowa',1943),('North Carolina','North Carolina',1941),('Ramillies','Revenge',1917),('Renown','Renown',1916),('Repulse','Renown',1916),('Resolution','Revenge',1916),('Revenge','Revenge',1916),('Royal Oak','Revenge',1916),('Royal Sovereign','Revenge',1916),('Tennessee','Tennessee',1920),('Washington','North Carolina',1941),('Wisconsin','Iowa',1944),('Yamato','Yamato',1941);
/*!40000 ALTER TABLE `Ships` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-08 15:51:31
