CREATE DATABASE  IF NOT EXISTS `patel22715709` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `patel22715709`;
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (x86_64)
--
-- Host: localhost    Database: patel22715709
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `Candidate Details`
--

DROP TABLE IF EXISTS `Candidate Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Candidate Details` (
  `candidate_id` int NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`candidate_id`),
  UNIQUE KEY `Candidate Identifier_UNIQUE` (`candidate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Candidate Details`
--

LOCK TABLES `Candidate Details` WRITE;
/*!40000 ALTER TABLE `Candidate Details` DISABLE KEYS */;
INSERT INTO `Candidate Details` VALUES (1001,'Amanda','Jones','303 Cedar St','666-1111'),(1002,'Christopher','Taylor','404 Walnut St','666-2222'),(1003,'Olivia','Miller','505 Birch St','666-3333'),(1004,'William','Anderson','606 Pine St','666-4444'),(1005,'Sophia','Thomas','707 Oak St','666-5555'),(1006,'Liam','Martinez','808 Maple St','666-6666'),(1007,'Isabella','Clark','909 Elm St','666-7777'),(1008,'James','Wright','1010 Cedar St','666-8888'),(1009,'Emma','Hill','1111 Walnut St','666-9999'),(1010,'Alexander','Perez','1212 Birch St','666-0000'),(1011,'Joe','Baggs','65 Sycamore Dr','777-1111'),(1012,'Bob','Marley','22 Vine St','777-2222'),(1013,'James','Finn','10 Castletown Rd','777-3333'),(1014,'Jimmy','Jones','21 Earl Av','777-4444'),(1015,'Plunkett','Manor','10 Hueston St','777-5555'),(1016,'Anna','Franklin','7 Henry Dr','777-6666'),(1017,'Sam','Nolan','2 Sycamore Court','777-7777'),(1018,'Frank','Science','5 Barn House','777-8888'),(1019,'Ben','Ten','10 Farm St','777-9999');
/*!40000 ALTER TABLE `Candidate Details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Candidate_Skill`
--

DROP TABLE IF EXISTS `Candidate_Skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Candidate_Skill` (
  `candidate_id` int NOT NULL,
  `skill_id` varchar(10) NOT NULL,
  PRIMARY KEY (`candidate_id`,`skill_id`),
  KEY `skill_idx` (`skill_id`),
  CONSTRAINT `cand_id` FOREIGN KEY (`candidate_id`) REFERENCES `Candidate Details` (`candidate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `skill_id` FOREIGN KEY (`skill_id`) REFERENCES `Skills Details` (`skill_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Candidate_Skill`
--

LOCK TABLES `Candidate_Skill` WRITE;
/*!40000 ALTER TABLE `Candidate_Skill` DISABLE KEYS */;
INSERT INTO `Candidate_Skill` VALUES (1005,'ADM01'),(1005,'ADM02'),(1005,'ADM04'),(1002,'DOC01'),(1010,'DOC01'),(1012,'DOC01'),(1002,'DOC02'),(1012,'DOC02'),(1012,'DOC03'),(1010,'DOC04'),(1007,'LABT01'),(1008,'LABT02'),(1014,'MA01'),(1014,'MA02'),(1014,'MA03'),(1001,'NUR01'),(1011,'NUR01'),(1019,'NUR01'),(1001,'NUR02'),(1011,'NUR02'),(1019,'NUR02'),(1001,'NUR03'),(1011,'NUR03'),(1019,'NUR03'),(1006,'NUT01'),(1018,'NUT01'),(1006,'NUT02'),(1018,'NUT02'),(1002,'PHM01'),(1013,'PHM01'),(1003,'PHM02'),(1013,'PHM02'),(1013,'PHM03'),(1013,'PHM04'),(1007,'PHT01'),(1014,'PHT01'),(1015,'PHT01'),(1007,'PHT02'),(1014,'PHT02'),(1015,'PHT02'),(1015,'RAD01'),(1016,'RAD01'),(1015,'RAD02'),(1016,'RAD02'),(1004,'RND01'),(1018,'RND01'),(1004,'RND02'),(1018,'RND02'),(1004,'RND03'),(1018,'RND03'),(1009,'SGT01'),(1017,'SGT01'),(1017,'SGT02'),(1009,'THE01'),(1016,'THE01'),(1009,'THE02'),(1016,'THE02');
/*!40000 ALTER TABLE `Candidate_Skill` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Candidate_Skill_BEFORE_INSERT` BEFORE INSERT ON `candidate_skill` FOR EACH ROW BEGIN

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_candidate_skill_insert` BEFORE INSERT ON `candidate_skill` FOR EACH ROW BEGIN
    IF EXISTS (
        SELECT 1
        FROM `Candidate_Skill`
        WHERE `candidate_id` = NEW.`candidate_id` AND `skill_id` = NEW.`skill_id`
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Candidate already has this skill';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Hospital Details`
--

DROP TABLE IF EXISTS `Hospital Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Hospital Details` (
  `hospital_id` int NOT NULL,
  `Hospital Name` varchar(45) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Telephone Number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`hospital_id`),
  UNIQUE KEY `Hospital Identifier_UNIQUE` (`hospital_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hospital Details`
--

LOCK TABLES `Hospital Details` WRITE;
/*!40000 ALTER TABLE `Hospital Details` DISABLE KEYS */;
INSERT INTO `Hospital Details` VALUES (1,'St. Mary Hospital','123 Oak St','555-1111'),(2,'City General Medical Center','456 Pine St','555-2222'),(3,'University Hospital','789 Maple St','555-3333'),(4,'Community Health Center','321 Elm St','555-4444'),(5,'Metro Health Clinic','567 Birch St','555-5555'),(6,'Central Medical Center','890 Cedar St','555-6666'),(7,'Regional Medical Center','432 Spruce St','555-7777'),(8,'Unity Health Services','876 Walnut St','555-8888'),(9,'Southside Family Hospital','543 Pine St','555-9999'),(10,'Northwest Medical Center','109 Oak St','555-0000');
/*!40000 ALTER TABLE `Hospital Details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Interview Details`
--

DROP TABLE IF EXISTS `Interview Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Interview Details` (
  `interview_id` int NOT NULL,
  `position_id` int NOT NULL,
  `candidate_id` int NOT NULL,
  `Interview_date` datetime DEFAULT NULL,
  `offered_position` tinyint DEFAULT NULL,
  PRIMARY KEY (`interview_id`),
  UNIQUE KEY `Interview Id_UNIQUE` (`interview_id`),
  KEY `interview_position_idx` (`position_id`),
  KEY `interview_candidate_idx` (`candidate_id`),
  CONSTRAINT `interview_can` FOREIGN KEY (`candidate_id`) REFERENCES `Candidate Details` (`candidate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `interview_pos` FOREIGN KEY (`position_id`) REFERENCES `Position Details` (`position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Interview Details`
--

LOCK TABLES `Interview Details` WRITE;
/*!40000 ALTER TABLE `Interview Details` DISABLE KEYS */;
INSERT INTO `Interview Details` VALUES (1,10,1001,'2023-02-12 00:00:00',1),(2,10,1011,'2023-10-04 00:00:00',0),(3,10,1002,'2023-05-06 00:00:00',0),(4,11,1005,'2023-01-15 00:00:00',1),(5,12,1002,'2023-02-08 00:00:00',0),(6,12,1010,'2023-05-12 00:00:00',1),(7,12,1012,'2023-06-19 00:00:00',0),(8,20,1007,'2023-09-22 00:00:00',0),(9,20,1008,'2023-11-01 00:00:00',1),(10,21,1013,'2023-10-02 00:00:00',1),(11,21,1003,'2023-07-07 00:00:00',0),(12,21,1002,'2023-08-01 00:00:00',0),(13,22,1007,'2023-05-23 00:00:00',1),(14,22,1014,'2023-07-19 00:00:00',0),(15,30,1014,'2023-09-29 00:00:00',1),(16,31,1015,'2023-11-02 00:00:00',0),(17,31,1016,'2023-01-01 00:00:00',1),(18,40,1010,'2023-03-10 00:00:00',0),(19,40,1012,'2022-12-30 00:00:00',1),(20,41,1001,'2023-10-12 00:00:00',0),(21,41,1011,'2023-10-11 00:00:00',1),(22,41,1016,'2023-07-10 00:00:00',0),(23,42,1017,'2023-08-12 00:00:00',1),(24,42,1009,'2023-09-15 00:00:00',0),(25,42,1010,'2023-10-05 00:00:00',0),(26,50,1004,'2023-06-16 00:00:00',1),(27,50,1005,'2023-07-17 00:00:00',0),(28,60,1006,'2023-10-10 00:00:00',0),(29,60,1018,'2023-01-02 00:00:00',1),(30,61,1001,'2023-01-10 00:00:00',0),(31,61,1019,'2023-05-26 00:00:00',1),(32,62,1009,'2022-11-10 00:00:00',1),(33,63,1007,'2023-07-23 00:00:00',1),(34,63,1008,'2023-08-21 00:00:00',0),(35,64,1014,'2023-09-19 00:00:00',0),(36,64,1015,'2023-10-09 00:00:00',0),(37,70,1001,'2023-04-18 00:00:00',0),(38,70,1019,'2023-07-21 00:00:00',0),(39,71,1014,'2023-09-12 00:00:00',1),(40,71,1001,'2022-12-25 00:00:00',0),(41,80,1015,'2023-11-02 00:00:00',1),(42,80,1016,'2023-08-01 00:00:00',0),(43,90,1002,'2023-09-12 00:00:00',1),(44,90,1012,'2023-02-10 00:00:00',1),(45,91,1002,'2023-01-12 00:00:00',0),(46,91,1013,'2023-05-01 00:00:00',0),(47,100,1009,'2023-07-25 00:00:00',1),(48,100,1017,'2023-01-27 00:00:00',0),(49,101,1011,'2023-05-14 00:00:00',0),(50,101,1001,'2023-06-19 00:00:00',0);
/*!40000 ALTER TABLE `Interview Details` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_interview_insert` BEFORE INSERT ON `interview details` FOR EACH ROW BEGIN
    IF NEW.`offered_position` NOT IN (0, 1) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'offered_position must be 1 or 0';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Interview Details_BEFORE_INSERT` BEFORE INSERT ON `interview details` FOR EACH ROW BEGIN

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Position Details`
--

DROP TABLE IF EXISTS `Position Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Position Details` (
  `position_id` int NOT NULL,
  `type_of_pos` varchar(45) DEFAULT NULL,
  `hospital_hiring` int NOT NULL,
  PRIMARY KEY (`position_id`),
  UNIQUE KEY `Position Identifier_UNIQUE` (`position_id`),
  KEY `position_hospital_idx` (`hospital_hiring`),
  CONSTRAINT `position_hospital` FOREIGN KEY (`hospital_hiring`) REFERENCES `Hospital Details` (`hospital_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Position Details`
--

LOCK TABLES `Position Details` WRITE;
/*!40000 ALTER TABLE `Position Details` DISABLE KEYS */;
INSERT INTO `Position Details` VALUES (10,'Nurse',1),(11,'Administrator',1),(12,'Doctor',1),(20,'Lab Technician',2),(21,'Pharmacist',2),(22,'Physiotherapist',2),(30,'Medical Assistant',3),(31,'Radiologist',3),(40,'Doctor',4),(41,'Nurse',4),(42,'Surgical Team',4),(50,'Research and Development',5),(60,'Nutrition Services',6),(61,'Support Staff',6),(62,'Therapists',6),(63,'Lab Technician',6),(64,'Physiotherapist',6),(70,'Nurse',7),(71,'Medical Assistant',7),(80,'Radiologist',8),(90,'Doctor',9),(91,'Emergency Department',9),(100,'Surgical Team',10),(101,'Nurse',10);
/*!40000 ALTER TABLE `Position Details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Position_Skill`
--

DROP TABLE IF EXISTS `Position_Skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Position_Skill` (
  `position_id` int NOT NULL,
  `skill_id` varchar(10) NOT NULL,
  PRIMARY KEY (`position_id`,`skill_id`),
  KEY `skill_idx` (`skill_id`),
  CONSTRAINT `position` FOREIGN KEY (`position_id`) REFERENCES `Position Details` (`position_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `skill` FOREIGN KEY (`skill_id`) REFERENCES `Skills Details` (`skill_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Position_Skill`
--

LOCK TABLES `Position_Skill` WRITE;
/*!40000 ALTER TABLE `Position_Skill` DISABLE KEYS */;
INSERT INTO `Position_Skill` VALUES (11,'ADM01'),(11,'ADM02'),(11,'ADM04'),(12,'DOC01'),(40,'DOC01'),(90,'DOC01'),(12,'DOC02'),(40,'DOC02'),(90,'DOC02'),(12,'DOC03'),(40,'DOC03'),(90,'DOC03'),(12,'DOC04'),(40,'DOC04'),(90,'DOC04'),(91,'EMD01'),(91,'EMD02'),(20,'LABT01'),(63,'LABT01'),(20,'LABT02'),(63,'LABT03'),(30,'MA01'),(71,'MA01'),(30,'MA02'),(71,'MA02'),(10,'NUR01'),(41,'NUR01'),(61,'NUR01'),(70,'NUR01'),(101,'NUR01'),(10,'NUR02'),(41,'NUR02'),(61,'NUR02'),(70,'NUR02'),(101,'NUR02'),(10,'NUR03'),(41,'NUR03'),(61,'NUR03'),(70,'NUR03'),(101,'NUR03'),(61,'NUR04'),(60,'NUT01'),(60,'NUT02'),(60,'NUT03'),(21,'PHM01'),(21,'PHM02'),(21,'PHM04'),(22,'PHT01'),(64,'PHT01'),(22,'PHT02'),(64,'PHT02'),(31,'RAD01'),(80,'RAD01'),(31,'RAD02'),(80,'RAD02'),(50,'RND01'),(50,'RND02'),(50,'RND03'),(42,'SGT01'),(100,'SGT01'),(42,'SGT02'),(100,'SGT02'),(62,'THE01'),(62,'THE02');
/*!40000 ALTER TABLE `Position_Skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Skills Details`
--

DROP TABLE IF EXISTS `Skills Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Skills Details` (
  `skill_id` varchar(10) NOT NULL,
  `skill_name` varchar(45) NOT NULL,
  PRIMARY KEY (`skill_id`),
  UNIQUE KEY `Skill ID_UNIQUE` (`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Skills Details`
--

LOCK TABLES `Skills Details` WRITE;
/*!40000 ALTER TABLE `Skills Details` DISABLE KEYS */;
INSERT INTO `Skills Details` VALUES ('ADM01','Organizational Skills'),('ADM02','Time Management'),('ADM03','Computer Proficiency'),('ADM04','Customer Service'),('DOC01','Medical Diagnosis'),('DOC02','Treatment Planning'),('DOC03','Decision-Making'),('DOC04','Communication Skills'),('EMD01','Crisis Management'),('EMD02','Ability to Work Under Pressure'),('LABT01','Technical Proficiency'),('LABT02','Laboratory Safety'),('LABT03','Quality Control'),('MA01','Billing and Coding'),('MA02','Medical Terminology'),('MA03','Medical Office Management'),('NUR01','Patient Care'),('NUR02','Critical Thinking'),('NUR03','Attention to Detail'),('NUR04','Empathy and Compassion'),('NUT01','Dietary Assessment'),('NUT02','Menu Planning'),('NUT03','Nutrition Education'),('PHM01','Medication Dispensing'),('PHM02','Knowledge of Pharmaceutical Products'),('PHM03','Prescription Verification'),('PHM04','Patient Education on Medications'),('PHT01','Manual Therapy Techniques'),('PHT02','Patient Assessment'),('RAD01','Problem-Solving'),('RAD02','Radiation Safety'),('RND01','Research Design and Methodology'),('RND02','Data Collection and Analysis'),('RND03','Scientific Writing'),('SGT01','Sterilization Procedures'),('SGT02','Surgical Techniques'),('THE01','Therapy Techniques'),('THE02','Rehabilitation Planning');
/*!40000 ALTER TABLE `Skills Details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'patel22715709'
--

--
-- Dumping routines for database 'patel22715709'
--
/*!50003 DROP PROCEDURE IF EXISTS `CountOfferedCandidates` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CountOfferedCandidates`()
BEGIN
    SELECT COUNT(*) AS numOfferedCandidates
    FROM `Interview Details`
    WHERE `offered_position` = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FindCandidatesInterviewedOnDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FindCandidatesInterviewedOnDate`(IN p_interview_date DATE)
BEGIN
    SELECT DISTINCT cd.`candidate_id`
    FROM `Candidate Details` cd
    JOIN `Interview Details` id ON cd.`candidate_id` = id.`candidate_id`
    WHERE DATE(id.`Interview_date`) = p_interview_date
    AND NOT EXISTS (
        SELECT 1
        FROM `Interview Details` id2
        WHERE cd.`candidate_id` = id2.`candidate_id`
        AND DATE(id2.`Interview_date`) <> p_interview_date
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FindInterviewsByDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FindInterviewsByDate`(IN p_interview_date DATE)
BEGIN
    SELECT *
    FROM `Interview Details`
    WHERE DATE(`Interview_date`) = p_interview_date;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FindNumberOfPositionsRequiringNursing` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FindNumberOfPositionsRequiringNursing`()
BEGIN
    SELECT COUNT(DISTINCT pd.`position_id`) AS num_positions
    FROM `Position_Skill` ps
    JOIN `Position Details` pd ON ps.`position_id` = pd.`position_id`
    JOIN `Skills Details` sd ON ps.`skill_id` = sd.`skill_id`
    WHERE sd.`skill_ID` = 'NUR01' OR sd.`skill_ID` = 'NUR02' OR sd.`skill_ID` = 'NUR03' OR sd.`skill_ID` = 'NUR04' ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FindPositionsBySkill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FindPositionsBySkill`(
	IN p_skillID varchar(10)
)
BEGIN
    SELECT DISTINCT pd.*
    FROM `Position_Skill` ps
    JOIN `Position Details` pd ON ps.`position_id` = pd.`position_id`
    WHERE ps.`skill_id` = p_skillID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FindPositionsSortedByHospitals` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FindPositionsSortedByHospitals`()
BEGIN
    SELECT pd.*, hd.`Hospital Name`
    FROM `Position Details` pd
    JOIN `Hospital Details` hd ON pd.`hospital_hiring` = hd.`Hospital Identifier`
    ORDER BY pd.`hospital_hiring`, pd.`position_id` ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetCandidatesByPosition` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetCandidatesByPosition`(
    IN p_PositionId INT
)
BEGIN
    -- Select candidates who have at least one skill required by the given position identifier
    SELECT DISTINCT cd.*
    FROM `Candidate Details` cd
    JOIN `Candidate_Skill` cs ON cd.`candidate_id` = cs.`candidate_id`
    JOIN `Position_Skill` ps ON cs.`skill_id` = ps.`skill_id`
    WHERE ps.`position_id` = p_PositionId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetCandidatesInterviewedOnDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetCandidatesInterviewedOnDate`(IN interviewDateParam DATETIME)
BEGIN
    SELECT DISTINCT cd.candidate_id
    FROM `Candidate Details` cd
    JOIN `Interview Details` id ON cd.candidate_id = id.candidate_id
    WHERE DATE(id.Interview_date) = DATE(interviewDateParam)
    AND NOT EXISTS (
        SELECT 1
        FROM `Interview Details` id2
        WHERE cd.candidate_id = id2.candidate_id
        AND DATE(id2.Interview_date) <> DATE(interviewDateParam)
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetCandidatesSurname` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetCandidatesSurname`(
    IN p_Surname VARCHAR(45)
)
BEGIN
    SELECT *
    FROM `Candidate Details`
    WHERE `surname` = p_Surname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetHospitalDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetHospitalDetails`(
    IN p_HospitalIdentifier INT
)
BEGIN
    SELECT *
    FROM `Hospital Details`
    WHERE `Hospital Identifier` = p_HospitalIdentifier;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetHospitalName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetHospitalName`(
    IN p_HospitalName VARCHAR(45)
)
BEGIN
   
    SELECT *
    FROM `Hospital Details`
    WHERE `Hospital Name` = p_HospitalName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertCandidate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertCandidate`(
    IN p_candidate_id INT,
    IN p_firstname VARCHAR(45),
    IN p_surname VARCHAR(45),
    IN p_address VARCHAR(100),
    IN p_telephone VARCHAR(20)
)
BEGIN
    -- Check if the candidate_id already exists
    IF NOT EXISTS (SELECT * FROM `Candidate Details` WHERE candidate_id = p_candidate_id) THEN
        -- If candidate_id does not exist, insert the new record
        INSERT INTO `Candidate Details` (candidate_id, firstname, surname, address, telephone)
        VALUES (p_candidate_id, p_firstname, p_surname, p_address, p_telephone);
    ELSE
        -- If candidate_id already exists, handle accordingly (you can raise an error, log, or perform other actions)
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Duplicate entry: Candidate ID already exists';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertCandidateSkill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertCandidateSkill`(
    IN p_candidate_id INT,
    IN p_skill_id VARCHAR(10)
)
BEGIN
    -- Check if the candidate_id and skill_id already exist in the table
    IF NOT EXISTS (SELECT * FROM `Candidate_Skill` WHERE `candidate_id` = p_candidate_id AND `skill_id` = p_skill_id) THEN
        INSERT INTO `Candidate_Skill` (`candidate_id`, `skill_id`)
        VALUES (p_candidate_id, p_skill_id);
    ELSE
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Duplicate entry: Candidate already has the specified skill';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertHospital` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertHospital`(
    IN p_HospitalIdentifier INT,
    IN p_HospitalName VARCHAR(45),
    IN p_Address VARCHAR(100),
    IN p_TelephoneNumber VARCHAR(20),
    IN p_InterviewPosition VARCHAR(45)
)
BEGIN
    IF NOT EXISTS (SELECT * FROM `Hospital Details` WHERE `Hospital Identifier` = p_HospitalIdentifier) THEN
        INSERT INTO `Hospital Details` (`Hospital Identifier`, `Hospital Name`, `Address`, `Telephone Number`, `interview_position`)
        VALUES (p_HospitalIdentifier, p_HospitalName, p_Address, p_TelephoneNumber, p_InterviewPosition);
    ELSE
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Duplicate entry: Hospital Identifier already exists';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertInterview` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertInterview`(
    IN p_InterviewId INT,
    IN p_PositionId INT,
    IN p_CandidateId INT,
    IN p_InterviewDate DATETIME,
    IN p_OfferedPosition TINYINT
)
BEGIN

    IF NOT EXISTS (SELECT * FROM `Interview Details` WHERE `interview_id` = p_InterviewId) THEN
        INSERT INTO `Interview Details` (`interview_id`, `position_id`, `candidate_id`, `Interview_date`, `offered_position`)
        VALUES (p_InterviewId, p_PositionId, p_CandidateId, p_InterviewDate, p_OfferedPosition);
    ELSE
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Duplicate entry: Interview Id already exists';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertPosition` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertPosition`(
    IN p_PositionId INT,
    IN p_TypeOfPos VARCHAR(45),
    IN p_HospitalHiring INT
)
BEGIN
    IF NOT EXISTS (
        SELECT * FROM `Position Details`
        WHERE `position_id` = p_PositionId AND `hospital_hiring` = p_HospitalHiring
    ) THEN
        INSERT INTO `Position Details` (`position_id`, `type_of_pos`, `hospital_hiring`)
        VALUES (p_PositionId, p_TypeOfPos, p_HospitalHiring);
    ELSE
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Duplicate entry: Position Id and Hospital Hiring combination already exists';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertPositionSkill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertPositionSkill`(
    IN p_PositionId INT,
    IN p_SkillId VARCHAR(10)
)
BEGIN

    IF NOT EXISTS (
        SELECT * FROM `Position_Skill`
        WHERE `position_id` = p_PositionId AND `skill_id` = p_SkillId
    ) THEN
        INSERT INTO `Position_Skill` (`position_id`, `skill_id`)
        VALUES (p_PositionId, p_SkillId);
    ELSE
        -- If Position Id and Skill Id combination already exists, handle accordingly
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Duplicate entry: Position Id and Skill Id combination already exists';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertSkill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertSkill`(
    IN p_SkillId VARCHAR(10),
    IN p_SkillName VARCHAR(45)
)
BEGIN
    -- Check if the Skill Id already exists
    IF NOT EXISTS (
        SELECT * FROM `Skills Details`
        WHERE `skill_id` = p_SkillId
    ) THEN
        -- If Skill Id does not exist, insert the new record
        INSERT INTO `Skills Details` (`skill_id`, `skill_name`)
        VALUES (p_SkillId, p_SkillName);
    ELSE
        -- If Skill Id already exists, handle accordingly
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Duplicate entry: Skill Id already exists';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InterviewedAtLeastTwice` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InterviewedAtLeastTwice`()
BEGIN
    SELECT
        cd.`candidate_id`,
        cd.`firstname`,
        cd.`surname`
    FROM
        `Candidate Details` cd
    WHERE
        (
            SELECT
                COUNT(*)
            FROM
                `Interview Details` id
            WHERE
                cd.`candidate_id` = id.`candidate_id`
        ) >= 2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-21 13:58:39
