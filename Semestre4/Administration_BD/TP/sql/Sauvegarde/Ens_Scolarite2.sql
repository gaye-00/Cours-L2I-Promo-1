-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: Scolarite
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Matiere`
--

DROP TABLE IF EXISTS `Matiere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Matiere` (
  `Nom` varchar(50) NOT NULL,
  `VolHoraire` int DEFAULT NULL,
  `Coefficient` smallint DEFAULT NULL,
  `Categorie` varchar(25) DEFAULT NULL,
  `Credit` smallint DEFAULT NULL,
  PRIMARY KEY (`Nom`),
  CONSTRAINT `Matiere_chk_1` CHECK ((`Credit` in (2,3,4,5,6))),
  CONSTRAINT `Matiere_chk_2` CHECK ((`Coefficient` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Matiere`
--

LOCK TABLES `Matiere` WRITE;
/*!40000 ALTER TABLE `Matiere` DISABLE KEYS */;
INSERT INTO `Matiere` VALUES ('Algorithme et programmation',48,3,'Fondamentale',4),('Anglais',36,1,'Transversale',3),('Développement web',60,2,'Fondamentale',5),('Probabilité',36,1,'Transversale',3),('Système d’exploitation',72,2,'Fondamentale',6),('Techniques de communication',48,1,'Transversale',4);
/*!40000 ALTER TABLE `Matiere` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `CalculVolumeHoraire` BEFORE INSERT ON `Matiere` FOR EACH ROW Begin
Declare VolH integer;
set VolH = new.credit * 12;
set new.VolHoraire = VolH;
End */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Charger`
--

DROP TABLE IF EXISTS `Charger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Charger` (
  `Enseignant` char(7) NOT NULL,
  `Matiere` varchar(50) NOT NULL,
  `Type` varchar(10) NOT NULL,
  PRIMARY KEY (`Enseignant`,`Matiere`,`Type`),
  KEY `FK_Dispenser_Charger` (`Matiere`),
  CONSTRAINT `FK_Dispenser_Charger` FOREIGN KEY (`Matiere`) REFERENCES `Matiere` (`Nom`),
  CONSTRAINT `FK_Dispenser_Enseignant` FOREIGN KEY (`Enseignant`) REFERENCES `Enseignant` (`Matricule`),
  CONSTRAINT `Charger_chk_1` CHECK ((`Type` in (_utf8mb4'TD',_utf8mb4'TP',_utf8mb4'CM')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Charger`
--

LOCK TABLES `Charger` WRITE;
/*!40000 ALTER TABLE `Charger` DISABLE KEYS */;
INSERT INTO `Charger` VALUES ('1 009 G','Algorithme et programmation','CM'),('1 009 G','Algorithme et programmation','TD'),('1 009 G','Algorithme et programmation','TP'),('2 002 N','Probabilité','CM'),('2 002 N','Probabilité','TP'),('2 005 F','Probabilité','TD'),('1 001 G','Techniques de communication','CM');
/*!40000 ALTER TABLE `Charger` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-01  9:14:12
