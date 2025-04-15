-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: biblioteca
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
-- Table structure for table `autores`
--

DROP TABLE IF EXISTS `autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autores` (
  `id_autor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `nacionalidad` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_autor`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autores`
--

LOCK TABLES `autores` WRITE;
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` VALUES (1,'Gabriel García Márquez','Mexicano'),(2,'Joanne Rowling','Inglesa'),(3,'Eric Arthur Blair','Inglés'),(4,'Isabel Allende','Chilena'),(5,'Mario Vargas Llosa','Peruano'),(6,'Julio Cortázar','Argentino'),(7,'Pablo Neruda','Chileno'),(8,'Jorge Luis Borges','Argentino'),(9,'Miguel de Cervantes','Español'),(10,'William Shakespeare','Británico'),(11,'Jane Austen','Inglesa'),(12,'Charles Dickens','Británico'),(13,'Mark Twain','Estadounidense'),(14,'Ernest Hemingway','Estadounidense'),(15,'F. Scott Fitzgerald','Estadounidense'),(16,'Virginia Woolf','Inglesa'),(17,'Franz Kafka','Checo'),(18,'Leo Tolstoy','Ruso'),(19,'Fyodor Dostoevsky','Ruso'),(20,'Anton Chekhov','Ruso'),(21,'Haruki Murakami','Japonés'),(22,'Yukio Mishima','Japonés'),(23,'Gabriela Mistral','Chilena'),(24,'Octavio Paz','Mexicano'),(25,'Carlos Fuentes','Mexicano'),(26,'Juan Rulfo','Mexicano'),(27,'Horacio Quiroga','Uruguayo'),(28,'Rubén Darío','Nicaragüense'),(29,'José Martí','Cubano'),(30,'Alejo Carpentier','Cubano'),(31,'José Saramago','Portugués'),(32,'Fernando Pessoa','Portugués'),(33,'Albert Camus','Francés'),(34,'Jean-Paul Sartre','Francés'),(35,'Victor Hugo','Francés'),(36,'Gustave Flaubert','Francés'),(37,'Marcel Proust','Francés'),(38,'Simone de Beauvoir','Francesa'),(39,'Marguerite Duras','Francesa'),(40,'Italo Calvino','Italiano'),(41,'Umberto Eco','Italiano'),(42,'Dante Alighieri','Italiano'),(43,'Johann Wolfgang von Goethe','Alemán'),(44,'Franz Kafka','Checo'),(45,'Thomas Mann','Alemán'),(46,'Hermann Hesse','Alemán'),(47,'Bertolt Brecht','Alemán'),(48,'Friedrich Nietzsche','Alemán'),(49,'Sigmund Freud','Austriaco'),(50,'Stefan Zweig','Austriaco'),(51,'Arthur Conan Doyle','Británico'),(52,'Agatha Christie','Inglesa'),(53,'H.G. Wells','Británico'),(54,'Aldous Huxley','Británico'),(55,'George Eliot','Inglesa'),(56,'Emily Brontë','Inglesa'),(57,'Charlotte Brontë','Inglesa'),(58,'Oscar Wilde','Irlandés'),(59,'James Joyce','Irlandés'),(60,'Samuel Beckett','Irlandés'),(61,'W.B. Yeats','Irlandés'),(62,'Edgar Allan Poe','Estadounidense'),(63,'Walt Whitman','Estadounidense'),(64,'Emily Dickinson','Estadounidense'),(65,'Langston Hughes','Estadounidense'),(66,'Toni Morrison','Estadounidense'),(67,'Maya Angelou','Estadounidense'),(68,'Alice Walker','Estadounidense'),(69,'Philip Roth','Estadounidense'),(70,'John Steinbeck','Estadounidense'),(71,'Jack Kerouac','Estadounidense'),(72,'Allen Ginsberg','Estadounidense'),(73,'Truman Capote','Estadounidense'),(74,'Harper Lee','Estadounidense'),(75,'Flannery O’Connor','Estadounidense'),(76,'Gabriel Mistral','Chilena'),(77,'Mario Benedetti','Uruguayo'),(78,'Pablo Coelho','Brasileño'),(79,'Octavio Paz','Mexicano');
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros` (
  `id_libro` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `id_autor` int DEFAULT NULL,
  `anio_publicacion` smallint DEFAULT NULL,
  PRIMARY KEY (`id_libro`),
  KEY `id_autor` (`id_autor`),
  CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`id_autor`) REFERENCES `autores` (`id_autor`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (1,'Cien años de soledad',1,1970),(2,'Harry Potter y la cámara secreta',2,1997),(3,'1984',3,1950),(4,'La casa de los espíritus',4,1982),(5,'La ciudad y los perros',5,1963),(6,'Rayuela',6,1963),(7,'Veinte poemas de amor',7,1950),(8,'Ficciones',8,1950),(9,'Don Quijote de la Mancha',9,1950),(10,'Hamlet',10,1950),(11,'Orgullo y prejuicio',11,1950),(12,'Grandes esperanzas',12,1950),(13,'Las aventuras de Tom Sawyer',13,1950),(14,'El viejo y el mar',14,1952),(15,'El gran Gatsby',15,1950),(16,'Mrs. Dalloway',16,1950),(17,'La metamorfosis',17,1950),(18,'Guerra y paz',18,1950),(19,'Crimen y castigo',19,1950),(20,'El jardín de los cerezos',20,1950),(21,'Kafka en la orilla',21,2002),(22,'El marino que perdió la gracia del mar',22,1963),(23,'Desolación',23,1950),(24,'El laberinto de la soledad',24,1950),(25,'La región más transparente',25,1958),(26,'Pedro Páramo',26,1955),(27,'Cuentos de amor, de locura y de muerte',27,1950),(28,'Azul',28,1950),(29,'Versos sencillos',29,1950),(30,'El reino de este mundo',30,1950),(31,'Ensayo sobre la ceguera',31,1995),(32,'El libro del desasosiego',32,1982),(33,'El extranjero',33,1950),(34,'La náusea',34,1950),(35,'Los miserables',35,1950),(36,'Madame Bovary',36,1950),(37,'En busca del tiempo perdido',37,1950),(38,'El segundo sexo',38,1950),(39,'El amante',39,1984),(40,'Las ciudades invisibles',40,1972),(41,'El nombre de la rosa',41,1980),(42,'La divina comedia',42,1950),(43,'Fausto',43,1950),(44,'La metamorfosis',44,1950),(45,'La montaña mágica',45,1950),(46,'Siddhartha',46,1950),(47,'Madre Coraje y sus hijos',47,1950),(48,'Así habló Zaratustra',48,1950),(49,'La interpretación de los sueños',49,1950),(50,'El mundo de ayer',50,1950),(51,'Estudio en escarlata',51,1950),(52,'Asesinato en el Orient Express',52,1950),(53,'La máquina del tiempo',53,1950),(54,'Un mundo feliz',54,1950),(55,'Middlemarch',55,1950),(56,'Cumbres borrascosas',56,1950),(57,'Jane Eyre',57,1950),(58,'El retrato de Dorian Gray',58,1950),(59,'Ulises',59,1950),(60,'Esperando a Godot',60,1953),(61,'La torre',61,1950),(62,'El cuervo',62,1950),(63,'Hojas de hierba',63,1950),(64,'Poemas',64,1950),(65,'El negro habla de ríos',65,1950),(66,'Beloved',66,1987),(67,'Yo sé por qué canta el pájaro enjaulado',67,1969),(68,'El color púrpura',68,1982),(69,'Pastoral americana',69,1997),(70,'Las uvas de la ira',70,1950),(71,'En el camino',71,1957),(72,'Aullido',72,1956),(73,'A sangre fría',73,1966),(74,'Matar a un ruiseñor',74,1960),(75,'Un hombre bueno es difícil de encontrar',75,1955),(76,'Cien años de soledad',1,1970),(77,'El amor en tiempos del cólera',1,1985),(78,'La sombra del viento',5,2001);
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestamos`
--

DROP TABLE IF EXISTS `prestamos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestamos` (
  `id_prestamo` int NOT NULL AUTO_INCREMENT,
  `id_libro` int DEFAULT NULL,
  `fecha_prestamo` date DEFAULT NULL,
  `fecha_devolucion` date DEFAULT NULL,
  PRIMARY KEY (`id_prestamo`),
  KEY `id_libro` (`id_libro`),
  CONSTRAINT `prestamos_ibfk_1` FOREIGN KEY (`id_libro`) REFERENCES `libros` (`id_libro`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamos`
--

LOCK TABLES `prestamos` WRITE;
/*!40000 ALTER TABLE `prestamos` DISABLE KEYS */;
INSERT INTO `prestamos` VALUES (1,1,'2023-10-01','2025-10-20'),(2,2,'2023-10-05','2025-11-30'),(3,3,'2023-10-10','2023-10-20'),(4,4,'2023-09-15','2023-09-30'),(5,5,'2023-09-20','2025-11-30'),(6,6,'2023-08-25','2023-09-10'),(7,7,'2023-08-30','2023-09-15'),(8,8,'2023-07-05','2023-07-20'),(9,9,'2023-07-10','2025-11-30'),(10,10,'2023-06-15','2023-06-30'),(11,11,'2023-06-20','2025-11-30'),(12,12,'2023-05-25','2023-06-10'),(13,13,'2023-05-30','2023-06-15'),(14,14,'2023-04-05','2023-04-20'),(15,15,'2023-04-10','2025-11-30'),(16,16,'2023-03-15','2023-03-30'),(17,17,'2023-03-20','2025-11-30'),(18,18,'2023-02-25','2023-03-10'),(19,19,'2023-02-28','2023-03-15'),(20,20,'2023-01-05','2023-01-20'),(21,21,'2023-01-10','2025-11-30'),(22,22,'2022-12-15','2022-12-30'),(23,23,'2022-12-20','2025-11-30'),(24,24,'2022-11-25','2022-12-10'),(25,25,'2022-11-30','2022-12-15'),(26,26,'2022-10-05','2022-10-20'),(27,27,'2022-10-10','2025-11-30'),(28,28,'2022-09-15','2022-09-30'),(29,29,'2022-09-20','2025-11-30'),(30,30,'2022-08-25','2022-09-10'),(31,31,'2022-08-30','2022-09-15'),(32,32,'2022-07-05','2022-07-20'),(33,33,'2022-07-10','2025-11-30'),(34,34,'2022-06-15','2022-06-30'),(35,35,'2022-06-20','2025-11-30'),(36,36,'2022-05-25','2022-06-10'),(37,37,'2022-05-30','2022-06-15'),(38,38,'2022-04-05','2022-04-20'),(39,39,'2022-04-10','2025-11-30'),(40,40,'2022-03-15','2022-03-30'),(41,41,'2022-03-20','2025-11-30'),(42,42,'2022-02-25','2022-03-10'),(43,43,'2022-02-28','2022-03-15'),(44,44,'2022-01-05','2022-01-20'),(45,45,'2022-01-10','2025-11-30'),(46,46,'2021-12-15','2021-12-30'),(47,47,'2021-12-20','2025-11-30'),(48,48,'2021-11-25','2021-12-10'),(49,49,'2021-11-30','2021-12-15'),(50,50,'2021-10-05','2021-10-20'),(51,51,'2021-10-10','2025-11-30'),(52,52,'2021-09-15','2021-09-30'),(53,53,'2021-09-20','2025-11-30'),(54,54,'2021-08-25','2021-09-10'),(55,55,'2021-08-30','2021-09-15'),(56,56,'2021-07-05','2021-07-20'),(57,57,'2021-07-10','2025-11-30'),(58,58,'2021-06-15','2021-06-30'),(59,59,'2021-06-20','2025-11-30'),(60,60,'2021-05-25','2021-06-10'),(61,61,'2021-05-30','2021-06-15'),(62,62,'2021-04-05','2021-04-20'),(63,63,'2021-04-10','2025-11-30'),(64,64,'2021-03-15','2021-03-30'),(65,65,'2021-03-20','2025-11-30'),(66,66,'2021-02-25','2021-03-10'),(67,67,'2021-02-28','2021-03-15'),(68,68,'2021-01-05','2021-01-20'),(69,69,'2021-01-10','2025-11-30'),(70,70,'2020-12-15','2020-12-30'),(71,71,'2020-12-20','2025-11-30'),(72,72,'2020-11-25','2020-12-10'),(73,73,'2020-11-30','2020-12-15'),(74,74,'2020-10-05','2020-10-20'),(75,75,'2020-10-10','2025-11-30'),(76,1,'2025-11-01','2025-11-30'),(77,2,'2023-11-05','2023-11-20');
/*!40000 ALTER TABLE `prestamos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-16 22:33:24
