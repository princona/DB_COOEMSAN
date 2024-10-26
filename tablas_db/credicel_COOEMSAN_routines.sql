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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-26 17:58:21
