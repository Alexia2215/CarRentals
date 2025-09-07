-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: shop_online_manager_db
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `commands`
--

DROP TABLE IF EXISTS `commands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commands` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `details` text NOT NULL,
  `payment_status` enum('CANCELLED','CONFIRMED','PENDING','REJECTED') DEFAULT NULL,
  `total` double NOT NULL,
  `customer_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2q4ikcys21qcquhxcxsjajm56` (`customer_id`),
  CONSTRAINT `FK2q4ikcys21qcquhxcxsjajm56` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commands`
--

LOCK TABLES `commands` WRITE;
/*!40000 ALTER TABLE `commands` DISABLE KEYS */;
INSERT INTO `commands` VALUES (1,'2025-08-24',_binary '\0','','PENDING',1000,1);
/*!40000 ALTER TABLE `commands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commands_products`
--

DROP TABLE IF EXISTS `commands_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commands_products` (
  `command_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  KEY `FKql5521art8gmvf5ylg7ca427s` (`product_id`),
  KEY `FK45hfrj12aky6jkdkwbim2c707` (`command_id`),
  CONSTRAINT `FK45hfrj12aky6jkdkwbim2c707` FOREIGN KEY (`command_id`) REFERENCES `commands` (`id`),
  CONSTRAINT `FKql5521art8gmvf5ylg7ca427s` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commands_products`
--

LOCK TABLES `commands_products` WRITE;
/*!40000 ALTER TABLE `commands_products` DISABLE KEYS */;
INSERT INTO `commands_products` VALUES (1,1);
/*!40000 ALTER TABLE `commands_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_url` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (8,'https://ireland.apollo.olxcdn.com/v1/files/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmbiI6ImQ5bGlibWRqNGVtZS1BVVRPVklUUk8iLCJ3IjpbeyJmbiI6InE3bXo1M2JpZnB6ay1BVVRPVklUUk8iLCJzIjoiMTYiLCJhIjoiMCIsInAiOiIxMCwtMTAifV19.bI0mPXedC5sXYvFHOILp00mEtUwCcmn6xTfSV_FYWR0/image;s=1920x0;q=80'),(9,'https://frankfurt.apollo.olxcdn.com/v1/files/7z6k6ajtxu2y-RO/image;s=1000x700'),(10,'https://ireland.apollo.olxcdn.com/v1/files/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmbiI6IjduYnBnZXdjZ3VxbzItQVVUT1ZJVFJPIiwidyI6W3siZm4iOiJxN216NTNiaWZwemstQVVUT1ZJVFJPIiwicyI6IjE2IiwiYSI6IjAiLCJwIjoiMTAsLTEwIn1dfQ.r6LXp8Qc95qE37ggbv05oGT-bS8RIU_uv9PsuFTpP9s/image;s=1920x0;q=80'),(12,'https://ireland.apollo.olxcdn.com/v1/files/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmbiI6InE1dnpneXBvM3ZxYTEtQVVUT1ZJVFJPIiwidyI6W3siZm4iOiJxN216NTNiaWZwemstQVVUT1ZJVFJPIiwicyI6IjE2IiwiYSI6IjAiLCJwIjoiMTAsLTEwIn1dfQ.nTe_so2n1Ov9chJH9nvB8z2Aszo20SGmoCZnOEEv-uk/image;s=1920x0;q=80'),(13,'https://ireland.apollo.olxcdn.com/v1/files/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmbiI6InV2OWZkaGthcDQxNzItQVVUT1ZJVFJPIiwidyI6W3siZm4iOiJxN216NTNiaWZwemstQVVUT1ZJVFJPIiwicyI6IjE2IiwiYSI6IjAiLCJwIjoiMTAsLTEwIn1dfQ.rotFF9LeMCZLwXwS5wWag7JMXNxwNh_CvRn_7ofgCCk/image;s=1920x0;q=80'),(14,'https://ireland.apollo.olxcdn.com/v1/files/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmbiI6ImtpOGo4aTdwODU2bjEtQVVUT1ZJVFJPIiwidyI6W3siZm4iOiJxN216NTNiaWZwemstQVVUT1ZJVFJPIiwicyI6IjE2IiwiYSI6IjAiLCJwIjoiMTAsLTEwIn1dfQ.-lhwNA5EhhBQamLmIO6afSzlO_E0KwaIxDv0E-M2JnM/image;s=1920x0;q=80');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `deleted` bit(1) NOT NULL,
  `description` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,_binary '\0','Year of manufacture: 2015, Horsepower: 190, Body Type: Coupe, Gearbox: Automatic ','Audi TT 2.0TDI ULTRA EDITION',1000),(2,_binary '\0','Year of manufacture: 2016, Horsepower: 160, Body Type: Coupe, Gearbox: Automatic ','Mazda mx-5 2.0',2000),(3,_binary '\0','Year of manufacture: 2023, Horsepower: 340, Body Type: Coupe, Gearbox: Automatic ','Toyota Supra 3.0',4000),(4,_binary '\0','Year of manufacture: 2021, Horsepower: 190, Body Type: Sedan, Gearbox: Manual','Bmw 3 series 2.0',3000),(5,_binary '\0','Year of manufacture: 2013, Horsepower: 150, Body Type: Hatchback, Gearbox: Manual ','Volkswagen Golf 2.0 BlueTDI Highline',100),(6,_binary '\0','Year of manufacture: 2021, Horsepower: 190, Body Type: Suv, Gearbox: Automatic ','Mercedes-Benz GLB 220 d 4Matic 8G-DCT AMG Line',5000);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_images`
