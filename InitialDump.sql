CREATE DATABASE  IF NOT EXISTS `db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db
-- ------------------------------------------------------
-- Server version	5.7.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `name` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `identification` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Kade','solter@','1','23444 Carolanne Radial','Cis'),(2,'Milo','solter@','2','541 King Avenue','Gender fluid'),(3,'Jakob','solter@','3','777 Walker Throughway','Two-spirit'),(4,'Irwin','solter@','4','688 Rachelle Extension','Trigender'),(5,'Mya','solter@','5','2800 Eunice Route','Cis woman'),(6,'Gladys','solter@','6','7969 Collier Fords','MTF'),(7,'Maryam','solter@','7','236 Lindgren Cliff','Hermaphrodite'),(8,'Joanny','solter@','8','63493 Von Rapids','Cis'),(9,'Margot','solter@','9','1249 Ephraim Meadows','Cisgender female'),(10,'Herta','solter@','10','60095 Kris Creek','Transexual female'),(11,'Wilmer','solter@','11','74007 Mraz Knolls','Genderflux'),(12,'Deontae','solter@','12','1399 Goyette Mountain','Polygender'),(13,'Eleanore','solter@','13','46481 Poplar Close','Cisgender'),(14,'Oda','solter@','14','4545 Fritsch Pike','Gender fluid'),(15,'Carlee','solter@','15','985 Cumberland Street','Cisgender male'),(16,'Joshua','solter@','16','317 Sandy Lane','Xenogender');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (2,'Chair','878.02','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/2.jpg'),(3,'Chicken','480.24','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/1.jpg'),(4,'Keyboard','877.14','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/2.jpg'),(5,'Tuna','423.89','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/4.jpg'),(6,'Fish','711.07','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/13.jpg'),(7,'Pizza','189.70','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/14.jpg'),(8,'Cheese','257.91','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/11.jpg'),(9,'Shoes','478.39','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/5.jpg'),(10,'Fish','396.88','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/6.jpg'),(11,'Ball','94.43','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/12.jpg'),(12,'Pizza','459.50','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/4.jpg'),(13,'Gloves','106.41','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/10.jpg'),(14,'Gloves','519.80','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/14.jpg'),(15,'Chips','142.20','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/12.jpg'),(16,'Pants','639.42','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/13.jpg'),(17,'Chicken','10.87','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/3.jpg'),(18,'Pizza','284.75','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/14.jpg'),(19,'Salad','205.15','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/11.jpg'),(20,'Car','986.96','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/8.jpg'),(21,'Chicken','708.05','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/1.jpg'),(22,'Chips','216.74','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/5.jpg'),(23,'Car','333.75','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/14.jpg'),(24,'Pizza','597.42','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/6.jpg'),(25,'Sausages','303.60','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/8.jpg'),(26,'Mouse','339.23','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/10.jpg'),(27,'Fish','945.78','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/14.jpg'),(28,'Salad','330.35','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/5.jpg'),(29,'Chicken','583.84','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/7.jpg'),(30,'Fish','116.80','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/11.jpg'),(31,'Gloves','91.25','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/6.jpg'),(32,'Tuna','488.72','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/7.jpg'),(33,'Bacon','912.43','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/12.jpg'),(34,'Towels','894.36','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/3.jpg'),(35,'Bike','777.33','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/9.jpg'),(36,'Pants','723.56','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/6.jpg'),(37,'Ball','20.95','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/12.jpg'),(38,'Table','922.13','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/8.jpg'),(39,'Keyboard','310.16','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/10.jpg'),(40,'Soap','104.50','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/8.jpg'),(41,'Towels','960.64','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/13.jpg'),(42,'Bacon','976.31','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/11.jpg'),(43,'Fish','69.89','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/1.jpg'),(44,'Bike','385.80','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/13.jpg'),(45,'Computer','821.40','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/9.jpg'),(46,'Shirt','475.36','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/13.jpg'),(47,'Soap','979.24','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/3.jpg'),(48,'Mouse','444.18','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/14.jpg'),(49,'Gloves','449.56','item','https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/10.jpg');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipments`
--

