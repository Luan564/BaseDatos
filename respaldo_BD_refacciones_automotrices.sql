-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: refacciones_automotrices
-- ------------------------------------------------------
-- Server version	8.0.41-0ubuntu0.24.04.1

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
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `refaccion_id` int DEFAULT NULL,
  `proveedor_id` int DEFAULT NULL,
  `cantidad` int NOT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `refaccion_id` (`refaccion_id`),
  KEY `proveedor_id` (`proveedor_id`),
  CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`refaccion_id`) REFERENCES `refacciones` (`id`),
  CONSTRAINT `inventario_ibfk_2` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
INSERT INTO `inventario` VALUES (1,1,1,50,'2023-10-01'),(2,2,2,30,'2023-10-02'),(3,3,3,20,'2023-10-03'),(4,4,1,15,'2023-10-04'),(5,5,4,40,'2023-10-05'),(6,6,5,25,'2023-10-06'),(7,7,6,60,'2023-10-07'),(8,8,7,10,'2023-10-08'),(9,9,8,5,'2023-10-09'),(10,10,9,35,'2023-10-10'),(11,11,10,20,'2023-10-11'),(12,12,11,50,'2023-10-12'),(13,13,12,15,'2023-10-13'),(14,14,13,30,'2023-10-14'),(15,15,14,40,'2023-10-15'),(16,16,15,10,'2023-10-16'),(17,17,16,25,'2023-10-17'),(18,18,17,50,'2023-10-18'),(19,19,18,20,'2023-10-19'),(20,20,19,30,'2023-10-20'),(21,21,20,15,'2023-10-21'),(22,22,21,40,'2023-10-22'),(23,23,22,25,'2023-10-23'),(24,24,23,60,'2023-10-24'),(25,25,24,10,'2023-10-25'),(26,26,25,5,'2023-10-26'),(27,27,26,35,'2023-10-27'),(28,28,27,20,'2023-10-28'),(29,29,28,50,'2023-10-29'),(30,30,29,15,'2023-10-30'),(31,31,30,30,'2023-10-31'),(32,32,31,40,'2023-11-01'),(33,33,32,10,'2023-11-02'),(34,34,33,25,'2023-11-03'),(35,35,34,50,'2023-11-04'),(36,36,35,20,'2023-11-05'),(37,37,36,30,'2023-11-06'),(38,38,37,15,'2023-11-07'),(39,39,38,40,'2023-11-08'),(40,40,39,25,'2023-11-09'),(41,41,40,60,'2023-11-10'),(42,42,41,10,'2023-11-11'),(43,43,42,5,'2023-11-12'),(44,44,43,35,'2023-11-13'),(45,45,44,20,'2023-11-14'),(46,46,45,50,'2023-11-15'),(47,47,46,15,'2023-11-16'),(48,48,47,30,'2023-11-17'),(49,49,48,40,'2023-11-18');
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `contacto` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Autopartes MX','Juan Pérez','555-1234-5678'),(2,'Refacciones Premium','María López','555-8765-4321'),(3,'Distribuidora de Baterías','Carlos Sánchez','555-5555-5555'),(4,'Repuestos Rápidos','Ana Martínez','555-1111-2222'),(5,'Importaciones Automotrices','Luis García','555-3333-4444'),(6,'Todo para tu Auto','Sofía Ramírez','555-6666-7777'),(7,'Accesorios y Refacciones','Pedro Hernández','555-8888-9999'),(8,'Distribuidora Nacional','Laura Gómez','555-0000-1111'),(9,'Autopartes del Norte','Jorge Díaz','555-2222-3333'),(10,'Refacciones Express','Carmen Ruiz','555-4444-5555'),(11,'Repuestos Originales','Miguel Torres','555-6666-8888'),(12,'Distribuidora de Frenos','Alejandro Mendoza','555-7777-9999'),(13,'Accesorios Automotrices','Patricia Castro','555-9999-0000'),(14,'Refacciones y Más','Ricardo Vargas','555-1212-3434'),(15,'Autopartes del Sur','Fernanda Ortega','555-4545-6767'),(16,'Distribuidora de Motores','Roberto Medina','555-7878-9090'),(17,'Repuestos de Calidad','Gabriela Ríos','555-2323-4545'),(18,'Accesorios Premium','Héctor Guzmán','555-5656-7878'),(19,'Refacciones Económicas','Lucía Paredes','555-8989-0101'),(20,'Distribuidora de Suspensión','Francisco Luna','555-3434-5656'),(21,'Repuestos y Accesorios','Isabel Sosa','555-6767-8989'),(22,'Autopartes del Este','Ra ́ul Jiménez','555-9898-1212'),(23,'Refacciones Originales','Adriana N ́u~nez','555-2323-4545'),(24,'Distribuidora de Transmisiones','Sergio Vega','555-5656-7878'),(25,'Accesorios del Futuro','Diana Rojas','555-8989-0101'),(26,'Repuestos Nacionales','Javier Morales','555-3434-5656'),(27,'Autopartes del Oeste','Verónica Silva','555-6767-8989'),(28,'Refacciones y Accesorios','Arturo Campos','555-9898-1212'),(29,'Distribuidora de Frenos y Embragues','Marina Reyes','555-2323-4545'),(30,'Repuestos de Alta Calidad','Oscar Guerrero','555-5656-7878'),(31,'Accesorios Automotrices MX','Lorena Cortés','555-8989-0101'),(32,'Refacciones del Norte','Felipe Méndez','555-3434-5656'),(33,'Distribuidora de Bujías','Silvia Aguilar','555-6767-8989'),(34,'Repuestos y Más','Manuel Navarro','555-9898-1212'),(35,'Autopartes del Centro','Claudia Miranda','555-2323-4545'),(36,'Refacciones Express MX','Eduardo Rangel','555-5656-7878'),(37,'Distribuidora de Amortiguadores','Alejandra León','555-8989-0101'),(38,'Repuestos Originales MX','José Espinoza','555-3434-5656'),(39,'Accesorios del Motor','Ana Beltrán','555-6767-8989'),(40,'Refacciones y Repuestos','Carlos Valdez','555-9898-1212'),(41,'Distribuidora de Radiadores','Marisol Fuentes','555-2323-4545'),(42,'Repuestos de Lujo','Roberto Cervantes','555-5656-7878'),(43,'Accesorios de Alta Gama','Lucero Méndez','555-8989-0101'),(44,'Refacciones del Sur','Hugo Ponce','555-3434-5656'),(45,'Distribuidora de Correas','Rosa Salazar','555-6767-8989'),(46,'Repuestos y Accesorios MX','Gerardo Acosta','555-9898-1212'),(47,'Autopartes del Futuro','Natalia Vázquez','555-2323-4545'),(48,'Refacciones y Más MX','Alberto Ibarra','555-5656-7878'),(49,'Distribuidora de Sensores','Beatriz Zamora','555-8989-0101');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refacciones`
--

