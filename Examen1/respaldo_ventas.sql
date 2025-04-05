-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: ventas
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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Laura Martínez','Calle 123 #45-67','3111111111','laura@email.com','2023-01-15'),(2,'Andrés Ramírez','Av. Principal 89-10','3222222222','andres@email.com','2023-02-20'),(3,'Sofía Herrera','Carrera 56 #78-90','3333333333','sofia@email.com','2023-03-10'),(4,'Diego Castro','Diagonal 34 #12-34','3444444444','diego@email.com','2023-04-05'),(5,'Valentina Ríos','Transversal 78 #56-12','3555555555','valentina@email.com','2023-05-18'),(6,'Carlos Mendoza','Calle 45 #67-89','3666666666','carlos@email.com','2023-01-22'),(7,'María González','Carrera 12 #34-56','3777777777','maria@email.com','2023-02-14'),(8,'Javier López','Avenida 78 #90-12','3888888888','javier@email.com','2023-03-05'),(9,'Ana Torres','Calle 90 #12-34','3999999999','ana@email.com','2023-04-18'),(10,'Pablo Díaz','Diagonal 56 #78-90','3000000000','pablo@email.com','2023-05-30'),(11,'Daniela Sánchez','Carrera 34 #56-78','3111222333','daniela@email.com','2023-01-10'),(12,'Ricardo Gómez','Calle 67 #89-01','3222333444','ricardo@email.com','2023-02-25'),(13,'Carolina Pérez','Avenida 23 #45-67','3333444555','carolina@email.com','2023-03-15'),(14,'Fernando Ruiz','Diagonal 12 #34-56','3444555666','fernando@email.com','2023-04-20'),(15,'Patricia Herrera','Calle 78 #90-12','3555666777','patricia@email.com','2023-05-05'),(16,'Roberto Castro','Carrera 45 #67-89','3666777888','roberto@email.com','2023-01-28'),(17,'Luisa Morales','Avenida 56 #78-90','3777888999','luisa@email.com','2023-02-08'),(18,'Jorge Rojas','Diagonal 67 #89-01','3888999000','jorge@email.com','2023-03-22'),(19,'Sandra Peña','Calle 34 #56-78','3999000111','sandra@email.com','2023-04-15'),(20,'Mario Jiménez','Carrera 90 #12-34','3000111222','mario@email.com','2023-05-25'),(21,'Adriana Silva','Avenida 12 #34-56','3111222333','adriana@email.com','2023-01-05'),(22,'Oscar Méndez','Diagonal 45 #67-89','3222333444','oscar@email.com','2023-02-15'),(23,'Natalia Vargas','Calle 56 #78-90','3333444555','natalia@email.com','2023-03-18'),(24,'Alberto Soto','Carrera 23 #45-67','3444555666','alberto@email.com','2023-04-10'),(25,'Beatriz Ríos','Avenida 34 #56-78','3555666777','beatriz@email.com','2023-05-20'),(26,'Enrique Guzmán','Diagonal 78 #90-12','3666777888','enrique@email.com','2023-01-12'),(27,'Claudia Pardo','Calle 12 #34-56','3777888999','claudia@email.com','2023-02-22'),(28,'Arturo Sandoval','Carrera 45 #67-89','3888999000','arturo@email.com','2023-03-08'),(29,'Verónica Cruz','Avenida 56 #78-90','3999000111','veronica@email.com','2023-04-25'),(30,'José Luis Mora','Diagonal 67 #89-01','3000111222','joseluis@email.com','2023-05-15'),(31,'María Fernanda López','Calle 34 #56-78','3111222333','mariafernanda@email.com','2023-01-18'),(32,'Carlos Andrés Ramírez','Carrera 90 #12-34','3222333444','carlosandres@email.com','2023-02-28'),(33,'Paola Guerrero','Avenida 12 #34-56','3333444555','paola@email.com','2023-03-12'),(34,'Javier Méndez','Diagonal 45 #67-89','3444555666','javier@email.com','2023-04-08'),(35,'Daniela Sánchez','Calle 56 #78-90','3555666777','daniela@email.com','2023-05-22'),(36,'Felipe González','Carrera 23 #45-67','3666777888','felipe@email.com','2023-01-25'),(37,'Lucía Rangel','Avenida 34 #56-78','3777888999','lucia@email.com','2023-02-05'),(38,'Roberto Sarmiento','Diagonal 78 #90-12','3888999000','roberto@email.com','2023-03-20'),(39,'Ana María Pardo','Calle 12 #34-56','3999000111','anamaria@email.com','2023-04-12'),(40,'José Luis Cabrera','Carrera 45 #67-89','3000111222','joseluis@email.com','2023-05-08'),(41,'María Fernanda López','Avenida 56 #78-90','3111222333','mariafernanda@email.com','2023-01-30'),(42,'Carlos Andrés Ramírez','Diagonal 67 #89-01','3222333444','carlosandres@email.com','2023-02-10'),(43,'Paola Guerrero','Calle 34 #56-78','3333444555','paola@email.com','2023-03-25'),(44,'Javier Méndez','Carrera 90 #12-34','3444555666','javier@email.com','2023-04-18'),(45,'Daniela Sánchez','Avenida 12 #34-56','3555666777','daniela@email.com','2023-05-10'),(46,'Felipe González','Diagonal 45 #67-89','3666777888','felipe@email.com','2023-01-08'),(47,'Lucía Rangel','Calle 56 #78-90','3777888999','lucia@email.com','2023-02-20'),(48,'Roberto Sarmiento','Carrera 23 #45-67','3888999000','roberto@email.com','2023-03-15'),(49,'Ana María Pardo','Avenida 34 #56-78','3999000111','anamaria@email.com','2023-04-28'),(50,'Camila Ortiz','Calle 90 #10-11','3666666666','camila@email.com','2023-08-22');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_ventas`
--