--

DROP TABLE IF EXISTS `products_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_images` (
  `product_id` bigint NOT NULL,
  `images_id` int NOT NULL,
  UNIQUE KEY `UK68u3rm4tfmsixwa8nyfjg36xa` (`images_id`),
  KEY `FKgt41wyswrex82sy6iwdup2eak` (`product_id`),
  CONSTRAINT `FK1y02706a7p37urafhqnn3c0l9` FOREIGN KEY (`images_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FKgt41wyswrex82sy6iwdup2eak` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_images`
--

LOCK TABLES `products_images` WRITE;
/*!40000 ALTER TABLE `products_images` DISABLE KEYS */;
INSERT INTO `products_images` VALUES (1,9),(2,10),(3,12),(4,13),(5,8),(6,14);
/*!40000 ALTER TABLE `products_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` text NOT NULL,
  `deleted` bit(1) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `user_role` enum('ADMIN','CUSTOMER') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abc',_binary '\0','admin@admin.com','admin','$2a$10$lVfAyG50eyRW1B4I3yBueesMU1zZqhtbzQ0AUPnvfkXoxFIHnh/nu','0756320953','CUSTOMER'),(2,'Str Plopilor nr3',_binary '\0','alexia@yahoo.com','Alexia','$2a$10$HuayHFysK2aIKMYDHwNj4uo9HjJ0SORnx5tqtyOL6/fpa4N0y28GO','07896456232','CUSTOMER'),(3,'Str Alexandru Lapusneanu nr133C',_binary '\0','monica@yahoo.com','Monica','$2a$10$1Eg9ANGg6chD9Rr6spCQLOJo6Bid856EMbejO/5FDk.gpM.PhD6Hq','07567234523','CUSTOMER'),(4,'Str Cuza Voda nr8',_binary '\0','iuliana@yahoo.com','Iuliana','$2a$10$M1blxyuZ5RRvG7sYJVWvXOoNVuX7r1Rme9B6vF3KGvUJBmpyCTxGu','07654890123','CUSTOMER'),(5,'Str Argesului nr19',_binary '\0','cosmin@yahoo.com','Cosmin','$2a$10$lfGzma/nVV2oY4wRdef5XurayO.0VwjxvQUndPoHtHExpFjaGVdy2','0789678543','CUSTOMER'),(6,'Str Lupescu nr85C',_binary '\0','szilard@yahoo.com','Szilard','$2a$10$b7Etq19cDLjmQUKmZIRrbeMPV1vZ03XBFxwAa5CIU7LWfFlYe19zi','0732678985','CUSTOMER');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'shop_online_manager_db'
--

--
-- Dumping routines for database 'shop_online_manager_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-07 11:46:23
