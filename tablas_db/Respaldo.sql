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
-- Temporary view structure for view `Vista_ultimos_Aportes`
--

DROP TABLE IF EXISTS `Vista_ultimos_Aportes`;
/*!50001 DROP VIEW IF EXISTS `Vista_ultimos_Aportes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Vista_ultimos_Aportes` AS SELECT 
 1 AS `Código`,
 1 AS `Nombre`,
 1 AS `Último aporte`,
 1 AS `Fecha del Último aporte`*/;
SET character_set_client = @saved_cs_client;

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

--
-- Table structure for table `asociados`
--

DROP TABLE IF EXISTS `asociados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asociados` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` int(11) NOT NULL,
  `nombres` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `empresa` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `cedula_UNIQUE` (`cedula`),
  UNIQUE KEY `telefono_UNIQUE` (`telefono`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Tabla para registrar información de Asociados';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asociados`
--

LOCK TABLES `asociados` WRITE;
/*!40000 ALTER TABLE `asociados` DISABLE KEYS */;
INSERT INTO `asociados` VALUES (1,13571552,'JOHN DEIVY','CUERVO','ESSA','3107927021','cra 12 # 6 -25 barrio 23 agosto','2021-09-30',0),(2,18922721,'ROBERT','SAENZ ALFARO','ESSA','3167792686','cra 10 # 7 -25 barrio 23 agosto','2021-09-30',0),(3,91534583,'ROBINSON','GUERRERO','ESSA','3012465589','cra 5 # 6 -25 barrio 23 agosto','2021-09-30',0),(4,91182960,'WALTER','MARTINEZ CASTRO','ESSA','3178470155','cra 10 # 7 -25 barrio 23 agosto','2021-09-30',0),(5,37860682,'OMAIRA','GARCIA DIAZ','ESSA','3102890480','cra 12 # 6 -25 barrio 23 agosto','2021-09-30',0),(6,91247258,'FREDY MARTIN','RAMIREZ RICO','ESSA','3174723913','cra 10 # 7 -25 barrio 23 agosto','2021-09-30',0),(7,13538483,'JAIRO EDUARDO','JAIMES','ESSA','3164990259','cra 12 # 6 -25 barrio 23 agosto','2021-09-30',0),(8,36457931,'MARTHA CECILIA','CASTRO','CONTRATISTA','3163365272','cra 10 # 7 -25 barrio 23 agosto','2021-09-30',0),(9,37507254,'LINA JANID','GOMEZ','ESSA','3234975260','cra 12 # 6 -25 barrio 23 agosto','2021-09-30',0),(10,13341320,'GONZALO','QUIROGA','ESSA','3167855628','cra 10 # 7 -25 barrio 23 agosto','2021-09-30',0),(11,1065233258,'DARLY','GONZALEZ','INDEPENDIENTE','3154459061','cra 12 # 6 -25 barrio 23 agosto','2021-09-30',0),(12,1098643071,'DAMIAN HUMBERTO','ALVAREZ VILLAMIZAR','ESSA','3156884187','cra 10 # 7 -25 barrio 23 agosto','2021-09-30',0),(13,73191618,'ANGEL','PACHECO ESTRADA','ESSA','3153289982','cra 12 # 6 -25 barrio 23 agosto','2021-09-30',0),(14,18924756,'CARLOS FRANCISCO','QUIN MERCHAN','ESSA','3182405698','cra 10 # 7 -25 barrio 23 agosto','2021-09-30',0),(15,1098606020,'JHON MAURY','HERNANDEZ','INDEPENDIENTE','3162665878','cra 12 # 6 -25 barrio 23 agosto','2021-09-30',0),(16,1100892306,'JUAN DE JESUS','PEÑALOZA','ESSA','3175735930','cra 10 # 7 -25 barrio 23 agosto','2021-09-30',0),(17,91498085,'ELKIN','DURAN ZARATE','ESSA','3174383832','cra 12 # 6 -25 barrio 23 agosto','2021-09-30',0),(18,1065237904,'JORGE','ROJAS','CONTRATISTA','3168255015','cra 10 # 7 -25 barrio 23 agosto','2021-09-30',0),(19,91446950,'PABLO CESAR ','RINCON ALCOCER','ESSA','3173776883','cra 12 # 6 -25 barrio 23 agosto','2021-09-30',0),(20,8548669,'JOSE','BLANCO','CONTRATISTA','3177895198','cra 10 # 7 -25 barrio 23 agosto','2021-09-30',0),(21,1193531421,'ANA YECELI','SALAZAR','CONTRATISTA','3156993862','cra 12 # 6 -25 barrio 23 agosto','2021-09-30',0),(22,37580871,'SUSANA','PARADA MOJICA','ESSA','3012892668','cra 10 # 7 -25 barrio 23 agosto','2021-09-30',0),(23,13927504,'EDGAR JAVIER','LINEROS','ESSA','3112579575','cra 12 # 6 -25 barrio 23 agosto','2021-09-30',0);
/*!40000 ALTER TABLE `asociados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creditos`
--

DROP TABLE IF EXISTS `creditos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `creditos` (
  `id_creditos` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) DEFAULT NULL,
  `valor_credito` float DEFAULT NULL,
  `plazo_credito` decimal(10,0) unsigned DEFAULT NULL,
  `fecha_credito` date DEFAULT NULL,
  `interes_credito` decimal(10,0) DEFAULT NULL,
  `interes_mora` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id_creditos`),
  KEY `fk_creditos_idx` (`id_cliente`),
  CONSTRAINT `fk_creditos` FOREIGN KEY (`id_cliente`) REFERENCES `asociados` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Tabla para registrar los creditos solicitados por los asociados';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creditos`
--

LOCK TABLES `creditos` WRITE;
/*!40000 ALTER TABLE `creditos` DISABLE KEYS */;
INSERT INTO `creditos` VALUES (1,4,150000,6,'2024-10-26',2,1),(2,6,220000,10,'2024-10-26',2,1),(3,10,3000000,12,'2024-10-28',3,2);
/*!40000 ALTER TABLE `creditos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `resumen_aporte`
--

DROP TABLE IF EXISTS `resumen_aporte`;
/*!50001 DROP VIEW IF EXISTS `resumen_aporte`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `resumen_aporte` AS SELECT 
 1 AS `IDc`,
 1 AS `Identificación`,
 1 AS `Empleado`,
 1 AS `Valor_aporte`,
 1 AS `Ultimo_Aporte`,
 1 AS `Ultimo_Aporte_Fecha`,
 1 AS `Fecha_aporte`,
 1 AS `Total_aportado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `resumen_credito`
--

DROP TABLE IF EXISTS `resumen_credito`;
/*!50001 DROP VIEW IF EXISTS `resumen_credito`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `resumen_credito` AS SELECT 
 1 AS `IDc`,
 1 AS `Identificación`,
 1 AS `Empleado`,
 1 AS `fecha_credito`,
 1 AS `Valor_credito`,
 1 AS `Plazo`,
 1 AS `Valor_Cuota`,
 1 AS `Fecha_Finalizacion`,
 1 AS `Total_Pagado`,
 1 AS `Total_Pendiente`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'credicel_COOEMSAN'
--
/*!50003 DROP FUNCTION IF EXISTS `credito_aprobado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`credicel_mysql_estudiantes_ago24`@`%` FUNCTION `credito_aprobado`(id_cliente INT(11),
    credito FLOAT,
    plazo DECIMAL(10,0),
    fecha DATE,
    interes_mensual DECIMAL(10,0),
    interes_mora DECIMAL(10,0)
) RETURNS varchar(200) CHARSET latin1 COLLATE latin1_swedish_ci
BEGIN
    DECLARE mensaje VARCHAR(200);
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION 
    BEGIN
        SET mensaje = 'Error: No se pudo insertar el crédito en la tabla creditos.';
        RETURN mensaje;
    END;

    -- Insertar el nuevo crédito en la tabla `creditos`
    INSERT INTO creditos (id_cliente, valor_credito, plazo_credito, fecha_credito, interes_credito, interes_mora)
    VALUES (id_cliente, credito, plazo, fecha, interes_mensual, interes_mora);

    -- Generar mensaje de confirmación
    SET mensaje = CONCAT('Señor(a), su crédito por valor de ', credito, ' ha sido aprobado exitosamente.');
    
    RETURN mensaje;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `nuevo_aporte` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`credicel_mysql_estudiantes_ago24`@`%` FUNCTION `nuevo_aporte`(nombre VARCHAR(50),
    apellido VARCHAR(50),
    aporte INT(10),
    id_cliente INT
) RETURNS varchar(100) CHARSET latin1 COLLATE latin1_swedish_ci
BEGIN
    DECLARE mensaje VARCHAR(100);
    
    -- Insertar el nuevo aporte en la tabla `aportes`
    INSERT INTO aportes (valor_aporte, fecha_aporte, id_cliente)
    VALUES (aporte, CURDATE(), id_cliente);
    
    -- Generar mensaje de confirmación
    SET mensaje = CONCAT('Señor(a) ', nombre, ' ', apellido, ' su aporte de ', aporte, ' ha sido consignado exitosamente');
    
    RETURN mensaje;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `nuevo_socio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`credicel_mysql_estudiantes_ago24`@`%` FUNCTION `nuevo_socio`(cedula INT(11),
    nombres VARCHAR(25),
    apellidos VARCHAR(25),
    empresa VARCHAR(25),
    telefono VARCHAR(45),
    direccion VARCHAR(35),
    fecha_nacimiento DATE,
    estado TINYINT(4)
) RETURNS varchar(150) CHARSET latin1 COLLATE latin1_swedish_ci
BEGIN
    DECLARE mensaje VARCHAR(150);
    
    -- Insertar el nuevo asociado en la tabla `asociados`
    INSERT INTO asociados (cedula, nombres, apellidos, empresa, telefono, direccion, fecha_nacimiento, estado)
    VALUES (cedula, nombres, apellidos, empresa, telefono, direccion, fecha_nacimiento, estado);
    
    -- Generar mensaje de confirmación
    SET mensaje = CONCAT('Señor(a) ', nombres, ' ', apellidos, ' empleado de ', empresa, ', bienvenido a nuestra COOEMSAN cooperativa');
    
    RETURN mensaje;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `Vista_ultimos_Aportes`
--

/*!50001 DROP VIEW IF EXISTS `Vista_ultimos_Aportes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`credicel_mysql_estudiantes_ago24`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Vista_ultimos_Aportes` AS select `aportes`.`id_cliente` AS `Código`,`asociados`.`nombres` AS `Nombre`,`aportes`.`valor_aporte` AS `Último aporte`,`aportes`.`fecha_aporte` AS `Fecha del Último aporte` from (`aportes` join `asociados` on(`aportes`.`id_cliente` = `asociados`.`id_cliente`)) order by `aportes`.`fecha_aporte` desc,`aportes`.`id_aporte` desc limit 10 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `resumen_aporte`
--

/*!50001 DROP VIEW IF EXISTS `resumen_aporte`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`credicel_mysql_estudiantes_ago24`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `resumen_aporte` AS select `asociados`.`id_cliente` AS `IDc`,`asociados`.`cedula` AS `Identificación`,concat_ws(' ',`asociados`.`nombres`,`asociados`.`apellidos`) AS `Empleado`,`aportes`.`valor_aporte` AS `Valor_aporte`,(select `aportes`.`valor_aporte` from `aportes` where `aportes`.`id_cliente` = `asociados`.`id_cliente` order by `aportes`.`id_aporte` desc limit 1) AS `Ultimo_Aporte`,date_format((select `aportes`.`fecha_aporte` from `aportes` where `aportes`.`id_cliente` = `asociados`.`id_cliente` order by `aportes`.`id_aporte` desc limit 1),'%d/%m/%y') AS `Ultimo_Aporte_Fecha`,`aportes`.`fecha_aporte` AS `Fecha_aporte`,sum(`aportes`.`valor_aporte`) AS `Total_aportado` from ((`asociados` join `aportes` on(`aportes`.`id_cliente` = `asociados`.`id_cliente`)) left join `creditos` on(`asociados`.`id_cliente` = `creditos`.`id_cliente`)) group by `aportes`.`id_cliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `resumen_credito`
--

/*!50001 DROP VIEW IF EXISTS `resumen_credito`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`credicel_mysql_estudiantes_ago24`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `resumen_credito` AS select `asociados`.`id_cliente` AS `IDc`,`asociados`.`cedula` AS `Identificación`,concat_ws(' ',`asociados`.`nombres`,`asociados`.`apellidos`) AS `Empleado`,`creditos`.`fecha_credito` AS `fecha_credito`,`creditos`.`valor_credito` AS `Valor_credito`,`creditos`.`plazo_credito` AS `Plazo`,`creditos`.`valor_credito` / `creditos`.`plazo_credito` AS `Valor_Cuota`,`creditos`.`fecha_credito` + interval `creditos`.`plazo_credito` month AS `Fecha_Finalizacion`,sum(`aportes`.`valor_aporte`) AS `Total_Pagado`,`creditos`.`valor_credito` - ifnull(sum(`aportes`.`valor_aporte`),0) AS `Total_Pendiente` from ((`asociados` join `creditos` on(`asociados`.`id_cliente` = `creditos`.`id_cliente`)) left join `aportes` on(`aportes`.`id_cliente` = `asociados`.`id_cliente`)) group by `creditos`.`id_creditos` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-30 20:34:23