DROP TABLE IF EXISTS `detalle_ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_ventas` (
  `id_detalle` int NOT NULL AUTO_INCREMENT,
  `id_venta` int DEFAULT NULL,
  `id_producto` int DEFAULT NULL,
  `cantidad` int NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_detalle`),
  KEY `id_venta` (`id_venta`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `detalle_ventas_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`),
  CONSTRAINT `detalle_ventas_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_ventas`
--

LOCK TABLES `detalle_ventas` WRITE;
/*!40000 ALTER TABLE `detalle_ventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `categoria` enum('Refrigeración','Lavado','Cocina','Climatización') NOT NULL,
  `marca` varchar(50) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int NOT NULL,
  `id_proveedor` int DEFAULT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Refrigerador Side by Side','Refrigeración','Samsung',4500.00,15,1),(2,'Lavadora Carga Frontal','Lavado','LG',3200.00,20,2),(3,'Horno Microondas','Cocina','Whirlpool',800.00,30,3),(4,'Aire Acondicionado 12k BTU','Climatización','Mabe',1800.00,10,4),(5,'Congelador Vertical','Refrigeración','Panasonic',2000.00,8,5),(6,'Lavadora Semi-Automática','Lavado','Mabe',1500.00,12,6),(7,'Estufa de 4 Hornillas','Cocina','General Electric',1200.00,18,7),(8,'Ventilador de Torre','Climatización','Sole',250.00,25,8),(9,'Refrigerador French Door','Refrigeración','Whirlpool',5000.00,7,9),(10,'Campana Extractora','Cocina','Samsung',900.00,10,10),(11,'Lavadora Carga Superior','Lavado','Whirlpool',2800.00,14,11),(12,'Minisplit 18k BTU','Climatización','LG',2200.00,9,12),(13,'Cafetera Programable','Cocina','Oster',350.00,22,13),(14,'Refrigerador Mini Bar','Refrigeración','Mabe',1800.00,11,14),(15,'Secadora de Ropa','Lavado','Samsung',3400.00,6,15),(16,'Freidora de Aire','Cocina','Philips',600.00,17,16),(17,'Purificador de Aire','Climatización','Honeywell',750.00,13,17),(18,'Refrigerador Compacto','Refrigeración','Haier',1600.00,10,18),(19,'Batidora Industrial','Cocina','KitchenAid',450.00,15,19),(20,'Deshumidificador','Climatización','Frigidaire',550.00,8,20),(21,'Lavadora Doble Tina','Lavado','Centrales',1300.00,16,21),(22,'Horno Tostador','Cocina','Black+Decker',400.00,20,22),(23,'Ventilador de Techo','Climatización','Lumière',300.00,18,23),(24,'Refrigerador Bottom Freezer','Refrigeración','Frigidaire',3800.00,9,24),(25,'Licuadora Profesional','Cocina','Oster',500.00,14,25),(26,'Lavadora Smart','Lavado','Samsung',3600.00,7,26),(27,'Campana de Cocina','Cocina','Mabe',850.00,12,27),(28,'Calefactor Eléctrico','Climatización','DeLonghi',700.00,10,28),(29,'Refrigerador Top Freezer','Refrigeración','Whirlpool',2900.00,11,29),(30,'Exprimidor de Jugos','Cocina','Hamilton Beach',200.00,19,30),(31,'Lavadora con Secadora','Lavado','LG',4200.00,5,31),(32,'Robot de Cocina','Cocina','Instant Pot',950.00,8,32),(33,'Ventilador Industrial','Climatización','Taurus',400.00,15,33),(34,'Refrigerador Counter-Depth','Refrigeración','KitchenAid',5200.00,6,34),(35,'Tostadora Eléctrica','Cocina','Cuisinart',180.00,21,35),(36,'Lavadora Portátil','Lavado','Black+Decker',1100.00,9,36),(37,'Horno de Convención','Cocina','Panasonic',1500.00,7,37),(38,'Climatizador Evaporativo','Climatización','Bionaire',650.00,11,38),(39,'Refrigerador Wine Cooler','Refrigeración','Danby',2300.00,5,39),(40,'Procesador de Alimentos','Cocina','Braun',300.00,16,40),(41,'Lavadora de Carga Frontal','Lavado','Maytag',3800.00,6,41),(42,'Máquina de Helados','Cocina','Ninja',250.00,14,42),(43,'Ventilador sin Aspas','Climatización','Dyson',900.00,8,43),(44,'Refrigerador de Oficina','Refrigeración','Avanti',1200.00,12,44),(45,'Olla Arrocera','Cocina','Aroma',120.00,23,45),(46,'Lavadora con Vapor','Lavado','Kenmore',4100.00,5,46),(47,'Grill Eléctrico','Cocina','George Foreman',220.00,17,47),(48,'Termoventilador','Climatización','Vornado',350.00,13,48),(49,'Refrigerador de Cervezas','Refrigeración','EdgeStar',1700.00,7,49),(50,'Licuadora Industrial','Cocina','Oster',400.00,25,50);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `id_proveedor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `contacto` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'ElectroHome SA','Juan Pérez','3101234567'),(2,'WhiteLine Corp','María Gómez','3202345678'),(3,'CoolTech','Carlos Rojas','3003456789'),(4,'KitchenMaster','Ana López','3154567890'),(5,'Frost Suppliers','Luisa Díaz','3185678901'),(6,'MegaFridge','Andrés Castro','3146789012'),(7,'CleanWash','Pablo Ramírez','3127890123'),(8,'HeatWave','Sofía Herrera','3138901234'),(9,'FreezeTech','Diego Morales','3119012345'),(10,'QuickCool','Valentina Ríos','3170123456'),(11,'Arctic Solutions','Daniel Peña','3191234567'),(12,'SteelKitchen','Raúl Jiménez','3102345678'),(13,'BlueIce','Camila Soto','3203456789'),(14,'WashPro','Juliana Méndez','3004567890'),(15,'ChillFactor','Mario Roa','3155678901'),(16,'PowerFreeze','Carolina Vega','3186789012'),(17,'KitchenPlus','Fernando Gutiérrez','3147890123'),(18,'FreshCool','Patricia Niño','3128901234'),(19,'IceMaster','Alberto Sandoval','3139012345'),(20,'CleanTech','Adriana Paredes','3110123456'),(21,'Frosty','Roberto Guzmán','3171234567'),(22,'WhiteGoods','Lorena Silva','3192345678'),(23,'CoolSystems','Oscar Mendoza','3203456789'),(24,'KitchenPro','Beatriz Ríos','3004567890'),(25,'ArcticWind','Gustavo Torres','3155678901'),(26,'PureCold','Natalia Castro','3186789012'),(27,'SteelCold','Jorge Herrera','3147890123'),(28,'QuickFrost','Silvia Luna','3128901234'),(29,'IceBox','Martín Cruz','3139012345'),(30,'FreshAir','Diana Mendoza','3110123456'),(31,'ChillPro','Enrique Soto','3171234567'),(32,'WhiteFrost','Claudia Vargas','3192345678'),(33,'CoolBreeze','Ricardo Mora','3203456789'),(34,'KitchenElite','Sandra Rojas','3004567890'),(35,'ArcticPro','Héctor Navarro','3155678901'),(36,'FrostLine','Marina Díaz','3186789012'),(37,'CleanIce','Fabián Morales','3147890123'),(38,'HeatCool','Verónica Castro','3128901234'),(39,'IceFlow','Arturo Peñaloza','3139012345'),(40,'FreshTech','Lucía Rangel','3110123456'),(41,'ChillZone','Roberto Sarmiento','3171234567'),(42,'WhiteIce','Ana María Pardo','3192345678'),(43,'CoolFlex','José Luis Cabrera','3203456789'),(44,'KitchenGenius','María Fernanda López','3004567890'),(45,'ArcticPlus','Carlos Andrés Ramírez','3155678901'),(46,'FrostTech','Paola Guerrero','3186789012'),(47,'CleanPro','Javier Méndez','3147890123'),(48,'HeatPro','Daniela Sánchez','3128901234'),(49,'IceTech','Felipe González','3139012345'),(50,'Global Appliances','Pedro Sánchez','3176789012');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id_venta` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int DEFAULT NULL,
  `fecha_venta` date NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `metodo_pago` enum('Efectivo','Tarjeta','Transferencia') DEFAULT NULL,
  PRIMARY KEY (`id_venta`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,1,'2023-06-01',8300.00,'Tarjeta'),(2,2,'2023-06-05',5000.00,'Efectivo'),(3,3,'2023-06-10',1800.00,'Transferencia'),(4,4,'2023-06-15',6400.00,'Tarjeta'),(5,5,'2023-06-20',3200.00,'Efectivo'),(6,6,'2023-06-25',4500.00,'Transferencia'),(7,7,'2023-06-30',2900.00,'Tarjeta'),(8,8,'2023-07-05',3800.00,'Efectivo'),(9,9,'2023-07-10',5200.00,'Transferencia'),(10,10,'2023-07-15',1500.00,'Tarjeta'),(11,11,'2023-07-20',6700.00,'Efectivo'),(12,12,'2023-07-25',2300.00,'Transferencia'),(13,13,'2023-07-30',4100.00,'Tarjeta'),(14,14,'2023-08-05',3300.00,'Efectivo'),(15,15,'2023-08-10',2800.00,'Transferencia'),(16,16,'2023-08-15',4900.00,'Tarjeta'),(17,17,'2023-08-20',3600.00,'Efectivo'),(18,18,'2023-08-25',5700.00,'Transferencia'),(19,19,'2023-08-30',2200.00,'Tarjeta'),(20,20,'2023-09-05',4400.00,'Efectivo'),(21,21,'2023-09-10',3100.00,'Transferencia'),(22,22,'2023-09-15',2600.00,'Tarjeta'),(23,23,'2023-09-20',3900.00,'Efectivo'),(24,24,'2023-09-25',5300.00,'Transferencia'),(25,25,'2023-09-30',1700.00,'Tarjeta'),(26,26,'2023-10-05',4800.00,'Efectivo'),(27,27,'2023-10-10',3500.00,'Transferencia'),(28,28,'2023-10-15',2900.00,'Tarjeta'),(29,29,'2023-10-20',4200.00,'Efectivo'),(30,30,'2023-10-25',5400.00,'Transferencia'),(31,31,'2023-10-30',2100.00,'Tarjeta'),(32,32,'2023-11-05',3700.00,'Efectivo'),(33,33,'2023-11-10',2500.00,'Transferencia'),(34,34,'2023-11-15',4600.00,'Tarjeta'),(35,35,'2023-11-20',3300.00,'Efectivo'),(36,36,'2023-11-25',5100.00,'Transferencia'),(37,37,'2023-11-30',2400.00,'Tarjeta'),(38,38,'2023-12-05',3800.00,'Efectivo'),(39,39,'2023-12-10',2700.00,'Transferencia'),(40,40,'2023-12-15',4900.00,'Tarjeta'),(41,41,'2023-12-20',3600.00,'Efectivo'),(42,42,'2023-12-25',2200.00,'Transferencia'),(43,43,'2023-12-30',4300.00,'Tarjeta'),(44,44,'2024-01-05',3100.00,'Efectivo'),(45,45,'2024-01-10',5500.00,'Transferencia'),(46,46,'2024-01-15',1900.00,'Tarjeta'),(47,47,'2024-01-20',4700.00,'Efectivo'),(48,48,'2024-01-25',3400.00,'Transferencia'),(49,49,'2024-01-30',2800.00,'Tarjeta'),(50,50,'2024-02-05',4000.00,'Transferencia');
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

-- Dump completed on 2025-04-03 18:16:53
