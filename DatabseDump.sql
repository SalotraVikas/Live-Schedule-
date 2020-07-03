-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: calendar
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `color` varchar(7) DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `practitioner` varchar(255) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `finish` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (15,'smokefree','#FF0000','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL),(16,'','','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL),(17,'rgrdeg','#008000','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL),(18,'','','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL),(19,'therapy ','#0071c5','2016-01-14 00:00:00','2016-01-15 00:00:00',NULL,NULL,NULL,NULL,NULL),(21,'Plunket ','#FF0000','2020-04-16 00:00:00','2020-04-17 00:00:00',NULL,NULL,NULL,NULL,NULL),(27,'event2','#40E0D0','2020-04-01 00:00:00','2020-04-02 00:00:00',NULL,NULL,NULL,NULL,NULL),(37,'ryrt5y','#008000','2020-04-23 00:00:00','2020-04-24 00:00:00',NULL,NULL,NULL,NULL,NULL),(39,'dvsdv','#40E0D0','2020-04-02 00:00:00','2020-04-03 00:00:00',NULL,NULL,NULL,NULL,NULL),(41,'Therapy','#008000','2020-06-01 00:00:00','2020-06-02 00:00:00','','','','',''),(42,'dsfv','#FF8C00','2020-04-02 00:00:00','2020-04-03 00:00:00',NULL,NULL,NULL,NULL,NULL),(43,'dfrgdrfg','#FFD700','2020-04-15 00:00:00','2020-04-16 00:00:00',NULL,NULL,NULL,NULL,NULL),(48,'plunket ','#FF8C00','2020-06-02 00:00:00','2020-06-03 00:00:00','Great south road ','','',NULL,NULL),(50,'orientation ','#FFD700','2020-04-03 00:00:00','2020-04-04 00:00:00','north rd','Free food ','dr smith',NULL,NULL),(51,'helllo ','#008000','2020-03-31 00:00:00','2020-04-01 00:00:00','hsajkncfjasdc','','sdvdsvs',NULL,NULL),(52,'ewefwf','#FF8C00','2020-03-30 00:00:00','2020-03-31 00:00:00','wefewfwef','','',NULL,NULL),(53,'Test10','#FF8C00','2020-03-29 00:00:00','2020-03-30 00:00:00','gfdzbdfgb','','dr smith ',NULL,NULL),(54,'zdfbdzb','#008000','2020-04-05 00:00:00','2020-04-06 00:00:00','zdbfzdbzd','','',NULL,NULL),(55,'dhgdrtfg','#0071c5','2020-04-06 00:00:00','2020-04-07 00:00:00','zdhgdzgh','','',NULL,NULL),(56,'Test 100','#FFD700','2020-04-12 00:00:00','2020-04-13 00:00:00','Great south road ','This is a note ','dr smith ',NULL,NULL),(57,'Test 3','#FFD700','2020-06-04 00:00:00','2020-06-05 00:00:00','31 Great south sdv','This is a note ','Dr smith ',NULL,NULL),(58,'PLease work ','#FF8C00','2020-06-10 00:00:00','2020-06-11 00:00:00','great south rd ','this is a note ','dr smith ',NULL,NULL),(59,'fdsf','#40E0D0','0000-00-00 00:00:00','0000-00-00 00:00:00','dscvd','','dsv',NULL,NULL),(60,'','','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',NULL,NULL),(61,'dscvfds','#0071c5','0000-00-00 00:00:00','0000-00-00 00:00:00','dsvfcSD','','sdV',NULL,NULL),(62,'','','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',NULL,NULL),(63,'sca','#008000','2020-04-04 00:00:00','2020-04-05 00:00:00','sac','','sac',NULL,NULL),(64,'RTEG','#FFD700','2020-04-07 00:00:00','2020-04-08 00:00:00','ERSTG','REG','ERG',NULL,NULL),(65,'Test101','#FF0000','2014-00-00 00:00:00','2014-00-00 00:00:00','101 Great South road ','Notes test ','Dr Salotra',NULL,NULL),(66,'','','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',NULL,NULL),(67,'fsdv','#40E0D0','2020-04-20 00:00:00','2020-04-21 00:00:00','sdv','SDV','sDV',NULL,NULL),(68,'TESTEST','#40E0D0','0000-00-00 00:00:00','0000-00-00 00:00:00','TEST','WQDQW','DR TEST',NULL,NULL),(69,'DFSZV','#40E0D0','2020-04-26 00:00:00','2020-04-27 00:00:00','FZDV','ZFDV','ZFDV',NULL,NULL),(70,'HELLOWORLD','#000','2020-06-30 00:00:00','2020-07-01 00:00:00','ERG','AScASC','Asc',NULL,NULL),(71,'presentation ','#FF0000','2020-06-24 00:00:00','2020-06-25 00:00:00','163 great south rd ','hello friends ','',NULL,NULL),(72,'Therapy ','#0071c5','2020-06-21 00:00:00','2020-06-22 00:00:00','126 Long rd ','brenda will assist ','Dr. happy','14:00','16:00'),(73,'Plunket','#FF8C00','2020-06-21 00:00:00','2020-06-22 00:00:00','165 Great north rd','Leave note for josh','Sarah','',''),(74,'Group Meeting ','#008000','2020-06-21 00:00:00','2020-06-22 00:00:00','164 Water St ','Take count FE','Dr water ef',NULL,NULL),(75,'dvz','#008000','2014-00-00 00:00:00','2016-00-00 00:00:00','asdcvasd','ascas','asdcasd',NULL,NULL),(76,'gfbn','#FFD700','0000-00-00 00:00:00','0000-00-00 00:00:00','dfgbdfg','dfgbzxdf','fdgb',NULL,NULL),(80,'sdefre','#008000','0000-00-00 00:00:00','0000-00-00 00:00:00','dsfvfdsfesw','','ef',NULL,NULL),(81,'ESF','#008000','0000-00-00 00:00:00','0000-00-00 00:00:00','ef','','eSF',NULL,NULL),(82,'dvd','#40E0D0','0000-00-00 00:00:00','0000-00-00 00:00:00','dv','dv','dv',NULL,NULL),(83,'dsv','','0000-00-00 00:00:00','0000-00-00 00:00:00','dsv','','dsv',NULL,NULL),(84,'ewfd','','0000-00-00 00:00:00','0000-00-00 00:00:00','ef','','',NULL,NULL),(85,'wefw','','0000-00-00 00:00:00','0000-00-00 00:00:00','wefewf','ewfewf','wefewf',NULL,NULL),(86,'ewfewf','#008000','0000-00-00 00:00:00','0000-00-00 00:00:00','wefewf','','wefef',NULL,NULL),(87,'edsfdes','#008000','0000-00-00 00:00:00','0000-00-00 00:00:00','esdfed','','edsfdec',NULL,NULL),(88,'Hello ','#FFD700','0000-00-00 00:00:00','0000-00-00 00:00:00','sdfvsdf','','sdvsdv',NULL,NULL),(89,'sdvds','#FF8C00','0000-00-00 00:00:00','0000-00-00 00:00:00','sdvds','','dsvSD',NULL,NULL),(90,'3r3r','','0000-00-00 00:00:00','0000-00-00 00:00:00','wr34er','','wer4frw',NULL,NULL),(91,'fghfgfgxhfghfgxhgfh','','0000-00-00 00:00:00','0000-00-00 00:00:00','hfdgth','','fghfghxfghgfxhgfx',NULL,NULL),(92,'hellololol','#FF0000','0000-00-00 00:00:00','0000-00-00 00:00:00','dsc','','dscd',NULL,NULL),(93,'erwfeswfswefsdefsdfds','#008000','0000-00-00 00:00:00','0000-00-00 00:00:00','sdFsd','','sdfsD',NULL,NULL),(94,'hththt','#40E0D0','0000-00-00 00:00:00','0000-00-00 00:00:00','htht','','hth',NULL,NULL),(95,'thth','#FF8C00','0000-00-00 00:00:00','0000-00-00 00:00:00','tht','thth','thht',NULL,NULL),(96,'','','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',NULL,NULL),(97,'','','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',NULL,NULL),(98,'dfzrgdf','#008000','0000-00-00 00:00:00','0000-00-00 00:00:00','dgzfd','dzfgf','dfgdf',NULL,NULL),(99,'dfrgfdsz','#008000','0000-00-00 00:00:00','0000-00-00 00:00:00','dzfgfd','','dfzgfdz',NULL,NULL),(100,'ef','#40E0D0','0000-00-00 00:00:00','0000-00-00 00:00:00','dsafd','','dsf',NULL,NULL),(101,'regre','','0000-00-00 00:00:00','0000-00-00 00:00:00','reg','','reg',NULL,NULL),(102,'regr','#008000','0000-00-00 00:00:00','0000-00-00 00:00:00','reg','','rge',NULL,NULL),(103,'efef','#FFD700','0000-00-00 00:00:00','0000-00-00 00:00:00','efw','','we',NULL,NULL),(105,'Group Meeting ','#008000','2020-06-14 00:00:00','2020-06-15 00:00:00','sedfve','wefwe','ewfew','',''),(106,'more work','#FF0000','0000-00-00 00:00:00','0000-00-00 00:00:00','fvfd','dfvdv','fvdVDF',NULL,NULL),(107,'Check up ','#FF0000','2020-06-07 00:00:00','2020-06-08 00:00:00','workworkwork','','mr work','',''),(109,'ewrg','#008000','2020-06-08 00:00:00','2020-06-09 00:00:00','reg','','reg',NULL,NULL),(110,'reg','#008000','2020-06-15 00:00:00','2020-06-16 00:00:00','reg','','reg',NULL,NULL),(113,'Pregnancy','#008000','2020-06-06 00:00:00','2020-06-07 00:00:00','dfgb','dfzb','dfzb','dzfb','dzfb'),(114,'Plunket','#008000','2020-06-27 00:00:00','2020-06-28 00:00:00','ergr','erag','ersg','erg','erg'),(115,'test25','#0071c5','2020-06-26 00:00:00','2020-06-27 00:00:00','sdfvfds','','fdsv','',''),(116,'Test','#000','2020-06-05 00:00:00','2020-06-06 00:00:00','fdbdfb','','dfbdfb','',''),(118,'another one','#000','2020-06-19 00:00:00','2020-06-20 00:00:00','fdzsvdf','','dfzbvd','',''),(120,'haters gon hate ','#000','0000-00-00 00:00:00',NULL,'sdvsd','','vsDVSV','',''),(121,'sFsD','#FF8C00','0000-00-00 00:00:00',NULL,'SDFsd','','sDF','SF',''),(122,'haters','#000','0000-00-00 00:00:00',NULL,'sdvsd','','sdVds','',''),(124,'haterssszzz','#000','0000-00-00 00:00:00','0000-00-00 00:00:00','fdsvfdzv','dzvdf','dfvdfvzd','dzfvd','dfzvdfz'),(126,'fdzvd','#000','0000-00-00 00:00:00','0000-00-00 00:00:00','fdfzbfd','zdfb','dfzb','zdfbd','zdfb'),(130,'pussy','#000','0000-00-00 00:00:00','0000-00-00 00:00:00','','','','',''),(131,'pussy','#000','0000-00-00 00:00:00','0000-00-00 00:00:00','','','','',''),(137,'Therapy ','#000','2020-06-03 00:00:00','2020-06-03 00:00:00','145 panama','','Dr Gulati ','14:00','15:00'),(138,'Group Therapy ','#FF8C00','2020-06-22 00:00:00','2020-06-22 00:00:00','163 Great South Road ','This is a note ','Josh ','14:00','15:00'),(139,'Final Test ','#FF8C00','2020-06-12 00:00:00','2020-06-12 00:00:00','125 New Zealand rd','Bring food ','Jacinda ','15:00','18:00'),(140,'Test','','2020-06-23 00:00:00','2020-06-23 00:00:00','','','','','');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-03 14:28:34
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: multi_login
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (0,'SalotraVikas','SalotraVikas@yahoo.co.nz','user','05d71f62e3926adced5ac5a363e6a1fa');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-03 14:28:34
