CREATE DATABASE  IF NOT EXISTS `credicel_COOEMSAN` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;
USE `credicel_COOEMSAN`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 190.90.160.172    Database: credicel_COOEMSAN
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.19-MariaDB-cll-lve

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
-- Table structure for table `aportes`
--

DROP TABLE IF EXISTS `aportes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aportes` (
  `id_aporte` int(11) NOT NULL AUTO_INCREMENT,
  `valor_aporte` int(11) DEFAULT NULL,
  `fecha_aporte` date DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_aporte`),
  KEY `fk_aportes_idx` (`id_cliente`),
  CONSTRAINT `fk_aportes` FOREIGN KEY (`id_cliente`) REFERENCES `asociados` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf32 COLLATE=utf32_spanish2_ci COMMENT='Tabla para registro de aportes de asociados a la coperativa';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aportes`
--

LOCK TABLES `aportes` WRITE;
/*!40000 ALTER TABLE `aportes` DISABLE KEYS */;
INSERT INTO `aportes` VALUES (1,10000,'2024-10-26',4),(2,20000,'2024-10-26',6),(3,35000,'2024-10-28',4),(4,70000,'2024-10-28',11),(5,200000,'2024-10-28',11),(6,45000,'2024-10-28',1),(7,22000,'2024-10-30',1),(8,32000,'2024-10-30',6),(9,32000,'2024-10-30',6),(10,16000,'2024-10-30',6);
/*!40000 ALTER TABLE `aportes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-01 20:16:20
