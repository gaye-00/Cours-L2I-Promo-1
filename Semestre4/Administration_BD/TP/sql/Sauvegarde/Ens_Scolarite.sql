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
-- Table structure for table `Enseignant`
--

DROP TABLE IF EXISTS `Enseignant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Enseignant` (
  `Matricule` char(7) NOT NULL,
  `Nom` varchar(15) NOT NULL,
  `Prenom` varchar(25) NOT NULL,
  `Grade` varchar(30) DEFAULT NULL,
  `Specialite` varchar(20) DEFAULT NULL,
  `Sexe` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`Matricule`),
  CONSTRAINT `Enseignant_chk_1` CHECK ((`Grade` in (_utf8mb4'Assistant',_utf8mb4'Maitre-Assistant',_utf8mb4'Maitre de conferences',_utf8mb4'Professeur'))),
  CONSTRAINT `Enseignant_chk_2` CHECK ((`Sexe` in (_utf8mb4'Masculin',_utf8mb4'Feminin')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Enseignant`
--

LOCK TABLES `Enseignant` WRITE;
/*!40000 ALTER TABLE `Enseignant` DISABLE KEYS */;
INSERT INTO `Enseignant` VALUES ('1 001 G','GUEYE','Amadou','Maitre de conferences','Lettres modernes','Masculin'),('1 003 D','DIEDHIOU','Cheikh','Assistant','Informatique','Masculin'),('1 004 G','GOMIS','Jean Paul','Assistant','Mathematiques','Masculin'),('1 006 N','NDIAYE','Cheikh','Assistant','Physique','Masculin'),('1 008 G','GUEYE','Jean Paul','Professeur','Mathematiques','Masculin'),('1 009 G','GOMIS','Moustapha','Maitre-Assistant','Informatique','Masculin'),('2 002 N','NDIAYE','Aissatou','Professeur','Mathematiques','Feminin'),('2 005 F','FALL','Fatoumata','Assistant','Mathematiques','Feminin'),('2 007 S','SECK','Diariatou','Maitre-Assistant','Geographie','Feminin'),('2 010 D','DIATTA','Astou','Maitre de conferences','Lettres modernes','Feminin'),('2 011 D','DIATTA','Astou','Maitre de conferences','Lettres modernes','Feminin');
/*!40000 ALTER TABLE `Enseignant` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `AjoutMatricule` BEFORE INSERT ON `Enseignant` FOR EACH ROW Begin
Declare m char(7);
Declare n smallInt;
Declare s smallInt;
Declare c char(1);

SELECT COUNT(*) Into n From Enseignant;
SET n = n + 1;
SET c = SUBSTRING(New.Nom, 1, 1);

If New.Sexe = 'Masculin' Then
SET s = 1;
Else
SET s = 2;
End If;

If n < 10 Then 
SET m = CONCAT(s, ' ', '00', n, ' ', c);
ElseIf n < 100 Then
SET m = CONCAT(s, ' ', '0', n, ' ', c);
ElseIf n < 1000 Then
SET m = CONCAT(s, ' ', n, ' ', c);
Else
SET s = 'a';
End If;

SET New.Matricule = m;
End */;;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `AnnuleInsertion` BEFORE INSERT ON `Enseignant` FOR EACH ROW Begin
Declare n integer;
SELECT COUNT(*) INTO n FROM Departement WHERE Departement.Nom = NEW.Specialite;

IF n = 0 THEN
SET n = 'A';
END IF;

End */;;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `NomDepartement` AFTER INSERT ON `Enseignant` FOR EACH ROW Begin

INSERT INTO Service VALUES(NEW.Specialite, NEW.Matricule);
End */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Service`
--

DROP TABLE IF EXISTS `Service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Service` (
  `NomDept` char(25) NOT NULL,
  `Enseignant` varchar(10) NOT NULL,
  PRIMARY KEY (`NomDept`,`Enseignant`),
  KEY `FK_Servire_Enseignant` (`Enseignant`),
  CONSTRAINT `FK_Servire_Departement` FOREIGN KEY (`NomDept`) REFERENCES `Departement` (`Nom`),
  CONSTRAINT `FK_Servire_Enseignant` FOREIGN KEY (`Enseignant`) REFERENCES `Enseignant` (`Matricule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Service`
--

LOCK TABLES `Service` WRITE;
/*!40000 ALTER TABLE `Service` DISABLE KEYS */;
INSERT INTO `Service` VALUES ('Lettres modernes','1 001 G'),('Informatique','1 003 D'),('Mathematiques','1 004 G'),('Physique','1 006 N'),('Mathematiques','1 008 G'),('Informatique','1 009 G'),('Mathematiques','2 002 N'),('Mathematiques','2 005 F'),('Geographie','2 007 S'),('Lettres modernes','2 010 D'),('Lettres modernes','2 011 D');
/*!40000 ALTER TABLE `Service` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2023-02-01  8:56:33
