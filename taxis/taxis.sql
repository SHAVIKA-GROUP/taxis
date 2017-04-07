-- MySQL dump 10.13  Distrib 5.5.25a, for Win64 (x86)
--
-- Host: localhost    Database: taxis
-- ------------------------------------------------------
-- Server version	5.5.25a

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `passanger`
--

DROP TABLE IF EXISTS `passanger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passanger` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ADDRESS_ONE` varchar(100) NOT NULL,
  `ADDRESS_TWO` varchar(100) NOT NULL,
  `CITY` varchar(35) NOT NULL,
  `CREATED_ON` bigint(20) NOT NULL DEFAULT '0',
  `EMAIL` varchar(100) NOT NULL,
  `FIRST_NAME` varchar(100) NOT NULL,
  `GENDER` varchar(1) NOT NULL,
  `IS_DELETED` int(11) NOT NULL DEFAULT '0',
  `LAST_NAME` varchar(100) NOT NULL,
  `MODIFIED_ON` bigint(20) NOT NULL DEFAULT '0',
  `PHONE_NO` varchar(15) NOT NULL,
  `STATE` varchar(15) NOT NULL,
  `TRAVLEDETAIL_ID` bigint(20) NOT NULL DEFAULT '0',
  `VEHICLE_ID` bigint(20) NOT NULL DEFAULT '0',
  `ZIP_CODE` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passanger`
--

LOCK TABLES `passanger` WRITE;
/*!40000 ALTER TABLE `passanger` DISABLE KEYS */;
/*!40000 ALTER TABLE `passanger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `properties` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CURRENCY` varchar(30) NOT NULL,
  `DATE_FORMAT` varchar(30) NOT NULL,
  `STD_CODE` varchar(30) NOT NULL,
  `TIME_FORMAT` varchar(30) NOT NULL,
  `TIME_ZONE` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties`
--

LOCK TABLES `properties` WRITE;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` VALUES (1,'GBP','mm/dd/yyyy','004420','HH:mm:ss','GMT/UTC + 1:00');
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel_detail`
--

DROP TABLE IF EXISTS `travel_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `travel_detail` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CREATED_ON` bigint(20) NOT NULL DEFAULT '0',
  `DESIGNATION` varchar(500) NOT NULL,
  `IS_DELETED` int(11) NOT NULL DEFAULT '0',
  `MODIFIED_ON` bigint(20) NOT NULL DEFAULT '0',
  `NO_LUGGAGE` int(11) NOT NULL DEFAULT '0',
  `NO_PASSANGER` int(11) NOT NULL DEFAULT '0',
  `PASSANGER_ID` bigint(20) NOT NULL DEFAULT '0',
  `SOURCE` varchar(500) NOT NULL,
  `STATUS` varchar(10) NOT NULL,
  `TRAVEL_DATETIME` bigint(20) NOT NULL DEFAULT '0',
  `TRAVEL_DISTANCE` double NOT NULL,
  `TRAVEL_DURATION` double NOT NULL,
  `TRAVEL_FARE` double NOT NULL,
  `VEHICLE_ID` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel_detail`
--

LOCK TABLES `travel_detail` WRITE;
/*!40000 ALTER TABLE `travel_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `travel_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `AVAILABILITY` varchar(30) NOT NULL,
  `CONTACT_NO` varchar(30) NOT NULL,
  `CREATED_ON` bigint(20) NOT NULL DEFAULT '0',
  `DRIVER_NAME` varchar(30) NOT NULL,
  `IS_DELETED` int(11) NOT NULL DEFAULT '0',
  `LUGGAGE_CAPACITY` int(11) NOT NULL DEFAULT '0',
  `MODIFIED_ON` bigint(20) NOT NULL DEFAULT '0',
  `PASSANGER_CAPACITY` int(11) NOT NULL DEFAULT '0',
  `RATING` int(11) NOT NULL DEFAULT '0',
  `REGULAR_FARE` double NOT NULL,
  `TYPE` int(11) NOT NULL DEFAULT '0',
  `VEHICLE_NO` varchar(30) NOT NULL,
  `VEHICLE_NAME` varchar(50) NOT NULL,
  `IMG_NAME` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1,'Offering Anytime','+81-912 123 1123',1490983317936,'Jack London',0,25,1490983317936,4,3,300,1,'1L72','Vehicle-1','1.png'),(2,'Offering Anytime','+44-871 911 1231',1490983317936,'Rod Stewart',0,25,1490983317936,4,4,415,1,'3N64','Vehicle-2','2.png'),(3,'Offering Anytime','+44-871 911 5555',1490983317936,'Charles Dickens',0,25,1490983317936,4,5,350,1,'8NN21','Vehicle-3','3.png'),(4,'Offering Anytime','+44-871 911 3333',1490983317936,'Charles Prince War',0,25,1490983317936,4,3,500,1,'7BA11','Vehicle-4','4.png'),(5,'Offering Anytime','+44-112 911 1231',1490983317936,'David Bowie',0,25,1490983317936,6,5,500,2,'9MA00','Vehicle-5','5.png'),(6,'Offering Anytime','+44-871 911 5151',1490983317936,'Florence the Machine ',0,25,1490983317936,6,5,560,2,'0AB11','Vehicle-6','6.png'),(7,'Offering Anytime','+44-923 211 4441',1490983317936,'S clud 7',0,25,1490983317936,6,4,600,2,'9GA22','Vehicle-7','7.jpg'),(8,'Offering Anytime','+44-991 311 3333',1490983317936,'Paul Mc Cartney',0,25,1490983317936,6,3,650,2,'8AN01','Vehicle-8','8.png'),(9,'Offering Anytime','+20-881 811 2222',1490983317936,'Natasha Bedinfield ',0,25,1490983317936,16,3,780,3,'4MM123','Vehicle-9','9.png'),(10,'Offering Anytime','+20-991 911 0000',1490983317936,'Adele',0,25,1490983317936,16,4,770,3,'8GG12','Vehicle-10','10.png'),(11,'Day time only','+44-871 911 5151',1490983317936,'Adam Ant',0,30,1490983317936,10,3,1100,3,'23OL12','Vehicle-11','11.png'),(12,'Night Time Only','+44-871 911 5050',1490983317936,'Liam Payne',0,30,1490983317936,10,4,1150,3,'47MA47','Vehicle-12','12.jpg');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-07 16:46:05
