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
-- Temporary view structure for view `resumen_credito`
--

DROP TABLE IF EXISTS `resumen_credito`;
/*!50001 DROP VIEW IF EXISTS `resumen_credito`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `resumen_credito` AS SELECT 
 1 AS `id_creditos`,
 1 AS `id_cliente`,
 1 AS `valor_credito`,
 1 AS `plazo_credito`,
 1 AS `fecha_credito`,
 1 AS `interes_credito`,
 1 AS `interes_mora`,
 1 AS `valor_cuota`,
 1 AS `total_pagado`,
 1 AS `cuotas_pagadas`*/;
SET character_set_client = @saved_cs_client;

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
/*!50001 VIEW `resumen_credito` AS select `c`.`id_creditos` AS `id_creditos`,`c`.`id_cliente` AS `id_cliente`,`c`.`valor_credito` AS `valor_credito`,`c`.`plazo_credito` AS `plazo_credito`,`c`.`fecha_credito` AS `fecha_credito`,`c`.`interes_credito` AS `interes_credito`,`c`.`interes_mora` AS `interes_mora`,`c`.`valor_credito` / `c`.`plazo_credito` AS `valor_cuota`,`TOTAL_PAGADO`(`c`.`id_creditos`) AS `total_pagado`,`TOTAL_PAGADO`(`c`.`id_creditos`) / (`c`.`valor_credito` / `c`.`plazo_credito`) AS `cuotas_pagadas` from (`creditos` `c` left join `Pagos` `p` on(`c`.`id_cliente` = `p`.`id_credito`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

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
/*!50003 DROP FUNCTION IF EXISTS `total_pagado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`credicel_mysql_estudiantes_ago24`@`%` FUNCTION `total_pagado`(idc INT) RETURNS int(11)
BEGIN
	DECLARE acumulado INT;
    SET acumulado=0;
    SELECT COALESCE(SUM(p.valor_pago), 0) INTO acumulado
    FROM Pagos as p
    WHERE idc = p.id_credito;
RETURN acumulado;
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

-- Dump completed on 2024-11-01 20:16:24
