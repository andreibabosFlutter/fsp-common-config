-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: next_digital_platform
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `casinos`
--

DROP TABLE IF EXISTS `casinos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `casinos` (
  `id` varchar(32) NOT NULL,
  `name` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `config` json NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_casino` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `critical_modules`
--

DROP TABLE IF EXISTS `critical_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `critical_modules` (
  `id` int NOT NULL,
  `game_id` varchar(64) NOT NULL,
  `name` varchar(256) NOT NULL,
  `type` varchar(16) NOT NULL,
  `path` varchar(512) NOT NULL,
  `version` varchar(16) NOT NULL,
  `hash` varchar(64) NOT NULL,
  PRIMARY KEY (`id`,`game_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `currency_conversions`
--

DROP TABLE IF EXISTS `currency_conversions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency_conversions` (
  `id_currency` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `value_coin` decimal(10,2) NOT NULL,
  `symbol_currency` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `currency_api` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `value_currency_api` int DEFAULT NULL,
  PRIMARY KEY (`id_currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data` json NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `round_id` int NOT NULL DEFAULT '0',
  `type` varchar(255) NOT NULL,
  `creation_time` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `SESSION` (`session_id`),
  KEY `SESSION-ROUND` (`session_id`,`round_id`),
  KEY `CREATION_TIME` (`creation_time`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games` (
  `id` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `config` json NOT NULL,
  `client_url` varchar(512) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `history_url` varchar(512) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `interactions`
--

DROP TABLE IF EXISTS `interactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `session_id` varchar(40) NOT NULL,
  `round_id` int DEFAULT NULL,
  `type` varchar(32) NOT NULL,
  `creation_time` datetime(3) NOT NULL,
  `data` json NOT NULL,
  PRIMARY KEY (`id`),
  KEY `SESSION` (`session_id`),
  KEY `SESSION-ROUND` (`session_id`,`round_id`),
  KEY `CREATION_TIME` (`creation_time`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(40) NOT NULL,
  `game_id` varchar(64) NOT NULL,
  `casino_id` varchar(32) NOT NULL,
  `for_money` tinyint DEFAULT NULL,
  `fun_bonus` tinyint DEFAULT NULL,
  `regulator_session_id` varchar(32) DEFAULT NULL,
  `regulator_ticket_id` varchar(32) DEFAULT NULL,
  `creation_time` datetime(3) NOT NULL,
  `game_session_id` varchar(45) DEFAULT NULL,
  `player_id` int DEFAULT NULL,
  `casino_token` text,
  `session_token` text,
  `valid` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `session_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-19 10:49:41