DROP TABLE IF EXISTS `shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipments` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `customer_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `shipment_date` date DEFAULT NULL,
  `seller` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipments`
--

LOCK TABLES `shipments` WRITE;
/*!40000 ALTER TABLE `shipments` DISABLE KEYS */;
INSERT INTO `shipments` VALUES (1,1,4,'2024-05-06','admin','electronico',1),(2,1,2,'2024-05-06','admin','electronico',1),(3,1,4,'2024-05-06','admin','electronico',12),(4,1,4,'2024-05-06','admin','electronico',12),(5,1,3,'2024-05-06','admin','electronico',12),(6,1,2,'2024-05-06','admin','electronico',3),(7,1,3,'2024-05-06','admin','electronico',12),(8,1,3,'2024-05-06','admin','electronico',1),(9,1,3,'2024-05-06','admin','electronico',3),(10,2,4,'2024-05-06','admin','electronico',1),(11,1,7,'2024-05-06','admin','electronico',123),(12,10,3,'2024-05-06','admin','electronico',1),(13,10,3,'2024-05-06','admin','electronico',25),(14,10,5,'2024-05-06','admin','electronico',23),(15,10,9,'2024-05-06','admin','electronico',12),(16,10,2,'2024-05-06','admin','electronico',1),(17,10,2,'2024-05-06','admin','electronico',1),(18,10,3,'2024-05-06','admin','electronico',1),(19,10,4,'2024-05-06','admin','electronico',2),(20,10,3,'2024-05-06','admin','electronico',45),(21,10,41,'2024-05-06','admin','electronico',1),(22,10,7,'2024-05-06','admin','electronico',1),(23,6,3,'2024-05-06','admin','electronico',1),(24,10,3,'2024-05-06','admin','electronico',1),(25,10,9,'2024-05-06','admin','electronico',1),(26,5,3,'2024-05-06','admin','electronico',1),(27,5,38,'2024-05-06','admin','electronico',1),(28,5,5,'2024-05-06','admin','electronico',1),(29,5,4,'2024-05-06','admin','electronico',1),(30,2,7,'2024-05-06','admin','electronico',2),(31,2,43,'2024-05-06','admin','electronico',3),(32,9,3,'2024-05-06','admin','electronico',1),(33,9,5,'2024-05-06','admin','electronico',1),(34,9,4,'2024-05-06','admin','electronico',1),(35,9,2,'2024-05-06','admin','electronico',1),(36,9,37,'2024-05-06','admin','electronico',1),(37,9,12,'2024-05-06','admin','electronico',1),(38,1,3,'2024-05-07','admin','electronico',5),(39,1,36,'2024-05-07','admin','electronico',23),(40,1,5,'2024-05-07','admin','electronico',3),(41,1,23,'2024-05-08','admin','electronico',1),(42,1,4,'2024-05-08','admin','electronico',2),(43,16,5,'2024-05-08','admin','electronico',1),(44,16,2,'2024-05-08','admin','electronico',2),(45,16,4,'2024-05-08','admin','electronico',4),(46,16,9,'2024-05-08','admin','electronico',1),(47,1,7,'2024-05-09','admin','electronico',1),(48,1,4,'2024-05-13','admin','electronico',1),(49,1,5,'2024-05-13','admin','electronico',310),(50,1,3,'2024-05-13','admin','electronico',490),(51,1,4,'2024-05-13','admin','electronico',1200),(52,1,4,'2024-05-13','admin','electronico',1),(53,1,4,'2024-05-13','admin','electronico',1),(54,9,3,'2024-05-13','admin','electronico',1),(55,9,7,'2024-05-13','admin','electronico',1);
/*!40000 ALTER TABLE `shipments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-12 21:44:01
