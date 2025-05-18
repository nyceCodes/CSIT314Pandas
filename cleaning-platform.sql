-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cleaning_platform
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
-- Table structure for table `activity_logs`
--
UNLOCK TABLES;
DROP TABLE IF EXISTS `activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `action` text,
  `cleaner_id` int DEFAULT NULL,
  `home_owner_id` int DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `cleaningServiceName` varchar(100) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_logs`
--

LOCK TABLES `activity_logs` WRITE;
/*!40000 ALTER TABLE `activity_logs` DISABLE KEYS */;
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (4, 4, NULL, 
        'Pet-Friendly Cleaning', 'Jurong East', 'Created cleaning service "Pet-Friendly Cleaning" in Jurong East', '2025-03-04 21:29:24');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (12, 12, NULL, 
        'Upholstery Cleaning', 'Bukit Batok', 'Suspended cleaning service "Upholstery Cleaning" in Bukit Batok', '2025-01-26 18:19:24');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (7, 7, NULL, 
        'Refrigerator Cleaning', 'Yishun', 'Created cleaning service "Refrigerator Cleaning" in Yishun', '2025-03-22 09:03:59');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (7, 7, NULL, 
        'Refrigerator Cleaning', 'Yishun', 'Created cleaning service "Refrigerator Cleaning" in Yishun', '2025-02-09 00:59:11');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (4, 4, NULL, 
        'Pet-Friendly Cleaning', 'Jurong East', 'Created cleaning service "Pet-Friendly Cleaning" in Jurong East', '2025-01-09 23:38:14');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (3, 3, NULL, 
        'Move-Out Cleaning', 'Clementi', 'Suspended cleaning service "Move-Out Cleaning" in Clementi', '2025-03-03 20:41:58');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (4, 4, NULL, 
        'Pet-Friendly Cleaning', 'Jurong East', 'Created cleaning service "Pet-Friendly Cleaning" in Jurong East', '2024-12-26 23:47:33');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (7, 7, NULL, 
        'Refrigerator Cleaning', 'Yishun', 'Suspended cleaning service "Refrigerator Cleaning" in Yishun', '2025-01-18 18:06:07');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (7, 7, NULL, 
        'Refrigerator Cleaning', 'Yishun', 'Created cleaning service "Refrigerator Cleaning" in Yishun', '2025-02-03 15:39:15');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (1, 1, NULL, 
        'Deep Cleaning', 'Toa Payoh', 'Updated cleaning service "Deep Cleaning" in Toa Payoh', '2025-02-03 00:33:02');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (3, 3, NULL, 
        'Move-Out Cleaning', 'Clementi', 'Suspended cleaning service "Move-Out Cleaning" in Clementi', '2024-12-27 19:43:11');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (4, 4, NULL, 
        'Pet-Friendly Cleaning', 'Jurong East', 'Suspended cleaning service "Pet-Friendly Cleaning" in Jurong East', '2025-05-08 02:41:35');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (4, 4, NULL, 
        'Pet-Friendly Cleaning', 'Jurong East', 'Suspended cleaning service "Pet-Friendly Cleaning" in Jurong East', '2025-05-03 11:11:51');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (12, 12, NULL, 
        'Upholstery Cleaning', 'Bukit Batok', 'Created cleaning service "Upholstery Cleaning" in Bukit Batok', '2025-02-03 14:03:53');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (4, 4, NULL, 
        'Pet-Friendly Cleaning', 'Jurong East', 'Created cleaning service "Pet-Friendly Cleaning" in Jurong East', '2025-03-21 14:46:05');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (3, 3, NULL, 
        'Move-Out Cleaning', 'Clementi', 'Created cleaning service "Move-Out Cleaning" in Clementi', '2025-04-16 19:18:10');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (4, 4, NULL, 
        'Pet-Friendly Cleaning', 'Jurong East', 'Updated cleaning service "Pet-Friendly Cleaning" in Jurong East', '2025-04-22 02:41:53');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (7, 7, NULL, 
        'Refrigerator Cleaning', 'Yishun', 'Created cleaning service "Refrigerator Cleaning" in Yishun', '2025-02-22 11:26:23');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (7, 7, NULL, 
        'Refrigerator Cleaning', 'Yishun', 'Updated cleaning service "Refrigerator Cleaning" in Yishun', '2025-03-29 19:00:00');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (12, 12, NULL, 
        'Upholstery Cleaning', 'Bukit Batok', 'Updated cleaning service "Upholstery Cleaning" in Bukit Batok', '2025-03-20 07:36:44');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (1, 1, NULL, 
        'Deep Cleaning', 'Toa Payoh', 'Created cleaning service "Deep Cleaning" in Toa Payoh', '2025-02-25 06:38:30');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (12, 12, NULL, 
        'Upholstery Cleaning', 'Bukit Batok', 'Updated cleaning service "Upholstery Cleaning" in Bukit Batok', '2025-01-02 23:17:47');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (12, 12, NULL, 
        'Upholstery Cleaning', 'Bukit Batok', 'Created cleaning service "Upholstery Cleaning" in Bukit Batok', '2025-02-20 05:13:32');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (4, 4, NULL, 
        'Pet-Friendly Cleaning', 'Jurong East', 'Suspended cleaning service "Pet-Friendly Cleaning" in Jurong East', '2024-12-24 22:13:09');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (12, 12, NULL, 
        'Upholstery Cleaning', 'Bukit Batok', 'Created cleaning service "Upholstery Cleaning" in Bukit Batok', '2025-04-04 15:51:58');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (3, 3, NULL, 
        'Move-Out Cleaning', 'Clementi', 'Updated cleaning service "Move-Out Cleaning" in Clementi', '2025-05-15 01:55:58');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (7, 7, NULL, 
        'Refrigerator Cleaning', 'Yishun', 'Suspended cleaning service "Refrigerator Cleaning" in Yishun', '2025-03-14 05:25:32');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (1, 1, NULL, 
        'Deep Cleaning', 'Toa Payoh', 'Updated cleaning service "Deep Cleaning" in Toa Payoh', '2025-03-13 14:28:29');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (7, 7, NULL, 
        'Refrigerator Cleaning', 'Yishun', 'Updated cleaning service "Refrigerator Cleaning" in Yishun', '2025-02-19 21:58:47');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (7, 7, NULL, 
        'Refrigerator Cleaning', 'Yishun', 'Created cleaning service "Refrigerator Cleaning" in Yishun', '2025-03-31 01:13:11');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (7, 7, NULL, 
        'Refrigerator Cleaning', 'Yishun', 'Updated cleaning service "Refrigerator Cleaning" in Yishun', '2025-01-31 01:58:12');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (4, 4, NULL, 
        'Pet-Friendly Cleaning', 'Jurong East', 'Suspended cleaning service "Pet-Friendly Cleaning" in Jurong East', '2025-01-14 21:31:09');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (12, 12, NULL, 
        'Upholstery Cleaning', 'Bukit Batok', 'Created cleaning service "Upholstery Cleaning" in Bukit Batok', '2025-03-22 01:16:57');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (1, 1, NULL, 
        'Deep Cleaning', 'Toa Payoh', 'Created cleaning service "Deep Cleaning" in Toa Payoh', '2025-03-28 07:38:48');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (3, 3, NULL, 
        'Move-Out Cleaning', 'Clementi', 'Suspended cleaning service "Move-Out Cleaning" in Clementi', '2024-12-25 06:16:38');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (3, 3, NULL, 
        'Move-Out Cleaning', 'Clementi', 'Updated cleaning service "Move-Out Cleaning" in Clementi', '2025-03-01 19:03:50');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (4, 4, NULL, 
        'Pet-Friendly Cleaning', 'Jurong East', 'Created cleaning service "Pet-Friendly Cleaning" in Jurong East', '2025-03-07 10:18:40');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (4, 4, NULL, 
        'Pet-Friendly Cleaning', 'Jurong East', 'Created cleaning service "Pet-Friendly Cleaning" in Jurong East', '2025-01-03 01:04:38');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (1, 1, NULL, 
        'Deep Cleaning', 'Toa Payoh', 'Suspended cleaning service "Deep Cleaning" in Toa Payoh', '2025-05-09 13:36:14');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (12, 12, NULL, 
        'Upholstery Cleaning', 'Bukit Batok', 'Updated cleaning service "Upholstery Cleaning" in Bukit Batok', '2025-02-26 14:11:29');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (4, 4, NULL, 
        'Pet-Friendly Cleaning', 'Jurong East', 'Updated cleaning service "Pet-Friendly Cleaning" in Jurong East', '2025-02-08 08:34:07');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (1, 1, NULL, 
        'Deep Cleaning', 'Toa Payoh', 'Suspended cleaning service "Deep Cleaning" in Toa Payoh', '2025-02-20 13:21:50');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (12, 12, NULL, 
        'Upholstery Cleaning', 'Bukit Batok', 'Updated cleaning service "Upholstery Cleaning" in Bukit Batok', '2024-12-04 23:08:39');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (12, 12, NULL, 
        'Upholstery Cleaning', 'Bukit Batok', 'Created cleaning service "Upholstery Cleaning" in Bukit Batok', '2025-02-11 04:04:48');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (7, 7, NULL, 
        'Refrigerator Cleaning', 'Yishun', 'Created cleaning service "Refrigerator Cleaning" in Yishun', '2025-05-15 16:32:40');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (12, 12, NULL, 
        'Upholstery Cleaning', 'Bukit Batok', 'Updated cleaning service "Upholstery Cleaning" in Bukit Batok', '2025-01-17 23:07:18');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (12, 12, NULL, 
        'Upholstery Cleaning', 'Bukit Batok', 'Suspended cleaning service "Upholstery Cleaning" in Bukit Batok', '2025-03-04 15:42:47');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (4, 4, NULL, 
        'Pet-Friendly Cleaning', 'Jurong East', 'Created cleaning service "Pet-Friendly Cleaning" in Jurong East', '2025-03-30 16:11:51');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (1, 1, NULL, 
        'Deep Cleaning', 'Toa Payoh', 'Created cleaning service "Deep Cleaning" in Toa Payoh', '2025-04-25 07:08:23');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (12, 12, NULL, 
        'Upholstery Cleaning', 'Bukit Batok', 'Created cleaning service "Upholstery Cleaning" in Bukit Batok', '2025-01-07 02:39:42');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (46, 12, 46, 
        'Upholstery Cleaning', 'Bukit Batok', 'Booked "Upholstery Cleaning" with cleaner ID 12 at Bukit Batok', '2025-02-13 20:43:48');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (43, 4, 43, 
        'Pet-Friendly Cleaning', 'Jurong East', 'Booked "Pet-Friendly Cleaning" with cleaner ID 4 at Jurong East', '2024-12-23 03:02:51');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (50, 3, 50, 
        'Move-Out Cleaning', 'Clementi', 'Booked "Move-Out Cleaning" with cleaner ID 3 at Clementi', '2024-12-03 00:31:08');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (50, 3, 50, 
        'Move-Out Cleaning', 'Clementi', 'Booked "Move-Out Cleaning" with cleaner ID 3 at Clementi', '2025-03-05 13:42:35');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (50, 7, 50, 
        'Refrigerator Cleaning', 'Yishun', 'Booked "Refrigerator Cleaning" with cleaner ID 7 at Yishun', '2025-01-19 11:43:14');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (44, 4, 44, 
        'Pet-Friendly Cleaning', 'Jurong East', 'Booked "Pet-Friendly Cleaning" with cleaner ID 4 at Jurong East', '2024-12-26 17:32:02');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (50, 3, 50, 
        'Move-Out Cleaning', 'Clementi', 'Booked "Move-Out Cleaning" with cleaner ID 3 at Clementi', '2025-03-02 03:08:08');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (41, 1, 41, 
        'Deep Cleaning', 'Toa Payoh', 'Booked "Deep Cleaning" with cleaner ID 1 at Toa Payoh', '2025-01-06 06:04:39');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (50, 3, 50, 
        'Move-Out Cleaning', 'Clementi', 'Booked "Move-Out Cleaning" with cleaner ID 3 at Clementi', '2024-12-08 09:41:40');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (43, 7, 43, 
        'Refrigerator Cleaning', 'Yishun', 'Booked "Refrigerator Cleaning" with cleaner ID 7 at Yishun', '2025-02-05 08:52:53');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (46, 1, 46, 
        'Deep Cleaning', 'Toa Payoh', 'Booked "Deep Cleaning" with cleaner ID 1 at Toa Payoh', '2024-12-12 05:12:40');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (43, 1, 43, 
        'Deep Cleaning', 'Toa Payoh', 'Booked "Deep Cleaning" with cleaner ID 1 at Toa Payoh', '2025-02-15 20:22:24');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (43, 4, 43, 
        'Pet-Friendly Cleaning', 'Jurong East', 'Booked "Pet-Friendly Cleaning" with cleaner ID 4 at Jurong East', '2025-03-05 15:20:34');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (41, 7, 41, 
        'Refrigerator Cleaning', 'Yishun', 'Booked "Refrigerator Cleaning" with cleaner ID 7 at Yishun', '2025-01-16 01:55:35');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (50, 1, 50, 
        'Deep Cleaning', 'Toa Payoh', 'Booked "Deep Cleaning" with cleaner ID 1 at Toa Payoh', '2024-12-04 11:39:20');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (44, 12, 44, 
        'Upholstery Cleaning', 'Bukit Batok', 'Booked "Upholstery Cleaning" with cleaner ID 12 at Bukit Batok', '2025-01-15 05:16:31');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (43, 7, 43, 
        'Refrigerator Cleaning', 'Yishun', 'Booked "Refrigerator Cleaning" with cleaner ID 7 at Yishun', '2025-04-06 01:44:19');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (50, 1, 50, 
        'Deep Cleaning', 'Toa Payoh', 'Booked "Deep Cleaning" with cleaner ID 1 at Toa Payoh', '2025-05-05 15:17:19');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (41, 12, 41, 
        'Upholstery Cleaning', 'Bukit Batok', 'Booked "Upholstery Cleaning" with cleaner ID 12 at Bukit Batok', '2025-04-13 18:02:45');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (44, 4, 44, 
        'Pet-Friendly Cleaning', 'Jurong East', 'Booked "Pet-Friendly Cleaning" with cleaner ID 4 at Jurong East', '2025-05-04 07:04:26');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (44, 3, 44, 
        'Move-Out Cleaning', 'Clementi', 'Booked "Move-Out Cleaning" with cleaner ID 3 at Clementi', '2025-03-11 04:26:45');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (46, 3, 46, 
        'Move-Out Cleaning', 'Clementi', 'Booked "Move-Out Cleaning" with cleaner ID 3 at Clementi', '2025-01-18 10:48:24');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (44, 3, 44, 
        'Move-Out Cleaning', 'Clementi', 'Booked "Move-Out Cleaning" with cleaner ID 3 at Clementi', '2024-12-08 08:35:17');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (41, 3, 41, 
        'Move-Out Cleaning', 'Clementi', 'Booked "Move-Out Cleaning" with cleaner ID 3 at Clementi', '2025-02-16 02:41:57');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (46, 1, 46, 
        'Deep Cleaning', 'Toa Payoh', 'Booked "Deep Cleaning" with cleaner ID 1 at Toa Payoh', '2025-03-26 20:27:23');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (46, 1, 46, 
        'Deep Cleaning', 'Toa Payoh', 'Booked "Deep Cleaning" with cleaner ID 1 at Toa Payoh', '2025-01-13 16:16:38');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (44, 3, 44, 
        'Move-Out Cleaning', 'Clementi', 'Booked "Move-Out Cleaning" with cleaner ID 3 at Clementi', '2024-12-13 23:25:36');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (43, 12, 43, 
        'Upholstery Cleaning', 'Bukit Batok', 'Booked "Upholstery Cleaning" with cleaner ID 12 at Bukit Batok', '2025-05-01 18:05:31');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (50, 1, 50, 
        'Deep Cleaning', 'Toa Payoh', 'Booked "Deep Cleaning" with cleaner ID 1 at Toa Payoh', '2024-12-19 10:44:09');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (43, 4, 43, 
        'Pet-Friendly Cleaning', 'Jurong East', 'Booked "Pet-Friendly Cleaning" with cleaner ID 4 at Jurong East', '2025-03-20 01:50:03');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (50, 4, 50, 
        'Pet-Friendly Cleaning', 'Jurong East', 'Booked "Pet-Friendly Cleaning" with cleaner ID 4 at Jurong East', '2025-01-06 22:04:50');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (46, 1, 46, 
        'Deep Cleaning', 'Toa Payoh', 'Booked "Deep Cleaning" with cleaner ID 1 at Toa Payoh', '2024-12-12 10:18:57');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (50, 12, 50, 
        'Upholstery Cleaning', 'Bukit Batok', 'Booked "Upholstery Cleaning" with cleaner ID 12 at Bukit Batok', '2025-02-15 20:47:28');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (41, 4, 41, 
        'Pet-Friendly Cleaning', 'Jurong East', 'Booked "Pet-Friendly Cleaning" with cleaner ID 4 at Jurong East', '2025-05-11 20:11:17');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (46, 1, 46, 
        'Deep Cleaning', 'Toa Payoh', 'Booked "Deep Cleaning" with cleaner ID 1 at Toa Payoh', '2024-12-20 03:44:35');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (44, 7, 44, 
        'Refrigerator Cleaning', 'Yishun', 'Booked "Refrigerator Cleaning" with cleaner ID 7 at Yishun', '2025-01-08 19:06:15');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (41, 4, 41, 
        'Pet-Friendly Cleaning', 'Jurong East', 'Booked "Pet-Friendly Cleaning" with cleaner ID 4 at Jurong East', '2025-02-26 13:11:56');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (43, 7, 43, 
        'Refrigerator Cleaning', 'Yishun', 'Booked "Refrigerator Cleaning" with cleaner ID 7 at Yishun', '2025-02-01 12:05:38');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (44, 1, 44, 
        'Deep Cleaning', 'Toa Payoh', 'Booked "Deep Cleaning" with cleaner ID 1 at Toa Payoh', '2025-01-10 11:08:45');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (43, 7, 43, 
        'Refrigerator Cleaning', 'Yishun', 'Booked "Refrigerator Cleaning" with cleaner ID 7 at Yishun', '2025-01-31 09:25:20');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (43, 12, 43, 
        'Upholstery Cleaning', 'Bukit Batok', 'Booked "Upholstery Cleaning" with cleaner ID 12 at Bukit Batok', '2025-02-14 20:50:52');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (50, 3, 50, 
        'Move-Out Cleaning', 'Clementi', 'Booked "Move-Out Cleaning" with cleaner ID 3 at Clementi', '2025-02-14 01:04:39');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (41, 12, 41, 
        'Upholstery Cleaning', 'Bukit Batok', 'Booked "Upholstery Cleaning" with cleaner ID 12 at Bukit Batok', '2025-05-11 06:52:21');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (46, 1, 46, 
        'Deep Cleaning', 'Toa Payoh', 'Booked "Deep Cleaning" with cleaner ID 1 at Toa Payoh', '2025-04-02 03:00:53');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (46, 3, 46, 
        'Move-Out Cleaning', 'Clementi', 'Booked "Move-Out Cleaning" with cleaner ID 3 at Clementi', '2024-12-22 23:06:10');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (46, 12, 46, 
        'Upholstery Cleaning', 'Bukit Batok', 'Booked "Upholstery Cleaning" with cleaner ID 12 at Bukit Batok', '2025-05-07 09:38:09');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (46, 1, 46, 
        'Deep Cleaning', 'Toa Payoh', 'Booked "Deep Cleaning" with cleaner ID 1 at Toa Payoh', '2024-12-05 21:08:09');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (44, 4, 44, 
        'Pet-Friendly Cleaning', 'Jurong East', 'Booked "Pet-Friendly Cleaning" with cleaner ID 4 at Jurong East', '2025-05-04 14:21:18');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (44, 12, 44, 
        'Upholstery Cleaning', 'Bukit Batok', 'Booked "Upholstery Cleaning" with cleaner ID 12 at Bukit Batok', '2025-05-05 21:06:49');
