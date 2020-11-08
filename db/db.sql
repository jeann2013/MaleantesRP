-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: miserver
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.2

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
-- Table structure for table `addon_account`
--

DROP TABLE IF EXISTS `addon_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addon_account`
--

LOCK TABLES `addon_account` WRITE;
/*!40000 ALTER TABLE `addon_account` DISABLE KEYS */;
INSERT INTO `addon_account` VALUES ('bank_savings','Livret Bleu',0),('caution','Caution',0),('property_black_money','Argent Sale Propriété',0),('society_aircraftdealer','Airliner',1),('society_ambulance','Ambulance',1),('society_banker','Banque',1),('society_boatdealer','Marina',1),('society_cardealer','Concessionnaire',1),('society_mechanic','MÃ©cano',1),('society_police','Police',1),('society_taxi','Taxi',1);
/*!40000 ALTER TABLE `addon_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addon_account_data`
--

DROP TABLE IF EXISTS `addon_account_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addon_account_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) DEFAULT NULL,
  `money` double NOT NULL,
  `owner` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addon_account_data`
--

LOCK TABLES `addon_account_data` WRITE;
/*!40000 ALTER TABLE `addon_account_data` DISABLE KEYS */;
INSERT INTO `addon_account_data` VALUES (1,'society_aircraftdealer',1000003332,NULL),(2,'society_ambulance',1000003332,''),(14,'society_mechanic',1000003332,'steam:11000011b415c99'),(18,'society_police',1000003332,NULL),(21,'society_taxi',1000003332,NULL),(24,'caution',0,'steam:11000011b415c99'),(25,'property_black_money',10000,'steam:11000011b415c99'),(26,'bank_savings',0,'steam:11000011b415c99'),(45,'society_banker',0,NULL),(46,'society_boatdealer',0,NULL),(47,'society_bratva',0,NULL),(48,'society_cardealer',0,NULL),(49,'society_comandom19',0,NULL),(50,'society_dacapo',0,NULL),(51,'society_gonzalez',0,NULL),(52,'society_loscarlinos',0,NULL),(53,'society_losgordos',0,NULL),(54,'society_mecanicos',0,NULL),(55,'society_mecano',0,NULL),(56,'society_moteros',0,NULL),(57,'society_nightclub',0,NULL),(58,'society_perroscallejeros',0,NULL),(59,'society_sacracoronaunita',0,NULL),(60,'society_scarface',0,NULL),(61,'society_thelostmc',0,NULL),(62,'society_unicorn',0,NULL);
/*!40000 ALTER TABLE `addon_account_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addon_inventory`
--

DROP TABLE IF EXISTS `addon_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addon_inventory`
--

LOCK TABLES `addon_inventory` WRITE;
/*!40000 ALTER TABLE `addon_inventory` DISABLE KEYS */;
INSERT INTO `addon_inventory` VALUES ('property','Propriété',0),('society_aircraftdealer','Airliner',1),('society_ambulance','Ambulance',1),('society_mechanic','MÃ©cano',1),('society_police','Police',1),('society_taxi','Taxi',1);
/*!40000 ALTER TABLE `addon_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addon_inventory_items`
--

DROP TABLE IF EXISTS `addon_inventory_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addon_inventory_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `count` int NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addon_inventory_items`
--

LOCK TABLES `addon_inventory_items` WRITE;
/*!40000 ALTER TABLE `addon_inventory_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `addon_inventory_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aircraft_categories`
--

DROP TABLE IF EXISTS `aircraft_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aircraft_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aircraft_categories`
--

LOCK TABLES `aircraft_categories` WRITE;
/*!40000 ALTER TABLE `aircraft_categories` DISABLE KEYS */;
INSERT INTO `aircraft_categories` VALUES (1,'plane','Planes'),(2,'heli','Helicopters');
/*!40000 ALTER TABLE `aircraft_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aircraftdealer_aircrafts`
--

DROP TABLE IF EXISTS `aircraftdealer_aircrafts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aircraftdealer_aircrafts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) NOT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aircraftdealer_aircrafts`
--

LOCK TABLES `aircraftdealer_aircrafts` WRITE;
/*!40000 ALTER TABLE `aircraftdealer_aircrafts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aircraftdealer_aircrafts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aircrafts`
--

DROP TABLE IF EXISTS `aircrafts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aircrafts` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aircrafts`
--

LOCK TABLES `aircrafts` WRITE;
/*!40000 ALTER TABLE `aircrafts` DISABLE KEYS */;
INSERT INTO `aircrafts` VALUES ('Alpha Z1','alphaz1',1595000,'plane'),('Besra','besra',1150000,'plane'),('Cuban 800','cuban800',240000,'plane'),('Dodo','dodo',500000,'plane'),('Duster','duster',275000,'plane'),('Frogger','frogger',1300000,'heli'),('Howard NX25','howard',975000,'plane'),('Luxor','luxor',1625000,'plane'),('Luxor Deluxe ','luxor2',10000000,'plane'),('Mammatus','mammatus',300000,'plane'),('Maverick','maverick',780000,'heli'),('Nimbus','nimbus',1900000,'plane'),('Shamal','shamal',1150000,'plane'),('Mallard','stunt',250000,'plane'),('SuperVolito','supervolito',2113000,'heli'),('SuperVolito Carbon','supervolito2',3330000,'heli'),('Swift','swift',1500000,'heli'),('Swift Deluxe','swift2',5150000,'heli'),('Velum','velum2',1323350,'plane'),('Vestra','vestra',950000,'plane'),('Volatus','volatus',2295000,'heli');
/*!40000 ALTER TABLE `aircrafts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bans`
--

DROP TABLE IF EXISTS `bans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bans` (
  `id` varchar(50) NOT NULL,
  `steam` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fecha` varchar(50) NOT NULL,
  `tiempo` varchar(50) NOT NULL,
  `admin` varchar(50) NOT NULL,
  `razon` varchar(100) NOT NULL,
  `baneado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bans`
--

LOCK TABLES `bans` WRITE;
/*!40000 ALTER TABLE `bans` DISABLE KEYS */;
/*!40000 ALTER TABLE `bans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bansperm`
--

DROP TABLE IF EXISTS `bansperm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bansperm` (
  `id` varchar(50) NOT NULL,
  `steam` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fecha` varchar(50) NOT NULL,
  `admin` varchar(50) NOT NULL,
  `razon` varchar(100) NOT NULL,
  `baneado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bansperm`
--

LOCK TABLES `bansperm` WRITE;
/*!40000 ALTER TABLE `bansperm` DISABLE KEYS */;
INSERT INTO `bansperm` VALUES ('license:4711108287b99f3ab252b84f510889f480d40462','steam:11000011567f650','discord:463834273431158795','1561417153','????????????????????????????????','ANTIROL','Creepypastamo'),('license:4711108287b99f3ab252b84f510889f480d40462','steam:11000011567f650','discord:463834273431158795','1561417153','????????????????????????????????','ANTIROL','Creepypastamo');
/*!40000 ALTER TABLE `bansperm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billing`
--

DROP TABLE IF EXISTS `billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billing` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=488 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing`
--

LOCK TABLES `billing` WRITE;
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boat_categories`
--

DROP TABLE IF EXISTS `boat_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boat_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boat_categories`
--

LOCK TABLES `boat_categories` WRITE;
/*!40000 ALTER TABLE `boat_categories` DISABLE KEYS */;
INSERT INTO `boat_categories` VALUES ('boat','Boats');
/*!40000 ALTER TABLE `boat_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boatdealer_boats`
--

DROP TABLE IF EXISTS `boatdealer_boats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boatdealer_boats` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) NOT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boatdealer_boats`
--

LOCK TABLES `boatdealer_boats` WRITE;
/*!40000 ALTER TABLE `boatdealer_boats` DISABLE KEYS */;
/*!40000 ALTER TABLE `boatdealer_boats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boats`
--

DROP TABLE IF EXISTS `boats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boats` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boats`
--

LOCK TABLES `boats` WRITE;
/*!40000 ALTER TABLE `boats` DISABLE KEYS */;
INSERT INTO `boats` VALUES ('Dinghy','dinghy',2500,'boat'),('Dinghy2 ','dinghy2',2500,'boat'),('Yacht Dinghy','dinghy4',1500,'boat'),('Jetmax','jetmax',17500,'boat'),('Voilier Marquis','marquis',45500,'boat'),('Seashark','seashark',1500,'boat'),('Seashark2','seashark2',1500,'boat'),('Yacht Seashark','seashark3',1500,'boat'),('Squalo','squalo',12000,'boat'),('Suntrap','suntrap',1500,'boat'),('Toro','toro',15000,'boat'),('Yacht Toro','toro2',15000,'boat'),('Tropic','tropic',10000,'boat'),('Yacht Tropic','tropic2',10000,'boat');
/*!40000 ALTER TABLE `boats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cardealer_vehicles`
--

DROP TABLE IF EXISTS `cardealer_vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cardealer_vehicles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) NOT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cardealer_vehicles`
--

LOCK TABLES `cardealer_vehicles` WRITE;
/*!40000 ALTER TABLE `cardealer_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `cardealer_vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characters`
--

DROP TABLE IF EXISTS `characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `characters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `sex` varchar(1) NOT NULL DEFAULT 'M',
  `height` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters`
--

LOCK TABLES `characters` WRITE;
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datastore`
--

DROP TABLE IF EXISTS `datastore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datastore`
--

LOCK TABLES `datastore` WRITE;
/*!40000 ALTER TABLE `datastore` DISABLE KEYS */;
INSERT INTO `datastore` VALUES ('property','Propriété',0),('society_ambulance','Ambulance',1),('society_bratva','bratva',1),('society_comandom19','comandom19',1),('society_dacapo','dacapo',1),('society_east','east',1),('society_gonzalez','gonzalez',1),('society_loscarlinos','loscarlinos',1),('society_losgordos','losgordos',1),('society_mecanicos','mecanicos',1),('society_moteros','moteros',1),('society_nightclub','Nachtclub',1),('society_perroscallejeros','perroscallejeros',1),('society_police','Police',1),('society_sacracoronaunita','sacracoronaunita',1),('society_scarface','scarface',1),('society_taxi','Taxi',1),('society_thelostmc','TheLostMC',1),('society_unicorn','Unicorn',1),('society_west','west',1),('user_ears','Ears',0),('user_glasses','Glasses',0),('user_helmet','Helmet',0),('user_mask','Mask',0);
/*!40000 ALTER TABLE `datastore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datastore_data`
--

DROP TABLE IF EXISTS `datastore_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datastore_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  `data` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_datastore_owner_name` (`owner`,`name`),
  KEY `index_datastore_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datastore_data`
--

LOCK TABLES `datastore_data` WRITE;
/*!40000 ALTER TABLE `datastore_data` DISABLE KEYS */;
INSERT INTO `datastore_data` VALUES (1,'society_ambulance',NULL,'{}'),(2,'society_bratva',NULL,'{}'),(3,'society_comandom19',NULL,'{}'),(4,'society_dacapo',NULL,'{}'),(5,'society_east',NULL,'{}'),(6,'society_gonzalez',NULL,'{}'),(7,'society_loscarlinos',NULL,'{}'),(8,'society_losgordos',NULL,'{}'),(9,'society_mecanicos',NULL,'{}'),(10,'society_moteros',NULL,'{}'),(11,'society_nightclub',NULL,'{}'),(12,'society_perroscallejeros',NULL,'{}'),(13,'society_police',NULL,'{}'),(14,'society_sacracoronaunita',NULL,'{}'),(15,'society_scarface',NULL,'{}'),(16,'society_taxi',NULL,'{}'),(17,'society_thelostmc',NULL,'{}'),(18,'society_unicorn',NULL,'{}'),(19,'society_west',NULL,'{}'),(20,'property','steam:11000011b415c99','{\"dressing\":[{\"label\":\"Swagg\",\"skin\":{\"eyebrows_2\":0,\"moles_2\":0,\"watches_1\":-1,\"mask_2\":0,\"chain_1\":0,\"glasses_2\":0,\"hair_2\":0,\"helmet_1\":-1,\"watches_2\":0,\"lipstick_2\":0,\"torso_2\":0,\"chain_2\":0,\"sex\":0,\"complexion_1\":0,\"bodyb_1\":0,\"hair_color_1\":0,\"sun_2\":0,\"glasses_1\":0,\"age_1\":0,\"ears_1\":-1,\"pants_1\":4,\"makeup_4\":0,\"complexion_2\":0,\"arms_2\":0,\"beard_2\":0,\"makeup_3\":0,\"shoes_2\":0,\"makeup_2\":0,\"hair_color_2\":0,\"makeup_1\":0,\"shoes_1\":5,\"eyebrows_3\":0,\"bodyb_2\":0,\"beard_3\":0,\"pants_2\":0,\"chest_3\":0,\"bproof_2\":0,\"bags_2\":0,\"tshirt_2\":0,\"eyebrows_1\":0,\"blush_3\":0,\"eye_color\":0,\"blemishes_1\":0,\"lipstick_1\":0,\"mask_1\":0,\"beard_1\":0,\"blush_1\":0,\"bracelets_2\":0,\"torso_1\":7,\"beard_4\":0,\"face\":13,\"helmet_2\":0,\"blush_2\":0,\"blemishes_2\":0,\"chest_2\":0,\"chest_1\":0,\"hair_1\":1,\"lipstick_4\":0,\"moles_1\":0,\"bracelets_1\":-1,\"decals_1\":0,\"eyebrows_4\":0,\"lipstick_3\":0,\"bproof_1\":0,\"bags_1\":0,\"ears_2\":0,\"decals_2\":0,\"tshirt_1\":0,\"skin\":0,\"arms\":1,\"sun_1\":0,\"age_2\":0}},{\"label\":\"G\",\"skin\":{\"eyebrows_2\":0,\"moles_2\":0,\"watches_1\":-1,\"mask_2\":0,\"chain_1\":0,\"glasses_2\":0,\"hair_2\":0,\"helmet_1\":-1,\"chest_2\":0,\"lipstick_2\":0,\"torso_2\":0,\"chain_2\":0,\"sex\":0,\"complexion_1\":0,\"bracelets_2\":0,\"hair_color_1\":0,\"sun_2\":0,\"glasses_1\":0,\"age_1\":0,\"ears_1\":-1,\"pants_1\":4,\"makeup_4\":0,\"complexion_2\":0,\"arms_2\":0,\"beard_2\":0,\"makeup_3\":0,\"lipstick_3\":0,\"makeup_2\":0,\"hair_color_2\":0,\"makeup_1\":0,\"shoes_1\":5,\"eyebrows_3\":0,\"bodyb_2\":0,\"beard_3\":0,\"pants_2\":0,\"chest_3\":0,\"eyebrows_4\":0,\"bags_2\":0,\"tshirt_2\":0,\"eyebrows_1\":0,\"blush_3\":0,\"eye_color\":0,\"blemishes_1\":0,\"lipstick_1\":0,\"blush_2\":0,\"beard_1\":0,\"mask_1\":8,\"blush_1\":0,\"torso_1\":20,\"beard_4\":0,\"face\":13,\"helmet_2\":0,\"bodyb_1\":0,\"hair_1\":1,\"bracelets_1\":-1,\"chest_1\":0,\"moles_1\":0,\"lipstick_4\":0,\"ears_2\":0,\"watches_2\":0,\"decals_1\":0,\"bproof_2\":0,\"bags_1\":0,\"bproof_1\":0,\"tshirt_1\":3,\"blemishes_2\":0,\"skin\":0,\"arms\":1,\"shoes_2\":0,\"decals_2\":0,\"sun_1\":0,\"age_2\":0}}]}'),(21,'user_mask','steam:11000011b415c99','{\"skin\":{\"mask_1\":8,\"mask_2\":0},\"hasMask\":true}'),(22,'user_ears','steam:11000011b415c99','{}'),(23,'user_helmet','steam:11000011b415c99','{}'),(24,'user_glasses','steam:11000011b415c99','{}');
/*!40000 ALTER TABLE `datastore_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dpkeybinds`
--

DROP TABLE IF EXISTS `dpkeybinds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dpkeybinds` (
  `id` varchar(50) DEFAULT NULL,
  `keybind1` varchar(50) DEFAULT 'num4',
  `emote1` varchar(255) DEFAULT '',
  `keybind2` varchar(50) DEFAULT 'num5',
  `emote2` varchar(255) DEFAULT '',
  `keybind3` varchar(50) DEFAULT 'num6',
  `emote3` varchar(255) DEFAULT '',
  `keybind4` varchar(50) DEFAULT 'num7',
  `emote4` varchar(255) DEFAULT '',
  `keybind5` varchar(50) DEFAULT 'num8',
  `emote5` varchar(255) DEFAULT '',
  `keybind6` varchar(50) DEFAULT 'num9',
  `emote6` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dpkeybinds`
--

LOCK TABLES `dpkeybinds` WRITE;
/*!40000 ALTER TABLE `dpkeybinds` DISABLE KEYS */;
/*!40000 ALTER TABLE `dpkeybinds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fine_types`
--

DROP TABLE IF EXISTS `fine_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fine_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `category` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fine_types`
--

LOCK TABLES `fine_types` WRITE;
/*!40000 ALTER TABLE `fine_types` DISABLE KEYS */;
INSERT INTO `fine_types` VALUES (1,'Uso abusibo de claxon',500,1),(2,'Evadir linea continua',500,1),(3,'Robo a banco',55000,3),(4,'Robo a pacific standar',70000,3),(5,'Saltarse un semafaro',1000,1),(6,'Insulto a la autoridad',5000,1),(7,'Saltarse un stop',150,1),(8,'Exceso de velocidad',1000,1),(9,'Asesinato',20000,3),(10,'Intento de asesinato',15000,2),(63,'Mal uso del claxon',200,0),(64,'Fuga de la policia',5000,0),(65,'Cruzar una linea continua',150,0),(66,'ir en sentido contrario',500,0),(67,'Giro de 360º ilegal',300,0),(68,'Conducir por fuera de la carretera',750,0),(69,'Estacionamiento ilegal',275,0),(70,'Saltarse un stop ',150,0),(71,'Saltarse un semaforo',250,0),(72,'Paso ilegal',1000,0),(73,'Conducir un vehiculo ilegal',1500,0),(74,'Exceso de velocidad < 5 km',200,0),(75,'Exceso de velocidad 5-15 km',300,0),(76,'Exceso de velocidad 15-30 km',500,0),(77,'Exceso de velocidad > 30 km',700,0),(78,'Impedir el flujo del tráfico',500,1),(79,'Obstrucción de la justicia',1500,1),(80,'Insultos hacia Policia',400,1),(81,'Insultos hacia Civil',250,1),(82,'Amenaza verbal hacia un Civil',1000,1),(83,'Amenaza verbal hacia un Policia',1250,1),(84,'Proporcionar información falsa',300,1),(85,'Intento de Corrupción',3500,1),(86,'Sin licencia de armas',18000,2),(87,'Posesion de arma blanca',2000,2),(88,'Posesion de pistola',7500,2),(89,'Posesion de subfusil',30000,2),(90,'Posesion de fusil o rifle largo',40000,2),(91,'Intento de vender alguna sustancia ilegal',10000,2),(92,'Fabricacion de una sustancia ilegal',10000,2),(93,'Posesión de una sustancia ilegal',1000,2),(94,'Secuestro de un Civil',7500,2),(95,'Secuestro de un policia',25000,2),(96,'Robo',15000,2),(97,'Robo pequeño',20000,2),(98,'Robo a banco',40000,2),(99,'Intento de asesinato a un civil',5000,3),(100,'Intento de asesinato a un policia',24000,3),(101,'asesinato a un civil',50000,3),(102,'asesinato a un policia',60000,3),(103,'Homicidio involuntario',5000,3),(104,'Fraude',2000,2);
/*!40000 ALTER TABLE `fine_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fine_types_comandom19`
--

DROP TABLE IF EXISTS `fine_types_comandom19`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fine_types_comandom19` (
  `id` int NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `category` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fine_types_comandom19`
--

LOCK TABLES `fine_types_comandom19` WRITE;
/*!40000 ALTER TABLE `fine_types_comandom19` DISABLE KEYS */;
INSERT INTO `fine_types_comandom19` VALUES (1,'Raket',3000,0),(2,'Raket',5000,0),(3,'Raket',10000,1),(4,'Raket',20000,1),(5,'Raket',50000,2),(6,'Raket',150000,3),(7,'Raket',350000,3);
/*!40000 ALTER TABLE `fine_types_comandom19` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fine_types_east`
--

DROP TABLE IF EXISTS `fine_types_east`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fine_types_east` (
  `id` int NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `category` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fine_types_east`
--

LOCK TABLES `fine_types_east` WRITE;
/*!40000 ALTER TABLE `fine_types_east` DISABLE KEYS */;
INSERT INTO `fine_types_east` VALUES (1,'Raket',3000,0),(2,'Raket',5000,0),(3,'Raket',10000,1),(4,'Raket',20000,1),(5,'Raket',50000,2),(6,'Raket',150000,3),(7,'Raket',350000,3);
/*!40000 ALTER TABLE `fine_types_east` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fine_types_gonzalez`
--

DROP TABLE IF EXISTS `fine_types_gonzalez`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fine_types_gonzalez` (
  `id` int NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `category` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fine_types_gonzalez`
--

LOCK TABLES `fine_types_gonzalez` WRITE;
/*!40000 ALTER TABLE `fine_types_gonzalez` DISABLE KEYS */;
INSERT INTO `fine_types_gonzalez` VALUES (1,'Raket',3000,0),(2,'Raket',5000,0),(3,'Raket',10000,1),(4,'Raket',20000,1),(5,'Raket',50000,2),(6,'Raket',150000,3),(7,'Raket',350000,3);
/*!40000 ALTER TABLE `fine_types_gonzalez` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fine_types_loscarlinos`
--

DROP TABLE IF EXISTS `fine_types_loscarlinos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fine_types_loscarlinos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `category` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fine_types_loscarlinos`
--

LOCK TABLES `fine_types_loscarlinos` WRITE;
/*!40000 ALTER TABLE `fine_types_loscarlinos` DISABLE KEYS */;
INSERT INTO `fine_types_loscarlinos` VALUES (1,'Raket',3000,0),(2,'Raket',5000,0),(3,'Raket',10000,1),(4,'Raket',20000,1),(5,'Raket',50000,2),(6,'Raket',150000,3),(7,'Raket',350000,3);
/*!40000 ALTER TABLE `fine_types_loscarlinos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fine_types_losgordos`
--

DROP TABLE IF EXISTS `fine_types_losgordos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fine_types_losgordos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `category` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fine_types_losgordos`
--

LOCK TABLES `fine_types_losgordos` WRITE;
/*!40000 ALTER TABLE `fine_types_losgordos` DISABLE KEYS */;
INSERT INTO `fine_types_losgordos` VALUES (2,'Raket',5000,0),(3,'Raket',10000,1),(4,'Raket',20000,1),(5,'Raket',50000,2),(6,'Raket',150000,3),(7,'Raket',350000,3);
/*!40000 ALTER TABLE `fine_types_losgordos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fine_types_mecanicos`
--

DROP TABLE IF EXISTS `fine_types_mecanicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fine_types_mecanicos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `category` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fine_types_mecanicos`
--

LOCK TABLES `fine_types_mecanicos` WRITE;
/*!40000 ALTER TABLE `fine_types_mecanicos` DISABLE KEYS */;
INSERT INTO `fine_types_mecanicos` VALUES (1,'Raket',3000,0),(2,'Raket',5000,0),(3,'Raket',10000,1),(4,'Raket',20000,1),(5,'Raket',50000,2),(6,'Raket',150000,3),(7,'Raket',350000,3);
/*!40000 ALTER TABLE `fine_types_mecanicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fine_types_moteros`
--

DROP TABLE IF EXISTS `fine_types_moteros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fine_types_moteros` (
  `id` int NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `category` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fine_types_moteros`
--

LOCK TABLES `fine_types_moteros` WRITE;
/*!40000 ALTER TABLE `fine_types_moteros` DISABLE KEYS */;
INSERT INTO `fine_types_moteros` VALUES (2,'Raket',5000,0),(3,'Raket',10000,1),(4,'Raket',20000,1),(5,'Raket',50000,2),(6,'Raket',150000,3),(7,'Raket',350000,3);
/*!40000 ALTER TABLE `fine_types_moteros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fine_types_perroscallejeros`
--

DROP TABLE IF EXISTS `fine_types_perroscallejeros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fine_types_perroscallejeros` (
  `id` int NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `category` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fine_types_perroscallejeros`
--

LOCK TABLES `fine_types_perroscallejeros` WRITE;
/*!40000 ALTER TABLE `fine_types_perroscallejeros` DISABLE KEYS */;
INSERT INTO `fine_types_perroscallejeros` VALUES (1,'Raket',3000,0),(2,'Raket',5000,0),(3,'Raket',10000,1),(4,'Raket',20000,1),(5,'Raket',50000,2),(6,'Raket',150000,3),(7,'Raket',350000,3);
/*!40000 ALTER TABLE `fine_types_perroscallejeros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fine_types_sacracoronaunita`
--

DROP TABLE IF EXISTS `fine_types_sacracoronaunita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fine_types_sacracoronaunita` (
  `id` int NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `category` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fine_types_sacracoronaunita`
--

LOCK TABLES `fine_types_sacracoronaunita` WRITE;
/*!40000 ALTER TABLE `fine_types_sacracoronaunita` DISABLE KEYS */;
INSERT INTO `fine_types_sacracoronaunita` VALUES (1,'Raket',3000,0),(2,'Raket',5000,0),(3,'Raket',10000,1),(4,'Raket',20000,1),(5,'Raket',50000,2),(6,'Raket',150000,3),(7,'Raket',350000,3);
/*!40000 ALTER TABLE `fine_types_sacracoronaunita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fine_types_scarface`
--

DROP TABLE IF EXISTS `fine_types_scarface`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fine_types_scarface` (
  `id` int NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `category` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fine_types_scarface`
--

LOCK TABLES `fine_types_scarface` WRITE;
/*!40000 ALTER TABLE `fine_types_scarface` DISABLE KEYS */;
INSERT INTO `fine_types_scarface` VALUES (1,'Raket',3000,0),(2,'Raket',5000,0),(3,'Raket',10000,1),(4,'Raket',20000,1),(5,'Raket',50000,2),(6,'Raket',150000,3),(7,'Raket',350000,3);
/*!40000 ALTER TABLE `fine_types_scarface` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fine_types_thelostmc`
--

DROP TABLE IF EXISTS `fine_types_thelostmc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fine_types_thelostmc` (
  `id` int NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `category` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fine_types_thelostmc`
--

LOCK TABLES `fine_types_thelostmc` WRITE;
/*!40000 ALTER TABLE `fine_types_thelostmc` DISABLE KEYS */;
INSERT INTO `fine_types_thelostmc` VALUES (1,'Raket',3000,0),(2,'Raket',5000,0),(3,'Raket',10000,1),(4,'Raket',20000,1),(5,'Raket',50000,2),(6,'Raket',150000,3),(7,'Raket',350000,3);
/*!40000 ALTER TABLE `fine_types_thelostmc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fine_types_west`
--

DROP TABLE IF EXISTS `fine_types_west`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fine_types_west` (
  `id` int NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `category` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fine_types_west`
--

LOCK TABLES `fine_types_west` WRITE;
/*!40000 ALTER TABLE `fine_types_west` DISABLE KEYS */;
INSERT INTO `fine_types_west` VALUES (1,'Raket',3000,0),(2,'Raket',5000,0),(3,'Raket',10000,1),(4,'Raket',20000,1),(5,'Raket',50000,2),(6,'Raket',150000,3),(7,'Raket',350000,3);
/*!40000 ALTER TABLE `fine_types_west` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glovebox_inventory`
--

DROP TABLE IF EXISTS `glovebox_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `glovebox_inventory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plate` (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glovebox_inventory`
--

LOCK TABLES `glovebox_inventory` WRITE;
/*!40000 ALTER TABLE `glovebox_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `glovebox_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `limit` int NOT NULL DEFAULT '-1',
  `rare` int NOT NULL DEFAULT '0',
  `can_remove` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES ('alive_chicken','Pollo vivo',25,0,1),('armor','Chaleco antibalas',1,0,1),('bandage','Vendajes',25,0,1),('beer','Beer',-1,0,1),('blowpipe','Antorchas',25,0,1),('bolcacahuetes','Bolsa de cacahuetes',5,0,1),('bolchips','Bolsa de papas',5,0,1),('bolnoixcajou','Tazon nueces de anacardo',5,0,1),('bolpistache','Cuenco de pistachos',5,0,1),('bread','Barra de pan',50,0,1),('carokit','Medicinas',3,0,1),('carotool','Botiquin de medicinas',4,0,1),('cigarette','Cigarette',-1,0,1),('clip','Municion',2,0,1),('clothe','Ropa',25,0,1),('coke','COCAINA',50,0,1),('coke_pooch','BOLSAS COCAINA',25,0,1),('contrat','Salvamento',15,0,1),('copper','Cobre',25,0,1),('croquettes','Comida de mascosta',25,0,1),('cutted_wood','Tronco cortado',25,0,1),('cutting_pliers','Alicates',5,0,1),('desfibrillateur','Desfibrilador',2,0,1),('diamond','Diamante',25,0,1),('drpepper','Dr. Pepper',5,0,1),('energy','Energy Drink',5,0,1),('essence','Esencia',24,0,1),('fabric','Tela',25,0,1),('firstaidkit','Medicina',5,0,1),('fish','Pescado',25,0,1),('fishbait','Cebo de pescado',30,0,1),('fishingrod','Caña de pescar',2,0,1),('fixkit','Kit de reparacion',3,0,1),('fixtool','Herramientas reparacion',6,0,1),('gazbottle','Botella de gas',11,0,1),('gold','Oro',21,0,1),('golem','Golem',5,0,1),('grapperaisin','Ramillo de Uvas',5,0,1),('handcuff','Esposas',1,0,1),('ice','Hielo',5,0,1),('icetea','Te helado',5,0,1),('iron','Hierro',42,0,1),('jager','Jägermeister',5,0,1),('jagerbomb','Jägerbomb',5,0,1),('jagercerbere','Jäger Cerberus',3,0,1),('joint','Joint',-1,0,1),('jusfruit','Zumo',5,0,1),('limonade','Limonada',5,0,1),('martini','White Martini',5,0,1),('medikit','Kit Medico',25,0,1),('menthe','Minze Blatt',10,0,1),('meth','META',50,0,1),('meth_pooch','BOLSAS META',25,0,1),('metreshooter','Shooter meter',3,0,1),('mixapero','Aperitif Mix',3,0,1),('mojito','Mojito',5,0,1),('moneywashid','Llave de lavadora',2,0,1),('opium','OPIO',50,0,1),('opium_pooch','BOLSAS OPIO',25,0,1),('packaged_chicken','Pollo en una bandeja',25,0,1),('packaged_plank','Paquete de planchas',25,0,1),('petrol','Petroleo',24,0,1),('petrol_raffin','Petroleo refinado',24,0,1),('phone','Telefono',1,0,1),('pizza','Pizza',-1,0,1),('rhum','Ron',5,0,1),('rhumcoca','Ron-Cola',5,0,1),('rhumfruit','Ron-Fruta',5,0,1),('saucisson','Salchicha',5,0,1),('shark','Tiburón',-1,0,1),('slaughtered_chicken','Pollo sacrificado',25,0,1),('soda','Soda',5,0,1),('stone','Piedra',7,0,1),('teqpaf','Teq\'paf',5,0,1),('tequila','Tequila',5,0,1),('turtle','Tortuga marina',3,0,1),('turtlebait','Cebo de tortuga',30,0,1),('vodka','Vodka',5,0,1),('vodkaenergy','Vodka-Energy',5,0,1),('vodkafruit','Vodka Fruchtsaft',5,0,1),('washed_stone','Piedra lavada',7,0,1),('water','Botella de agua',50,0,1),('weed','MARIHUANA',50,0,1),('weed_pooch','BOLSAS WEED',25,0,1),('whisky','Whisky',5,0,1),('whiskycoca','Whisky-Cola',5,0,1),('wood','Madera',25,0,1),('wool','Lana',40,0,1),('yusuf','Luxushaut',-1,0,1);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jail`
--

DROP TABLE IF EXISTS `jail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jail` (
  `identifier` varchar(100) NOT NULL,
  `jail_time` int NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jail`
--

LOCK TABLES `jail` WRITE;
/*!40000 ALTER TABLE `jail` DISABLE KEYS */;
/*!40000 ALTER TABLE `jail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_grades`
--

DROP TABLE IF EXISTS `job_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_grades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_grades`
--

LOCK TABLES `job_grades` WRITE;
/*!40000 ALTER TABLE `job_grades` DISABLE KEYS */;
INSERT INTO `job_grades` VALUES (2,'ambulance',0,'ambulance','Enfermero',1000,'{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}','{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),(3,'ambulance',1,'doctor','Medico',1250,'{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}','{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),(4,'ambulance',2,'chief_doctor','Doctor',1400,'{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}','{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),(5,'ambulance',3,'boss','Jefe',1500,'{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}','{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),(6,'police',0,'recruit','Agente',1200,'{}','{}'),(7,'police',1,'officer','Oficial',2000,'{}','{}'),(8,'police',2,'sergeant','Sargento',2500,'{}','{}'),(9,'police',3,'lieutenant','Inspector',3100,'{}','{}'),(10,'police',4,'boss','Jefe',3500,'{}','{}'),(16,'taxi',0,'recrue','Trabajador',1000,'{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}','{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),(17,'taxi',1,'novice','Experimentado',1000,'{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}','{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),(18,'taxi',2,'experimente','Profesional',1200,'{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}','{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),(19,'taxi',3,'uber','SubJefe',1500,'{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}','{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),(20,'taxi',4,'boss','Jefe',1600,'{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}','{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),(53,'offpolice',0,'recruit','Agente',900,'{}','{}'),(54,'offpolice',1,'officer','Oficial',1000,'{}','{}'),(55,'offpolice',2,'sergeant','Sargento',1100,'{}','{}'),(56,'offpolice',3,'lieutenant','Inspector',1200,'{}','{}'),(57,'offpolice',4,'boss','Jefe',1300,'{}','{}'),(58,'offambulance',0,'ambulance','Enfermero',1000,'{}','{}'),(59,'offambulance',1,'doctor','Medico',1100,'{}','{}'),(60,'offambulance',2,'chief_doctor','Doctor',1200,'{}','{}'),(61,'offambulance',3,'boss','Jefe',1300,'{}','{}'),(76,'ambulance',0,'ambulance','Enfermero',1000,'{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}','{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),(77,'ambulance',1,'doctor','Medico',1250,'{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}','{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),(78,'ambulance',2,'chief_doctor','Doctor',1400,'{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}','{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),(79,'ambulance',3,'boss','Jefe',1500,'{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}','{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),(133,'mechanic',0,'recrue','Trabajador',1000,'{}','{}'),(134,'mechanic',1,'novice','Profesional',1100,'{}','{}'),(135,'mechanic',2,'experimente','Experimentado',1200,'{}','{}'),(136,'mechanic',3,'chief','Sub Jefe',1400,'{}','{}'),(137,'mechanic',4,'boss','Jefe',1600,'{}','{}'),(143,'ambulance',0,'ambulance','Ambulancier',1000,'{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}','{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),(144,'ambulance',1,'doctor','Medecin',1250,'{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}','{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),(145,'ambulance',2,'chief_doctor','Medecin-chef',1400,'{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}','{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),(146,'ambulance',3,'boss','Chirurgien',1500,'{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}','{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),(147,'ambulance',0,'ambulance','Ambulancier',1000,'{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":249,\"torso_2\":1,\"pants_1\":96,\"pants_2\":1,\"shoes\":9,\"decals_1\":57,\"decals_2\":0,\"helmet_1\":122,\"helmet_2\":1,\"arms\":90}','{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),(148,'ambulance',1,'doctor','Medecin',1250,'{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":249,\"torso_2\":1,\"pants_1\":96,\"pants_2\":1,\"shoes\":9,\"decals_1\":57,\"decals_2\":0,\"helmet_1\":122,\"helmet_2\":1,\"arms\":90}','{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),(149,'ambulance',2,'chief_doctor','Medecin-chef',1400,'{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":249,\"torso_2\":1,\"pants_1\":96,\"pants_2\":1,\"shoes\":9,\"decals_1\":57,\"decals_2\":0,\"helmet_1\":122,\"helmet_2\":1,\"arms\":90}','{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),(150,'ambulance',3,'boss','Chirurgien',1500,'{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":249,\"torso_2\":1,\"pants_1\":96,\"pants_2\":1,\"shoes\":9,\"decals_1\":57,\"decals_2\":0,\"helmet_1\":122,\"helmet_2\":1,\"arms\":90}','{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),(151,'ambulance',1,'doctor','Medecin',1250,'{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":249,\"torso_2\":1,\"pants_1\":96,\"pants_2\":1,\"shoes\":9,\"decals_1\":57,\"decals_2\":0,\"helmet_1\":122,\"helmet_2\":1,\"arms\":90}','{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),(152,'ambulance',2,'chief_doctor','Medecin-chef',1400,'{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":249,\"torso_2\":1,\"pants_1\":96,\"pants_2\":1,\"shoes\":9,\"decals_1\":57,\"decals_2\":0,\"helmet_1\":122,\"helmet_2\":1,\"arms\":90}','{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),(153,'ambulance',3,'boss','Chirurgien',1500,'{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":249,\"torso_2\":1,\"pants_1\":96,\"pants_2\":1,\"shoes\":9,\"decals_1\":57,\"decals_2\":0,\"helmet_1\":122,\"helmet_2\":1,\"arms\":90}','{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),(154,'unemployed',0,'En paro','Desempleado',300,'{}','{}'),(155,'lumberjack',0,'employee','Intérimaire',0,'{}','{}'),(156,'fisherman',0,'employee','Intérimaire',0,'{}','{}'),(157,'fueler',0,'employee','Intérimaire',0,'{}','{}'),(158,'reporter',0,'employee','Intérimaire',0,'{}','{}'),(159,'tailor',0,'employee','Intérimaire',0,'{\"mask_1\":0,\"arms\":1,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":24,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":36,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":48,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}','{\"mask_1\":0,\"arms\":5,\"glasses_1\":5,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":1,\"torso_1\":52,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":1,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":23,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":42,\"tshirt_2\":4,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":36,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}'),(160,'miner',0,'employee','Intérimaire',0,'{\"tshirt_2\":1,\"ears_1\":8,\"glasses_1\":15,\"torso_2\":0,\"ears_2\":2,\"glasses_2\":3,\"shoes_2\":1,\"pants_1\":75,\"shoes_1\":51,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":7,\"torso_1\":71,\"tshirt_1\":59,\"arms\":2,\"bags_2\":0,\"helmet_1\":0}','{}'),(161,'slaughterer',0,'employee','Intérimaire',0,'{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":67,\"pants_1\":36,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":0,\"torso_1\":56,\"beard_2\":6,\"shoes_1\":12,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":15,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":0,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}','{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":72,\"pants_1\":45,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":1,\"torso_1\":49,\"beard_2\":6,\"shoes_1\":24,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":9,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}');
/*!40000 ALTER TABLE `job_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES ('ambulance','EMS',1),('fisherman','Pescador',0),('fueler','Gasolinero',0),('lumberjack','Talador',0),('mechanic','Mecanico',1),('miner','Minero',0),('offambulance','Off-EMS',1),('offpolice','Off-Lspd',1),('police','LSPD',1),('reporter','Reportero',0),('slaughterer','Carnicero',0),('tailor','Costurero',0),('taxi','Taxista',1),('unemployed','Desempleado',0);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licenses`
--

DROP TABLE IF EXISTS `licenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licenses`
--

LOCK TABLES `licenses` WRITE;
/*!40000 ALTER TABLE `licenses` DISABLE KEYS */;
INSERT INTO `licenses` VALUES ('boat','licencia de barco'),('dmv','leyes de transito'),('drive','Permis de conducir'),('drive_bike','Permiso de moto'),('drive_truck','Permiso de camion'),('weapon','licencia de arma');
/*!40000 ALTER TABLE `licenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owned_aircrafts`
--

DROP TABLE IF EXISTS `owned_aircrafts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owned_aircrafts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vehicle` longtext NOT NULL,
  `owner` varchar(60) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'State of the aircraft',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owned_aircrafts`
--

LOCK TABLES `owned_aircrafts` WRITE;
/*!40000 ALTER TABLE `owned_aircrafts` DISABLE KEYS */;
/*!40000 ALTER TABLE `owned_aircrafts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owned_boats`
--

DROP TABLE IF EXISTS `owned_boats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owned_boats` (
  `owner` varchar(30) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'State of the boat',
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owned_boats`
--

LOCK TABLES `owned_boats` WRITE;
/*!40000 ALTER TABLE `owned_boats` DISABLE KEYS */;
/*!40000 ALTER TABLE `owned_boats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owned_properties`
--

DROP TABLE IF EXISTS `owned_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owned_properties` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int NOT NULL,
  `owner` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owned_properties`
--

LOCK TABLES `owned_properties` WRITE;
/*!40000 ALTER TABLE `owned_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `owned_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owned_vehicles`
--

DROP TABLE IF EXISTS `owned_vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owned_vehicles` (
  `owner` varchar(22) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Etat de la voiture',
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT '0',
  `fourrieremecano` tinyint(1) NOT NULL DEFAULT '0',
  `vehiclename` varchar(50) NOT NULL DEFAULT 'vehiculo',
  PRIMARY KEY (`plate`),
  KEY `vehsowned` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owned_vehicles`
--

LOCK TABLES `owned_vehicles` WRITE;
/*!40000 ALTER TABLE `owned_vehicles` DISABLE KEYS */;
INSERT INTO `owned_vehicles` VALUES ('steam:11000011b415c99',0,'BVI 267','{\"plateIndex\":4,\"wheelColor\":156,\"modFrontWheels\":-1,\"modStruts\":-1,\"modArchCover\":-1,\"tyreSmokeColor\":[255,255,255],\"modTrimB\":-1,\"modDashboard\":-1,\"modRearBumper\":-1,\"modRoof\":-1,\"modTransmission\":-1,\"modOrnaments\":-1,\"neonColor\":[255,0,255],\"modTurbo\":false,\"modVanityPlate\":-1,\"modFrame\":-1,\"modDoorSpeaker\":-1,\"modGrille\":-1,\"modTrimA\":-1,\"modEngine\":-1,\"modHood\":-1,\"modSideSkirt\":-1,\"modBackWheels\":-1,\"modSteeringWheel\":-1,\"modTrunk\":-1,\"extras\":{\"1\":false},\"windowTint\":-1,\"neonEnabled\":[false,false,false,false],\"modTank\":-1,\"wheels\":0,\"modFender\":-1,\"modAirFilter\":-1,\"modSmokeEnabled\":false,\"modExhaust\":-1,\"modSeats\":-1,\"plate\":\"BVI 267\",\"modSpeakers\":-1,\"color2\":28,\"modEngineBlock\":-1,\"modShifterLeavers\":-1,\"modSpoilers\":-1,\"modHorns\":-1,\"color1\":112,\"modBrakes\":-1,\"modArmor\":-1,\"modAPlate\":-1,\"dirtLevel\":4.0,\"pearlescentColor\":112,\"modLivery\":0,\"modDial\":-1,\"modSuspension\":-1,\"modRightFender\":-1,\"model\":1171614426,\"health\":1000,\"modXenon\":false,\"modHydrolic\":-1,\"modAerials\":-1,\"modFrontBumper\":-1,\"modWindows\":-1,\"modPlateHolder\":-1}','car','ambulance',0,0,'vehiculo'),('steam:11000011b415c99',0,'JFN 295','{\"modTrimB\":-1,\"color2\":8,\"modAirFilter\":-1,\"modSteeringWheel\":-1,\"plate\":\"JFN 295\",\"wheels\":1,\"tyreSmokeColor\":[255,255,255],\"extras\":{\"2\":true,\"1\":false},\"modDoorSpeaker\":-1,\"modLivery\":-1,\"modHood\":-1,\"modArmor\":-1,\"modAerials\":-1,\"modRightFender\":-1,\"modSuspension\":-1,\"modOrnaments\":-1,\"modSmokeEnabled\":1,\"modFender\":-1,\"modArchCover\":-1,\"dirtLevel\":0.0052273636683822,\"modEngine\":-1,\"modSeats\":-1,\"modShifterLeavers\":-1,\"health\":1000,\"modFrame\":-1,\"modGrille\":-1,\"plateIndex\":3,\"modVanityPlate\":-1,\"model\":784565758,\"modTrimA\":-1,\"modWindows\":-1,\"modAPlate\":-1,\"pearlescentColor\":134,\"modTrunk\":-1,\"modExhaust\":-1,\"modTurbo\":false,\"neonColor\":[255,0,255],\"windowTint\":-1,\"modBrakes\":-1,\"wheelColor\":156,\"modRearBumper\":-1,\"modTank\":-1,\"modDial\":-1,\"neonEnabled\":[false,false,false,false],\"modSideSkirt\":-1,\"modXenon\":false,\"modFrontBumper\":-1,\"modDashboard\":-1,\"modRoof\":-1,\"modHorns\":-1,\"modStruts\":-1,\"modSpoilers\":-1,\"modHydrolic\":-1,\"modTransmission\":-1,\"modBackWheels\":-1,\"color1\":8,\"modPlateHolder\":-1,\"modFrontWheels\":-1,\"modSpeakers\":-1,\"modEngineBlock\":-1}','car',NULL,0,0,'Coquette'),('steam:11000011b415c99',0,'LMM 081','{\"model\":1672195559,\"plate\":\"LMM 081\"}','car',NULL,0,0,'vehiculo');
/*!40000 ALTER TABLE `owned_vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_app_chat`
--

DROP TABLE IF EXISTS `phone_app_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_app_chat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_app_chat`
--

LOCK TABLES `phone_app_chat` WRITE;
/*!40000 ALTER TABLE `phone_app_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_app_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_calls`
--

DROP TABLE IF EXISTS `phone_calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_calls` (
  `id` int NOT NULL AUTO_INCREMENT,
  `owner` varchar(10) NOT NULL COMMENT 'Name',
  `num` varchar(10) NOT NULL COMMENT 'Phone Number',
  `incoming` int NOT NULL COMMENT 'Define Incoming Call',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `accepts` int NOT NULL COMMENT 'Accept Call',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_calls`
--

LOCK TABLES `phone_calls` WRITE;
/*!40000 ALTER TABLE `phone_calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_messages`
--

DROP TABLE IF EXISTS `phone_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isRead` int NOT NULL DEFAULT '0',
  `owner` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_messages`
--

LOCK TABLES `phone_messages` WRITE;
/*!40000 ALTER TABLE `phone_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_users_contacts`
--

DROP TABLE IF EXISTS `phone_users_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_users_contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_users_contacts`
--

LOCK TABLES `phone_users_contacts` WRITE;
/*!40000 ALTER TABLE `phone_users_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_users_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playerstattoos`
--

DROP TABLE IF EXISTS `playerstattoos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playerstattoos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `tattoos` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playerstattoos`
--

LOCK TABLES `playerstattoos` WRITE;
/*!40000 ALTER TABLE `playerstattoos` DISABLE KEYS */;
/*!40000 ALTER TABLE `playerstattoos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `properties` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int DEFAULT NULL,
  `is_room` int DEFAULT NULL,
  `is_gateway` int DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties`
--

LOCK TABLES `properties` WRITE;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` VALUES (1,'WhispymoundDrive','2677 Whispymound Drive','{\"y\":564.89,\"z\":182.959,\"x\":119.384}','{\"x\":117.347,\"y\":559.506,\"z\":183.304}','{\"y\":557.032,\"z\":183.301,\"x\":118.037}','{\"y\":567.798,\"z\":182.131,\"x\":119.249}','[]',NULL,1,1,0,'{\"x\":118.748,\"y\":566.573,\"z\":175.697}',1500000),(2,'NorthConkerAvenue2045','2045 North Conker Avenue','{\"x\":372.796,\"y\":428.327,\"z\":144.685}','{\"x\":373.548,\"y\":422.982,\"z\":144.907},','{\"y\":420.075,\"z\":145.904,\"x\":372.161}','{\"x\":372.454,\"y\":432.886,\"z\":143.443}','[]',NULL,1,1,0,'{\"x\":377.349,\"y\":429.422,\"z\":137.3}',1500000),(3,'RichardMajesticApt2','Richard Majestic, Apt 2','{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}','{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}','{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}','{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}','[]',NULL,1,1,0,'{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}',1700000),(4,'NorthConkerAvenue2044','2044 North Conker Avenue','{\"y\":440.8,\"z\":146.702,\"x\":346.964}','{\"y\":437.456,\"z\":148.394,\"x\":341.683}','{\"y\":435.626,\"z\":148.394,\"x\":339.595}','{\"x\":350.535,\"y\":443.329,\"z\":145.764}','[]',NULL,1,1,0,'{\"x\":337.726,\"y\":436.985,\"z\":140.77}',1500000),(5,'WildOatsDrive','3655 Wild Oats Drive','{\"y\":502.696,\"z\":136.421,\"x\":-176.003}','{\"y\":497.817,\"z\":136.653,\"x\":-174.349}','{\"y\":495.069,\"z\":136.666,\"x\":-173.331}','{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}','[]',NULL,1,1,0,'{\"x\":-174.725,\"y\":493.095,\"z\":129.043}',1500000),(6,'HillcrestAvenue2862','2862 Hillcrest Avenue','{\"y\":596.58,\"z\":142.641,\"x\":-686.554}','{\"y\":591.988,\"z\":144.392,\"x\":-681.728}','{\"y\":590.608,\"z\":144.392,\"x\":-680.124}','{\"y\":599.019,\"z\":142.059,\"x\":-689.492}','[]',NULL,1,1,0,'{\"x\":-680.46,\"y\":588.6,\"z\":136.769}',1500000),(7,'LowEndApartment','Appartement de base','{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}','{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}','{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}','{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}','[]',NULL,1,1,0,'{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}',562500),(8,'MadWayneThunder','2113 Mad Wayne Thunder','{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}','{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}','{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}','{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}','[]',NULL,1,1,0,'{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}',1500000),(9,'HillcrestAvenue2874','2874 Hillcrest Avenue','{\"x\":-853.346,\"y\":696.678,\"z\":147.782}','{\"y\":690.875,\"z\":151.86,\"x\":-859.961}','{\"y\":688.361,\"z\":151.857,\"x\":-859.395}','{\"y\":701.628,\"z\":147.773,\"x\":-855.007}','[]',NULL,1,1,0,'{\"x\":-858.543,\"y\":697.514,\"z\":144.253}',1500000),(10,'HillcrestAvenue2868','2868 Hillcrest Avenue','{\"y\":620.494,\"z\":141.588,\"x\":-752.82}','{\"y\":618.62,\"z\":143.153,\"x\":-759.317}','{\"y\":617.629,\"z\":143.153,\"x\":-760.789}','{\"y\":621.281,\"z\":141.254,\"x\":-750.919}','[]',NULL,1,1,0,'{\"x\":-762.504,\"y\":618.992,\"z\":135.53}',1500000),(11,'TinselTowersApt12','Tinsel Towers, Apt 42','{\"y\":37.025,\"z\":42.58,\"x\":-618.299}','{\"y\":58.898,\"z\":97.2,\"x\":-603.301}','{\"y\":58.941,\"z\":97.2,\"x\":-608.741}','{\"y\":30.603,\"z\":42.524,\"x\":-620.017}','[]',NULL,1,1,0,'{\"x\":-622.173,\"y\":54.585,\"z\":96.599}',1700000),(12,'MiltonDrive','Milton Drive','{\"x\":-775.17,\"y\":312.01,\"z\":84.658}',NULL,NULL,'{\"x\":-775.346,\"y\":306.776,\"z\":84.7}','[]',NULL,0,0,1,NULL,0),(13,'Modern1Apartment','Appartement Moderne 1',NULL,'{\"x\":-784.194,\"y\":323.636,\"z\":210.997}','{\"x\":-779.751,\"y\":323.385,\"z\":210.997}',NULL,'[\"apa_v_mp_h_01_a\"]','MiltonDrive',0,1,0,'{\"x\":-766.661,\"y\":327.672,\"z\":210.396}',1300000),(14,'Modern2Apartment','Appartement Moderne 2',NULL,'{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}','{\"x\":-781.808,\"y\":315.866,\"z\":186.913}',NULL,'[\"apa_v_mp_h_01_c\"]','MiltonDrive',0,1,0,'{\"x\":-795.735,\"y\":326.757,\"z\":186.313}',1300000),(15,'Modern3Apartment','Appartement Moderne 3',NULL,'{\"x\":-774.012,\"y\":342.042,\"z\":195.686}','{\"x\":-779.057,\"y\":342.063,\"z\":195.686}',NULL,'[\"apa_v_mp_h_01_b\"]','MiltonDrive',0,1,0,'{\"x\":-765.386,\"y\":330.782,\"z\":195.08}',1300000),(16,'Mody1Apartment','Appartement Mode 1',NULL,'{\"x\":-784.194,\"y\":323.636,\"z\":210.997}','{\"x\":-779.751,\"y\":323.385,\"z\":210.997}',NULL,'[\"apa_v_mp_h_02_a\"]','MiltonDrive',0,1,0,'{\"x\":-766.615,\"y\":327.878,\"z\":210.396}',1300000),(17,'Mody2Apartment','Appartement Mode 2',NULL,'{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}','{\"x\":-781.808,\"y\":315.866,\"z\":186.913}',NULL,'[\"apa_v_mp_h_02_c\"]','MiltonDrive',0,1,0,'{\"x\":-795.297,\"y\":327.092,\"z\":186.313}',1300000),(18,'Mody3Apartment','Appartement Mode 3',NULL,'{\"x\":-774.012,\"y\":342.042,\"z\":195.686}','{\"x\":-779.057,\"y\":342.063,\"z\":195.686}',NULL,'[\"apa_v_mp_h_02_b\"]','MiltonDrive',0,1,0,'{\"x\":-765.303,\"y\":330.932,\"z\":195.085}',1300000),(19,'Vibrant1Apartment','Appartement Vibrant 1',NULL,'{\"x\":-784.194,\"y\":323.636,\"z\":210.997}','{\"x\":-779.751,\"y\":323.385,\"z\":210.997}',NULL,'[\"apa_v_mp_h_03_a\"]','MiltonDrive',0,1,0,'{\"x\":-765.885,\"y\":327.641,\"z\":210.396}',1300000),(20,'Vibrant2Apartment','Appartement Vibrant 2',NULL,'{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}','{\"x\":-781.808,\"y\":315.866,\"z\":186.913}',NULL,'[\"apa_v_mp_h_03_c\"]','MiltonDrive',0,1,0,'{\"x\":-795.607,\"y\":327.344,\"z\":186.313}',1300000),(21,'Vibrant3Apartment','Appartement Vibrant 3',NULL,'{\"x\":-774.012,\"y\":342.042,\"z\":195.686}','{\"x\":-779.057,\"y\":342.063,\"z\":195.686}',NULL,'[\"apa_v_mp_h_03_b\"]','MiltonDrive',0,1,0,'{\"x\":-765.525,\"y\":330.851,\"z\":195.085}',1300000),(22,'Sharp1Apartment','Appartement Persan 1',NULL,'{\"x\":-784.194,\"y\":323.636,\"z\":210.997}','{\"x\":-779.751,\"y\":323.385,\"z\":210.997}',NULL,'[\"apa_v_mp_h_04_a\"]','MiltonDrive',0,1,0,'{\"x\":-766.527,\"y\":327.89,\"z\":210.396}',1300000),(23,'Sharp2Apartment','Appartement Persan 2',NULL,'{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}','{\"x\":-781.808,\"y\":315.866,\"z\":186.913}',NULL,'[\"apa_v_mp_h_04_c\"]','MiltonDrive',0,1,0,'{\"x\":-795.642,\"y\":326.497,\"z\":186.313}',1300000),(24,'Sharp3Apartment','Appartement Persan 3',NULL,'{\"x\":-774.012,\"y\":342.042,\"z\":195.686}','{\"x\":-779.057,\"y\":342.063,\"z\":195.686}',NULL,'[\"apa_v_mp_h_04_b\"]','MiltonDrive',0,1,0,'{\"x\":-765.503,\"y\":331.318,\"z\":195.085}',1300000),(25,'Monochrome1Apartment','Appartement Monochrome 1',NULL,'{\"x\":-784.194,\"y\":323.636,\"z\":210.997}','{\"x\":-779.751,\"y\":323.385,\"z\":210.997}',NULL,'[\"apa_v_mp_h_05_a\"]','MiltonDrive',0,1,0,'{\"x\":-766.289,\"y\":328.086,\"z\":210.396}',1300000),(26,'Monochrome2Apartment','Appartement Monochrome 2',NULL,'{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}','{\"x\":-781.808,\"y\":315.866,\"z\":186.913}',NULL,'[\"apa_v_mp_h_05_c\"]','MiltonDrive',0,1,0,'{\"x\":-795.692,\"y\":326.762,\"z\":186.313}',1300000),(27,'Monochrome3Apartment','Appartement Monochrome 3',NULL,'{\"x\":-774.012,\"y\":342.042,\"z\":195.686}','{\"x\":-779.057,\"y\":342.063,\"z\":195.686}',NULL,'[\"apa_v_mp_h_05_b\"]','MiltonDrive',0,1,0,'{\"x\":-765.094,\"y\":330.976,\"z\":195.085}',1300000),(28,'Seductive1Apartment','Appartement Séduisant 1',NULL,'{\"x\":-784.194,\"y\":323.636,\"z\":210.997}','{\"x\":-779.751,\"y\":323.385,\"z\":210.997}',NULL,'[\"apa_v_mp_h_06_a\"]','MiltonDrive',0,1,0,'{\"x\":-766.263,\"y\":328.104,\"z\":210.396}',1300000),(29,'Seductive2Apartment','Appartement Séduisant 2',NULL,'{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}','{\"x\":-781.808,\"y\":315.866,\"z\":186.913}',NULL,'[\"apa_v_mp_h_06_c\"]','MiltonDrive',0,1,0,'{\"x\":-795.655,\"y\":326.611,\"z\":186.313}',1300000),(30,'Seductive3Apartment','Appartement Séduisant 3',NULL,'{\"x\":-774.012,\"y\":342.042,\"z\":195.686}','{\"x\":-779.057,\"y\":342.063,\"z\":195.686}',NULL,'[\"apa_v_mp_h_06_b\"]','MiltonDrive',0,1,0,'{\"x\":-765.3,\"y\":331.414,\"z\":195.085}',1300000),(31,'Regal1Apartment','Appartement Régal 1',NULL,'{\"x\":-784.194,\"y\":323.636,\"z\":210.997}','{\"x\":-779.751,\"y\":323.385,\"z\":210.997}',NULL,'[\"apa_v_mp_h_07_a\"]','MiltonDrive',0,1,0,'{\"x\":-765.956,\"y\":328.257,\"z\":210.396}',1300000),(32,'Regal2Apartment','Appartement Régal 2',NULL,'{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}','{\"x\":-781.808,\"y\":315.866,\"z\":186.913}',NULL,'[\"apa_v_mp_h_07_c\"]','MiltonDrive',0,1,0,'{\"x\":-795.545,\"y\":326.659,\"z\":186.313}',1300000),(33,'Regal3Apartment','Appartement Régal 3',NULL,'{\"x\":-774.012,\"y\":342.042,\"z\":195.686}','{\"x\":-779.057,\"y\":342.063,\"z\":195.686}',NULL,'[\"apa_v_mp_h_07_b\"]','MiltonDrive',0,1,0,'{\"x\":-765.087,\"y\":331.429,\"z\":195.123}',1300000),(34,'Aqua1Apartment','Appartement Aqua 1',NULL,'{\"x\":-784.194,\"y\":323.636,\"z\":210.997}','{\"x\":-779.751,\"y\":323.385,\"z\":210.997}',NULL,'[\"apa_v_mp_h_08_a\"]','MiltonDrive',0,1,0,'{\"x\":-766.187,\"y\":328.47,\"z\":210.396}',1300000),(35,'Aqua2Apartment','Appartement Aqua 2',NULL,'{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}','{\"x\":-781.808,\"y\":315.866,\"z\":186.913}',NULL,'[\"apa_v_mp_h_08_c\"]','MiltonDrive',0,1,0,'{\"x\":-795.658,\"y\":326.563,\"z\":186.313}',1300000),(36,'Aqua3Apartment','Appartement Aqua 3',NULL,'{\"x\":-774.012,\"y\":342.042,\"z\":195.686}','{\"x\":-779.057,\"y\":342.063,\"z\":195.686}',NULL,'[\"apa_v_mp_h_08_b\"]','MiltonDrive',0,1,0,'{\"x\":-765.287,\"y\":331.084,\"z\":195.086}',1300000),(37,'IntegrityWay','4 Integrity Way','{\"x\":-47.804,\"y\":-585.867,\"z\":36.956}',NULL,NULL,'{\"x\":-54.178,\"y\":-583.762,\"z\":35.798}','[]',NULL,0,0,1,NULL,0),(38,'IntegrityWay28','4 Integrity Way - Apt 28',NULL,'{\"x\":-31.409,\"y\":-594.927,\"z\":79.03}','{\"x\":-26.098,\"y\":-596.909,\"z\":79.03}',NULL,'[]','IntegrityWay',0,1,0,'{\"x\":-11.923,\"y\":-597.083,\"z\":78.43}',1700000),(39,'IntegrityWay30','4 Integrity Way - Apt 30',NULL,'{\"x\":-17.702,\"y\":-588.524,\"z\":89.114}','{\"x\":-16.21,\"y\":-582.569,\"z\":89.114}',NULL,'[]','IntegrityWay',0,1,0,'{\"x\":-26.327,\"y\":-588.384,\"z\":89.123}',1700000),(40,'DellPerroHeights','Dell Perro Heights','{\"x\":-1447.06,\"y\":-538.28,\"z\":33.74}',NULL,NULL,'{\"x\":-1440.022,\"y\":-548.696,\"z\":33.74}','[]',NULL,0,0,1,NULL,0),(41,'DellPerroHeightst4','Dell Perro Heights - Apt 28',NULL,'{\"x\":-1452.125,\"y\":-540.591,\"z\":73.044}','{\"x\":-1455.435,\"y\":-535.79,\"z\":73.044}',NULL,'[]','DellPerroHeights',0,1,0,'{\"x\":-1467.058,\"y\":-527.571,\"z\":72.443}',1700000),(42,'DellPerroHeightst7','Dell Perro Heights - Apt 30',NULL,'{\"x\":-1451.562,\"y\":-523.535,\"z\":55.928}','{\"x\":-1456.02,\"y\":-519.209,\"z\":55.929}',NULL,'[]','DellPerroHeights',0,1,0,'{\"x\":-1457.026,\"y\":-530.219,\"z\":55.937}',1700000),(43,'EdificioGaraje','Garaje 1','{\"z\":29.7271,\"x\":135.3354,\"y\":-859.7942}','{\"x\":-1451.6394,\"y\":-523.5562,\"z\":55.9290}','{\"x\":-1459.17,\"y\":-520.58,\"z\":54.929}','{\"z\":32.7271,\"x\":135.3354,\"y\":-859.7942}','[]',NULL,1,1,0,NULL,230000),(44,'LuxuryMansion','Luxury M','{\"z\":28.7967,\"x\":105.5545,\"y\":-933.1656}','{\"x\":-681.6273,\"y\":591.9663,\"z\":144.3930}','{\"x\":-680.6088,\"y\":590.5321,\"z\":145.39}','{\"z\":31.7967,\"x\":105.5545,\"y\":-933.1656}','[]',NULL,1,1,0,NULL,450000),(45,'TowersGaraje','Towers2','{\"z\":28.374,\"x\":33.4343,\"y\":-997.0624}','{\"x\":-603.4308,\"y\":58.9184,\"z\":97.2001}','{\"x\":-612.16,\"y\":59.06,\"z\":97.2}','{\"z\":31.374,\"x\":33.4343,\"y\":-997.0624}','[]',NULL,1,1,0,NULL,160000),(46,'MissionRowTowers','MsRow Towers','{\"z\":28.5366,\"x\":383.2429,\"y\":-1024.5939}','{\"x\":266.0773,\"y\":-1007.3900,\"z\":-101.008}','{\"x\":265.307,\"y\":-1002.802,\"z\":-101.008}','{\"z\":31.5366,\"x\":383.2429,\"y\":-1024.5939}','[]',NULL,1,1,0,NULL,95000),(47,'MissionRowLowTower','MsRow Towers 2','{\"z\":28.4145,\"x\":303.7179,\"y\":-939.9926}','{\"x\":266.0773,\"y\":-1007.3900,\"z\":-101.008}','{\"x\":265.307,\"y\":-1002.802,\"z\":-101.008}','{\"z\":31.4145,\"x\":303.7179,\"y\":-939.9926}','[]',NULL,1,1,0,NULL,65000),(48,'CentralTowers','Central towers','{\"z\":28.4367,\"x\":286.4285,\"y\":-790.9055}','{\"x\":266.0773,\"y\":-1007.3900,\"z\":-101.008}','{\"x\":265.307,\"y\":-1002.802,\"z\":-101.008}','{\"z\":31.4367,\"x\":286.4285,\"y\":-790.9055}','[]',NULL,1,1,0,NULL,76090),(49,'CentralTowersLow2','Central Towers 2','{\"z\":30.3452,\"x\":102.1679,\"y\":-818.1769}','{\"x\":266.0773,\"y\":-1007.3900,\"z\":-101.008}','{\"x\":265.307,\"y\":-1002.802,\"z\":-101.008}','{\"z\":33.3452,\"x\":102.1679,\"y\":-818.1769}','[]',NULL,1,1,0,NULL,86700),(50,'LuxuryTowers2','Luxury Towers 2','{\"z\":43.2273,\"x\":-66.334,\"y\":-801.6967}','{\"x\":-681.6273,\"y\":591.9663,\"z\":144.3930}','{\"x\":-680.6088,\"y\":590.5321,\"z\":145.39}','{\"z\":46.2273,\"x\":-66.334,\"y\":-801.6967}','[]',NULL,1,1,0,NULL,235000),(51,'tower','Tower','{\"z\":31.4198,\"x\":-295.9029,\"y\":-829.2214}','{\"x\":-1451.6394,\"y\":-523.5562,\"z\":55.9290}','{\"x\":-1459.17,\"y\":-520.58,\"z\":54.929}','{\"z\":34.4198,\"x\":-295.9029,\"y\":-829.2214}','[]',NULL,1,1,0,NULL,129000),(52,'Grove2','Grove 2','{\"z\":26.66,\"x\":151.8495,\"y\":-1823.2932}','{\"x\":151.3258,\"y\":-1007.7642,\"z\":-100.0000}','{\"x\":151.45,\"y\":-1007.57,\"z\":-98.9999}','{\"z\":29.66,\"x\":151.8495,\"y\":-1823.2932}','[\"hei_hw1_blimp_interior_v_motel_mp_milo_\"]',NULL,1,1,0,NULL,25000),(53,'Grove','Grove','{\"z\":20.1217,\"x\":85.456,\"y\":-1958.8219}','{\"x\":151.3258,\"y\":-1007.7642,\"z\":-100.0000}','{\"x\":151.45,\"y\":-1007.57,\"z\":-98.9999}','{\"z\":23.1217,\"x\":85.456,\"y\":-1958.8219}','[\"hei_hw1_blimp_interior_v_motel_mp_milo_\"]',NULL,1,1,0,NULL,15900),(54,'Grove4','Grove4','{\"z\":20.3825,\"x\":125.1879,\"y\":-1929.2445}','{\"x\":151.3258,\"y\":-1007.7642,\"z\":-100.0000}','{\"x\":151.45,\"y\":-1007.57,\"z\":-98.9999}','{\"z\":23.3825,\"x\":125.1879,\"y\":-1929.2445}','[\"hei_hw1_blimp_interior_v_motel_mp_milo_\"]',NULL,1,1,0,NULL,15000),(55,'Motel1','Motel1','{\"y\":101.52,\"x\":-332.6911,\"z\":70.2181}','{\"x\":151.3258,\"y\":-1007.7642,\"z\":-100.0000}','{\"x\":151.45,\"y\":-1007.57,\"z\":-98.9999}','{\"y\":101.52,\"x\":-332.6911,\"z\":73.2181}','[\"hei_hw1_blimp_interior_v_motel_mp_milo_\"]',NULL,1,1,0,NULL,47000),(56,'Moteles2','Motel2','{\"y\":95.268,\"x\":-357.6081,\"z\":69.5202}','{\"x\":151.3258,\"y\":-1007.7642,\"z\":-100.0000}','{\"x\":151.45,\"y\":-1007.57,\"z\":-98.9999}','{\"y\":95.268,\"x\":-357.6081,\"z\":72.5202}','[\"hei_hw1_blimp_interior_v_motel_mp_milo_\"]',NULL,1,1,0,NULL,40000),(57,'Motel3','Motel3','{\"y\":152.7917,\"x\":-384.3273,\"z\":64.5314}','{\"x\":151.3258,\"y\":-1007.7642,\"z\":-100.0000}','{\"x\":151.45,\"y\":-1007.57,\"z\":-98.9999}','{\"y\":152.7917,\"x\":-384.3273,\"z\":67.5314}','[\"hei_hw1_blimp_interior_v_motel_mp_milo_\"]',NULL,1,1,0,NULL,53000),(58,'Motel4','Motel4','{\"y\":152.8915,\"x\":-411.2199,\"z\":64.5272}','{\"x\":151.3258,\"y\":-1007.7642,\"z\":-100.0000}','{\"x\":151.45,\"y\":-1007.57,\"z\":-98.9999}','{\"y\":152.8915,\"x\":-411.2199,\"z\":67.5272}','[\"hei_hw1_blimp_interior_v_motel_mp_milo_\"]',NULL,1,1,0,NULL,45000),(59,'Luxury6','Luxury 6','{\"x\":-916.7291,\"y\":-450.2711,\"z\":38.5999}','{\"x\":-681.6273,\"y\":591.9663,\"z\":144.3930}','{\"x\":-680.6088,\"y\":590.5321,\"z\":145.39}','{\"x\":-916.7291,\"y\":-450.2711,\"z\":41.5999}','[]',NULL,1,1,0,NULL,459990),(60,'Playa1','Playa 1','{\"x\":-1203.1398,\"y\":-945.1697,\"z\":7.1149}','{\"x\":151.3258,\"y\":-1007.7642,\"z\":-100.0000}','{\"x\":151.45,\"y\":-1007.57,\"z\":-98.9999}','{\"x\":-1203.1398,\"y\":-945.1697,\"z\":10.1149}','[\"hei_hw1_blimp_interior_v_motel_mp_milo_\"]',NULL,1,1,0,NULL,60000),(61,'Playa2','Playa2','{\"x\":-1150.9016,\"y\":-912.9595,\"z\":5.6288}','{\"x\":151.3258,\"y\":-1007.7642,\"z\":-100.0000}','{\"x\":151.45,\"y\":-1007.57,\"z\":-98.9999}','{\"x\":-1150.9016,\"y\":-912.9595,\"z\":8.6288}','[\"hei_hw1_blimp_interior_v_motel_mp_milo_\"]',NULL,1,1,0,NULL,56666);
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rented_aircrafts`
--

DROP TABLE IF EXISTS `rented_aircrafts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rented_aircrafts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(10) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int NOT NULL,
  `rent_price` int NOT NULL,
  `owner` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rented_aircrafts`
--

LOCK TABLES `rented_aircrafts` WRITE;
/*!40000 ALTER TABLE `rented_aircrafts` DISABLE KEYS */;
/*!40000 ALTER TABLE `rented_aircrafts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rented_boats`
--

DROP TABLE IF EXISTS `rented_boats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rented_boats` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int NOT NULL,
  `rent_price` int NOT NULL,
  `owner` varchar(30) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rented_boats`
--

LOCK TABLES `rented_boats` WRITE;
/*!40000 ALTER TABLE `rented_boats` DISABLE KEYS */;
/*!40000 ALTER TABLE `rented_boats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rented_vehicles`
--

DROP TABLE IF EXISTS `rented_vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int NOT NULL,
  `rent_price` int NOT NULL,
  `owner` varchar(22) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rented_vehicles`
--

LOCK TABLES `rented_vehicles` WRITE;
/*!40000 ALTER TABLE `rented_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `rented_vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shops`
--

DROP TABLE IF EXISTS `shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shops` (
  `id` int NOT NULL AUTO_INCREMENT,
  `store` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `item` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `price` int NOT NULL,
  `name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shops`
--

LOCK TABLES `shops` WRITE;
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
INSERT INTO `shops` VALUES (1,'TwentyFourSeven','bread',2,NULL),(2,'TwentyFourSeven','water',3,NULL),(3,'RobsLiquor','bread',2,NULL),(4,'RobsLiquor','water',3,NULL),(5,'LTDgasoline','bread',2,NULL),(6,'LTDgasoline','water',3,NULL),(7,'LTDgasoline','croquettes',10,NULL),(8,'TwentyFourSeven','croquettes',10,NULL),(9,'RobsLiquor','croquettes',10,NULL),(10,'LTDgasoline','fixkit',2000,NULL),(11,'TwentyFourSeven','fixkit',2000,NULL),(12,'RobsLiquor','fixkit',2000,NULL),(13,'LTDgasoline','clip',3000,NULL),(14,'TwentyFourSeven','clip',3000,NULL),(15,'RobsLiquor','clip',3000,NULL),(22,'TwentyFourSeven','fishingrod',500,NULL),(23,'TwentyFourSeven','fishbait',150,NULL),(24,'TwentyFourSeven','turtlebait',200,NULL),(25,'RobsLiquor','fishingrod',500,NULL),(26,'RobsLiquor','fishbait',150,NULL),(27,'RobsLiquor','fishbait',200,NULL),(28,'LTDgasoline','fishbait',150,NULL),(29,'LTDgasoline','fishingrod',500,NULL),(30,'LTDgasoline','fishbait',200,NULL),(31,'TwentyFourSeven','beer',2,NULL),(32,'LTDgasoline','beer',2,NULL),(33,'TwentyFourSeven','soda',3,NULL),(34,'LTDgasoline','soda',3,NULL),(45,'TwentyFourSeven','phone',10,NULL),(47,'LTDgasoline','phone',100,NULL);
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `society_moneywash`
--

DROP TABLE IF EXISTS `society_moneywash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `society_moneywash` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `society_moneywash`
--

LOCK TABLES `society_moneywash` WRITE;
/*!40000 ALTER TABLE `society_moneywash` DISABLE KEYS */;
/*!40000 ALTER TABLE `society_moneywash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tm1_regcars`
--

DROP TABLE IF EXISTS `tm1_regcars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tm1_regcars` (
  `seller` varchar(255) NOT NULL,
  `buyer` varchar(255) NOT NULL,
  `car` varchar(255) NOT NULL,
  `hour` varchar(255) NOT NULL,
  `price` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tm1_regcars`
--

LOCK TABLES `tm1_regcars` WRITE;
/*!40000 ALTER TABLE `tm1_regcars` DISABLE KEYS */;
/*!40000 ALTER TABLE `tm1_regcars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `truck_inventory2`
--

DROP TABLE IF EXISTS `truck_inventory2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `truck_inventory2` (
  `id` int NOT NULL AUTO_INCREMENT,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plate` (`plate`)
) ENGINE=InnoDB AUTO_INCREMENT=440 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `truck_inventory2`
--

LOCK TABLES `truck_inventory2` WRITE;
/*!40000 ALTER TABLE `truck_inventory2` DISABLE KEYS */;
/*!40000 ALTER TABLE `truck_inventory2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_accounts`
--

DROP TABLE IF EXISTS `user_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_accounts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identifier` varchar(22) NOT NULL,
  `name` varchar(50) NOT NULL,
  `money` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_accounts`
--

LOCK TABLES `user_accounts` WRITE;
/*!40000 ALTER TABLE `user_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_contacts`
--

DROP TABLE IF EXISTS `user_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_contacts`
--

LOCK TABLES `user_contacts` WRITE;
/*!40000 ALTER TABLE `user_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_inventory`
--

DROP TABLE IF EXISTS `user_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_inventory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identifier` varchar(22) NOT NULL,
  `item` varchar(50) NOT NULL,
  `count` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_inventory`
--

LOCK TABLES `user_inventory` WRITE;
/*!40000 ALTER TABLE `user_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_licenses`
--

DROP TABLE IF EXISTS `user_licenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_licenses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(60) NOT NULL,
  `owner` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_licenses`
--

LOCK TABLES `user_licenses` WRITE;
/*!40000 ALTER TABLE `user_licenses` DISABLE KEYS */;
INSERT INTO `user_licenses` VALUES (1,'weapon','steam:11000011b415c99');
/*!40000 ALTER TABLE `user_licenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `identifier` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `job` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int DEFAULT '0',
  `loadout` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `position` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `bank` int DEFAULT NULL,
  `permission_level` int DEFAULT NULL,
  `group` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '',
  `status` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `last_property` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `phone_number` int DEFAULT NULL,
  `pet` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `isDead` tinyint(1) DEFAULT '0',
  `tattoos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `animations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_categories`
--

DROP TABLE IF EXISTS `vehicle_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_categories`
--

LOCK TABLES `vehicle_categories` WRITE;
/*!40000 ALTER TABLE `vehicle_categories` DISABLE KEYS */;
INSERT INTO `vehicle_categories` VALUES ('compacts','Compacts'),('coupes','Coupés'),('donadores','Donadores'),('motorcycles','Motos'),('muscle','Muscle'),('offroad','Off Road'),('reales','Reales'),('sedans','Sedans'),('sports','Sports'),('sportsclassics','Sports Classics'),('super','Super'),('suvs','SUVs'),('vans','Vans');
/*!40000 ALTER TABLE `vehicle_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_sold`
--

DROP TABLE IF EXISTS `vehicle_sold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_sold`
--

LOCK TABLES `vehicle_sold` WRITE;
/*!40000 ALTER TABLE `vehicle_sold` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle_sold` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES ('440i','440i',400000,'reales'),('650s','650s',10000000,'donadores'),('675lt','675lt',10000000,'donadores'),('718caymans','718caymans',10000000,'donadores'),('Adder','adder',900000,'super'),('Akuma','AKUMA',7500,'motorcycles'),('Alpha','alpha',60000,'sports'),('amggt','amggt',240000,'reales'),('aperta','aperta',10000000,'donadores'),('Asea','asea',5500,'sedans'),('audi2','audi2',210000,'reales'),('Autarch','autarch',1955000,'super'),('Avarus','avarus',18000,'motorcycles'),('aventadors','aventadors',10000000,'donadores'),('Bagger','bagger',13500,'motorcycles'),('Baller','baller2',40000,'suvs'),('Baller Sport','baller3',60000,'suvs'),('Banshee','banshee',70000,'sports'),('Banshee 900R','banshee2',255000,'super'),('Bati 801','bati',12000,'motorcycles'),('Bati 801RR','bati2',19000,'motorcycles'),('Bestia GTS','bestiagts',55000,'sports'),('BF400','bf400',6500,'motorcycles'),('Bf Injection','bfinjection',16000,'offroad'),('Bifta','bifta',12000,'offroad'),('Bison','bison',45000,'vans'),('Blade','blade',15000,'muscle'),('Blazer','blazer',6500,'offroad'),('Blazer Sport','blazer4',8500,'offroad'),('Blista','blista',8000,'compacts'),('BMX (velo)','bmx',160,'motorcycles'),('Bobcat XL','bobcatxl',32000,'vans'),('Brawler','brawler',45000,'offroad'),('Brioso R/A','brioso',18000,'compacts'),('btr04','btr04',160000,'reales'),('Btype','btype',62000,'sportsclassics'),('Btype Hotroad','btype2',155000,'sportsclassics'),('Btype Luxe','btype3',85000,'sportsclassics'),('Buccaneer','buccaneer',18000,'muscle'),('Buccaneer Rider','buccaneer2',24000,'muscle'),('Buffalo','buffalo',12000,'sports'),('Buffalo S','buffalo2',20000,'sports'),('Bullet','bullet',90000,'super'),('Burrito','burrito3',19000,'vans'),('caddyvw','caddyvw',25000,'reales'),('Camper','camper',42000,'vans'),('Carbonizzare','carbonizzare',75000,'sports'),('Carbon RS','carbonrs',18000,'motorcycles'),('Casco','casco',30000,'sportsclassics'),('Cavalcade','cavalcade2',55000,'suvs'),('cbr500r','cbr500r',50000,'motorcycles'),('cbrr500','cbrr',45000,'motorcycles'),('chargerf8','chargerf8',10000000,'donadores'),('Cheetah','cheetah',375000,'super'),('Chimera','chimera',38000,'motorcycles'),('Chino','chino',15000,'muscle'),('Chino Luxe','chino2',19000,'muscle'),('Cliffhanger','cliffhanger',9500,'motorcycles'),('Cognoscenti Cabrio','cogcabrio',55000,'coupes'),('Cognoscenti','cognoscenti',55000,'sedans'),('Comet','comet2',65000,'sports'),('Comet 5','comet5',1145000,'sports'),('Contender','contender',70000,'suvs'),('Coquette','coquette',65000,'sports'),('Coquette Classic','coquette2',40000,'sportsclassics'),('Coquette BlackFin','coquette3',55000,'muscle'),('Cruiser (velo)','cruiser',510,'motorcycles'),('Cyclone','cyclone',1890000,'super'),('Daemon','daemon',11500,'motorcycles'),('Daemon High','daemon2',13500,'motorcycles'),('Defiler','defiler',9800,'motorcycles'),('divo','divo',10000000,'donadores'),('Dominator','dominator',35000,'muscle'),('Double T','double',28000,'motorcycles'),('drift','drift',10000000,'donadores'),('Dubsta','dubsta',45000,'suvs'),('Dubsta Luxuary','dubsta2',60000,'suvs'),('Bubsta 6x6','dubsta3',120000,'offroad'),('Dukes','dukes',28000,'muscle'),('Dune Buggy','dune',8000,'offroad'),('EK9','EK9',130000,'reales'),('Elegy','elegy2',38500,'sports'),('Emperor','emperor',8500,'sedans'),('Enduro','enduro',5500,'motorcycles'),('Entity XF','entityxf',425000,'super'),('Esskey','esskey',4200,'motorcycles'),('everest','everest',500000,'reales'),('evo9','evo9',180000,'reales'),('Exemplar','exemplar',32000,'coupes'),('F620','f620',40000,'coupes'),('Faction','faction',20000,'muscle'),('Faction Rider','faction2',30000,'muscle'),('Faction XL','faction3',40000,'muscle'),('Faggio','faggio',1900,'motorcycles'),('Vespa','faggio2',2800,'motorcycles'),('Felon','felon',42000,'coupes'),('Felon GT','felon2',55000,'coupes'),('Feltzer','feltzer2',55000,'sports'),('Stirling GT','feltzer3',65000,'sportsclassics'),('fenyr','fenyr',10000000,'donadores'),('fiestarbcamber','fiestarbcamber',120000,'reales'),('Fixter (velo)','fixter',225,'motorcycles'),('FMJ','fmj',185000,'super'),('fnfcivic','fnfcivic',140000,'reales'),('forgiecat','forgiecat',140000,'reales'),('Fhantom','fq2',17000,'suvs'),('Fugitive','fugitive',12000,'sedans'),('Furore GT','furoregt',45000,'sports'),('Fusilade','fusilade',40000,'sports'),('Gargoyle','gargoyle',16500,'motorcycles'),('Gauntlet','gauntlet',30000,'muscle'),('Gang Burrito','gburrito',45000,'vans'),('Burrito','gburrito2',29000,'vans'),('Glendale','glendale',6500,'sedans'),('Grabger','granger',50000,'suvs'),('Gresley','gresley',47500,'suvs'),('gsxr1000','gsxr1000',60000,'motorcycles'),('GT 500','gt500',785000,'sportsclassics'),('Guardian','guardian',45000,'offroad'),('Hakuchou','hakuchou',31000,'motorcycles'),('Hakuchou Sport','hakuchou2',55000,'motorcycles'),('Hermes','hermes',535000,'muscle'),('Hexer','hexer',12000,'motorcycles'),('Hotknife','hotknife',125000,'muscle'),('Huntley S','huntley',40000,'suvs'),('Hustler','hustler',625000,'muscle'),('Infernus','infernus',180000,'super'),('Innovation','innovation',23500,'motorcycles'),('Intruder','intruder',7500,'sedans'),('Issi','issi2',10000,'compacts'),('Jackal','jackal',38000,'coupes'),('Jester','jester',65000,'sports'),('Jester(Racecar)','jester2',135000,'sports'),('Journey','journey',6500,'vans'),('Kamacho','kamacho',345000,'offroad'),('kangoo','kangoo',55000,'reales'),('Khamelion','khamelion',38000,'sports'),('kiagt','kiagt',170000,'reales'),('Kuruma','kuruma',30000,'sports'),('Landstalker','landstalker',35000,'suvs'),('RE-7B','le7b',325000,'super'),('lykan','lykan',10000000,'donadores'),('Lynx','lynx',40000,'sports'),('m3e46','m3e46',270000,'reales'),('m6coupe','m6coupe',160000,'reales'),('macla','macla',190000,'reales'),('Mamba','mamba',70000,'sports'),('Manana','manana',12800,'sportsclassics'),('Manchez','manchez',5300,'motorcycles'),('Massacro','massacro',65000,'sports'),('Massacro(Racecar)','massacro2',130000,'sports'),('Mesa','mesa',16000,'suvs'),('Mesa Trail','mesa3',40000,'suvs'),('minic','minic',75000,'motorcycles'),('Minivan','minivan',13000,'vans'),('Monroe','monroe',55000,'sportsclassics'),('The Liberator','monster',210000,'offroad'),('Moonbeam','moonbeam',18000,'vans'),('Moonbeam Rider','moonbeam2',35000,'vans'),('mslaz','mslaz',50000,'motorcycles'),('mvisiongt','mvisiongt',10000000,'donadores'),('Nemesis','nemesis',5800,'motorcycles'),('Neon','neon',1500000,'sports'),('Nightblade','nightblade',35000,'motorcycles'),('Nightshade','nightshade',65000,'muscle'),('9F','ninef',65000,'sports'),('9F Cabrio','ninef2',80000,'sports'),('ninjah2','ninjah2',50000,'motorcycles'),('Omnis','omnis',35000,'sports'),('Oracle XS','oracle2',35000,'coupes'),('Osiris','osiris',160000,'super'),('p1gtr','p1gtr',10000000,'donadores'),('Panto','panto',10000,'compacts'),('Paradise','paradise',19000,'vans'),('Pariah','pariah',1420000,'sports'),('Patriot','patriot',55000,'suvs'),('PCJ-600','pcj',6200,'motorcycles'),('pcs18','pcs18',180000,'reales'),('Penumbra','penumbra',28000,'sports'),('Pfister','pfister811',85000,'super'),('Phoenix','phoenix',12500,'muscle'),('Picador','picador',18000,'muscle'),('Pigalle','pigalle',20000,'sportsclassics'),('Prairie','prairie',12000,'compacts'),('Premier','premier',8000,'sedans'),('Primo Custom','primo2',14000,'sedans'),('X80 Proto','prototipo',2500000,'super'),('pturismo','pturismo',10000000,'donadores'),('r1','r1',50000,'motorcycles'),('Radius','radi',29000,'suvs'),('raiden','raiden',1375000,'sports'),('Rapid GT','rapidgt',35000,'sports'),('Rapid GT Convertible','rapidgt2',45000,'sports'),('Rapid GT3','rapidgt3',885000,'sportsclassics'),('Reaper','reaper',150000,'super'),('Rebel','rebel2',35000,'offroad'),('regera','regera',10000000,'donadores'),('Regina','regina',5000,'sedans'),('Retinue','retinue',615000,'sportsclassics'),('Revolter','revolter',1610000,'sports'),('riata','riata',380000,'offroad'),('rmodmustang','rmodmustang',10000000,'donadores'),('Rocoto','rocoto',45000,'suvs'),('rs6pd600','rs6pd600',10000000,'donadores'),('Ruffian','ruffian',6800,'motorcycles'),('Rumpo','rumpo',15000,'vans'),('Rumpo Trail','rumpo3',19500,'vans'),('Sabre Turbo','sabregt',20000,'muscle'),('Sabre GT','sabregt2',25000,'muscle'),('Sanchez','sanchez',5300,'motorcycles'),('Sanchez Sport','sanchez2',5300,'motorcycles'),('sanchezTS','sanchezTS',45000,'motorcycles'),('Sanctus','sanctus',25000,'motorcycles'),('Sandking','sandking',55000,'offroad'),('Savestra','savestra',990000,'sportsclassics'),('SC 1','sc1',1603000,'super'),('Schafter','schafter2',25000,'sedans'),('Schafter V12','schafter3',50000,'sports'),('Scorcher (velo)','scorcher',280,'motorcycles'),('Seminole','seminole',25000,'suvs'),('Sentinel','sentinel',32000,'coupes'),('Sentinel XS','sentinel2',40000,'coupes'),('Sentinel3','sentinel3',650000,'sports'),('Seven 70','seven70',39500,'sports'),('ETR1','sheava',220000,'super'),('Shotaro Concept','shotaro',320000,'motorcycles'),('Skyline','Skyline',10000000,'donadores'),('Slam Van','slamvan3',11500,'muscle'),('Sovereign','sovereign',22000,'motorcycles'),('Stinger','stinger',80000,'sportsclassics'),('Stinger GT','stingergt',75000,'sportsclassics'),('Streiter','streiter',500000,'sports'),('Stretch','stretch',90000,'sedans'),('Stromberg','stromberg',3185350,'sports'),('Sultan','sultan',15000,'sports'),('Sultan RS','sultanrs',65000,'super'),('Super Diamond','superd',130000,'sedans'),('Surano','surano',50000,'sports'),('Surfer','surfer',12000,'vans'),('T20','t20',300000,'super'),('Tailgater','tailgater',30000,'sedans'),('Tampa','tampa',16000,'muscle'),('Drift Tampa','tampa2',80000,'sports'),('Thrust','thrust',24000,'motorcycles'),('titan17','titan17',250000,'reales'),('tmodel','tmodel',10000000,'donadores'),('todoterreno','todoterreno',190000,'reales'),('tr22','tr22',10000000,'donadores'),('Tri bike (velo)','tribike3',520,'motorcycles'),('Trophy Truck','trophytruck',60000,'offroad'),('Trophy Truck Limited','trophytruck2',80000,'offroad'),('Tropos','tropos',40000,'sports'),('Turismo R','turismor',350000,'super'),('Tyrus','tyrus',600000,'super'),('Vacca','vacca',120000,'super'),('Vader','vader',7200,'motorcycles'),('Verlierer','verlierer2',70000,'sports'),('Vigero','vigero',12500,'muscle'),('Virgo','virgo',14000,'muscle'),('Viseris','viseris',875000,'sportsclassics'),('Visione','visione',2250000,'super'),('vito','vito',90666,'reales'),('Voltic','voltic',90000,'super'),('Voodoo','voodoo',7200,'muscle'),('Vortex','vortex',9800,'motorcycles'),('Warrener','warrener',4000,'sedans'),('Washington','washington',9000,'sedans'),('Windsor','windsor',95000,'coupes'),('Windsor Drop','windsor2',125000,'coupes'),('Woflsbane','wolfsbane',9000,'motorcycles'),('BMW X5','x5',10000000,'donadores'),('xkgt','xkgt',300000,'reales'),('XLS','xls',32000,'suvs'),('Yosemite','yosemite',485000,'muscle'),('Youga','youga',10800,'vans'),('Youga Luxuary','youga2',14500,'vans'),('Z190','z190',900000,'sportsclassics'),('Zentorno','zentorno',1500000,'super'),('Zion','zion',36000,'coupes'),('Zion Cabrio','zion2',45000,'coupes'),('Zombie','zombiea',9500,'motorcycles'),('Zombie Luxuary','zombieb',12000,'motorcycles'),('Z-Type','ztype',220000,'sportsclassics');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weashops`
--

DROP TABLE IF EXISTS `weashops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weashops` (
  `id` int NOT NULL AUTO_INCREMENT,
  `zone` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weashops`
--

LOCK TABLES `weashops` WRITE;
/*!40000 ALTER TABLE `weashops` DISABLE KEYS */;
INSERT INTO `weashops` VALUES (1,'GunShop','WEAPON_PISTOL',50000),(2,'BlackWeashop','WEAPON_PISTOL',50000),(3,'GunShop','WEAPON_FLASHLIGHT',60),(4,'BlackWeashop','WEAPON_FLASHLIGHT',70),(5,'GunShop','WEAPON_MACHETE',1000),(6,'BlackWeashop','WEAPON_MACHETE',800),(7,'GunShop','WEAPON_SWITCHBLADE',4000),(8,'BlackWeashop','WEAPON_SWITCHBLADE',3500),(9,'GunShop','WEAPON_BAT',1500),(10,'BlackWeashop','WEAPON_BAT',1200),(11,'GunShop','WEAPON_FIREEXTINGUISHER',100),(12,'BlackWeashop','WEAPON_FIREEXTINGUISHER',50),(13,'GunShop','WEAPON_BALL',50),(14,'BlackWeashop','WEAPON_BALL',20),(15,'BlackWeashop','WEAPON_APPISTOL',32000),(41,'GunShop','GADGET_PARACHUTE',500),(42,'GunShop','GADGET_NIGHTVISION',500);
/*!40000 ALTER TABLE `weashops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `whitelist`
--

DROP TABLE IF EXISTS `whitelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `whitelist` (
  `identifier` varchar(75) NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `whitelist`
--

LOCK TABLES `whitelist` WRITE;
/*!40000 ALTER TABLE `whitelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `whitelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'miserver'
--

--
-- Dumping routines for database 'miserver'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-07 12:51:19
