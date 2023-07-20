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
-- Dumping data for table `casinos`
--

LOCK TABLES `casinos` WRITE;
/*!40000 ALTER TABLE `casinos` DISABLE KEYS */;
INSERT INTO `casinos` VALUES ('Atena','Istanza dbox','{\"api\": {\"wager\": \"{gameSessionId}/wager\", \"balance\": \"{gameSessionId}/sessionBalance\", \"endWager\": \"{gameSessionId}/endwager\", \"cancelWager\": \"{gameSessionId}/cancelwager\"}, \"header\": {\"hashKey\": 123123123, \"xClientId\": 77}, \"endpoint\": \"localhost:3002\", \"protocol\": \"http\"}'),('demo','Casino di demo ','{\"api\": {\"wager\": \"{gameSessionId}/wager\", \"balance\": \"{gameSessionId}/sessionBalance\", \"endWager\": \"{gameSessionId}/endwager\", \"cancelWager\": \"{gameSessionId}/cancelwager\"}, \"header\": {\"hashKey\": 123123123, \"xClientId\": 77}, \"endpoint\": \"localhost:3002\", \"protocol\": \"http\", \"historyUrl\": \"localhost:3003\", \"platformUrl\": \"localhost:3000\"}');
/*!40000 ALTER TABLE `casinos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `critical_modules`
--

LOCK TABLES `critical_modules` WRITE;
/*!40000 ALTER TABLE `critical_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `critical_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `currency_conversions`
--

LOCK TABLES `currency_conversions` WRITE;
/*!40000 ALTER TABLE `currency_conversions` DISABLE KEYS */;
INSERT INTO `currency_conversions` VALUES ('AED',3.00,NULL,NULL,NULL),('ALL',50.00,NULL,NULL,NULL),('AMD',400.00,'֏',NULL,NULL),('AOA',400.00,NULL,NULL,NULL),('ARS',50.00,NULL,NULL,NULL),('AUD',1.50,NULL,NULL,NULL),('AZN',1.00,NULL,NULL,NULL),('BAM',1.00,NULL,NULL,NULL),('BAT',300.00,NULL,NULL,NULL),('BDT',400.00,NULL,NULL,NULL),('BGN',1.00,NULL,NULL,NULL),('BHD',3.00,NULL,NULL,NULL),('BIF',1000.00,NULL,NULL,NULL),('BOB',5.00,NULL,NULL,NULL),('BRL',4.00,NULL,NULL,NULL),('BTS',2412.00,NULL,NULL,NULL),('BWP',5.00,NULL,NULL,NULL),('BYN',15.00,NULL,NULL,NULL),('CAD',1.50,NULL,NULL,NULL),('CDF',2000.00,NULL,NULL,NULL),('CHF',1.00,'F',NULL,NULL),('CLP',500.00,NULL,NULL,NULL),('CNY',5.00,NULL,NULL,NULL),('COP',2000.00,NULL,NULL,NULL),('CVE',70.00,NULL,NULL,NULL),('CZK',15.00,NULL,NULL,NULL),('DGB',4412.00,NULL,NULL,NULL),('DJF',75.00,NULL,NULL,NULL),('DKK',10.00,NULL,NULL,NULL),('DOGE',37105.00,NULL,NULL,NULL),('DZD',50.00,NULL,NULL,NULL),('EGP',6.00,NULL,NULL,NULL),('ERN',10.00,NULL,NULL,NULL),('ETB',15.00,NULL,NULL,NULL),('EUR',1.00,'€',NULL,NULL),('GBP',1.00,'£',NULL,NULL),('GEL',1.00,NULL,NULL,NULL),('GHS',4.00,NULL,NULL,NULL),('GMD',25.00,NULL,NULL,NULL),('GNF',5500.00,NULL,NULL,NULL),('HKD',10.00,NULL,NULL,NULL),('HNL',20.00,NULL,NULL,NULL),('HRK',5.00,NULL,NULL,NULL),('HTG',90.00,NULL,NULL,NULL),('HUF',180.00,NULL,NULL,NULL),('IDR',15000.00,NULL,NULL,NULL),('INR',30.00,'₹',NULL,NULL),('IQD',650.00,NULL,NULL,NULL),('ISK',150.00,NULL,NULL,NULL),('JOD',0.20,NULL,NULL,NULL),('JPY',125.00,NULL,NULL,NULL),('KES',35.00,NULL,NULL,NULL),('KGS',15.00,NULL,NULL,NULL),('KMF',50.00,NULL,NULL,NULL),('KRW',1500.00,NULL,NULL,NULL),('KWD',0.20,NULL,NULL,NULL),('KZT',100.00,'₸',NULL,NULL),('LINK',7.57,NULL,NULL,NULL),('LKR',50.00,NULL,NULL,NULL),('LRD',50.00,NULL,NULL,NULL),('LSL',5.00,NULL,NULL,NULL),('LYD',0.60,NULL,NULL,NULL),('MAD',4.00,NULL,NULL,NULL),('mBCH',440.00,NULL,'BCH',1000),('mBT',10.00,NULL,'BTC',1000),('mBTG',11670.00,NULL,'BTG',1000),('mDASH',1353.00,NULL,NULL,NULL),('MDL',5.00,NULL,NULL,NULL),('mETC',17980.00,NULL,'ETC',1000),('mETH',260.30,NULL,'ETH',1000),('MGA',1500.00,NULL,NULL,NULL),('MKD',19.00,NULL,NULL,NULL),('mLTC',1899.00,NULL,'LTC',1000),('MMK',1300.00,NULL,NULL,NULL),('MNT',1000.00,NULL,NULL,NULL),('MRU',200.00,NULL,NULL,NULL),('MUR',17.00,NULL,NULL,NULL),('MWK',300.00,NULL,NULL,NULL),('mXMR',1261.00,NULL,'XMR',1000),('MXN',20.00,NULL,NULL,NULL),('MYR',2.00,NULL,NULL,NULL),('mZEC',1479.00,NULL,'ZEC',1000),('MZN',30.00,NULL,NULL,NULL),('NAD',7.00,NULL,NULL,NULL),('NGN',220.00,NULL,NULL,NULL),('NOK',17.00,NULL,NULL,NULL),('NPR',40.00,NULL,NULL,NULL),('NZD',1.20,NULL,NULL,NULL),('OMG',22.14,NULL,NULL,NULL),('OMR',0.26,NULL,NULL,NULL),('PEN',4.00,NULL,NULL,NULL),('PHP',40.00,NULL,NULL,NULL),('PKR',45.00,NULL,NULL,NULL),('PLN',2.00,NULL,NULL,NULL),('PRB',5.00,NULL,NULL,NULL),('PYG',2600.00,NULL,NULL,NULL),('QAR',3.20,NULL,NULL,NULL),('QTUM',34.28,NULL,NULL,NULL),('RON',1.80,NULL,NULL,NULL),('RSD',40.00,NULL,NULL,NULL),('RUB',400.00,NULL,NULL,NULL),('RWF',700.00,NULL,NULL,NULL),('SAR',2.00,NULL,NULL,NULL),('SCR',18.00,NULL,NULL,NULL),('SDG',500.00,NULL,NULL,NULL),('SEK',10.00,NULL,NULL,NULL),('SGD',1.50,NULL,NULL,NULL),('SLL',4000.00,NULL,NULL,NULL),('SOS',300.00,NULL,NULL,NULL),('SSP',150.00,NULL,NULL,NULL),('STRAT',191.96,NULL,NULL,NULL),('SZL',9.00,NULL,NULL,NULL),('THB',25.00,NULL,NULL,NULL),('TJS',3.00,NULL,NULL,NULL),('TND',1.00,NULL,NULL,NULL),('TRX',4400.00,NULL,NULL,NULL),('TRY',2.00,'₺',NULL,NULL),('TWD',30.00,NULL,NULL,NULL),('TZS',900.00,NULL,NULL,NULL),('UAH',10.00,NULL,NULL,NULL),('UGX',2300.00,NULL,NULL,NULL),('USD',1.00,'$',NULL,NULL),('USDT',120.00,NULL,NULL,NULL),('UYU',50.00,NULL,NULL,NULL),('UZS',4000.00,NULL,NULL,NULL),('VND',11000.00,NULL,NULL,NULL),('XAF',700.00,NULL,NULL,NULL),('XEM',880.00,NULL,NULL,NULL),('XOF',700.00,NULL,NULL,NULL),('XRP',520.00,NULL,NULL,NULL),('XVG',17700.00,NULL,NULL,NULL),('ZAR',10.00,NULL,NULL,NULL),('ZMW',10.00,NULL,NULL,NULL),('ZWL',250.00,NULL,NULL,NULL);
/*!40000 ALTER TABLE `currency_conversions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES ('c8e17a7a-fcba-4c5b-98fa-c2b7a49f7cec','{\"bet\": {\"list\": [10, 100, 1000], \"type\": \"list\"}, \"mathConfig\": {\"api\": {\"bet\": \"bets\", \"step\": \"steps\", \"start\": \"startup-data\"}, \"endpoint\": \"localhost:3012/game-math\", \"protocol\": \"http\"}}','https://casino-next-digital.sisal.it/Icrantur/','-','Icrantur'),('myslot','{\"bet\": {\"list\": [10, 100, 1000], \"type\": \"list\"}, \"mathConfig\": {\"api\": {\"bet\": \"bets\", \"step\": \"steps\", \"start\": \"startup-data\"}, \"endpoint\": \"localhost:3012/game-math\", \"protocol\": \"http\"}, \"gameUiOptions\": {\"cheats\": true, \"secure\": false}, \"historyUiOptions\": {\"name\": \"history\"}}','http://google.it','http://localhost:9000','myslot');
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;


/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-19 10:44:30