INSERT INTO activity_logs (user_id, cleaner_id, home_owner_id, cleaningServiceName, location, action, timestamp)
VALUES (50, 7, 50, 
        'Refrigerator Cleaning', 'Yishun', 'Booked "Refrigerator Cleaning" with cleaner ID 7 at Yishun', '2025-05-04 15:32:39');
/*!40000 ALTER TABLE `activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cleaningservices`
--

DROP TABLE IF EXISTS `cleaningservices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cleaningservices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cleaner_id` int DEFAULT NULL,
  `cleaningServiceName` varchar(100) DEFAULT NULL,
  `cleaningServiceDescription` text,
  `cleaningServicePrice` decimal(10,2) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `date_available` date DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cleaner_id` (`cleaner_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `cleaningservices_ibfk_1` FOREIGN KEY (`cleaner_id`) REFERENCES `user_accounts` (`id`),
  CONSTRAINT `cleaningservices_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `service_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cleaningservices`
--

LOCK TABLES `cleaningservices` WRITE;
/*!40000 ALTER TABLE `cleaningservices` DISABLE KEYS */;
INSERT INTO `cleaningservices` VALUES (1,1,'Deep Cleaning','Full home deep clean including appliances',120.00,1,'2024-06-15','Toa Payoh'),(2,1,'Carpet Cleaning','Steam cleaning for carpets',90.00,5,'2024-06-16','Toa Payoh'),(3,2,'Regular Cleaning','Weekly maintenance cleaning',80.00,2,'2024-06-17','Bedok'),(4,2,'Office Cleaning','Commercial space cleaning',200.00,4,'2024-06-18','Bedok'),(5,3,'Move-Out Cleaning','Rental property deep clean',150.00,3,'2024-06-19','Clementi'),(6,1,'Window Cleaning','Interior and exterior window washing',65.00,1,'2024-07-01','Toa Payoh'),(7,1,'Post-Construction Cleanup','Deep cleaning after renovations',180.00,1,'2024-07-03','Toa Payoh'),(8,2,'Eco-Friendly Cleaning','Green products only',90.00,2,'2024-07-02','Bedok'),(9,2,'Airbnb Turnover','Quick cleanup between guests',70.00,2,'2024-07-05','Bedok'),(10,3,'Furniture Cleaning','Upholstery and fabric care',110.00,3,'2024-07-04','Clementi'),(11,3,'Garage Cleaning','Declutter and deep clean',130.00,3,'2024-07-06','Clementi'),(12,4,'Pet-Friendly Cleaning','Specialized for homes with pets',95.00,4,'2024-07-07','Jurong East'),(13,4,'Senior Citizen Discount','Basic cleaning for seniors',60.00,2,'2024-07-08','Jurong East'),(14,4,'Holiday Prep Cleaning','Pre-festival deep clean',150.00,1,'2024-07-09','Jurong East'),(15,5,'Basement Cleaning','Dust and mold removal',140.00,5,'2024-07-10','Hougang'),(16,5,'Laundry Service','Wash, dry, and fold',50.00,2,'2024-07-11','Hougang'),(17,5,'Organization Help','Decluttering service',75.00,3,'2024-07-12','Hougang'),(18,6,'Greenhouse Cleaning','Plant-safe cleaning',85.00,4,'2024-07-13','Tampines'),(19,6,'Home Office Special','Workspace deep clean',70.00,2,'2024-07-14','Tampines'),(20,7,'Refrigerator Cleaning','Full appliance sanitization',80.00,1,'2024-07-15','Yishun'),(21,7,'Moving Day Cleaning','Last-minute spot cleaning',90.00,3,'2024-07-16','Yishun'),(22,8,'Allergy-Friendly Cleaning','Hypoallergenic products for sensitive households',110.00,2,'2024-07-17','Woodlands'),(23,9,'Luxury Bathroom Scrub','Premium marble/granite deep cleaning',125.00,1,'2024-07-18','Punggol'),(24,10,'Closet Organization','Custom closet cleaning and organization',85.00,3,'2024-07-19','Pasir Ris'),(25,11,'Gym Equipment Sanitization','Specialized fitness equipment cleaning',95.00,4,'2024-07-20','Sengkang'),(26,12,'Art Studio Cleaning','Gentle cleaning for creative spaces',105.00,5,'2024-07-21','Bukit Batok'),(27,13,'Fireplace Cleaning','Soot and ash removal',115.00,1,'2024-07-22','Kallang'),(28,14,'Baby Nursery Sanitization','Child-safe disinfecting',100.00,2,'2024-07-23','Ang Mo Kio'),(29,15,'Wine Cellar Cleaning','Temperature-controlled space maintenance',135.00,3,'2024-07-24','Ang Mo Kio'),(30,16,'Home Theater Cleaning','Electronics-friendly dusting',90.00,4,'2024-07-25','Bishan'),(31,17,'Antique Furniture Care','Delicate wood polishing',120.00,5,'2024-07-26','Bishan'),(32,18,'Yoga Studio Cleaning','Mat sanitization and space cleansing',80.00,1,'2024-07-27','Bishan'),(33,19,'Garage Organization','Tool sorting and floor sweeping',75.00,2,'2024-07-28','Bedok'),(34,20,'Book Collection Dusting','Gentle cleaning for libraries',95.00,3,'2024-07-29','Pasir Ris'), (35, 12, 'Upholstery Cleaning', 'Fabric-safe cleaning for your couches and chairs', 110.00, 6, '2024-07-30', 'Bukit Batok'),
(36, 7, 'Aircon Servicing', 'Routine filter check and coil wash', 90.00, 7, '2024-08-01', 'Yishun'),
(37, 16, 'Curtain Steaming', 'On-site steaming and wrinkle removal', 85.00, 8, '2024-08-02', 'Bishan'),
(38, 10, 'Child-Safe Cleaning', 'Certified non-toxic cleaning products used', 100.00, 9, '2024-08-03', 'Pasir Ris'),
(39, 18, 'Bathroom Sanitization', 'High-touch disinfection for all bathroom surfaces', 95.00, 10, '2024-08-04', 'Bishan'),
(40, 5, 'Floor Polishing', 'Buffing and polishing tile/marble/wood', 130.00, 11, '2024-08-05', 'Hougang'),
(41, 8, 'Balcony Washing', 'Water-safe balcony jet spray & wipe down', 80.00, 12, '2024-08-06', 'Woodlands'),
(42, 3, 'Interior Glass Cleaning', 'For mirrors, doors, and partitions', 75.00, 13, '2024-08-07', 'Clementi'),
(43, 15, 'Pantry Disinfection', 'Commercial/Residential kitchen area cleanup', 120.00, 14, '2024-08-08', 'Ang Mo Kio'),
(44, 1, 'Gutter Cleaning', 'Clearing leaves and flushing out clogs', 140.00, 15, '2024-08-09', 'Toa Payoh');
/*!40000 ALTER TABLE `cleaningservices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cleaningservices_backup`
--

DROP TABLE IF EXISTS `cleaningservices_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cleaningservices_backup` (
  `id` int NOT NULL DEFAULT '0',
  `cleaner_id` int DEFAULT NULL,
  `cleaningServiceName` varchar(100) DEFAULT NULL,
  `cleaningServiceDescription` text,
  `cleaningServicePrice` decimal(10,2) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `date_available` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cleaningservices_backup`
--

LOCK TABLES `cleaningservices_backup` WRITE;
/*!40000 ALTER TABLE `cleaningservices_backup` DISABLE KEYS */;
INSERT INTO `cleaningservices_backup` VALUES (21,1,'Deep Cleaning','Full home deep clean including appliances',120.00,1,'2023-06-15'),(22,1,'Carpet Cleaning','Steam cleaning for carpets and rugs',90.00,5,'2023-06-16'),(23,2,'Regular Cleaning','Weekly/Monthly maintenance cleaning',80.00,2,'2023-06-17'),(24,2,'Office Cleaning','Commercial space cleaning (per hour)',50.00,4,'2023-06-18'),(25,3,'Move-Out Cleaning','Post-rental cleaning for security deposits',150.00,3,'2023-06-19'),(26,3,'Deep Cleaning','Intensive cleaning for entire home',130.00,1,'2023-06-20'),(27,4,'Regular Cleaning','Basic cleaning for apartments',70.00,2,'2023-06-21'),(28,4,'Carpet Cleaning','Eco-friendly carpet treatment',95.00,5,'2023-06-22'),(29,1,'Deep Cleaning','Full home deep clean',120.00,1,'2023-06-15'),(30,2,'Regular Cleaning','Weekly maintenance',80.00,2,'2023-06-16');
/*!40000 ALTER TABLE `cleaningservices_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `confirmed_matches`
--

DROP TABLE IF EXISTS `confirmed_matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `confirmed_matches` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cleaner_id` int DEFAULT NULL,
  `home_owner_id` int DEFAULT NULL,
  `service_name` varchar(100) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `status` enum('confirmed','completed','cancelled') DEFAULT 'confirmed',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confirmed_matches`
--

LOCK TABLES `confirmed_matches` WRITE;
/*!40000 ALTER TABLE `confirmed_matches` DISABLE KEYS */;
INSERT INTO `confirmed_matches` VALUES
(1,1,21,'Deep Cleaning','2025-01-01 09:00:00','123 Main St','completed'),
(2,2,21,'Regular Cleaning','2025-01-01 11:00:00','456 Oak Ave','confirmed'),
(3,8,41,'Carpet Cleaning','2025-01-01 13:00:00','Bukit Batok','completed'),
(4,15,41,'Airbnb Turnover','2025-01-01 15:00:00','Bukit Batok','confirmed'),
(5,6,41,'Child-Safe Cleaning','2025-01-01 17:00:00','Yishun','confirmed'),
(6,6,42,'Holiday Prep Cleaning','2025-01-01 19:00:00','Jurong East','cancelled'),
(7,36,42,'Senior Citizen Discount','2025-01-01 21:00:00','Bukit Batok','cancelled'),
(8,27,42,'Basement Cleaning','2025-01-01 23:00:00','Woodlands','cancelled'),
(9,1,43,'Garage Cleaning','2025-01-02 01:00:00','Bukit Batok','completed'),
(10,18,43,'Furniture Cleaning','2025-01-02 03:00:00','Jurong East','completed'),
(11,6,43,'Gym Equipment Sanitization','2025-01-02 05:00:00','Bedok','completed'),
(12,39,44,'Organization Help','2025-01-02 07:00:00','Kallang','confirmed'),
(13,35,44,'Eco-Friendly Cleaning','2025-01-02 09:00:00','Bishan','completed'),
(14,36,44,'Home Office Special','2025-01-02 11:00:00','Ang Mo Kio','cancelled'),
(15,37,45,'Senior Citizen Discount','2025-01-02 13:00:00','Bukit Batok','confirmed'),
(16,15,45,'Home Office Special','2025-01-02 15:00:00','Bedok','confirmed'),
(17,25,45,'Greenhouse Cleaning','2025-01-02 17:00:00','Woodlands','cancelled'),
(18,11,46,'Closet Organization','2025-01-02 19:00:00','Tampines','confirmed'),
(19,5,46,'Bathroom Sanitization','2025-01-02 21:00:00','Sengkang','confirmed'),
(20,16,46,'Garage Cleaning','2025-01-02 23:00:00','Woodlands','completed'),
(21,36,47,'Basement Cleaning','2025-01-03 01:00:00','Sengkang','completed'),
(22,15,47,'Regular Cleaning','2025-01-03 03:00:00','Kallang','completed'),
(23,18,47,'Move-Out Cleaning','2025-01-03 05:00:00','Jurong East','cancelled'),
(24,14,48,'Interior Glass Cleaning','2025-01-03 07:00:00','Woodlands','completed'),
(25,10,48,'Organization Help','2025-01-03 09:00:00','Clementi','confirmed'),
(26,17,48,'Child-Safe Cleaning','2025-01-03 11:00:00','Yishun','cancelled'),
(27,24,49,'Basement Cleaning','2025-01-03 13:00:00','Clementi','cancelled'),
(28,6,49,'Office Cleaning','2025-01-03 15:00:00','Ang Mo Kio','confirmed'),
(29,11,49,'Gutter Cleaning','2025-01-03 17:00:00','Yishun','cancelled'),
(30,25,50,'Gym Equipment Sanitization','2025-01-03 19:00:00','Pasir Ris','completed'),
(31,17,50,'Aircon Servicing','2025-01-03 21:00:00','Ang Mo Kio','confirmed'),
(32,35,50,'Greenhouse Cleaning','2025-01-03 23:00:00','Kallang','cancelled'),
(33,8,51,'Home Office Special','2025-01-04 01:00:00','Yishun','confirmed'),
(34,1,51,'Organization Help','2025-01-04 03:00:00','Punggol','confirmed'),
(35,7,51,'Balcony Washing','2025-01-04 05:00:00','Hougang','cancelled'),
(36,39,52,'Senior Citizen Discount','2025-01-04 07:00:00','Clementi','completed'),
(37,35,52,'Book Collection Dusting','2025-01-04 09:00:00','Bishan','confirmed'),
(38,32,52,'Carpet Cleaning','2025-01-04 11:00:00','Bedok','completed'),
(39,16,53,'Office Cleaning','2025-01-04 13:00:00','Jurong East','cancelled'),
(40,6,53,'Yoga Studio Cleaning','2025-01-04 15:00:00','Ang Mo Kio','confirmed'),
(41,9,53,'Airbnb Turnover','2025-01-04 17:00:00','Sengkang','completed'),
(42,11,54,'Organization Help','2025-01-04 19:00:00','Punggol','cancelled'),
(43,14,54,'Upholstery Cleaning','2025-01-04 21:00:00','Kallang','cancelled'),
(44,20,54,'Art Studio Cleaning','2025-01-04 23:00:00','Sengkang','cancelled'),
(45,29,55,'Book Collection Dusting','2025-01-05 01:00:00','Woodlands','confirmed'),
(46,15,55,'Move-Out Cleaning','2025-01-05 03:00:00','Tampines','confirmed'),
(47,15,55,'Child-Safe Cleaning','2025-01-05 05:00:00','Jurong East','confirmed'),
(48,4,56,'Basement Cleaning','2025-01-05 07:00:00','Bedok','confirmed'),
(49,5,56,'Garage Organization','2025-01-05 09:00:00','Jurong East','completed'),
(50,14,56,'Upholstery Cleaning','2025-01-05 11:00:00','Clementi','cancelled'),
(51,16,57,'Antique Furniture Care','2025-01-05 13:00:00','Kallang','completed'),
(52,7,57,'Post-Construction Cleanup','2025-01-05 15:00:00','Sengkang','completed'),
(53,28,57,'Fireplace Cleaning','2025-01-05 17:00:00','Woodlands','cancelled'),
(54,7,58,'Office Cleaning','2025-01-05 19:00:00','Yishun','cancelled'),
(55,7,58,'Laundry Service','2025-01-05 21:00:00','Jurong East','confirmed'),
(56,29,58,'Airbnb Turnover','2025-01-05 23:00:00','Yishun','confirmed'),
(57,30,59,'Laundry Service','2025-01-06 01:00:00','Ang Mo Kio','confirmed'),
(58,36,59,'Post-Construction Cleanup','2025-01-06 03:00:00','Toa Payoh','cancelled'),
(59,1,59,'Window Cleaning','2025-01-06 05:00:00','Bishan','confirmed'),
(60,27,60,'Yoga Studio Cleaning','2025-01-06 07:00:00','Woodlands','confirmed'),
(61,4,60,'Garage Cleaning','2025-01-06 09:00:00','Yishun','confirmed'),
(62,17,60,'Home Theater Cleaning','2025-01-06 11:00:00','Hougang','completed'),
(63,10,61,'Senior Citizen Discount','2025-01-06 13:00:00','Hougang','confirmed'),
(64,38,61,'Upholstery Cleaning','2025-01-06 15:00:00','Toa Payoh','cancelled'),
(65,4,61,'Office Cleaning','2025-01-06 17:00:00','Pasir Ris','completed'),
(66,34,62,'Garage Cleaning','2025-01-06 19:00:00','Toa Payoh','cancelled'),
(67,12,62,'Move-Out Cleaning','2025-01-06 21:00:00','Pasir Ris','confirmed'),
(68,26,62,'Eco-Friendly Cleaning','2025-01-06 23:00:00','Bishan','cancelled'),
(69,38,63,'Bathroom Sanitization','2025-01-07 01:00:00','Toa Payoh','cancelled'),
(70,27,63,'Pantry Disinfection','2025-01-07 03:00:00','Pasir Ris','cancelled'),
(71,21,63,'Organization Help','2025-01-07 05:00:00','Jurong East','cancelled'),
(72,16,64,'Organization Help','2025-01-07 07:00:00','Yishun','confirmed'),
(73,30,64,'Moving Day Cleaning','2025-01-07 09:00:00','Bishan','confirmed'),
(74,30,64,'Floor Polishing','2025-01-07 11:00:00','Pasir Ris','confirmed'),
(75,35,65,'Holiday Prep Cleaning','2025-01-07 13:00:00','Punggol','completed'),
(76,23,65,'Move-Out Cleaning','2025-01-07 15:00:00','Bishan','confirmed'),
(77,19,65,'Garage Cleaning','2025-01-07 17:00:00','Woodlands','cancelled'),
(78,40,66,'Interior Glass Cleaning','2025-01-07 19:00:00','Punggol','confirmed'),
(79,20,66,'Pantry Disinfection','2025-01-07 21:00:00','Bedok','confirmed'),
(80,8,66,'Post-Construction Cleanup','2025-01-07 23:00:00','Bukit Batok','cancelled'),
(81,18,67,'Home Office Special','2025-01-08 01:00:00','Pasir Ris','confirmed'),
(82,14,67,'Gutter Cleaning','2025-01-08 03:00:00','Sengkang','completed'),
(83,32,67,'Organization Help','2025-01-08 05:00:00','Bishan','confirmed'),
(84,28,68,'Greenhouse Cleaning','2025-01-08 07:00:00','Toa Payoh','confirmed'),
(85,9,68,'Balcony Washing','2025-01-08 09:00:00','Hougang','confirmed'),
(86,36,68,'Baby Nursery Sanitization','2025-01-08 11:00:00','Punggol','confirmed'),
(87,5,69,'Furniture Cleaning','2025-01-08 13:00:00','Punggol','confirmed'),
(88,38,69,'Aircon Servicing','2025-01-08 15:00:00','Clementi','completed'),
(89,3,69,'Refrigerator Cleaning','2025-01-08 17:00:00','Tampines','confirmed'),
(90,14,70,'Gutter Cleaning','2025-01-08 19:00:00','Jurong East','cancelled'),
(91,23,70,'Aircon Servicing','2025-01-08 21:00:00','Bishan','completed'),
(92,16,70,'Garage Cleaning','2025-01-08 23:00:00','Kallang','confirmed'),
(93,2,71,'Pet-Friendly Cleaning','2025-01-09 01:00:00','Bukit Batok','completed'),
(94,16,71,'Greenhouse Cleaning','2025-01-09 03:00:00','Clementi','cancelled'),
(95,25,71,'Regular Cleaning','2025-01-09 05:00:00','Ang Mo Kio','completed'),
(96,13,72,'Home Theater Cleaning','2025-01-09 07:00:00','Tampines','completed'),
(97,15,72,'Carpet Cleaning','2025-01-09 09:00:00','Sengkang','confirmed'),
(98,22,72,'Greenhouse Cleaning','2025-01-09 11:00:00','Ang Mo Kio','confirmed'),
(99,23,73,'Interior Glass Cleaning','2025-01-09 13:00:00','Punggol','completed'),
(100,22,73,'Carpet Cleaning','2025-01-09 15:00:00','Bedok','completed'),
(101,38,73,'Organization Help','2025-01-09 17:00:00','Toa Payoh','confirmed'),
(102,23,74,'Moving Day Cleaning','2025-01-09 19:00:00','Yishun','cancelled'),
(103,8,74,'Gym Equipment Sanitization','2025-01-09 21:00:00','Bishan','cancelled'),
(104,17,74,'Regular Cleaning','2025-01-09 23:00:00','Bukit Batok','completed'),
(105,34,75,'Upholstery Cleaning','2025-01-10 01:00:00','Sengkang','cancelled'),
(106,24,75,'Baby Nursery Sanitization','2025-01-10 03:00:00','Bedok','cancelled'),
(107,40,75,'Moving Day Cleaning','2025-01-10 05:00:00','Sengkang','confirmed'),
(108,33,76,'Refrigerator Cleaning','2025-01-10 07:00:00','Sengkang','completed'),
(109,26,76,'Home Office Special','2025-01-10 09:00:00','Punggol','confirmed'),
(110,27,76,'Pantry Disinfection','2025-01-10 11:00:00','Yishun','cancelled'),
(111,40,77,'Curtain Steaming','2025-01-10 13:00:00','Hougang','completed'),
(112,1,77,'Refrigerator Cleaning','2025-01-10 15:00:00','Hougang','confirmed'),
(113,38,77,'Bathroom Sanitization','2025-01-10 17:00:00','Sengkang','completed'),
(114,29,78,'Wine Cellar Cleaning','2025-01-10 19:00:00','Sengkang','confirmed'),
(115,31,78,'Garage Cleaning','2025-01-10 21:00:00','Sengkang','confirmed'),
(116,33,78,'Pantry Disinfection','2025-01-10 23:00:00','Sengkang','cancelled'),
(117,6,79,'Laundry Service','2025-01-11 01:00:00','Sengkang','completed'),
(118,13,79,'Furniture Cleaning','2025-01-11 03:00:00','Toa Payoh','confirmed'),
(119,31,79,'Floor Polishing','2025-01-11 05:00:00','Ang Mo Kio','confirmed'),
(120,27,80,'Balcony Washing','2025-01-11 07:00:00','Pasir Ris','confirmed'),
(121,32,80,'Art Studio Cleaning','2025-01-11 09:00:00','Jurong East','confirmed'),
(122,7,80,'Baby Nursery Sanitization','2025-01-11 11:00:00','Jurong East','confirmed'),
(123,1,81,'Gutter Cleaning','2025-01-11 13:00:00','Bukit Batok','confirmed'),
(124,1,90,'Office Cleaning','2025-01-11 15:00:00','Ang Mo Kio','confirmed'),
(125,1,85,'Greenhouse Cleaning','2025-01-11 17:00:00','Yishun','confirmed'),
(126,1,81,'Senior Citizen Discount','2025-01-11 19:00:00','Punggol','confirmed'),
(127,2,93,'Balcony Washing','2025-01-11 21:00:00','Tampines','confirmed'),
(128,2,92,'Post-Construction Cleanup','2025-01-11 23:00:00','Punggol','confirmed'),
(129,2,100,'Senior Citizen Discount','2025-01-12 01:00:00','Pasir Ris','confirmed'),
(130,2,86,'Child-Safe Cleaning','2025-01-12 03:00:00','Bishan','confirmed'),
(131,3,95,'Art Studio Cleaning','2025-01-12 05:00:00','Tampines','confirmed'),
(132,3,94,'Gutter Cleaning','2025-01-12 07:00:00','Bedok','confirmed'),
(133,3,84,'Book Collection Dusting','2025-01-12 09:00:00','Woodlands','confirmed'),
(134,3,99,'Floor Polishing','2025-01-12 11:00:00','Sengkang','confirmed'),
(135,4,82,'Bathroom Sanitization','2025-01-12 13:00:00','Woodlands','confirmed'),
(136,4,81,'Closet Organization','2025-01-12 15:00:00','Kallang','confirmed'),
(137,4,89,'Antique Furniture Care','2025-01-12 17:00:00','Ang Mo Kio','confirmed'),
(138,4,96,'Art Studio Cleaning','2025-01-12 19:00:00','Jurong East','confirmed'),
(139,5,98,'Bathroom Sanitization','2025-01-12 21:00:00','Sengkang','confirmed'),
(140,5,92,'Holiday Prep Cleaning','2025-01-12 23:00:00','Woodlands','confirmed'),
(141,5,94,'Regular Cleaning','2025-01-13 01:00:00','Tampines','confirmed'),
(142,5,91,'Art Studio Cleaning','2025-01-13 03:00:00','Clementi','confirmed'),
(143,6,94,'Antique Furniture Care','2025-01-13 05:00:00','Yishun','confirmed'),
(144,6,91,'Organization Help','2025-01-13 07:00:00','Hougang','confirmed'),
(145,6,92,'Senior Citizen Discount','2025-01-13 09:00:00','Woodlands','confirmed'),
(146,6,88,'Art Studio Cleaning','2025-01-13 11:00:00','Clementi','confirmed'),
(147,7,83,'Greenhouse Cleaning','2025-01-13 13:00:00','Toa Payoh','confirmed'),
(148,7,88,'Office Cleaning','2025-01-13 15:00:00','Hougang','confirmed'),
(149,7,97,'Garage Cleaning','2025-01-13 17:00:00','Sengkang','confirmed'),
(150,7,92,'Book Collection Dusting','2025-01-13 19:00:00','Punggol','confirmed'),
(151,8,85,'Move-Out Cleaning','2025-01-13 21:00:00','Yishun','confirmed'),
(152,8,87,'Eco-Friendly Cleaning','2025-01-13 23:00:00','Clementi','confirmed'),
(153,8,83,'Eco-Friendly Cleaning','2025-01-14 01:00:00','Hougang','confirmed'),
(154,8,95,'Baby Nursery Sanitization','2025-01-14 03:00:00','Bishan','confirmed'),
(155,9,100,'Laundry Service','2025-01-14 05:00:00','Toa Payoh','confirmed'),
(156,9,85,'Baby Nursery Sanitization','2025-01-14 07:00:00','Yishun','confirmed'),
(157,9,90,'Gutter Cleaning','2025-01-14 09:00:00','Clementi','confirmed'),
(158,9,97,'Holiday Prep Cleaning','2025-01-14 11:00:00','Kallang','confirmed'),
(159,10,82,'Child-Safe Cleaning','2025-01-14 13:00:00','Ang Mo Kio','confirmed'),
(160,10,83,'Senior Citizen Discount','2025-01-14 15:00:00','Clementi','confirmed'),
(161,10,93,'Refrigerator Cleaning','2025-01-14 17:00:00','Clementi','confirmed'),
(162,10,95,'Home Office Special','2025-01-14 19:00:00','Ang Mo Kio','confirmed'),
(163,11,97,'Gym Equipment Sanitization','2025-01-14 21:00:00','Bukit Batok','confirmed'),
(164,11,91,'Senior Citizen Discount','2025-01-14 23:00:00','Sengkang','confirmed'),
(165,11,82,'Move-Out Cleaning','2025-01-15 01:00:00','Punggol','confirmed'),
(166,11,97,'Pantry Disinfection','2025-01-15 03:00:00','Clementi','confirmed'),
(167,12,92,'Antique Furniture Care','2025-01-15 05:00:00','Woodlands','confirmed'),
(168,12,100,'Child-Safe Cleaning','2025-01-15 07:00:00','Hougang','confirmed'),
(169,12,91,'Holiday Prep Cleaning','2025-01-15 09:00:00','Ang Mo Kio','confirmed'),
(170,12,93,'Antique Furniture Care','2025-01-15 11:00:00','Kallang','confirmed'),
(171,13,100,'Gym Equipment Sanitization','2025-01-15 13:00:00','Ang Mo Kio','confirmed'),
(172,13,85,'Book Collection Dusting','2025-01-15 15:00:00','Kallang','confirmed'),
(173,13,93,'Furniture Cleaning','2025-01-15 17:00:00','Clementi','confirmed'),
(174,13,90,'Pet-Friendly Cleaning','2025-01-15 19:00:00','Bishan','confirmed'),
(175,14,85,'Pantry Disinfection','2025-01-15 21:00:00','Yishun','confirmed'),
(176,14,94,'Window Cleaning','2025-01-15 23:00:00','Ang Mo Kio','confirmed'),
(177,14,90,'Eco-Friendly Cleaning','2025-01-16 01:00:00','Bedok','confirmed'),
(178,14,87,'Bathroom Sanitization','2025-01-16 03:00:00','Jurong East','confirmed'),
(179,15,90,'Basement Cleaning','2025-01-16 05:00:00','Sengkang','confirmed'),
(180,15,97,'Airbnb Turnover','2025-01-16 07:00:00','Bishan','confirmed'),
(181,15,85,'Pet-Friendly Cleaning','2025-01-16 09:00:00','Jurong East','confirmed'),
(182,15,100,'Organization Help','2025-01-16 11:00:00','Punggol','confirmed'),
(183,16,94,'Yoga Studio Cleaning','2025-01-16 13:00:00','Bishan','confirmed'),
(184,16,95,'Antique Furniture Care','2025-01-16 15:00:00','Hougang','confirmed'),
(185,16,88,'Move-Out Cleaning','2025-01-16 17:00:00','Kallang','confirmed'),
(186,16,87,'Yoga Studio Cleaning','2025-01-16 19:00:00','Bishan','confirmed'),
(187,17,95,'Antique Furniture Care','2025-01-16 21:00:00','Hougang','confirmed'),
(188,17,97,'Balcony Washing','2025-01-16 23:00:00','Jurong East','confirmed'),
(189,17,100,'Furniture Cleaning','2025-01-17 01:00:00','Toa Payoh','confirmed'),
(190,17,96,'Yoga Studio Cleaning','2025-01-17 03:00:00','Sengkang','confirmed'),
(191,18,97,'Garage Cleaning','2025-01-17 05:00:00','Kallang','confirmed'),
(192,18,89,'Baby Nursery Sanitization','2025-01-17 07:00:00','Pasir Ris','confirmed'),
(193,18,94,'Senior Citizen Discount','2025-01-17 09:00:00','Pasir Ris','confirmed'),
(194,18,92,'Regular Cleaning','2025-01-17 11:00:00','Woodlands','confirmed'),
(195,19,97,'Yoga Studio Cleaning','2025-01-17 13:00:00','Bedok','confirmed'),
(196,19,92,'Bathroom Sanitization','2025-01-17 15:00:00','Bukit Batok','confirmed'),
(197,19,91,'Gym Equipment Sanitization','2025-01-17 17:00:00','Jurong East','confirmed'),
(198,19,96,'Furniture Cleaning','2025-01-17 19:00:00','Hougang','confirmed'),
(199,20,95,'Deep Cleaning','2025-01-17 21:00:00','Pasir Ris','confirmed'),
(200,20,89,'Closet Organization','2025-01-17 23:00:00','Toa Payoh','confirmed'),
(201,20,100,'Pantry Disinfection','2025-01-18 01:00:00','Woodlands','confirmed'),
(202,20,88,'Post-Construction Cleanup','2025-01-18 03:00:00','Yishun','confirmed'),
(203,21,94,'Refrigerator Cleaning','2025-01-18 05:00:00','Yishun','confirmed'),
(204,21,100,'Regular Cleaning','2025-01-18 07:00:00','Bishan','confirmed'),
(205,21,88,'Gym Equipment Sanitization','2025-01-18 09:00:00','Kallang','confirmed'),
(206,21,100,'Book Collection Dusting','2025-01-18 11:00:00','Bedok','confirmed'),
(207,22,86,'Senior Citizen Discount','2025-01-18 13:00:00','Sengkang','confirmed'),
(208,22,97,'Window Cleaning','2025-01-18 15:00:00','Hougang','confirmed'),
(209,22,81,'Pet-Friendly Cleaning','2025-01-18 17:00:00','Toa Payoh','confirmed'),
(210,22,93,'Yoga Studio Cleaning','2025-01-18 19:00:00','Kallang','confirmed'),
(211,23,92,'Holiday Prep Cleaning','2025-01-18 21:00:00','Ang Mo Kio','confirmed'),
(212,23,84,'Office Cleaning','2025-01-18 23:00:00','Jurong East','confirmed'),
(213,23,98,'Office Cleaning','2025-01-19 01:00:00','Toa Payoh','confirmed'),
(214,23,95,'Curtain Steaming','2025-01-19 03:00:00','Bishan','confirmed'),
(215,24,83,'Refrigerator Cleaning','2025-01-19 05:00:00','Bukit Batok','confirmed'),
(216,24,82,'Home Office Special','2025-01-19 07:00:00','Pasir Ris','confirmed'),
(217,24,90,'Window Cleaning','2025-01-19 09:00:00','Woodlands','confirmed'),
(218,24,96,'Interior Glass Cleaning','2025-01-19 11:00:00','Bukit Batok','confirmed'),
(219,25,87,'Antique Furniture Care','2025-01-19 13:00:00','Ang Mo Kio','confirmed'),
(220,25,91,'Gutter Cleaning','2025-01-19 15:00:00','Yishun','confirmed'),
(221,25,94,'Greenhouse Cleaning','2025-01-19 17:00:00','Punggol','confirmed'),
(222,25,91,'Eco-Friendly Cleaning','2025-01-19 19:00:00','Tampines','confirmed'),
(223,26,92,'Pantry Disinfection','2025-01-19 21:00:00','Kallang','confirmed'),
(224,26,94,'Senior Citizen Discount','2025-01-19 23:00:00','Woodlands','confirmed'),
(225,26,98,'Antique Furniture Care','2025-01-20 01:00:00','Ang Mo Kio','confirmed'),
(226,26,91,'Antique Furniture Care','2025-01-20 03:00:00','Kallang','confirmed'),
(227,27,94,'Organization Help','2025-01-20 05:00:00','Punggol','confirmed'),
(228,27,95,'Airbnb Turnover','2025-01-20 07:00:00','Punggol','confirmed'),
(229,27,100,'Art Studio Cleaning','2025-01-20 09:00:00','Kallang','confirmed'),
(230,27,83,'Greenhouse Cleaning','2025-01-20 11:00:00','Ang Mo Kio','confirmed'),
(231,28,86,'Regular Cleaning','2025-01-20 13:00:00','Jurong East','confirmed'),
(232,28,95,'Airbnb Turnover','2025-01-20 15:00:00','Jurong East','confirmed'),
(233,28,92,'Yoga Studio Cleaning','2025-01-20 17:00:00','Woodlands','confirmed'),
(234,28,100,'Gym Equipment Sanitization','2025-01-20 19:00:00','Bishan','confirmed'),
(235,29,92,'Baby Nursery Sanitization','2025-01-20 21:00:00','Hougang','confirmed'),
(236,29,85,'Pantry Disinfection','2025-01-20 23:00:00','Ang Mo Kio','confirmed'),
(237,29,89,'Move-Out Cleaning','2025-01-21 01:00:00','Yishun','confirmed'),
(238,29,96,'Pantry Disinfection','2025-01-21 03:00:00','Woodlands','confirmed'),
(239,30,84,'Interior Glass Cleaning','2025-01-21 05:00:00','Hougang','confirmed'),
(240,30,87,'Antique Furniture Care','2025-01-21 07:00:00','Punggol','confirmed'),
(241,30,87,'Garage Cleaning','2025-01-21 09:00:00','Jurong East','confirmed'),
(242,30,95,'Eco-Friendly Cleaning','2025-01-21 11:00:00','Pasir Ris','confirmed'),
(243,31,83,'Laundry Service','2025-01-21 13:00:00','Bishan','confirmed'),
(244,31,98,'Antique Furniture Care','2025-01-21 15:00:00','Pasir Ris','confirmed'),
(245,31,86,'Yoga Studio Cleaning','2025-01-21 17:00:00','Sengkang','confirmed'),
(246,31,87,'Furniture Cleaning','2025-01-21 19:00:00','Bedok','confirmed'),
(247,32,81,'Yoga Studio Cleaning','2025-01-21 21:00:00','Sengkang','confirmed'),
(248,32,95,'Furniture Cleaning','2025-01-21 23:00:00','Clementi','confirmed'),
(249,32,83,'Post-Construction Cleanup','2025-01-22 01:00:00','Woodlands','confirmed'),
(250,32,97,'Balcony Washing','2025-01-22 03:00:00','Hougang','confirmed'),
(251,33,83,'Furniture Cleaning','2025-01-22 05:00:00','Ang Mo Kio','confirmed'),
(252,33,95,'Refrigerator Cleaning','2025-01-22 07:00:00','Bishan','confirmed'),
(253,33,85,'Eco-Friendly Cleaning','2025-01-22 09:00:00','Hougang','confirmed'),
(254,33,97,'Child-Safe Cleaning','2025-01-22 11:00:00','Toa Payoh','confirmed'),
(255,34,85,'Post-Construction Cleanup','2025-01-22 13:00:00','Jurong East','confirmed'),
(256,34,88,'Book Collection Dusting','2025-01-22 15:00:00','Sengkang','confirmed'),
(257,34,83,'Interior Glass Cleaning','2025-01-22 17:00:00','Bedok','confirmed'),
(258,34,89,'Furniture Cleaning','2025-01-22 19:00:00','Bishan','confirmed'),
(259,35,98,'Senior Citizen Discount','2025-01-22 21:00:00','Sengkang','confirmed'),
(260,35,99,'Gym Equipment Sanitization','2025-01-22 23:00:00','Jurong East','confirmed'),
(261,35,100,'Office Cleaning','2025-01-23 01:00:00','Toa Payoh','confirmed'),
(262,35,82,'Regular Cleaning','2025-01-23 03:00:00','Yishun','confirmed'),
(263,36,99,'Interior Glass Cleaning','2025-01-23 05:00:00','Bishan','confirmed'),
(264,36,94,'Regular Cleaning','2025-01-23 07:00:00','Tampines','confirmed'),
(265,36,98,'Antique Furniture Care','2025-01-23 09:00:00','Bishan','confirmed'),
(266,36,88,'Greenhouse Cleaning','2025-01-23 11:00:00','Kallang','confirmed'),
(267,37,82,'Organization Help','2025-01-23 13:00:00','Tampines','confirmed'),
(268,37,95,'Closet Organization','2025-01-23 15:00:00','Ang Mo Kio','confirmed'),
(269,37,91,'Laundry Service','2025-01-23 17:00:00','Punggol','confirmed'),
(270,37,93,'Furniture Cleaning','2025-01-23 19:00:00','Hougang','confirmed'),
(271,38,98,'Basement Cleaning','2025-01-23 21:00:00','Ang Mo Kio','confirmed'),
(272,38,84,'Gutter Cleaning','2025-01-23 23:00:00','Tampines','confirmed'),
(273,38,84,'Child-Safe Cleaning','2025-01-24 01:00:00','Kallang','confirmed'),
(274,38,94,'Move-Out Cleaning','2025-01-24 03:00:00','Toa Payoh','confirmed'),
(275,39,91,'Laundry Service','2025-01-24 05:00:00','Bedok','confirmed'),
(276,39,96,'Window Cleaning','2025-01-24 07:00:00','Tampines','confirmed'),
(277,39,96,'Regular Cleaning','2025-01-24 09:00:00','Yishun','confirmed'),
(278,39,97,'Refrigerator Cleaning','2025-01-24 11:00:00','Bedok','confirmed'),
(279,40,92,'Child-Safe Cleaning','2025-01-24 13:00:00','Bukit Batok','confirmed'),
(280,40,100,'Curtain Steaming','2025-01-24 15:00:00','Kallang','confirmed'),
(281,40,84,'Art Studio Cleaning','2025-01-24 17:00:00','Jurong East','confirmed'),
(282,40,92,'Greenhouse Cleaning','2025-01-24 19:00:00','Ang Mo Kio','confirmed');
/*!40000 ALTER TABLE `confirmed_matches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_categories`
--

DROP TABLE IF EXISTS `service_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `serviceCategoryName` varchar(100) NOT NULL,
  `serviceCategoryDescription` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_categories`
--

LOCK TABLES `service_categories` WRITE;
/*!40000 ALTER TABLE `service_categories` DISABLE KEYS */;
INSERT INTO `service_categories` VALUES 
(1, 'Deep Cleaning', 'Comprehensive top-to-bottom cleaning for homes and spaces'),
(2, 'Routine Cleaning', 'Standard maintenance including regular weekly or bi-weekly jobs'),
(3, 'Move-In/Move-Out Cleaning', 'Intensive clean-ups for relocations or new tenants'),
(4, 'Commercial & Office Cleaning', 'Cleaning services for business and office premises'),
(5, 'Carpet & Rug Care', 'Specialized cleaning and steam treatments for carpets and rugs'),
(6, 'Upholstery & Furniture Care', 'Fabric-safe cleaning for couches, chairs, and furniture'),
(7, 'Aircon & Appliance Cleaning', 'Includes aircon servicing and fridge sanitization'),
(8, 'Window & Curtain Cleaning', 'Interior glass, curtain steaming, and fabric maintenance'),
(9, 'Child-Safe & Eco Cleaning', 'Non-toxic products safe for kids and sensitive households'),
(10, 'Sanitization & Disinfection', 'Bathroom, pantry, and high-touch surface sterilization'),
(11, 'Floor & Surface Polishing', 'Polishing of marble, wood, and tiled surfaces'),
(12, 'Outdoor & Balcony Services', 'Balcony pressure washing and exterior cleanups'),
(13, 'Glass & Mirror Detailing', 'Detailed wipe-down of interior mirrors and partitions'),
(14, 'Kitchen & Pantry Deep Clean', 'Degreasing and sanitation of kitchen/pantry zones'),
(15, 'Gutter & Drain Maintenance', 'Removal of blockages and flushing out drainage systems');
/*!40000 ALTER TABLE `service_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_categories_backup`
--

DROP TABLE IF EXISTS `service_categories_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_categories_backup` (
  `id` int NOT NULL DEFAULT '0',
  `serviceCategoryName` varchar(100) DEFAULT NULL,
  `serviceCategoryDescription` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_categories_backup`
--

LOCK TABLES `service_categories_backup` WRITE;
/*!40000 ALTER TABLE `service_categories_backup` DISABLE KEYS */;
INSERT INTO `service_categories_backup` VALUES (1,'Deep Cleaning','Intensive whole-home cleaning'),(2,'Regular Cleaning','Standard maintenance cleaning'),(3,'Move-Out Cleaning','Rental property cleaning'),(4,'Office Cleaning','Commercial space services'),(5,'Carpet Cleaning','Specialized carpet care');
/*!40000 ALTER TABLE `service_categories_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_shortlists`
--

DROP TABLE IF EXISTS `service_shortlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_shortlists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cleaner_id` int DEFAULT NULL,
  `homeowner_id` int DEFAULT NULL,
  `added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_shortlists`
--

LOCK TABLES `service_shortlists` WRITE;
/*!40000 ALTER TABLE `service_shortlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_shortlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_views`
--

DROP TABLE IF EXISTS `service_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_views` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `cleaner_id` int DEFAULT NULL,
  `viewed_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_views`
--

LOCK TABLES `service_views` WRITE;
/*!40000 ALTER TABLE `service_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_accounts`
--

DROP TABLE IF EXISTS `user_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_accounts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('cleaner','home_owner','user_admin','platform_manager') NOT NULL,
  `status` enum('active','suspended') DEFAULT 'active',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_accounts`
--

LOCK TABLES `user_accounts` WRITE;
/*!40000 ALTER TABLE `user_accounts` DISABLE KEYS */;
INSERT INTO `user_accounts` VALUES (1,'alice_clean','1234','cleaner','active'),(2,'bob_sparkle','1234','cleaner','active'),(3,'charlie_shine','1234','cleaner','active'),(4,'diana_spotless','1234','cleaner','active'),(5,'eddie_tidy','1234','cleaner','active'),(6,'fiona_fresh','1234','cleaner','active'),(7,'george_wipe','1234','cleaner','active'),(8,'hannah_pure','1234','cleaner','active'),(9,'ian_scrub','1234','cleaner','active'),(10,'jane_gleam','1234','cleaner','active'),(11,'kevin_shine','1234','cleaner','active'),(12,'lily_mop','1234','cleaner','active'),(13,'mike_broom','1234','cleaner','active'),(14,'nora_dust','1234','cleaner','active'),(15,'oscar_clean','1234','cleaner','active'),(16,'penny_sparkle','1234','cleaner','active'),(17,'quincy_clean','1234','cleaner','active'),(18,'rose_fresh','1234','cleaner','active'),(19,'sam_wipe','1234','cleaner','active'),(20,'tina_pure','1234','cleaner','active'),(21,'tom_clean','1234','cleaner','active'),(22,'sarah_sparkle','1234','cleaner','active'),(23,'david_shine','1234','cleaner','active'),(24,'emma_spotless','1234','cleaner','active'),(25,'george_clean','1234','cleaner','active'),(26,'michael_shine','1234','cleaner','active'),(27,'linda_spotless','1234','cleaner','active'),(28,'robert_clean','1234','cleaner','active'),(29,'jennifer_gleam','1234','cleaner','active'),(30,'william_sparkle','1234','cleaner','active'),(31,'patricia_fresh','1234','cleaner','active'),(32,'james_wipe','1234','cleaner','active'),(33,'elizabeth_pure','1234','cleaner','active'),(34,'thomas_scrub','1234','cleaner','active'),(35,'susan_mop','1234','cleaner','active'),(36,'daniel_broom','1234','cleaner','active'),(37,'nancy_dust','1234','cleaner','active'),(38,'christopher_clean','1234','cleaner','active'),(39,'laura_sparkle','1234','cleaner','active'),(40,'kevin_fresh','1234','cleaner','active'),(41,'hmon_micheal','1234','home_owner','active'),(42,'hmon_sarah','1234','home_owner','active'),(43,'hmon_david','1234','home_owner','active'),(44,'hmon_emma','1234','home_owner','active'),(45,'hmon_james','1234','home_owner','active'),(46,'hmon_olivia','1234','home_owner','active'),(47,'hmon_liam','1234','home_owner','active'),(48,'hmon_ava','1234','home_owner','active'),(49,'hmon_noah','1234','home_owner','active'),(50,'hmon_isabella','1234','home_owner','active'),(51,'hmon_william','1234','home_owner','active'),(52,'hmon_sophia','1234','home_owner','active'),(53,'hmon_benjamin','1234','home_owner','active'),(54,'hmon_mia','1234','home_owner','active'),(55,'hmon_lucas','1234','home_owner','active'),(56,'hmon_charlotte','1234','home_owner','active'),(57,'hmon_henry','1234','home_owner','active'),(58,'hmon_amelia','1234','home_owner','active'),(59,'hmon_alexander','1234','home_owner','active'),(60,'hmon_harper','1234','home_owner','active'),(61,'hmon_mason','1234','home_owner','active'),(62,'hmon_evelyn','1234','home_owner','active'),(63,'hmon_elijah','1234','home_owner','active'),(64,'hmon_abigail','1234','home_owner','active'),(65,'hmon_oliver','1234','home_owner','active'),(66,'hmon_elizabeth','1234','home_owner','active'),(67,'hmon_jacob','1234','home_owner','active'),(68,'hmon_sofia','1234','home_owner','active'),(69,'hmon_michael','1234','home_owner','active'),(70,'hmon_avery','1234','home_owner','active'),(71,'hmon_daniel','1234','home_owner','active'),(72,'hmon_ella','1234','home_owner','active'),(73,'hmon_logan','1234','home_owner','active'),(74,'hmon_scarlett','1234','home_owner','active'),(75,'hmon_jackson','1234','home_owner','active'),(76,'hmon_victoria','1234','home_owner','active'),(77,'hmon_sebastian','1234','home_owner','active'),(78,'hmon_grace','1234','home_owner','active'),(79,'hmon_jack','1234','home_owner','active'),(80,'hmon_chloe','1234','home_owner','active'),(81,'p_johnny','1234','platform_manager','active'),(82,'p_sarah','1234','platform_manager','active'),(83,'p_michael','1234','platform_manager','active'),(84,'p_emily','1234','platform_manager','active'),(85,'p_david','1234','platform_manager','active'),(86,'p_jessica','1234','platform_manager','active'),(87,'p_robert','1234','platform_manager','active'),(88,'p_amanda','1234','platform_manager','active'),(89,'p_daniel','1234','platform_manager','active'),(90,'p_megan','1234','platform_manager','active'),(91,'admin_mark','1234','user_admin','active'),(92,'admin_lisa','1234','user_admin','active'),(93,'admin_kevin','1234','user_admin','active'),(94,'admin_rachel','1234','user_admin','active'),(95,'admin_alex','1234','user_admin','active'),(96,'admin_grace','1234','user_admin','active'),(97,'admin_ryan','1234','user_admin','active'),(98,'admin_michelle','1234','user_admin','active'),(99,'admin_eric','1234','user_admin','active'),(100,'admin_joyce','1234','user_admin','active');
/*!40000 ALTER TABLE `user_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profiles`
--

DROP TABLE IF EXISTS `user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_profiles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `status` enum('active','suspended') DEFAULT 'active',
  `location` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profiles`
--

LOCK TABLES `user_profiles` WRITE;
/*!40000 ALTER TABLE `user_profiles` DISABLE KEYS */;
INSERT INTO `user_profiles` VALUES (1,'Alice Johnson','cleaner',1,'Toa Payoh','1991-07-18','alice_johnson@gmail.com'),(2,'Bob Smith','cleaner',1,'Bedok','1987-11-06','bob_smith@gmail.com'),(3,'Charlie Brown','cleaner',1,'Clementi','1990-08-06','charlie_brown@gmail.com'),(4,'Diana Prince','cleaner',1,'Jurong East','1993-06-12','diana_prince@gmail.com'),(5,'Eddie Murphy','cleaner',1,'Hougang','1988-06-13','eddie_murphy@gmail.com'),(6,'Fiona Apple','cleaner',1,'Tampines','1987-11-27','fiona_apple@gmail.com'),(7,'George Clooney','cleaner',1,'Yishun','1989-03-04','george_clooney@gmail.com'),(8,'Hannah Baker','cleaner',1,'Woodlands','1986-02-23','hannah_baker@gmail.com'),(9,'Ian Somerhalder','cleaner',1,'Punggol','1989-03-19','ian_somerhalder@gmail.com'),(10,'Jane Doe','cleaner',1,'Pasir Ris','1991-08-17','jane_doe@gmail.com'),(11,'Kevin Hart','cleaner',1,'Sengkang','1994-06-30','kevin_hart@gmail.com'),(12,'Lily Collins','cleaner',1,'Bukit Batok','1990-08-08','lily_collins@gmail.com'),(13,'Mike Tyson','cleaner',1,'Kallang','1995-07-08','mike_tyson@gmail.com'),(14,'Nora Jones','cleaner',1,'Ang Mo Kio','1987-10-15','nora_jones@gmail.com'),(15,'Oscar Isaac','cleaner',1,'Ang Mo Kio','1989-05-20','oscar_isaac@gmail.com'),(16,'Penny Lane','cleaner',1,'Bishan','1987-07-25','penny_lane@gmail.com'),(17,'Quincy Jones','cleaner',1,'Bishan','1995-08-25','quincy_jones@gmail.com'),(18,'Rose Byrne','cleaner',1,'Bishan','1986-07-27','rose_byrne@gmail.com'),(19,'Sam Wilson','cleaner',1,'Bedok','1993-11-18','sam_wilson@gmail.com'),(20,'Tina Fey','cleaner',1,'Pasir Ris','1991-09-20','tina_fey@gmail.com'),(21,'Tom Wilson','cleaner',1,'Serangoon','1991-04-27','tom_wilson@gmail.com'),(22,'Sarah Parker','cleaner',1,'Queenstown','1988-04-08','sarah_parker@gmail.com'),(23,'David Miller','cleaner',1,'Bukit Timah','1992-05-21','david_miller@gmail.com'),(24,'Emma Davis','cleaner',1,'Novena','1992-02-16','emma_davis@gmail.com'),(25,'George Sanders','cleaner',1,'Punggol','1988-06-19','george_sanders@gmail.com'),(26,'Michael Johnson','cleaner',1,'Tanjong Pagar','1990-12-15','michael_johnson@gmail.com'),(27,'Linda Williams','cleaner',1,'Marina Bay','1994-05-17','linda_williams@gmail.com'),(28,'Robert Brown','cleaner',1,'Raffles Place','1994-01-03','robert_brown@gmail.com'),(29,'Jennifer Jones','cleaner',1,'Orchard','1991-11-29','jennifer_jones@gmail.com'),(30,'William Garcia','cleaner',1,'Somerset','1992-07-11','william_garcia@gmail.com'),(31,'Patricia Miller','cleaner',1,'Dhoby Ghaut','1991-11-27','patricia_miller@gmail.com'),(32,'James Davis','cleaner',1,'City Hall','1986-12-12','james_davis@gmail.com'),(33,'Elizabeth Rodriguez','cleaner',1,'Bugis','1994-01-03','elizabeth_rodriguez@gmail.com'),(34,'Thomas Martinez','cleaner',1,'Lavender','1994-03-18','thomas_martinez@gmail.com'),(35,'Susan Anderson','cleaner',1,'Chinatown','1994-01-08','susan_anderson@gmail.com'),(36,'Daniel Taylor','cleaner',1,'Little India','1992-06-24','daniel_taylor@gmail.com'),(37,'Nancy Thomas','cleaner',1,'Farrer Park','1985-05-01','nancy_thomas@gmail.com'),(38,'Christopher Lee','cleaner',1,'Outram Park','1994-03-19','christopher_lee@gmail.com'),(39,'Laura Walker','cleaner',1,'Clarke Quay','1990-01-27','laura_walker@gmail.com'),(40,'Kevin Young','cleaner',1,'Rochor','1992-09-22','kevin_young@gmail.com'),(41,'Micheal Tan','home_owner',1,'Tampines','1981-10-24','micheal_tan@gmail.com'),(42,'Sarah Lim','home_owner',1,'Bedok','1982-09-20','sarah_lim@gmail.com'),(43,'David Wong','home_owner',1,'Jurong','1993-02-27','david_wong@gmail.com'),(44,'Emma Lee','home_owner',1,'Bukit Batok','1982-08-18','emma_lee@gmail.com'),(45,'James Tan','home_owner',1,'Ang Mo Kio','1978-09-03','james_tan@gmail.com'),(46,'Olivia Chan','home_owner',1,'Bishan','1990-06-23','olivia_chan@gmail.com'),(47,'Liam Koh','home_owner',1,'Serangoon','1981-05-13','liam_koh@gmail.com'),(48,'Ava Ng','home_owner',1,'Punggol','1980-05-22','ava_ng@gmail.com'),(49,'Noah Teo','home_owner',1,'Sengkang','1982-11-07','noah_teo@gmail.com'),(50,'Isabella Goh','home_owner',1,'Hougang','1978-02-01','isabella_goh@gmail.com'),(51,'William Chua','home_owner',1,'Woodlands','1986-11-19','william_chua@gmail.com'),(52,'Sophia Ong','home_owner',1,'Yishun','1985-02-27','sophia_ong@gmail.com'),(53,'Benjamin Foo','home_owner',1,'Pasir Ris','1990-02-21','benjamin_foo@gmail.com'),(54,'Mia Yeo','home_owner',1,'Clementi','1980-03-27','mia_yeo@gmail.com'),(55,'Lucas Ang','home_owner',1,'Queenstown','1975-10-03','lucas_ang@gmail.com'),(56,'Charlotte Lim','home_owner',1,'Novena','1983-01-23','charlotte_lim@gmail.com'),(57,'Henry Tan','home_owner',1,'Bukit Timah','1993-01-16','henry_tan@gmail.com'),(58,'Amelia Wong','home_owner',1,'Toa Payoh','1981-01-15','amelia_wong@gmail.com'),(59,'Alexander Lee','home_owner',1,'Kallang','1991-01-25','alexander_lee@gmail.com'),(60,'Harper Chan','home_owner',1,'Marine Parade','1977-03-19','harper_chan@gmail.com'),(61,'Mason Koh','home_owner',1,'Geylang','1977-11-14','mason_koh@gmail.com'),(62,'Evelyn Ng','home_owner',1,'Balestier','1982-09-17','evelyn_ng@gmail.com'),(63,'Elijah Teo','home_owner',1,'Thomson','1984-12-12','elijah_teo@gmail.com'),(64,'Abigail Goh','home_owner',1,'Katong','1981-08-07','abigail_goh@gmail.com'),(65,'Oliver Chua','home_owner',1,'Tanjong Pagar','1978-02-28','oliver_chua@gmail.com'),(66,'Elizabeth Ong','home_owner',1,'Raffles Place','1990-12-31','elizabeth_ong@gmail.com'),(67,'Jacob Foo','home_owner',1,'Orchard','1985-07-08','jacob_foo@gmail.com'),(68,'Sofia Yeo','home_owner',1,'Somerset','1979-08-05','sofia_yeo@gmail.com'),(69,'Michael Ang','home_owner',1,'Dhoby Ghaut','1986-05-29','michael_ang@gmail.com'),(70,'Avery Lim','home_owner',1,'City Hall','1978-04-04','avery_lim@gmail.com'),(71,'Daniel Tan','home_owner',1,'Bugis','1977-01-22','daniel_tan@gmail.com'),(72,'Ella Wong','home_owner',1,'Lavender','1975-07-13','ella_wong@gmail.com'),(73,'Logan Lee','home_owner',1,'Little India','1991-06-23','logan_lee@gmail.com'),(74,'Scarlett Chan','home_owner',1,'Farrer Park','1975-10-13','scarlett_chan@gmail.com'),(75,'Jackson Koh','home_owner',1,'Joo Chiat','1989-06-27','jackson_koh@gmail.com'),(76,'Victoria Ng','home_owner',1,'East Coast','1985-02-01','victoria_ng@gmail.com'),(77,'Sebastian Teo','home_owner',1,'Changi','1981-12-22','sebastian_teo@gmail.com'),(78,'Grace Goh','home_owner',1,'Simei','1979-08-12','grace_goh@gmail.com'),(79,'Jack Chua','home_owner',1,'Tampines','1977-02-17','jack_chua@gmail.com'),(80,'Chloe Ong','home_owner',1,'Bedok','1991-10-29','chloe_ong@gmail.com'),(81,'Johnny Tay','platform_manager',1,'Central','1993-04-16','johnny_tay@gmail.com'),(82,'Sarah Lim','platform_manager',1,'East','1993-08-19','sarah_lim@gmail.com'),(83,'Michael Wong','platform_manager',1,'North','1993-04-22','michael_wong@gmail.com'),(84,'Emily Tan','platform_manager',1,'West','1990-08-22','emily_tan@gmail.com'),(85,'David Ng','platform_manager',1,'North-East','1993-04-14','david_ng@gmail.com'),(86,'Jessica Koh','platform_manager',1,'Central','1984-07-11','jessica_koh@gmail.com'),(87,'Robert Chan','platform_manager',1,'East','1992-10-05','robert_chan@gmail.com'),(88,'Amanda Lee','platform_manager',1,'West','1985-04-04','amanda_lee@gmail.com'),(89,'Daniel Teo','platform_manager',1,'North','1982-12-27','daniel_teo@gmail.com'),(90,'Megan Yip','platform_manager',1,'North-East','1994-03-01','megan_yip@gmail.com'),(91,'Mark Goh','user_admin',1,'Central','1981-11-21','mark_goh@gmail.com'),(92,'Lisa Sim','user_admin',1,'East','1991-12-09','lisa_sim@gmail.com'),(93,'Kevin Lim','user_admin',1,'North','1989-01-15','kevin_lim@gmail.com'),(94,'Rachel Wong','user_admin',1,'West','1989-05-26','rachel_wong@gmail.com'),(95,'Alex Tan','user_admin',1,'North-East','1984-11-18','alex_tan@gmail.com'),(96,'Grace Ong','user_admin',1,'Central','1991-03-17','grace_ong@gmail.com'),(97,'Ryan Chua','user_admin',1,'East','1991-05-30','ryan_chua@gmail.com'),(98,'Michelle Ho','user_admin',1,'West','1988-06-06','michelle_ho@gmail.com'),(99,'Eric Tee','user_admin',1,'North','1987-12-04','eric_tee@gmail.com'),(100,'Joyce Ang','user_admin',1,'North-East','1994-05-04','joyce_ang@gmail.com');
/*!40000 ALTER TABLE `user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('cleaner','home_owner','user_admin','platform_manager') NOT NULL,
  `status` enum('active','suspended','pending') DEFAULT 'active',
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL DEFAULT 'temp@example.com',
  `date_of_birth` date NOT NULL DEFAULT '1990-01-01',
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_combined`
--

DROP TABLE IF EXISTS `users_combined`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_combined` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('cleaner','home_owner','user_admin','platform_manager') NOT NULL,
  `status` enum('active','suspended','pending') DEFAULT 'active',
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL DEFAULT 'temp@example.com',
  `date_of_birth` date NOT NULL DEFAULT '1990-01-01',
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_combined`
--

LOCK TABLES `users_combined` WRITE;
/*!40000 ALTER TABLE `users_combined` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_combined` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-15 19:18:30
