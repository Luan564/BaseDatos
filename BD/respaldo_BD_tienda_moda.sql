-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: tienda_moda
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
  `email` varchar(100) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Ana García','ana.garcia@example.com','555-1234'),(2,'Carlos López','carlos.lopez@example.com','555-5678');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
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
  `categoria` varchar(50) NOT NULL,
  `talla` varchar(10) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int NOT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Camiseta básica','ropa','M',19.99,50),(2,'Zapatos deportivos','calzado','42',59.99,30),(3,'Jeans ajustados','ropa','L',39.99,20),(4,'Camiseta básica','ropa','M',19.99,50),(5,'Zapatos deportivos','calzado','42',59.99,30),(6,'Jeans ajustados','ropa','L',39.99,20),(7,'Chaqueta de cuero','ropa','XL',99.99,15),(8,'Sandalias de verano','calzado','38',29.99,40),(9,'Blusa de seda','ropa','S',49.99,25),(10,'Tenis running','calzado','43',79.99,20),(11,'Falda midi','ropa','M',34.99,30),(12,'Botines de invierno','calzado','39',89.99,10),(13,'Suéter tejido','ropa','L',45.99,35),(14,'Chándal deportivo','ropa','M',59.99,20),(15,'Zapatillas casual','calzado','40',49.99,25),(16,'Vestido de fiesta','ropa','S',129.99,10),(17,'Mocasines elegantes','calzado','41',69.99,15),(18,'Pantalón cargo','ropa','L',54.99,30),(19,'Chaqueta vaquera','ropa','M',89.99,20),(20,'Sneakers urbanos','calzado','42',59.99,25),(21,'Camisa de lino','ropa','L',39.99,40),(22,'Botas de montaña','calzado','44',109.99,10),(23,'Shorts deportivos','ropa','M',24.99,50),(24,'Chaleco acolchado','ropa','XL',79.99,15),(25,'Zapatos de vestir','calzado','43',89.99,20),(26,'Top deportivo','ropa','S',19.99,60),(27,'Sandalias con taco','calzado','37',39.99,30),(28,'Parka invierno','ropa','L',149.99,10),(29,'Zapatillas running','calzado','44',99.99,20),(30,'Blazer elegante','ropa','M',119.99,15),(31,'Bailarinas clásicas','calzado','38',34.99,25),(32,'Jersey de punto','ropa','XL',49.99,30),(33,'Chanclas playa','calzado','39',14.99,50),(34,'Pantalón skinny','ropa','M',44.99,40),(35,'Zapatos trekking','calzado','42',79.99,20),(36,'Camiseta manga larga','ropa','L',29.99,35),(37,'Botines de cuero','calzado','40',69.99,15),(38,'Falda plisada','ropa','S',39.99,25),(39,'Zapatos de tacón','calzado','37',59.99,20),(40,'Chaqueta bomber','ropa','M',89.99,20),(41,'Mocasines de piel','calzado','41',79.99,15),(42,'Leggings deportivos','ropa','L',29.99,50),(43,'Zapatillas skate','calzado','43',49.99,25),(44,'Vestido casual','ropa','M',54.99,30),(45,'Botas de agua','calzado','42',39.99,20),(46,'Chaleco de lana','ropa','XL',59.99,15),(47,'Zapatos de lona','calzado','40',24.99,40),(48,'Blusa estampada','ropa','S',34.99,25),(49,'Sandalias planas','calzado','38',29.99,30),(50,'Pantalón chino','ropa','L',49.99,35),(51,'Zapatos de gamuza','calzado','41',69.99,20),(52,'Chaqueta parka','ropa','M',99.99,15),(53,'Zapatillas de lona','calzado','39',19.99,50),(54,'Camiseta estampada','ropa','L',22.99,40),(55,'Botas de cuero','calzado','42',89.99,15),(56,'Chándal completo','ropa','M',79.99,20),(57,'Zapatos de charol','calzado','40',59.99,25),(58,'Falda corta','ropa','S',29.99,30),(59,'Zapatillas running','calzado','44',99.99,20),(60,'Chaqueta de plumas','ropa','XL',149.99,10),(61,'Mocasines de ante','calzado','41',69.99,15),(62,'Top sin mangas','ropa','M',19.99,60),(63,'Sandalias de cuero','calzado','37',49.99,30),(64,'Pantalón de vestir','ropa','L',59.99,25),(65,'Zapatos de trekking','calzado','43',89.99,20),(66,'Blusa de algodón','ropa','S',29.99,40),(67,'Botas de nieve','calzado','42',79.99,15),(68,'Chaqueta de punto','ropa','M',49.99,30),(69,'Zapatillas deportivas','calzado','40',39.99,35),(70,'Vestido de noche','ropa','L',129.99,10),(71,'Zapatos de tacón alto','calzado','38',69.99,20),(72,'Chaleco de piel','ropa','XL',99.99,15),(73,'Zapatos de lona','calzado','39',24.99,40),(74,'Camiseta básica','ropa','M',19.99,50),(75,'Zapatos deportivos','calzado','42',59.99,30),(76,'Jeans ajustados','ropa','L',39.99,20),(77,'Chaqueta de cuero','ropa','XL',99.99,15),(78,'Sandalias de verano','calzado','38',29.99,40),(79,'Blusa de seda','ropa','S',49.99,25),(80,'Tenis running','calzado','43',79.99,20),(81,'Falda midi','ropa','M',34.99,30),(82,'Botines de invierno','calzado','39',89.99,10),(83,'Suéter tejido','ropa','L',45.99,35),(84,'Chándal deportivo','ropa','M',59.99,20),(85,'Zapatillas casual','calzado','40',49.99,25),(86,'Vestido de fiesta','ropa','S',129.99,10),(87,'Mocasines elegantes','calzado','41',69.99,15),(88,'Pantal ́on cargo','ropa','L',54.99,30),(89,'Chaqueta vaquera','ropa','M',89.99,20),(90,'Sneakers urbanos','calzado','42',59.99,25),(91,'Camisa de lino','ropa','L',39.99,40),(92,'Botas de monta~na','calzado','44',109.99,10),(93,'Shorts deportivos','ropa','M',24.99,50),(94,'Chaleco acolchado','ropa','XL',79.99,15),(95,'Zapatos de vestir','calzado','43',89.99,20),(96,'Top deportivo','ropa','S',19.99,60),(97,'Sandalias con taco','calzado','37',39.99,30),(98,'Parka invierno','ropa','L',149.99,10),(99,'Zapatillas running','calzado','44',99.99,20),(100,'Blazer elegante','ropa','M',119.99,15),(101,'Bailarinas cl ́asicas','calzado','38',34.99,25),(102,'Jersey de punto','ropa','XL',49.99,30),(103,'Chanclas playa','calzado','39',14.99,50);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
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
  `id_producto` int DEFAULT NULL,
  `fecha_venta` date NOT NULL,
  `cantidad` int NOT NULL,
  `total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_venta`),
  KEY `fk_id_cliente` (`id_cliente`),
  KEY `fk_id_producto` (`id_producto`),
  CONSTRAINT `fk_id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `fk_id_producto` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,1,1,'2023-10-01',2,39.98),(2,2,3,'2023-10-02',1,39.99);
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

-- Dump completed on 2025-03-06 17:15:36
