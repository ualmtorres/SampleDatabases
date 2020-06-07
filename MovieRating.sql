-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version    10.1.26-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Movie`
--

CREATE DATABASE IF NOT EXISTS JUNIO2020MOVIES;

USE JUNIO2020MOVIES;

DROP TABLE IF EXISTS `Movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Movie` (
  `mID` smallint(6) DEFAULT NULL,
  `title` varchar(23) DEFAULT NULL,
  `year` smallint(6) DEFAULT NULL,
  `director` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movie`
--

LOCK TABLES `Movie` WRITE;
/*!40000 ALTER TABLE `Movie` DISABLE KEYS */;
INSERT INTO `Movie` VALUES (101,'Gone with the Wind',1939,'Victor Fleming'),(102,'Star Wars',1977,'George Lucas'),(103,'The Sound of Music',1965,'Robert Wise'),(104,'E.T.',1982,'Steven Spielberg'),(105,'Titanic',1997,'James Cameron'),(106,'Snow White',1937,NULL),(107,'Avatar',2009,'James Cameron'),(108,'Raiders of the Lost Ark',1981,'Steven Spielberg'), (109,'Snow White',2017,'Rupert Sanders');
/*!40000 ALTER TABLE `Movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rating`
--

DROP TABLE IF EXISTS `Rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Rating` (
  `rID` smallint(6) DEFAULT NULL,
  `mID` smallint(6) DEFAULT NULL,
  `stars` tinyint(4) DEFAULT NULL,
  `ratingDate` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rating`
--

LOCK TABLES `Rating` WRITE;
/*!40000 ALTER TABLE `Rating` DISABLE KEYS */;
INSERT INTO `Rating` VALUES (201,101,2,''),(201,101,4,''),(202,106,4,''),(203,103,2,''),(203,108,4,''),(203,108,2,''),(204,101,3,''),(205,103,3,''),(205,104,2,''),(205,108,4,''),(206,107,3,''),(206,106,5,''),(207,107,5,''),(208,104,3,''),(201,109,4,''),(203,109,5,'');
/*!40000 ALTER TABLE `Rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reviewer`
--

DROP TABLE IF EXISTS `Reviewer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Reviewer` (
  `rID` smallint(6) DEFAULT NULL,
  `name` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reviewer`
--

LOCK TABLES `Reviewer` WRITE;
/*!40000 ALTER TABLE `Reviewer` DISABLE KEYS */;
INSERT INTO `Reviewer` VALUES (201,'Sarah Martinez'),(202,'Daniel Lewis'),(203,'Brittany Harris'),(204,'Mike Anderson'),(205,'Chris Jackson'),(206,'Elizabeth Thomas'),(207,'James Cameron'),(208,'Ashley White');
/*!40000 ALTER TABLE `Reviewer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-22 15:20:25