DROP TABLE IF EXISTS `refacciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refacciones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text,
  `precio` decimal(10,2) NOT NULL,
  `marca` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refacciones`
--

LOCK TABLES `refacciones` WRITE;
/*!40000 ALTER TABLE `refacciones` DISABLE KEYS */;
INSERT INTO `refacciones` VALUES (1,'Filtro de aceite','Filtro de aceite para motor de gasolina',150.50,'Bosch'),(2,'Pastillas de freno','Pastillas de freno delanteras',300.00,'Brembo'),(3,'Batería','Batería de 12V 60Ah',1200.00,'ACDelco'),(4,'Amortiguadores','Amortiguadores traseros',800.00,'Monroe'),(5,'Bujías','Bujías de iridio',200.00,'NGK'),(6,'Correa de distribución','Correa de distribución para motor 2.0L',450.00,'Gates'),(7,'Aceite de motor','Aceite sintético 5W-30',250.00,'Mobil 1'),(8,'Radiador','Radiador de aluminio',1200.00,'Spectra'),(9,'Alternador','Alternador de 12V 90A',1800.00,'Denso'),(10,'Bomba de agua','Bomba de agua para motor 1.6L',600.00,'GMB'),(11,'Discos de freno','Discos de freno delanteros',700.00,'Brembo'),(12,'Lámparas','Lámparas H4 para faros',150.00,'Philips'),(13,'Termostato','Termostato para motor 2.4L',300.00,'Stant'),(14,'Sensor de oxígeno','Sensor de oxígeno universal',400.00,'Bosch'),(15,'Filtro de aire','Filtro de aire de alto flujo',180.00,'K&N'),(16,'Silenciador','Silenciador de escape',900.00,'Walker'),(17,'Junta de culata','Junta de culata para motor 1.8L',500.00,'Fel-Pro'),(18,'Bomba de gasolina','Bomba de gasolina eléctrica',800.00,'Delphi'),(19,'Embrague','Kit de embrague completo',1500.00,'Luk'),(20,'Rótula','Rótula de dirección',350.00,'Moog'),(21,'Barra estabilizadora','Barra estabilizadora delantera',400.00,'Meyle'),(22,'Bomba de dirección','Bomba de dirección hidráulica',750.00,'Cardone'),(23,'Cable de acelerador','Cable de acelerador universal',120.00,'Dorman'),(24,'Fusibles','Kit de fusibles variados',50.00,'Bussmann'),(25,'Terminales de batería','Terminales de batería de cobre',80.00,'Install Bay'),(26,'Correa de ventilador','Correa de ventilador para motor 3.0L',200.00,'Dayco'),(27,'Tapa de radiador','Tapa de radiador de 16 PSI',100.00,'Stant'),(28,'Válvula EGR','Válvula EGR para motor 2.2L',450.00,'Standard'),(29,'Suspensión','Kit de suspensión completa',2500.00,'KYB'),(30,'Filtro de combustible','Filtro de combustible de alta presión',220.00,'Wix'),(31,'Caja de cambios','Caja de cambios manual',3000.00,'ZF'),(32,'Intercooler','Intercooler para turbo',1500.00,'Garrett'),(33,'Turbo','Turbocharger para motor 2.0L',3500.00,'BorgWarner'),(34,'Sonda lambda','Sonda lambda universal',300.00,'Bosch'),(35,'Cable de bujía','Juego de cables de bujía',250.00,'NGK'),(36,'Filtro de habitáculo','Filtro de aire acondicionado',120.00,'Mann-Filter'),(37,'Bomba de freno','Bomba de freno principal',600.00,'ATE'),(38,'Cremallera de dirección','Cremallera de dirección hidráulica',1800.00,'TRW'),(39,'Rodamiento de rueda','Rodamiento de rueda delantera',400.00,'SKF'),(40,'Correa de accesorios','Correa de accesorios para motor 2.5L',250.00,'Contitech'),(41,'Tapa de válvulas','Tapa de válvulas de aluminio',300.00,'Dorman'),(42,'Sensores de estacionamiento','Kit de sensores de estacionamiento',500.00,'Parkmate'),(43,'Cable de freno','Cable de freno de emergencia',150.00,'Dorman'),(44,'Cojinete de embrague','Cojinete de embrague para transmisión manual',200.00,'Luk'),(45,'Resorte de válvula','Juego de resortes de válvula',350.00,'Comp Cams'),(46,'Válvula de control de aire','Válvula de control de aire en ralentí',280.00,'Standard'),(47,'Cable de velocidad','Cable de velocímetro',120.00,'Dorman'),(48,'Filtro de transmisión','Filtro de transmisión automática',180.00,'Wix'),(49,'Soporte de motor','Soporte de motor delantero',400.00,'Anchor');
/*!40000 ALTER TABLE `refacciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `refaccion_id` int DEFAULT NULL,
  `cantidad` int NOT NULL,
  `fecha_venta` date DEFAULT NULL,
  `total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `refaccion_id` (`refaccion_id`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`refaccion_id`) REFERENCES `refacciones` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,1,5,'2023-10-05',752.50),(2,2,2,'2023-10-06',600.00),(3,3,1,'2023-10-07',1200.00),(4,4,3,'2023-10-08',2400.00),(5,5,4,'2023-10-09',800.00),(6,6,2,'2023-10-10',900.00),(7,7,10,'2023-10-11',2500.00),(8,8,1,'2023-10-12',1200.00),(9,9,1,'2023-10-13',1800.00),(10,10,5,'2023-10-14',3000.00),(11,11,3,'2023-10-15',2100.00),(12,12,10,'2023-10-16',1500.00),(13,13,2,'2023-10-17',600.00),(14,14,4,'2023-10-18',1600.00),(15,15,5,'2023-10-19',900.00),(16,16,1,'2023-10-20',900.00),(17,17,3,'2023-10-21',1500.00),(18,18,5,'2023-10-22',4000.00),(19,19,2,'2023-10-23',3000.00),(20,20,4,'2023-10-24',1400.00),(21,21,3,'2023-10-25',1200.00),(22,22,5,'2023-10-26',3750.00),(23,23,2,'2023-10-27',500.00),(24,24,10,'2023-10-28',500.00),(25,25,1,'2023-10-29',80.00),(26,26,2,'2023-10-30',400.00),(27,27,5,'2023-10-31',500.00),(28,28,3,'2023-11-01',1350.00),(29,29,4,'2023-11-02',10000.00),(30,30,2,'2023-11-03',440.00),(31,31,5,'2023-11-04',1500.00),(32,32,1,'2023-11-05',1500.00),(33,33,3,'2023-11-06',10500.00),(34,34,2,'2023-11-07',600.00),(35,35,4,'2023-11-08',1400.00),(36,36,5,'2023-11-09',1750.00),(37,37,1,'2023-11-10',280.00),(38,38,3,'2023-11-11',450.00),(39,39,2,'2023-11-12',240.00),(40,40,5,'2023-11-13',600.00),(41,41,1,'2023-11-14',180.00),(42,42,3,'2023-11-15',1500.00),(43,43,2,'2023-11-16',10.00),(44,44,4,'2023-11-17',700.00),(45,45,5,'2023-11-18',1000.00),(46,46,1,'2023-11-19',400.00),(47,47,3,'2023-11-20',450.00),(48,48,2,'2023-11-21',600.00),(49,49,4,'2023-11-22',1600.00);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-06 19:00:14
