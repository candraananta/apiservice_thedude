-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: router_monitoring
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `router_log`
--

DROP TABLE IF EXISTS `router_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `router_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `router_id` varchar(50) DEFAULT NULL,
  `timestamp` datetime NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `router_log`
--

LOCK TABLES `router_log` WRITE;
/*!40000 ALTER TABLE `router_log` DISABLE KEYS */;
INSERT INTO `router_log` VALUES (1,'001','2024-09-11 15:04:00','down'),(2,'001','2024-09-11 11:04:00','down'),(3,'003','2024-09-11 13:04:00','down'),(4,'006','2024-09-11 10:04:00','down'),(5,'100','2024-09-11 16:16:52','DOWNNNNN'),(6,'12','2024-09-11 16:18:33','Up'),(7,'16','2024-09-11 17:12:23','Up'),(8,'1','2024-09-11 17:14:31','Up'),(9,'1','2024-09-11 17:14:32','Up'),(10,'1','2024-09-11 17:14:33','Up'),(11,'1','2024-09-11 17:14:34','Up'),(12,'1','2024-09-11 17:14:35','Up'),(13,'1','2024-09-11 17:14:36','Up'),(14,'1','2024-09-11 17:14:37','Up'),(15,'1','2024-09-11 17:14:38','Up'),(16,'1','2024-09-11 17:14:39','Up'),(17,'1','2024-09-11 17:14:47','Up'),(18,'1','2024-09-11 17:14:47','Up'),(19,'1','2024-09-11 17:14:52','Up'),(20,'1','2024-09-11 17:15:08','down'),(21,'1','2024-09-11 17:15:08','down'),(22,'1','2024-09-11 17:15:09','down'),(23,'1','2024-09-11 17:15:10','down'),(24,'1','2024-09-11 17:15:10','down'),(25,'1','2024-09-11 17:15:11','down'),(26,'1','2024-09-11 17:15:11','down'),(27,'1','2024-09-11 17:15:11','down'),(28,'1','2024-09-11 17:15:12','down'),(29,'1','2024-09-11 17:15:12','down'),(30,'1','2024-09-11 17:15:13','down'),(31,'1','2024-09-11 17:15:13','down'),(32,'1','2024-09-11 17:15:14','down'),(33,'1','2024-09-11 17:15:15','down'),(34,'1','2024-09-11 17:15:15','down'),(35,'1','2024-09-11 17:17:10','down'),(36,'1001','2024-09-11 17:18:18','down'),(37,'1002','2024-09-11 17:18:24','down');
/*!40000 ALTER TABLE `router_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-12 11:21:50
