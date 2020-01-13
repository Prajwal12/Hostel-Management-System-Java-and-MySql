-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: hostel
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `fee`
--

DROP TABLE IF EXISTS `fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `fee` (
  `stud_id` int(11) DEFAULT NULL,
  `total_amt` int(11) DEFAULT NULL,
  `paid_amt` int(11) DEFAULT NULL,
  KEY `stud_id` (`stud_id`),
  CONSTRAINT `Fee_ibfk_1` FOREIGN KEY (`stud_id`) REFERENCES `student` (`stud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee`
--

LOCK TABLES `fee` WRITE;
/*!40000 ALTER TABLE `fee` DISABLE KEYS */;
INSERT INTO `fee` VALUES (121,70000,70000);
/*!40000 ALTER TABLE `fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1001,2,2),(1002,2,2),(1003,2,2),(1004,2,2),(1005,2,2),(1006,1,2),(1007,1,2),(1008,0,2),(1009,0,2),(1010,0,2),(2001,3,3),(2002,3,3),(2003,2,3),(2004,0,3),(2005,0,3);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student` (
  `stud_id` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(20) DEFAULT NULL,
  `dept` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`stud_id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (101,'Pranav','Comp','Jalgaon','1998-09-03',1001),(102,'Honey','Comp','Bhusawal','1998-06-17',1001),(103,'Prajwal','Comp','Nagpur','1998-02-12',1002),(104,'Gaurav','ENTC','Chandrapur','1998-09-17',1002),(105,'Saurav','ENTC','Bhusawal','1999-02-26',1003),(106,'Rushikesh','ENTC','Amaravati','1998-11-07',1003),(107,'Mrunal','Comp','Nashik','1999-02-02',1004),(108,'Koko','Civil','Akola','1999-09-25',1004),(109,'Arpit','ENTC','Kolhapur','1998-07-09',1005),(110,'Yogesh','Mech','Usmanabad','1998-04-04',1005),(111,'Lokesh','Mech','Jalgaon','1999-02-21',1006),(112,'Abhinay','Mech','Jalgaon','1998-08-17',2001),(113,'YashRao','Comp','Indore','1998-09-17',2001),(114,'Atul','IT','Pune','1999-04-17',1007),(115,'Pranav','Comp','Nashik','1998-05-05',2001),(116,'Saurabh','Comp','Nashik','1998-10-03',2002),(117,'Mayur','Comp','Talegaon','1998-11-01',2002),(118,'Shravan','Comp','Vishakapatnam','1998-03-01',2002),(119,'Anirudha','Comp','Mumbai','1998-04-01',2003),(120,'Rohit','Comp','Mumbai','1998-09-25',2003),(121,'Kartik','Civil','Kolhapur','1998-05-19',2004);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `fe` AFTER INSERT ON `student` FOR EACH ROW insert into fee(stud_id,total_amt) values(new.stud_id,70000) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `visitor`
--

DROP TABLE IF EXISTS `visitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `visitor` (
  `visitor_id` int(11) NOT NULL AUTO_INCREMENT,
  `vname` varchar(20) DEFAULT NULL,
  `stud_id` int(11) DEFAULT NULL,
  `DOV` date DEFAULT NULL,
  PRIMARY KEY (`visitor_id`),
  KEY `stud_id` (`stud_id`),
  CONSTRAINT `Visitor_ibfk_1` FOREIGN KEY (`stud_id`) REFERENCES `student` (`stud_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitor`
--

LOCK TABLES `visitor` WRITE;
/*!40000 ALTER TABLE `visitor` DISABLE KEYS */;
INSERT INTO `visitor` VALUES (6,'Honey',121,'2018-10-15'),(7,'Rushi',105,'2018-10-15'),(8,'Rushi',108,'2018-10-15'),(9,'Rushi',115,'2018-10-15'),(10,'Honey',115,'2018-10-15'),(11,'Rushi',115,'2018-10-15'),(12,'Honey',115,'2018-10-15');
/*!40000 ALTER TABLE `visitor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-16  9:41:03
