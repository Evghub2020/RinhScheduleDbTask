CREATE DATABASE  IF NOT EXISTS `rinh schedule` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `rinh schedule`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: rinh schedule
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `auditorium`
--

DROP TABLE IF EXISTS `auditorium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditorium` (
  `idAuditorium` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  `faculty` varchar(60) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`idAuditorium`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditorium`
--

LOCK TABLES `auditorium` WRITE;
/*!40000 ALTER TABLE `auditorium` DISABLE KEYS */;
INSERT INTO `auditorium` VALUES (1,'212','КТиИБ'),(2,'213','КТиИБ'),(3,'412','МиП'),(4,'655','ЛиЖ'),(5,'309','КТиИБ'),(6,'341','ТоД'),(7,'302','КТиИБ'),(8,'209','КТиИБ'),(9,'306','КТиИБ'),(10,'455','ЭиФ');
/*!40000 ALTER TABLE `auditorium` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `day`
--

DROP TABLE IF EXISTS `day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `day` (
  `idDay` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`idDay`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day`
--

LOCK TABLES `day` WRITE;
/*!40000 ALTER TABLE `day` DISABLE KEYS */;
INSERT INTO `day` VALUES (1,'Понедельник'),(2,'Вторник'),(3,'Среда'),(4,'Четверг'),(5,'Пятница'),(6,'Суббота');
/*!40000 ALTER TABLE `day` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discipline`
--

DROP TABLE IF EXISTS `discipline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discipline` (
  `idDiscipline` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`idDiscipline`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discipline`
--

LOCK TABLES `discipline` WRITE;
/*!40000 ALTER TABLE `discipline` DISABLE KEYS */;
INSERT INTO `discipline` VALUES (1,'Основы алгоритмизации и программирования'),(2,'Информационные технологии в профессиональной деятельности'),(3,'Численные методы'),(4,'Иностранный язык в профессиональной деятельности'),(5,'Основы философии'),(6,'Основы проектирования баз данных'),(7,'Физическая культура'),(8,'Управление проектами'),(9,'Моделирование и анализ программного обеспечения'),(10,'Математика');
/*!40000 ALTER TABLE `discipline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupe`
--

DROP TABLE IF EXISTS `groupe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groupe` (
  `idGroupe` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`idGroupe`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupe`
--

LOCK TABLES `groupe` WRITE;
/*!40000 ALTER TABLE `groupe` DISABLE KEYS */;
INSERT INTO `groupe` VALUES (1,'ИСТ-311'),(2,'ПИ-811'),(3,'ПИ-311'),(4,'ПРИ-311'),(5,'ТД-411');
/*!40000 ALTER TABLE `groupe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shedule`
--

DROP TABLE IF EXISTS `shedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shedule` (
  `id` int NOT NULL,
  `idWeek` int NOT NULL,
  `idDay` int NOT NULL,
  `sequence` int NOT NULL,
  `timeStart` time NOT NULL,
  `timeEnd` time NOT NULL,
  `idGroupe` int NOT NULL,
  `idDiscipline` int NOT NULL,
  `idTeacher` int NOT NULL,
  `idTypeLesson` int NOT NULL,
  `idAuditorium` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Week_idx` (`idWeek`),
  KEY `TypeLesson_idx` (`idTypeLesson`),
  KEY `Groupe_idx` (`idGroupe`),
  KEY `Auditorium_idx` (`idAuditorium`),
  KEY `Discipline_idx` (`idDiscipline`),
  KEY `Teacher_idx` (`idTeacher`),
  KEY `Day_idx` (`idDay`),
  CONSTRAINT `Auditorium` FOREIGN KEY (`idAuditorium`) REFERENCES `auditorium` (`idAuditorium`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Day` FOREIGN KEY (`idDay`) REFERENCES `day` (`idDay`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Discipline` FOREIGN KEY (`idDiscipline`) REFERENCES `discipline` (`idDiscipline`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Groupe` FOREIGN KEY (`idGroupe`) REFERENCES `groupe` (`idGroupe`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Teacher` FOREIGN KEY (`idTeacher`) REFERENCES `teacher` (`idTeacher`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `TypeLesson` FOREIGN KEY (`idTypeLesson`) REFERENCES `typelesson` (`idTypeLesson`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Week` FOREIGN KEY (`idWeek`) REFERENCES `week` (`idWeek`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shedule`
--

LOCK TABLES `shedule` WRITE;
/*!40000 ALTER TABLE `shedule` DISABLE KEYS */;
INSERT INTO `shedule` VALUES (1,1,1,1,'08:00:00','09:35:00',1,1,1,1,2),(2,1,1,2,'09:45:00','11:20:00',1,2,2,2,3),(3,1,1,3,'11:50:00','13:25:00',1,3,4,3,4),(4,1,2,2,'09:45:00','11:20:00',2,4,1,1,5),(5,1,3,2,'09:45:00','11:20:00',2,5,5,1,1),(6,2,1,3,'11:50:00','13:25:00',4,1,3,1,6),(7,2,2,1,'08:00:00','09:35:00',1,2,3,2,7),(8,2,3,2,'09:45:00','11:20:00',3,4,1,2,1),(9,2,4,3,'11:50:00','13:25:00',5,5,5,3,8),(10,2,5,2,'09:45:00','11:20:00',1,3,1,1,9);
/*!40000 ALTER TABLE `shedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `idTeacher` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`idTeacher`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'Долженко А.И.'),(2,'Калугян К.Х.'),(3,'Данилова Т.В.'),(4,'Гречкина В.Ю.'),(5,'Бюрюков Р.Г.');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typelesson`
--

DROP TABLE IF EXISTS `typelesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `typelesson` (
  `idTypeLesson` int NOT NULL AUTO_INCREMENT,
  `name` varchar(10) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`idTypeLesson`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typelesson`
--

LOCK TABLES `typelesson` WRITE;
/*!40000 ALTER TABLE `typelesson` DISABLE KEYS */;
INSERT INTO `typelesson` VALUES (1,'Лекция'),(2,'Практика'),(3,'Дистант');
/*!40000 ALTER TABLE `typelesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `week`
--

DROP TABLE IF EXISTS `week`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `week` (
  `idWeek` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`idWeek`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `week`
--

LOCK TABLES `week` WRITE;
/*!40000 ALTER TABLE `week` DISABLE KEYS */;
INSERT INTO `week` VALUES (1,'Нечетная'),(2,'Четная');
/*!40000 ALTER TABLE `week` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'rinh schedule'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-19 13:04:09
