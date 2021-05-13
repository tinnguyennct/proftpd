-- MySQL dump 10.13  Distrib 5.6.20, for Linux (x86_64)
--
-- Host: localhost    Database: ftp
-- ------------------------------------------------------
-- Server version	5.6.20

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
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `GroupName` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `Members` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`GroupName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `Username` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Password` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `UserID` int(11) DEFAULT '99',
  `GroupID` int(11) DEFAULT '99',
  `HomeDir` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Shell` varchar(255) CHARACTER SET utf8 DEFAULT '/bin/bash',
  PRIMARY KEY (`Username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES ('abc1','*6F59CF898653D387E49EC136F68309B4C4DBA60A',99,99,'/home/','/bin/bash'),('abc2','*309527D682677C6135F7F42D8A2920005EE7D6FE',99,99,'/home/','/bin/bash'),('maycu','*0CFD6AE59D66AC15E1198BD348A9DE41EEF03A4A',99,99,'/home/','/bin/bash'),('mot','*DA54352F80E8ADE762295CB2EC9F91E9A3FCA821',99,99,'/home/','/bin/bash');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `www`
--

DROP TABLE IF EXISTS `www`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `www` (
  `Username` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Password` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `UserID` int(11) DEFAULT '99',
  `GroupID` int(11) DEFAULT '99',
  `HomeDir` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Shell` varchar(255) CHARACTER SET utf8 DEFAULT '/bin/bash',
  PRIMARY KEY (`Username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `www`
--

LOCK TABLES `www` WRITE;
/*!40000 ALTER TABLE `www` DISABLE KEYS */;
INSERT INTO `www` VALUES ('abc1','*6F59CF898653D387E49EC136F68309B4C4DBA60A',99,99,'/home/','/bin/bash'),('abc2','*309527D682677C6135F7F42D8A2920005EE7D6FE',99,99,'/home/','/bin/bash'),('test','*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9',99,99,'/home','/bin/bash');
/*!40000 ALTER TABLE `www` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `www2`
--

DROP TABLE IF EXISTS `www2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `www2` (
  `Username` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Password` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `UserID` int(11) DEFAULT '99',
  `GroupID` int(11) DEFAULT '99',
  `HomeDir` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Shell` varchar(255) CHARACTER SET utf8 DEFAULT '/bin/bash',
  PRIMARY KEY (`Username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `www2`
--

LOCK TABLES `www2` WRITE;
/*!40000 ALTER TABLE `www2` DISABLE KEYS */;
INSERT INTO `www2` VALUES ('abc1','*6F59CF898653D387E49EC136F68309B4C4DBA60A',99,99,'/home/','/bin/bash'),('abc2','*309527D682677C6135F7F42D8A2920005EE7D6FE',99,99,'/home/','/bin/bash'),('','',99,99,NULL,'/bin/bash');
/*!40000 ALTER TABLE `www2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-11 13:49:27
