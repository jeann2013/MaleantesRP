-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.14-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para miserver
CREATE DATABASE IF NOT EXISTS `miserver` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `miserver`;

-- Volcando estructura para tabla miserver.addon_account
CREATE TABLE IF NOT EXISTS `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla miserver.addon_account: ~11 rows (aproximadamente)
/*!40000 ALTER TABLE `addon_account` DISABLE KEYS */;
INSERT IGNORE INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('bank_savings', 'Livret Bleu', 0),
	('caution', 'Caution', 0),
	('property_black_money', 'Argent Sale Propriété', 0),
	('society_aircraftdealer', 'Airliner', 1),
	('society_ambulance', 'Ambulance', 1),
	('society_banker', 'Banque', 1),
	('society_boatdealer', 'Marina', 1),
	('society_cardealer', 'Concessionnaire', 1),
	('society_mechanic', 'Mecanico', 1),
	('society_police', 'Police', 1),
	('society_taxi', 'Taxi', 1);
/*!40000 ALTER TABLE `addon_account` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.addon_account_data
CREATE TABLE IF NOT EXISTS `addon_account_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) DEFAULT NULL,
  `money` double NOT NULL,
  `owner` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla miserver.addon_account_data: ~26 rows (aproximadamente)
/*!40000 ALTER TABLE `addon_account_data` DISABLE KEYS */;
INSERT IGNORE INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1, 'society_aircraftdealer', 1000003332, NULL),
	(2, 'society_ambulance', 1000003332, ''),
	(14, 'society_mechanic', 1000003332, 'steam:11000011b415c99'),
	(18, 'society_police', 1000003332, NULL),
	(21, 'society_taxi', 1000003332, NULL),
	(24, 'caution', 0, 'steam:11000011b415c99'),
	(25, 'property_black_money', 10000, 'steam:11000011b415c99'),
	(26, 'bank_savings', 0, 'steam:11000011b415c99'),
	(45, 'society_banker', 0, NULL),
	(46, 'society_boatdealer', 0, NULL),
	(47, 'society_bratva', 0, NULL),
	(48, 'society_cardealer', 0, NULL),
	(49, 'society_comandom19', 0, NULL),
	(50, 'society_dacapo', 0, NULL),
	(51, 'society_gonzalez', 0, NULL),
	(52, 'society_loscarlinos', 0, NULL),
	(53, 'society_losgordos', 0, NULL),
	(54, 'society_mecanicos', 0, NULL),
	(55, 'society_mecano', 0, NULL),
	(56, 'society_moteros', 0, NULL),
	(57, 'society_nightclub', 0, NULL),
	(58, 'society_perroscallejeros', 0, NULL),
	(59, 'society_sacracoronaunita', 0, NULL),
	(60, 'society_scarface', 0, NULL),
	(61, 'society_thelostmc', 0, NULL),
	(62, 'society_unicorn', 0, NULL);
/*!40000 ALTER TABLE `addon_account_data` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.addon_inventory
CREATE TABLE IF NOT EXISTS `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla miserver.addon_inventory: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `addon_inventory` DISABLE KEYS */;
INSERT IGNORE INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('property', 'Propriété', 0),
	('society_aircraftdealer', 'Airliner', 1),
	('society_ambulance', 'Ambulance', 1),
	('society_mechanic', 'MÃ©cano', 1),
	('society_police', 'Police', 1),
	('society_taxi', 'Taxi', 1);
/*!40000 ALTER TABLE `addon_inventory` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.addon_inventory_items
CREATE TABLE IF NOT EXISTS `addon_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla miserver.addon_inventory_items: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `addon_inventory_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `addon_inventory_items` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.aircraftdealer_aircrafts
CREATE TABLE IF NOT EXISTS `aircraftdealer_aircrafts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla miserver.aircraftdealer_aircrafts: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `aircraftdealer_aircrafts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aircraftdealer_aircrafts` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.aircrafts
CREATE TABLE IF NOT EXISTS `aircrafts` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla miserver.aircrafts: ~21 rows (aproximadamente)
/*!40000 ALTER TABLE `aircrafts` DISABLE KEYS */;
INSERT IGNORE INTO `aircrafts` (`name`, `model`, `price`, `category`) VALUES
	('Alpha Z1', 'alphaz1', 1595000, 'plane'),
	('Besra', 'besra', 1150000, 'plane'),
	('Cuban 800', 'cuban800', 240000, 'plane'),
	('Dodo', 'dodo', 500000, 'plane'),
	('Duster', 'duster', 275000, 'plane'),
	('Frogger', 'frogger', 1300000, 'heli'),
	('Howard NX25', 'howard', 975000, 'plane'),
	('Luxor', 'luxor', 1625000, 'plane'),
	('Luxor Deluxe ', 'luxor2', 10000000, 'plane'),
	('Mammatus', 'mammatus', 300000, 'plane'),
	('Maverick', 'maverick', 780000, 'heli'),
	('Nimbus', 'nimbus', 1900000, 'plane'),
	('Shamal', 'shamal', 1150000, 'plane'),
	('Mallard', 'stunt', 250000, 'plane'),
	('SuperVolito', 'supervolito', 2113000, 'heli'),
	('SuperVolito Carbon', 'supervolito2', 3330000, 'heli'),
	('Swift', 'swift', 1500000, 'heli'),
	('Swift Deluxe', 'swift2', 5150000, 'heli'),
	('Velum', 'velum2', 1323350, 'plane'),
	('Vestra', 'vestra', 950000, 'plane'),
	('Volatus', 'volatus', 2295000, 'heli');
/*!40000 ALTER TABLE `aircrafts` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.aircraft_categories
CREATE TABLE IF NOT EXISTS `aircraft_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla miserver.aircraft_categories: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `aircraft_categories` DISABLE KEYS */;
INSERT IGNORE INTO `aircraft_categories` (`id`, `name`, `label`) VALUES
	(1, 'plane', 'Planes'),
	(2, 'heli', 'Helicopters');
/*!40000 ALTER TABLE `aircraft_categories` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.bans
CREATE TABLE IF NOT EXISTS `bans` (
  `id` varchar(50) NOT NULL,
  `steam` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fecha` varchar(50) NOT NULL,
  `tiempo` varchar(50) NOT NULL,
  `admin` varchar(50) NOT NULL,
  `razon` varchar(100) NOT NULL,
  `baneado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla miserver.bans: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `bans` DISABLE KEYS */;
/*!40000 ALTER TABLE `bans` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.bansperm
CREATE TABLE IF NOT EXISTS `bansperm` (
  `id` varchar(50) NOT NULL,
  `steam` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fecha` varchar(50) NOT NULL,
  `admin` varchar(50) NOT NULL,
  `razon` varchar(100) NOT NULL,
  `baneado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla miserver.bansperm: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `bansperm` DISABLE KEYS */;
INSERT IGNORE INTO `bansperm` (`id`, `steam`, `ip`, `fecha`, `admin`, `razon`, `baneado`) VALUES
	('license:4711108287b99f3ab252b84f510889f480d40462', 'steam:11000011567f650', 'discord:463834273431158795', '1561417153', '????????????????????????????????', 'ANTIROL', 'Creepypastamo'),
	('license:4711108287b99f3ab252b84f510889f480d40462', 'steam:11000011567f650', 'discord:463834273431158795', '1561417153', '????????????????????????????????', 'ANTIROL', 'Creepypastamo');
/*!40000 ALTER TABLE `bansperm` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.billing
CREATE TABLE IF NOT EXISTS `billing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=488 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla miserver.billing: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.boatdealer_boats
CREATE TABLE IF NOT EXISTS `boatdealer_boats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla miserver.boatdealer_boats: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `boatdealer_boats` DISABLE KEYS */;
/*!40000 ALTER TABLE `boatdealer_boats` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.boats
CREATE TABLE IF NOT EXISTS `boats` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla miserver.boats: ~14 rows (aproximadamente)
/*!40000 ALTER TABLE `boats` DISABLE KEYS */;
INSERT IGNORE INTO `boats` (`name`, `model`, `price`, `category`) VALUES
	('Dinghy', 'dinghy', 2500, 'boat'),
	('Dinghy2 ', 'dinghy2', 2500, 'boat'),
	('Yacht Dinghy', 'dinghy4', 1500, 'boat'),
	('Jetmax', 'jetmax', 17500, 'boat'),
	('Voilier Marquis', 'marquis', 45500, 'boat'),
	('Seashark', 'seashark', 1500, 'boat'),
	('Seashark2', 'seashark2', 1500, 'boat'),
	('Yacht Seashark', 'seashark3', 1500, 'boat'),
	('Squalo', 'squalo', 12000, 'boat'),
	('Suntrap', 'suntrap', 1500, 'boat'),
	('Toro', 'toro', 15000, 'boat'),
	('Yacht Toro', 'toro2', 15000, 'boat'),
	('Tropic', 'tropic', 10000, 'boat'),
	('Yacht Tropic', 'tropic2', 10000, 'boat');
/*!40000 ALTER TABLE `boats` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.boat_categories
CREATE TABLE IF NOT EXISTS `boat_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla miserver.boat_categories: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `boat_categories` DISABLE KEYS */;
INSERT IGNORE INTO `boat_categories` (`name`, `label`) VALUES
	('boat', 'Boats');
/*!40000 ALTER TABLE `boat_categories` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.cardealer_vehicles
CREATE TABLE IF NOT EXISTS `cardealer_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla miserver.cardealer_vehicles: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cardealer_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `cardealer_vehicles` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.characters
CREATE TABLE IF NOT EXISTS `characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `sex` varchar(1) NOT NULL DEFAULT 'M',
  `height` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla miserver.characters: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
INSERT IGNORE INTO `characters` (`id`, `identifier`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`) VALUES
	(3, 'steam:11000011b415c99', 'Mubnojh', 'Gegrh', '12-12-1988', 'm', '177'),
	(4, 'steam:11000011b415c99', 'Jhon', 'Jhonshon', '12-12-1988', 'm', '189');
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.datastore
CREATE TABLE IF NOT EXISTS `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla miserver.datastore: ~24 rows (aproximadamente)
/*!40000 ALTER TABLE `datastore` DISABLE KEYS */;
INSERT IGNORE INTO `datastore` (`name`, `label`, `shared`) VALUES
	('property', 'Propriété', 0),
	('society_ambulance', 'Ambulance', 1),
	('society_bratva', 'bratva', 1),
	('society_comandom19', 'comandom19', 1),
	('society_dacapo', 'dacapo', 1),
	('society_east', 'east', 1),
	('society_gonzalez', 'gonzalez', 1),
	('society_loscarlinos', 'loscarlinos', 1),
	('society_losgordos', 'losgordos', 1),
	('society_mecanicos', 'mecanicos', 1),
	('society_moteros', 'moteros', 1),
	('society_nightclub', 'Nachtclub', 1),
	('society_perroscallejeros', 'perroscallejeros', 1),
	('society_police', 'Police', 1),
	('society_sacracoronaunita', 'sacracoronaunita', 1),
	('society_scarface', 'scarface', 1),
	('society_taxi', 'Taxi', 1),
	('society_thelostmc', 'TheLostMC', 1),
	('society_unicorn', 'Unicorn', 1),
	('society_west', 'west', 1),
	('user_ears', 'Ears', 0),
	('user_glasses', 'Glasses', 0),
	('user_helmet', 'Helmet', 0),
	('user_mask', 'Mask', 0);
/*!40000 ALTER TABLE `datastore` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.datastore_data
CREATE TABLE IF NOT EXISTS `datastore_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_datastore_owner_name` (`owner`,`name`),
  KEY `index_datastore_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla miserver.datastore_data: ~24 rows (aproximadamente)
/*!40000 ALTER TABLE `datastore_data` DISABLE KEYS */;
INSERT IGNORE INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1, 'society_ambulance', NULL, '{}'),
	(2, 'society_bratva', NULL, '{}'),
	(3, 'society_comandom19', NULL, '{}'),
	(4, 'society_dacapo', NULL, '{}'),
	(5, 'society_east', NULL, '{}'),
	(6, 'society_gonzalez', NULL, '{}'),
	(7, 'society_loscarlinos', NULL, '{}'),
	(8, 'society_losgordos', NULL, '{}'),
	(9, 'society_mecanicos', NULL, '{}'),
	(10, 'society_moteros', NULL, '{}'),
	(11, 'society_nightclub', NULL, '{}'),
	(12, 'society_perroscallejeros', NULL, '{}'),
	(13, 'society_police', NULL, '{}'),
	(14, 'society_sacracoronaunita', NULL, '{}'),
	(15, 'society_scarface', NULL, '{}'),
	(16, 'society_taxi', NULL, '{}'),
	(17, 'society_thelostmc', NULL, '{}'),
	(18, 'society_unicorn', NULL, '{}'),
	(19, 'society_west', NULL, '{}'),
	(20, 'property', 'steam:11000011b415c99', '{"dressing":[{"label":"Swagg","skin":{"eyebrows_2":0,"moles_2":0,"watches_1":-1,"mask_2":0,"chain_1":0,"glasses_2":0,"hair_2":0,"helmet_1":-1,"watches_2":0,"lipstick_2":0,"torso_2":0,"chain_2":0,"sex":0,"complexion_1":0,"bodyb_1":0,"hair_color_1":0,"sun_2":0,"glasses_1":0,"age_1":0,"ears_1":-1,"pants_1":4,"makeup_4":0,"complexion_2":0,"arms_2":0,"beard_2":0,"makeup_3":0,"shoes_2":0,"makeup_2":0,"hair_color_2":0,"makeup_1":0,"shoes_1":5,"eyebrows_3":0,"bodyb_2":0,"beard_3":0,"pants_2":0,"chest_3":0,"bproof_2":0,"bags_2":0,"tshirt_2":0,"eyebrows_1":0,"blush_3":0,"eye_color":0,"blemishes_1":0,"lipstick_1":0,"mask_1":0,"beard_1":0,"blush_1":0,"bracelets_2":0,"torso_1":7,"beard_4":0,"face":13,"helmet_2":0,"blush_2":0,"blemishes_2":0,"chest_2":0,"chest_1":0,"hair_1":1,"lipstick_4":0,"moles_1":0,"bracelets_1":-1,"decals_1":0,"eyebrows_4":0,"lipstick_3":0,"bproof_1":0,"bags_1":0,"ears_2":0,"decals_2":0,"tshirt_1":0,"skin":0,"arms":1,"sun_1":0,"age_2":0}},{"label":"G","skin":{"eyebrows_2":0,"moles_2":0,"watches_1":-1,"mask_2":0,"chain_1":0,"glasses_2":0,"hair_2":0,"helmet_1":-1,"chest_2":0,"lipstick_2":0,"torso_2":0,"chain_2":0,"sex":0,"complexion_1":0,"bracelets_2":0,"hair_color_1":0,"sun_2":0,"glasses_1":0,"age_1":0,"ears_1":-1,"pants_1":4,"makeup_4":0,"complexion_2":0,"arms_2":0,"beard_2":0,"makeup_3":0,"lipstick_3":0,"makeup_2":0,"hair_color_2":0,"makeup_1":0,"shoes_1":5,"eyebrows_3":0,"bodyb_2":0,"beard_3":0,"pants_2":0,"chest_3":0,"eyebrows_4":0,"bags_2":0,"tshirt_2":0,"eyebrows_1":0,"blush_3":0,"eye_color":0,"blemishes_1":0,"lipstick_1":0,"blush_2":0,"beard_1":0,"mask_1":8,"blush_1":0,"torso_1":20,"beard_4":0,"face":13,"helmet_2":0,"bodyb_1":0,"hair_1":1,"bracelets_1":-1,"chest_1":0,"moles_1":0,"lipstick_4":0,"ears_2":0,"watches_2":0,"decals_1":0,"bproof_2":0,"bags_1":0,"bproof_1":0,"tshirt_1":3,"blemishes_2":0,"skin":0,"arms":1,"shoes_2":0,"decals_2":0,"sun_1":0,"age_2":0}}]}'),
	(21, 'user_mask', 'steam:11000011b415c99', '{"skin":{"mask_1":6,"mask_2":0},"hasMask":true}'),
	(22, 'user_ears', 'steam:11000011b415c99', '{}'),
	(23, 'user_helmet', 'steam:11000011b415c99', '{}'),
	(24, 'user_glasses', 'steam:11000011b415c99', '{}');
/*!40000 ALTER TABLE `datastore_data` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.dpkeybinds
CREATE TABLE IF NOT EXISTS `dpkeybinds` (
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

-- Volcando datos para la tabla miserver.dpkeybinds: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `dpkeybinds` DISABLE KEYS */;
INSERT IGNORE INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:11000011b415c99', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
/*!40000 ALTER TABLE `dpkeybinds` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.fine_types
CREATE TABLE IF NOT EXISTS `fine_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Volcando datos para la tabla miserver.fine_types: ~52 rows (aproximadamente)
/*!40000 ALTER TABLE `fine_types` DISABLE KEYS */;
INSERT IGNORE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Uso abusibo de claxon', 500, 1),
	(2, 'Evadir linea continua', 500, 1),
	(3, 'Robo a banco', 55000, 3),
	(4, 'Robo a pacific standar', 70000, 3),
	(5, 'Saltarse un semafaro', 1000, 1),
	(6, 'Insulto a la autoridad', 5000, 1),
	(7, 'Saltarse un stop', 150, 1),
	(8, 'Exceso de velocidad', 1000, 1),
	(9, 'Asesinato', 20000, 3),
	(10, 'Intento de asesinato', 15000, 2),
	(63, 'Mal uso del claxon', 200, 0),
	(64, 'Fuga de la policia', 5000, 0),
	(65, 'Cruzar una linea continua', 150, 0),
	(66, 'ir en sentido contrario', 500, 0),
	(67, 'Giro de 360º ilegal', 300, 0),
	(68, 'Conducir por fuera de la carretera', 750, 0),
	(69, 'Estacionamiento ilegal', 275, 0),
	(70, 'Saltarse un stop ', 150, 0),
	(71, 'Saltarse un semaforo', 250, 0),
	(72, 'Paso ilegal', 1000, 0),
	(73, 'Conducir un vehiculo ilegal', 1500, 0),
	(74, 'Exceso de velocidad < 5 km', 200, 0),
	(75, 'Exceso de velocidad 5-15 km', 300, 0),
	(76, 'Exceso de velocidad 15-30 km', 500, 0),
	(77, 'Exceso de velocidad > 30 km', 700, 0),
	(78, 'Impedir el flujo del tráfico', 500, 1),
	(79, 'Obstrucción de la justicia', 1500, 1),
	(80, 'Insultos hacia Policia', 400, 1),
	(81, 'Insultos hacia Civil', 250, 1),
	(82, 'Amenaza verbal hacia un Civil', 1000, 1),
	(83, 'Amenaza verbal hacia un Policia', 1250, 1),
	(84, 'Proporcionar información falsa', 300, 1),
	(85, 'Intento de Corrupción', 3500, 1),
	(86, 'Sin licencia de armas', 18000, 2),
	(87, 'Posesion de arma blanca', 2000, 2),
	(88, 'Posesion de pistola', 7500, 2),
	(89, 'Posesion de subfusil', 30000, 2),
	(90, 'Posesion de fusil o rifle largo', 40000, 2),
	(91, 'Intento de vender alguna sustancia ilegal', 10000, 2),
	(92, 'Fabricacion de una sustancia ilegal', 10000, 2),
	(93, 'Posesión de una sustancia ilegal', 1000, 2),
	(94, 'Secuestro de un Civil', 7500, 2),
	(95, 'Secuestro de un policia', 25000, 2),
	(96, 'Robo', 15000, 2),
	(97, 'Robo pequeño', 20000, 2),
	(98, 'Robo a banco', 40000, 2),
	(99, 'Intento de asesinato a un civil', 5000, 3),
	(100, 'Intento de asesinato a un policia', 24000, 3),
	(101, 'asesinato a un civil', 50000, 3),
	(102, 'asesinato a un policia', 60000, 3),
	(103, 'Homicidio involuntario', 5000, 3),
	(104, 'Fraude', 2000, 2);
/*!40000 ALTER TABLE `fine_types` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.fine_types_comandom19
CREATE TABLE IF NOT EXISTS `fine_types_comandom19` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla miserver.fine_types_comandom19: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `fine_types_comandom19` DISABLE KEYS */;
INSERT IGNORE INTO `fine_types_comandom19` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Raket', 3000, 0),
	(2, 'Raket', 5000, 0),
	(3, 'Raket', 10000, 1),
	(4, 'Raket', 20000, 1),
	(5, 'Raket', 50000, 2),
	(6, 'Raket', 150000, 3),
	(7, 'Raket', 350000, 3);
/*!40000 ALTER TABLE `fine_types_comandom19` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.fine_types_east
CREATE TABLE IF NOT EXISTS `fine_types_east` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla miserver.fine_types_east: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `fine_types_east` DISABLE KEYS */;
INSERT IGNORE INTO `fine_types_east` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Raket', 3000, 0),
	(2, 'Raket', 5000, 0),
	(3, 'Raket', 10000, 1),
	(4, 'Raket', 20000, 1),
	(5, 'Raket', 50000, 2),
	(6, 'Raket', 150000, 3),
	(7, 'Raket', 350000, 3);
/*!40000 ALTER TABLE `fine_types_east` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.fine_types_gonzalez
CREATE TABLE IF NOT EXISTS `fine_types_gonzalez` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla miserver.fine_types_gonzalez: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `fine_types_gonzalez` DISABLE KEYS */;
INSERT IGNORE INTO `fine_types_gonzalez` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Raket', 3000, 0),
	(2, 'Raket', 5000, 0),
	(3, 'Raket', 10000, 1),
	(4, 'Raket', 20000, 1),
	(5, 'Raket', 50000, 2),
	(6, 'Raket', 150000, 3),
	(7, 'Raket', 350000, 3);
/*!40000 ALTER TABLE `fine_types_gonzalez` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.fine_types_loscarlinos
CREATE TABLE IF NOT EXISTS `fine_types_loscarlinos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla miserver.fine_types_loscarlinos: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `fine_types_loscarlinos` DISABLE KEYS */;
INSERT IGNORE INTO `fine_types_loscarlinos` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Raket', 3000, 0),
	(2, 'Raket', 5000, 0),
	(3, 'Raket', 10000, 1),
	(4, 'Raket', 20000, 1),
	(5, 'Raket', 50000, 2),
	(6, 'Raket', 150000, 3),
	(7, 'Raket', 350000, 3);
/*!40000 ALTER TABLE `fine_types_loscarlinos` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.fine_types_losgordos
CREATE TABLE IF NOT EXISTS `fine_types_losgordos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla miserver.fine_types_losgordos: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `fine_types_losgordos` DISABLE KEYS */;
INSERT IGNORE INTO `fine_types_losgordos` (`id`, `label`, `amount`, `category`) VALUES
	(2, 'Raket', 5000, 0),
	(3, 'Raket', 10000, 1),
	(4, 'Raket', 20000, 1),
	(5, 'Raket', 50000, 2),
	(6, 'Raket', 150000, 3),
	(7, 'Raket', 350000, 3);
/*!40000 ALTER TABLE `fine_types_losgordos` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.fine_types_mecanicos
CREATE TABLE IF NOT EXISTS `fine_types_mecanicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla miserver.fine_types_mecanicos: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `fine_types_mecanicos` DISABLE KEYS */;
INSERT IGNORE INTO `fine_types_mecanicos` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Raket', 3000, 0),
	(2, 'Raket', 5000, 0),
	(3, 'Raket', 10000, 1),
	(4, 'Raket', 20000, 1),
	(5, 'Raket', 50000, 2),
	(6, 'Raket', 150000, 3),
	(7, 'Raket', 350000, 3);
/*!40000 ALTER TABLE `fine_types_mecanicos` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.fine_types_moteros
CREATE TABLE IF NOT EXISTS `fine_types_moteros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla miserver.fine_types_moteros: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `fine_types_moteros` DISABLE KEYS */;
INSERT IGNORE INTO `fine_types_moteros` (`id`, `label`, `amount`, `category`) VALUES
	(2, 'Raket', 5000, 0),
	(3, 'Raket', 10000, 1),
	(4, 'Raket', 20000, 1),
	(5, 'Raket', 50000, 2),
	(6, 'Raket', 150000, 3),
	(7, 'Raket', 350000, 3);
/*!40000 ALTER TABLE `fine_types_moteros` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.fine_types_perroscallejeros
CREATE TABLE IF NOT EXISTS `fine_types_perroscallejeros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla miserver.fine_types_perroscallejeros: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `fine_types_perroscallejeros` DISABLE KEYS */;
INSERT IGNORE INTO `fine_types_perroscallejeros` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Raket', 3000, 0),
	(2, 'Raket', 5000, 0),
	(3, 'Raket', 10000, 1),
	(4, 'Raket', 20000, 1),
	(5, 'Raket', 50000, 2),
	(6, 'Raket', 150000, 3),
	(7, 'Raket', 350000, 3);
/*!40000 ALTER TABLE `fine_types_perroscallejeros` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.fine_types_sacracoronaunita
CREATE TABLE IF NOT EXISTS `fine_types_sacracoronaunita` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla miserver.fine_types_sacracoronaunita: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `fine_types_sacracoronaunita` DISABLE KEYS */;
INSERT IGNORE INTO `fine_types_sacracoronaunita` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Raket', 3000, 0),
	(2, 'Raket', 5000, 0),
	(3, 'Raket', 10000, 1),
	(4, 'Raket', 20000, 1),
	(5, 'Raket', 50000, 2),
	(6, 'Raket', 150000, 3),
	(7, 'Raket', 350000, 3);
/*!40000 ALTER TABLE `fine_types_sacracoronaunita` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.fine_types_scarface
CREATE TABLE IF NOT EXISTS `fine_types_scarface` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla miserver.fine_types_scarface: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `fine_types_scarface` DISABLE KEYS */;
INSERT IGNORE INTO `fine_types_scarface` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Raket', 3000, 0),
	(2, 'Raket', 5000, 0),
	(3, 'Raket', 10000, 1),
	(4, 'Raket', 20000, 1),
	(5, 'Raket', 50000, 2),
	(6, 'Raket', 150000, 3),
	(7, 'Raket', 350000, 3);
/*!40000 ALTER TABLE `fine_types_scarface` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.fine_types_thelostmc
CREATE TABLE IF NOT EXISTS `fine_types_thelostmc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla miserver.fine_types_thelostmc: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `fine_types_thelostmc` DISABLE KEYS */;
INSERT IGNORE INTO `fine_types_thelostmc` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Raket', 3000, 0),
	(2, 'Raket', 5000, 0),
	(3, 'Raket', 10000, 1),
	(4, 'Raket', 20000, 1),
	(5, 'Raket', 50000, 2),
	(6, 'Raket', 150000, 3),
	(7, 'Raket', 350000, 3);
/*!40000 ALTER TABLE `fine_types_thelostmc` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.fine_types_west
CREATE TABLE IF NOT EXISTS `fine_types_west` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla miserver.fine_types_west: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `fine_types_west` DISABLE KEYS */;
INSERT IGNORE INTO `fine_types_west` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Raket', 3000, 0),
	(2, 'Raket', 5000, 0),
	(3, 'Raket', 10000, 1),
	(4, 'Raket', 20000, 1),
	(5, 'Raket', 50000, 2),
	(6, 'Raket', 150000, 3),
	(7, 'Raket', 350000, 3);
/*!40000 ALTER TABLE `fine_types_west` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.glovebox_inventory
CREATE TABLE IF NOT EXISTS `glovebox_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plate` (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla miserver.glovebox_inventory: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `glovebox_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `glovebox_inventory` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.items
CREATE TABLE IF NOT EXISTS `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `limit` int(11) NOT NULL DEFAULT -1,
  `rare` int(11) NOT NULL DEFAULT 0,
  `can_remove` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla miserver.items: ~90 rows (aproximadamente)
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT IGNORE INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
	('alive_chicken', 'Pollo vivo', 25, 0, 1),
	('armor', 'Chaleco antibalas', 1, 0, 1),
	('bandage', 'Vendajes', 25, 0, 1),
	('beer', 'Beer', -1, 0, 1),
	('blowpipe', 'Antorchas', 25, 0, 1),
	('bolcacahuetes', 'Bolsa de cacahuetes', 5, 0, 1),
	('bolchips', 'Bolsa de papas', 5, 0, 1),
	('bolnoixcajou', 'Tazon nueces de anacardo', 5, 0, 1),
	('bolpistache', 'Cuenco de pistachos', 5, 0, 1),
	('bread', 'Barra de pan', 50, 0, 1),
	('carokit', 'Medicinas', 3, 0, 1),
	('carotool', 'Botiquin de medicinas', 4, 0, 1),
	('cigarette', 'Cigarette', -1, 0, 1),
	('clip', 'Municion', 2, 0, 1),
	('clothe', 'Ropa', 25, 0, 1),
	('coke', 'COCAINA', 50, 0, 1),
	('coke_pooch', 'BOLSAS COCAINA', 25, 0, 1),
	('contrat', 'Salvamento', 15, 0, 1),
	('copper', 'Cobre', 25, 0, 1),
	('croquettes', 'Comida de mascosta', 25, 0, 1),
	('cutted_wood', 'Tronco cortado', 25, 0, 1),
	('cutting_pliers', 'Alicates', 5, 0, 1),
	('desfibrillateur', 'Desfibrilador', 2, 0, 1),
	('diamond', 'Diamante', 25, 0, 1),
	('drpepper', 'Dr. Pepper', 5, 0, 1),
	('energy', 'Energy Drink', 5, 0, 1),
	('essence', 'Esencia', 24, 0, 1),
	('fabric', 'Tela', 25, 0, 1),
	('firstaidkit', 'Medicina', 5, 0, 1),
	('fish', 'Pescado', 25, 0, 1),
	('fishbait', 'Cebo de pescado', 30, 0, 1),
	('fishingrod', 'Caña de pescar', 2, 0, 1),
	('fixkit', 'Kit de reparacion', 3, 0, 1),
	('fixtool', 'Herramientas reparacion', 6, 0, 1),
	('gazbottle', 'Botella de gas', 11, 0, 1),
	('gold', 'Oro', 21, 0, 1),
	('golem', 'Golem', 5, 0, 1),
	('grapperaisin', 'Ramillo de Uvas', 5, 0, 1),
	('handcuff', 'Esposas', 1, 0, 1),
	('ice', 'Hielo', 5, 0, 1),
	('icetea', 'Te helado', 5, 0, 1),
	('iron', 'Hierro', 42, 0, 1),
	('jager', 'Jägermeister', 5, 0, 1),
	('jagerbomb', 'Jägerbomb', 5, 0, 1),
	('jagercerbere', 'Jäger Cerberus', 3, 0, 1),
	('joint', 'Joint', -1, 0, 1),
	('jusfruit', 'Zumo', 5, 0, 1),
	('limonade', 'Limonada', 5, 0, 1),
	('martini', 'White Martini', 5, 0, 1),
	('medikit', 'Kit Medico', 25, 0, 1),
	('menthe', 'Minze Blatt', 10, 0, 1),
	('meth', 'META', 50, 0, 1),
	('meth_pooch', 'BOLSAS META', 25, 0, 1),
	('metreshooter', 'Shooter meter', 3, 0, 1),
	('mixapero', 'Aperitif Mix', 3, 0, 1),
	('mojito', 'Mojito', 5, 0, 1),
	('moneywashid', 'Llave de lavadora', 2, 0, 1),
	('opium', 'OPIO', 50, 0, 1),
	('opium_pooch', 'BOLSAS OPIO', 25, 0, 1),
	('packaged_chicken', 'Pollo en una bandeja', 25, 0, 1),
	('packaged_plank', 'Paquete de planchas', 25, 0, 1),
	('petrol', 'Petroleo', 24, 0, 1),
	('petrol_raffin', 'Petroleo refinado', 24, 0, 1),
	('phone', 'Telefono', 1, 0, 1),
	('pizza', 'Pizza', -1, 0, 1),
	('rhum', 'Ron', 5, 0, 1),
	('rhumcoca', 'Ron-Cola', 5, 0, 1),
	('rhumfruit', 'Ron-Fruta', 5, 0, 1),
	('saucisson', 'Salchicha', 5, 0, 1),
	('shark', 'Tiburón', -1, 0, 1),
	('slaughtered_chicken', 'Pollo sacrificado', 25, 0, 1),
	('soda', 'Soda', 5, 0, 1),
	('stone', 'Piedra', 7, 0, 1),
	('teqpaf', 'Teq\'paf', 5, 0, 1),
	('tequila', 'Tequila', 5, 0, 1),
	('turtle', 'Tortuga marina', 3, 0, 1),
	('turtlebait', 'Cebo de tortuga', 30, 0, 1),
	('vodka', 'Vodka', 5, 0, 1),
	('vodkaenergy', 'Vodka-Energy', 5, 0, 1),
	('vodkafruit', 'Vodka Fruchtsaft', 5, 0, 1),
	('washed_stone', 'Piedra lavada', 7, 0, 1),
	('water', 'Botella de agua', 50, 0, 1),
	('weed', 'MARIHUANA', 50, 0, 1),
	('weed_pooch', 'BOLSAS WEED', 25, 0, 1),
	('whisky', 'Whisky', 5, 0, 1),
	('whiskycoca', 'Whisky-Cola', 5, 0, 1),
	('wood', 'Madera', 25, 0, 1),
	('wool', 'Lana', 40, 0, 1),
	('xanax', 'Xanax', -1, 0, 1),
	('yusuf', 'Luxushaut', -1, 0, 1);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.jail
CREATE TABLE IF NOT EXISTS `jail` (
  `identifier` varchar(100) NOT NULL,
  `jail_time` int(10) NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla miserver.jail: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `jail` DISABLE KEYS */;
/*!40000 ALTER TABLE `jail` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla miserver.jobs: ~14 rows (aproximadamente)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT IGNORE INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('ambulance', 'EMS', 1),
	('fisherman', 'Pescador', 0),
	('fueler', 'Gasolinero', 0),
	('lumberjack', 'Talador', 0),
	('mechanic', 'Mecanico', 1),
	('miner', 'Minero', 0),
	('offambulance', 'Off-EMS', 1),
	('offpolice', 'Off-Lspd', 1),
	('police', 'LSPD', 1),
	('reporter', 'Reportero', 0),
	('slaughterer', 'Carnicero', 0),
	('tailor', 'Costurero', 0),
	('taxi', 'Taxista', 1),
	('unemployed', 'Desempleado', 0);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.job_grades
CREATE TABLE IF NOT EXISTS `job_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla miserver.job_grades: ~51 rows (aproximadamente)
/*!40000 ALTER TABLE `job_grades` DISABLE KEYS */;
INSERT IGNORE INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(2, 'ambulance', 0, 'ambulance', 'Enfermero', 1000, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(3, 'ambulance', 1, 'doctor', 'Medico', 1250, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(4, 'ambulance', 2, 'chief_doctor', 'Doctor', 1400, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(5, 'ambulance', 3, 'boss', 'Jefe', 1500, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(6, 'police', 0, 'recruit', 'Agente', 1200, '{}', '{}'),
	(7, 'police', 1, 'officer', 'Oficial', 2000, '{}', '{}'),
	(8, 'police', 2, 'sergeant', 'Sargento', 2500, '{}', '{}'),
	(9, 'police', 3, 'lieutenant', 'Inspector', 3100, '{}', '{}'),
	(10, 'police', 4, 'boss', 'Jefe', 3500, '{}', '{}'),
	(16, 'taxi', 0, 'recrue', 'Trabajador', 1000, '{"hair_2":0,"hair_color_2":0,"torso_1":32,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":31,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":0,"age_2":0,"glasses_2":0,"ears_2":0,"arms":27,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(17, 'taxi', 1, 'novice', 'Experimentado', 1000, '{"hair_2":0,"hair_color_2":0,"torso_1":32,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":31,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":0,"age_2":0,"glasses_2":0,"ears_2":0,"arms":27,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(18, 'taxi', 2, 'experimente', 'Profesional', 1200, '{"hair_2":0,"hair_color_2":0,"torso_1":26,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":57,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":4,"age_2":0,"glasses_2":0,"ears_2":0,"arms":11,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":0,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(19, 'taxi', 3, 'uber', 'SubJefe', 1500, '{"hair_2":0,"hair_color_2":0,"torso_1":26,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":57,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":4,"age_2":0,"glasses_2":0,"ears_2":0,"arms":11,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":0,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(20, 'taxi', 4, 'boss', 'Jefe', 1600, '{"hair_2":0,"hair_color_2":0,"torso_1":29,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":31,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":4,"age_2":0,"glasses_2":0,"ears_2":0,"arms":1,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":0,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":4,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(53, 'offpolice', 0, 'recruit', 'Agente', 900, '{}', '{}'),
	(54, 'offpolice', 1, 'officer', 'Oficial', 1000, '{}', '{}'),
	(55, 'offpolice', 2, 'sergeant', 'Sargento', 1100, '{}', '{}'),
	(56, 'offpolice', 3, 'lieutenant', 'Inspector', 1200, '{}', '{}'),
	(57, 'offpolice', 4, 'boss', 'Jefe', 1300, '{}', '{}'),
	(58, 'offambulance', 0, 'ambulance', 'Enfermero', 1000, '{}', '{}'),
	(59, 'offambulance', 1, 'doctor', 'Medico', 1100, '{}', '{}'),
	(60, 'offambulance', 2, 'chief_doctor', 'Doctor', 1200, '{}', '{}'),
	(61, 'offambulance', 3, 'boss', 'Jefe', 1300, '{}', '{}'),
	(76, 'ambulance', 0, 'ambulance', 'Enfermero', 1000, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(77, 'ambulance', 1, 'doctor', 'Medico', 1250, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(78, 'ambulance', 2, 'chief_doctor', 'Doctor', 1400, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(79, 'ambulance', 3, 'boss', 'Jefe', 1500, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(133, 'mechanic', 0, 'recrue', 'Trabajador', 1000, '{}', '{}'),
	(134, 'mechanic', 1, 'novice', 'Profesional', 1100, '{}', '{}'),
	(135, 'mechanic', 2, 'experimente', 'Experimentado', 1200, '{}', '{}'),
	(136, 'mechanic', 3, 'chief', 'Sub Jefe', 1400, '{}', '{}'),
	(137, 'mechanic', 4, 'boss', 'Jefe', 1600, '{}', '{}'),
	(143, 'ambulance', 0, 'ambulance', 'Ambulancier', 1000, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(144, 'ambulance', 1, 'doctor', 'Enfermero', 1250, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(145, 'ambulance', 2, 'chief_doctor', 'Doctor', 1400, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(146, 'ambulance', 3, 'boss', 'Cirujano', 1500, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(147, 'ambulance', 0, 'ambulance', 'Ambulanciero', 1000, '{"tshirt_1":15,"tshirt_2":0,"torso_1":249,"torso_2":1,"pants_1":96,"pants_2":1,"shoes":9,"decals_1":57,"decals_2":0,"helmet_1":122,"helmet_2":1,"arms":90}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(148, 'ambulance', 1, 'doctor', 'Aprendiz', 1250, '{"tshirt_1":15,"tshirt_2":0,"torso_1":249,"torso_2":1,"pants_1":96,"pants_2":1,"shoes":9,"decals_1":57,"decals_2":0,"helmet_1":122,"helmet_2":1,"arms":90}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(149, 'ambulance', 2, 'chief_doctor', 'Doctor', 1400, '{"tshirt_1":15,"tshirt_2":0,"torso_1":249,"torso_2":1,"pants_1":96,"pants_2":1,"shoes":9,"decals_1":57,"decals_2":0,"helmet_1":122,"helmet_2":1,"arms":90}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(150, 'ambulance', 3, 'boss', 'Jefe', 1500, '{"tshirt_1":15,"tshirt_2":0,"torso_1":249,"torso_2":1,"pants_1":96,"pants_2":1,"shoes":9,"decals_1":57,"decals_2":0,"helmet_1":122,"helmet_2":1,"arms":90}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(151, 'ambulance', 1, 'doctor', 'Doctor', 1250, '{"tshirt_1":15,"tshirt_2":0,"torso_1":249,"torso_2":1,"pants_1":96,"pants_2":1,"shoes":9,"decals_1":57,"decals_2":0,"helmet_1":122,"helmet_2":1,"arms":90}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(152, 'ambulance', 2, 'chief_doctor', 'Doctor', 1400, '{"tshirt_1":15,"tshirt_2":0,"torso_1":249,"torso_2":1,"pants_1":96,"pants_2":1,"shoes":9,"decals_1":57,"decals_2":0,"helmet_1":122,"helmet_2":1,"arms":90}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(153, 'ambulance', 3, 'boss', 'Cirujano', 1500, '{"tshirt_1":15,"tshirt_2":0,"torso_1":249,"torso_2":1,"pants_1":96,"pants_2":1,"shoes":9,"decals_1":57,"decals_2":0,"helmet_1":122,"helmet_2":1,"arms":90}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(154, 'unemployed', 0, 'En paro', 'Desempleado', 300, '{}', '{}'),
	(155, 'lumberjack', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
	(156, 'fisherman', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
	(157, 'fueler', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
	(158, 'reporter', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
	(159, 'tailor', 0, 'employee', 'Intérimaire', 0, '{"mask_1":0,"arms":1,"glasses_1":0,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":0,"torso_1":24,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":0,"lipstick_2":0,"chain_1":0,"tshirt_1":0,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":36,"tshirt_2":0,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":48,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}', '{"mask_1":0,"arms":5,"glasses_1":5,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":1,"torso_1":52,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":1,"lipstick_2":0,"chain_1":0,"tshirt_1":23,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":42,"tshirt_2":4,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":36,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}'),
	(160, 'miner', 0, 'employee', 'Intérimaire', 0, '{"tshirt_2":1,"ears_1":8,"glasses_1":15,"torso_2":0,"ears_2":2,"glasses_2":3,"shoes_2":1,"pants_1":75,"shoes_1":51,"bags_1":0,"helmet_2":0,"pants_2":7,"torso_1":71,"tshirt_1":59,"arms":2,"bags_2":0,"helmet_1":0}', '{}'),
	(161, 'slaughterer', 0, 'employee', 'Intérimaire', 0, '{"age_1":0,"glasses_2":0,"beard_1":5,"decals_2":0,"beard_4":0,"shoes_2":0,"tshirt_2":0,"lipstick_2":0,"hair_2":0,"arms":67,"pants_1":36,"skin":29,"eyebrows_2":0,"shoes":10,"helmet_1":-1,"lipstick_1":0,"helmet_2":0,"hair_color_1":0,"glasses":0,"makeup_4":0,"makeup_1":0,"hair_1":2,"bproof_1":0,"bags_1":0,"mask_1":0,"lipstick_3":0,"chain_1":0,"eyebrows_4":0,"sex":0,"torso_1":56,"beard_2":6,"shoes_1":12,"decals_1":0,"face":19,"lipstick_4":0,"tshirt_1":15,"mask_2":0,"age_2":0,"eyebrows_3":0,"chain_2":0,"glasses_1":0,"ears_1":-1,"bags_2":0,"ears_2":0,"torso_2":0,"bproof_2":0,"makeup_2":0,"eyebrows_1":0,"makeup_3":0,"pants_2":0,"beard_3":0,"hair_color_2":4}', '{"age_1":0,"glasses_2":0,"beard_1":5,"decals_2":0,"beard_4":0,"shoes_2":0,"tshirt_2":0,"lipstick_2":0,"hair_2":0,"arms":72,"pants_1":45,"skin":29,"eyebrows_2":0,"shoes":10,"helmet_1":-1,"lipstick_1":0,"helmet_2":0,"hair_color_1":0,"glasses":0,"makeup_4":0,"makeup_1":0,"hair_1":2,"bproof_1":0,"bags_1":0,"mask_1":0,"lipstick_3":0,"chain_1":0,"eyebrows_4":0,"sex":1,"torso_1":49,"beard_2":6,"shoes_1":24,"decals_1":0,"face":19,"lipstick_4":0,"tshirt_1":9,"mask_2":0,"age_2":0,"eyebrows_3":0,"chain_2":0,"glasses_1":5,"ears_1":-1,"bags_2":0,"ears_2":0,"torso_2":0,"bproof_2":0,"makeup_2":0,"eyebrows_1":0,"makeup_3":0,"pants_2":0,"beard_3":0,"hair_color_2":4}');
/*!40000 ALTER TABLE `job_grades` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.licenses
CREATE TABLE IF NOT EXISTS `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla miserver.licenses: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `licenses` DISABLE KEYS */;
INSERT IGNORE INTO `licenses` (`type`, `label`) VALUES
	('boat', 'licencia de barco'),
	('dmv', 'leyes de transito'),
	('drive', 'Permis de conducir'),
	('drive_bike', 'Permiso de moto'),
	('drive_truck', 'Permiso de camion'),
	('weapon', 'licencia de arma');
/*!40000 ALTER TABLE `licenses` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.owned_aircrafts
CREATE TABLE IF NOT EXISTS `owned_aircrafts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` longtext NOT NULL,
  `owner` varchar(60) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'State of the aircraft',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla miserver.owned_aircrafts: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `owned_aircrafts` DISABLE KEYS */;
/*!40000 ALTER TABLE `owned_aircrafts` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.owned_boats
CREATE TABLE IF NOT EXISTS `owned_boats` (
  `owner` varchar(30) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'State of the boat',
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla miserver.owned_boats: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `owned_boats` DISABLE KEYS */;
/*!40000 ALTER TABLE `owned_boats` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.owned_properties
CREATE TABLE IF NOT EXISTS `owned_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla miserver.owned_properties: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `owned_properties` DISABLE KEYS */;
INSERT IGNORE INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(140, 'LuxuryMansion', 2250, 1, 'steam:11000011b415c99'),
	(141, 'Luxury10', 235000, 0, 'steam:11000011b415c99'),
	(142, 'EdificioGaraje', 1150, 1, 'steam:11000011b415c99'),
	(143, 'Luxury6', 2300, 1, 'steam:11000011b415c99'),
	(144, 'Grove2', 25000, 0, 'steam:11000011b415c99'),
	(145, 'Sandi15', 75000, 0, 'steam:11000011b415c99'),
	(146, 'Sandi7', 375, 1, 'steam:11000011b415c99'),
	(147, 'Paleto22', 70000, 0, 'steam:11000011b415c99'),
	(148, 'Playa1', 235000, 0, 'steam:11000011b415c99');
/*!40000 ALTER TABLE `owned_properties` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.owned_vehicles
CREATE TABLE IF NOT EXISTS `owned_vehicles` (
  `owner` varchar(22) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Etat de la voiture',
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT 0,
  `fourrieremecano` tinyint(1) NOT NULL DEFAULT 0,
  `vehiclename` varchar(50) NOT NULL DEFAULT 'vehiculo',
  PRIMARY KEY (`plate`),
  KEY `vehsowned` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla miserver.owned_vehicles: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `owned_vehicles` DISABLE KEYS */;
INSERT IGNORE INTO `owned_vehicles` (`owner`, `state`, `plate`, `vehicle`, `type`, `job`, `stored`, `fourrieremecano`, `vehiclename`) VALUES
	('steam:11000011b415c99', 0, 'BVI 267', '{"plateIndex":4,"wheelColor":156,"modFrontWheels":-1,"modStruts":-1,"modArchCover":-1,"tyreSmokeColor":[255,255,255],"modTrimB":-1,"modDashboard":-1,"modRearBumper":-1,"modRoof":-1,"modTransmission":-1,"modOrnaments":-1,"neonColor":[255,0,255],"modTurbo":false,"modVanityPlate":-1,"modFrame":-1,"modDoorSpeaker":-1,"modGrille":-1,"modTrimA":-1,"modEngine":-1,"modHood":-1,"modSideSkirt":-1,"modBackWheels":-1,"modSteeringWheel":-1,"modTrunk":-1,"extras":{"1":false},"windowTint":-1,"neonEnabled":[false,false,false,false],"modTank":-1,"wheels":0,"modFender":-1,"modAirFilter":-1,"modSmokeEnabled":false,"modExhaust":-1,"modSeats":-1,"plate":"BVI 267","modSpeakers":-1,"color2":28,"modEngineBlock":-1,"modShifterLeavers":-1,"modSpoilers":-1,"modHorns":-1,"color1":112,"modBrakes":-1,"modArmor":-1,"modAPlate":-1,"dirtLevel":4.0,"pearlescentColor":112,"modLivery":0,"modDial":-1,"modSuspension":-1,"modRightFender":-1,"model":1171614426,"health":1000,"modXenon":false,"modHydrolic":-1,"modAerials":-1,"modFrontBumper":-1,"modWindows":-1,"modPlateHolder":-1}', 'car', 'ambulance', 0, 0, 'vehiculo'),
	('steam:11000011b415c99', 0, 'JFN 295', '{"modTrimB":-1,"color2":8,"modAirFilter":-1,"modSteeringWheel":-1,"plate":"JFN 295","wheels":1,"tyreSmokeColor":[255,255,255],"extras":{"2":true,"1":false},"modDoorSpeaker":-1,"modLivery":-1,"modHood":-1,"modArmor":-1,"modAerials":-1,"modRightFender":-1,"modSuspension":-1,"modOrnaments":-1,"modSmokeEnabled":1,"modFender":-1,"modArchCover":-1,"dirtLevel":0.0052273636683822,"modEngine":-1,"modSeats":-1,"modShifterLeavers":-1,"health":1000,"modFrame":-1,"modGrille":-1,"plateIndex":3,"modVanityPlate":-1,"model":784565758,"modTrimA":-1,"modWindows":-1,"modAPlate":-1,"pearlescentColor":134,"modTrunk":-1,"modExhaust":-1,"modTurbo":false,"neonColor":[255,0,255],"windowTint":-1,"modBrakes":-1,"wheelColor":156,"modRearBumper":-1,"modTank":-1,"modDial":-1,"neonEnabled":[false,false,false,false],"modSideSkirt":-1,"modXenon":false,"modFrontBumper":-1,"modDashboard":-1,"modRoof":-1,"modHorns":-1,"modStruts":-1,"modSpoilers":-1,"modHydrolic":-1,"modTransmission":-1,"modBackWheels":-1,"color1":8,"modPlateHolder":-1,"modFrontWheels":-1,"modSpeakers":-1,"modEngineBlock":-1}', 'car', NULL, 0, 0, 'Coquette'),
	('steam:11000011b415c99', 0, 'LMM 081', '{"model":1672195559,"plate":"LMM 081"}', 'car', NULL, 0, 0, 'vehiculo'),
	('steam:11000011b415c99', 0, 'PDG 848', '{"modTrimB":-1,"modSpeakers":-1,"neonColor":[255,0,255],"modSeats":-1,"modTank":-1,"modRoof":-1,"modArchCover":-1,"modPlateHolder":-1,"modSuspension":-1,"modXenon":false,"modHood":-1,"modOrnaments":-1,"modHorns":-1,"modFrame":-1,"modTrunk":-1,"modDoorSpeaker":-1,"pearlescentColor":5,"modWindows":-1,"modVanityPlate":-1,"color1":0,"modSmokeEnabled":false,"modTransmission":-1,"modExhaust":-1,"modDial":-1,"modLivery":-1,"model":1549126457,"modTrimA":-1,"modEngine":-1,"wheels":5,"plate":"PDG 848","modRearBumper":-1,"modSteeringWheel":-1,"modFrontBumper":-1,"windowTint":-1,"plateIndex":0,"modEngineBlock":-1,"modStruts":-1,"modAPlate":-1,"modTurbo":false,"wheelColor":112,"modFender":-1,"modSideSkirt":-1,"neonEnabled":[false,false,false,false],"dirtLevel":6.1286182403564,"modFrontWheels":-1,"modRightFender":-1,"modShifterLeavers":-1,"modAirFilter":-1,"modDashboard":-1,"extras":[],"modBrakes":-1,"modGrille":-1,"health":998,"modHydrolic":-1,"modArmor":-1,"tyreSmokeColor":[255,255,255],"color2":4,"modSpoilers":-1,"modAerials":-1,"modBackWheels":-1}', 'car', NULL, 0, 0, 'vehiculo'),
	('steam:11000011b415c99', 0, 'UKO 628', '{"modLivery":-1,"modDoorSpeaker":-1,"modTurbo":false,"wheels":0,"extras":{"10":false,"12":false},"health":997,"neonEnabled":[false,false,false,false],"windowTint":-1,"modRoof":-1,"modEngine":-1,"modRearBumper":-1,"pearlescentColor":111,"modSuspension":-1,"modOrnaments":-1,"modFrame":-1,"modExhaust":-1,"modDial":-1,"modBackWheels":-1,"dirtLevel":11.126611709595,"modWindows":-1,"plate":"UKO 628","plateIndex":0,"tyreSmokeColor":[255,255,255],"modTrimB":-1,"modVanityPlate":-1,"modStruts":-1,"modSpoilers":-1,"modDashboard":-1,"wheelColor":156,"color1":6,"color2":0,"modBrakes":-1,"modAerials":-1,"modPlateHolder":-1,"modArmor":-1,"modHood":-1,"modSideSkirt":-1,"modFrontBumper":-1,"model":-344943009,"modSpeakers":-1,"modEngineBlock":-1,"modTank":-1,"modSmokeEnabled":false,"modFender":-1,"modTrunk":-1,"modAirFilter":-1,"modFrontWheels":-1,"modXenon":false,"modHydrolic":-1,"modTransmission":-1,"modHorns":-1,"modArchCover":-1,"modRightFender":-1,"modTrimA":-1,"modSteeringWheel":-1,"neonColor":[255,0,255],"modSeats":-1,"modShifterLeavers":-1,"modGrille":-1,"modAPlate":-1}', 'car', NULL, 0, 0, 'vehiculo');
/*!40000 ALTER TABLE `owned_vehicles` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.phone_app_chat
CREATE TABLE IF NOT EXISTS `phone_app_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla miserver.phone_app_chat: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `phone_app_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_app_chat` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.phone_calls
CREATE TABLE IF NOT EXISTS `phone_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(10) NOT NULL COMMENT 'Name',
  `num` varchar(10) NOT NULL COMMENT 'Phone Number',
  `incoming` int(11) NOT NULL COMMENT 'Define Incoming Call',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Accept Call',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla miserver.phone_calls: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `phone_calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_calls` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.phone_messages
CREATE TABLE IF NOT EXISTS `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla miserver.phone_messages: 0 rows
/*!40000 ALTER TABLE `phone_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_messages` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.phone_users_contacts
CREATE TABLE IF NOT EXISTS `phone_users_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla miserver.phone_users_contacts: 0 rows
/*!40000 ALTER TABLE `phone_users_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_users_contacts` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.playerstattoos
CREATE TABLE IF NOT EXISTS `playerstattoos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `tattoos` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla miserver.playerstattoos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `playerstattoos` DISABLE KEYS */;
/*!40000 ALTER TABLE `playerstattoos` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.properties
CREATE TABLE IF NOT EXISTS `properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla miserver.properties: ~104 rows (aproximadamente)
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT IGNORE INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{"y":564.89,"z":182.959,"x":119.384}', '{"x":117.347,"y":559.506,"z":183.304}', '{"y":557.032,"z":183.301,"x":118.037}', '{"y":567.798,"z":182.131,"x":119.249}', '[]', NULL, 1, 1, 0, '{"x":118.748,"y":566.573,"z":175.697}', 600000),
	(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{"x":372.796,"y":428.327,"z":144.685}', '{"x":373.548,"y":422.982,"z":144.907},', '{"y":420.075,"z":145.904,"x":372.161}', '{"x":372.454,"y":432.886,"z":143.443}', '[]', NULL, 1, 1, 0, '{"x":377.349,"y":429.422,"z":137.3}', 600000),
	(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{"y":-379.165,"z":37.961,"x":-936.363}', '{"y":-365.476,"z":113.274,"x":-913.097}', '{"y":-367.637,"z":113.274,"x":-918.022}', '{"y":-382.023,"z":37.961,"x":-943.626}', '[]', NULL, 1, 1, 0, '{"x":-927.554,"y":-377.744,"z":112.674}', 500000),
	(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{"y":440.8,"z":146.702,"x":346.964}', '{"y":437.456,"z":148.394,"x":341.683}', '{"y":435.626,"z":148.394,"x":339.595}', '{"x":350.535,"y":443.329,"z":145.764}', '[]', NULL, 1, 1, 0, '{"x":337.726,"y":436.985,"z":140.77}', 600000),
	(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{"y":502.696,"z":136.421,"x":-176.003}', '{"y":497.817,"z":136.653,"x":-174.349}', '{"y":495.069,"z":136.666,"x":-173.331}', '{"y":506.412,"z":135.0664,"x":-177.927}', '[]', NULL, 1, 1, 0, '{"x":-174.725,"y":493.095,"z":129.043}', 600000),
	(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{"y":596.58,"z":142.641,"x":-686.554}', '{"y":591.988,"z":144.392,"x":-681.728}', '{"y":590.608,"z":144.392,"x":-680.124}', '{"y":599.019,"z":142.059,"x":-689.492}', '[]', NULL, 1, 1, 0, '{"x":-680.46,"y":588.6,"z":136.769}', 600000),
	(7, 'LowEndApartment', 'Basic apartment', '{"y":-1078.735,"z":28.4031,"x":292.528}', '{"y":-1007.152,"z":-102.002,"x":265.845}', '{"y":-1002.802,"z":-100.008,"x":265.307}', '{"y":-1078.669,"z":28.401,"x":296.738}', '[]', NULL, 1, 1, 0, '{"x":265.916,"y":-999.38,"z":-100.008}', 562500),
	(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{"y":454.955,"z":96.462,"x":-1294.433}', '{"x":-1289.917,"y":449.541,"z":96.902}', '{"y":446.322,"z":96.899,"x":-1289.642}', '{"y":455.453,"z":96.517,"x":-1298.851}', '[]', NULL, 1, 1, 0, '{"x":-1287.306,"y":455.901,"z":89.294}', 600000),
	(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{"x":-853.346,"y":696.678,"z":147.782}', '{"y":690.875,"z":151.86,"x":-859.961}', '{"y":688.361,"z":151.857,"x":-859.395}', '{"y":701.628,"z":147.773,"x":-855.007}', '[]', NULL, 1, 1, 0, '{"x":-858.543,"y":697.514,"z":144.253}', 600000),
	(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{"y":620.494,"z":141.588,"x":-752.82}', '{"y":618.62,"z":143.153,"x":-759.317}', '{"y":617.629,"z":143.153,"x":-760.789}', '{"y":621.281,"z":141.254,"x":-750.919}', '[]', NULL, 1, 1, 0, '{"x":-762.504,"y":618.992,"z":135.53}', 600000),
	(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{"y":37.025,"z":42.58,"x":-618.299}', '{"y":58.898,"z":97.2,"x":-603.301}', '{"y":58.941,"z":97.2,"x":-608.741}', '{"y":30.603,"z":42.524,"x":-620.017}', '[]', NULL, 1, 1, 0, '{"x":-622.173,"y":54.585,"z":96.599}', 500000),
	(12, 'MiltonDrive', 'Milton Drive', '{"x":-775.17,"y":312.01,"z":84.658}', NULL, NULL, '{"x":-775.346,"y":306.776,"z":84.7}', '[]', NULL, 0, 0, 1, NULL, 0),
	(13, 'Modern1Apartment', 'Modern Apartment 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_01_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.661,"y":327.672,"z":210.396}', 400000),
	(14, 'Modern2Apartment', 'Modern Apartment 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_01_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.735,"y":326.757,"z":186.313}', 400000),
	(15, 'Modern3Apartment', 'Modern Apartment 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_01_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.386,"y":330.782,"z":195.08}', 400000),
	(16, 'Mody1Apartment', 'Mody Apartment 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_02_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.615,"y":327.878,"z":210.396}', 400000),
	(17, 'Mody2Apartment', 'Mody Apartment 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_02_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.297,"y":327.092,"z":186.313}', 400000),
	(18, 'Mody3Apartment', 'Mody Apartment 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_02_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.303,"y":330.932,"z":195.085}', 400000),
	(19, 'Vibrant1Apartment', 'Vibrant Apartment 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_03_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.885,"y":327.641,"z":210.396}', 400000),
	(20, 'Vibrant2Apartment', 'Vibrant Apartment 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_03_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.607,"y":327.344,"z":186.313}', 400000),
	(21, 'Vibrant3Apartment', 'Vibrant Apartment 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_03_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.525,"y":330.851,"z":195.085}', 400000),
	(22, 'Sharp1Apartment', 'Sharp Apartment 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_04_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.527,"y":327.89,"z":210.396}', 400000),
	(23, 'Sharp2Apartment', 'Sharp Apartment 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_04_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.642,"y":326.497,"z":186.313}', 400000),
	(24, 'Sharp3Apartment', 'Sharp Apartment 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_04_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.503,"y":331.318,"z":195.085}', 400000),
	(25, 'Monochrome1Apartment', 'Monochrome Apartment 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_05_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.289,"y":328.086,"z":210.396}', 400000),
	(26, 'Monochrome2Apartment', 'Monochrome Apartment 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_05_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.692,"y":326.762,"z":186.313}', 400000),
	(27, 'Monochrome3Apartment', 'Monochrome Apartment 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_05_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.094,"y":330.976,"z":195.085}', 400000),
	(28, 'Seductive1Apartment', 'Seductive Apartment 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_06_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.263,"y":328.104,"z":210.396}', 400000),
	(29, 'Seductive2Apartment', 'Seductive Apartment 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_06_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.655,"y":326.611,"z":186.313}', 400000),
	(30, 'Seductive3Apartment', 'Seductive Apartment 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_06_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.3,"y":331.414,"z":195.085}', 400000),
	(31, 'Regal1Apartment', 'Regal Apartment 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_07_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.956,"y":328.257,"z":210.396}', 400000),
	(32, 'Regal2Apartment', 'Regal Apartment 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_07_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.545,"y":326.659,"z":186.313}', 400000),
	(33, 'Regal3Apartment', 'Regal Apartment 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_07_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.087,"y":331.429,"z":195.123}', 400000),
	(34, 'Aqua1Apartment', 'Aqua Apartment 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_08_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.187,"y":328.47,"z":210.396}', 400000),
	(35, 'Aqua2Apartment', 'Aqua Apartment 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_08_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.658,"y":326.563,"z":186.313}', 400000),
	(36, 'Aqua3Apartment', 'Aqua Apartment 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_08_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.287,"y":331.084,"z":195.086}', 400000),
	(37, 'IntegrityWay', '4 Integrity Way', '{"x":-47.804,"y":-585.867,"z":36.956}', NULL, NULL, '{"x":-54.178,"y":-583.762,"z":35.798}', '[]', NULL, 0, 0, 1, NULL, 0),
	(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{"x":-31.409,"y":-594.927,"z":79.03}', '{"x":-26.098,"y":-596.909,"z":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{"x":-11.923,"y":-597.083,"z":78.43}', 500000),
	(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{"x":-17.702,"y":-588.524,"z":89.114}', '{"x":-16.21,"y":-582.569,"z":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{"x":-26.327,"y":-588.384,"z":89.123}', 500000),
	(40, 'DellPerroHeights', 'Dell Perro Heights', '{"x":-1447.06,"y":-538.28,"z":33.74}', NULL, NULL, '{"x":-1440.022,"y":-548.696,"z":33.74}', '[]', NULL, 0, 0, 1, NULL, 0),
	(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{"x":-1452.125,"y":-540.591,"z":73.044}', '{"x":-1455.435,"y":-535.79,"z":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{"x":-1467.058,"y":-527.571,"z":72.443}', 500000),
	(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{"x":-1451.562,"y":-523.535,"z":55.928}', '{"x":-1456.02,"y":-519.209,"z":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{"x":-1457.026,"y":-530.219,"z":55.937}', 500000),
	(75, 'Sandi', 'Sandi', '{"z":32.0016,"x":1866.0002,"y":3760.2573}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"z":35.0016,"x":1866.0002,"y":3760.2573}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"z":-100.0001,"x":151.4579,"y":-1003.2325}', 75000),
	(76, 'Sandi2', 'Sandi2', '{"x":1900.4703,"z":31.8806,"y":3772.3508}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"x":1900.4703,"z":34.8806,"y":3772.3508}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"x":151.7931,"z":-100.0,"y":-1003.61}', 75000),
	(77, 'Sandi3', 'Sandi3', '{"x":1881.0571,"z":31.7788,"y":3810.5964}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"x":1881.0571,"z":34.7788,"y":3810.5964}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"x":151.6253,"z":-100.0,"y":-1003.5701}', 75000),
	(78, 'Sandi4', 'Sandi4', '{"x":1842.6443,"z":32.1542,"y":3777.4602}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"x":1842.6443,"z":35.1542,"y":3777.4602}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"x":151.3368,"z":-100.0,"y":-1003.2486}', 75000),
	(79, 'Sandi5', 'Sandi5', '{"x":1831.4418,"z":32.9619,"y":3738.2605}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"x":1831.4418,"z":35.9619,"y":3738.2605}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"x":151.4357,"z":-100.0,"y":-1003.7665}', 75000),
	(80, 'Sandi6', 'Sandi6', '{"x":1776.6115,"z":33.6556,"y":3738.1619}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"x":1776.6115,"z":36.6556,"y":3738.1619}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"x":151.6095,"z":-100.0,"y":-1003.5268}', 75000),
	(81, 'Sandi7', 'Sandi7', '{"x":1738.0594,"z":33.1395,"y":3709.5173}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"x":1738.0594,"z":36.1395,"y":3709.5173}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"x":151.6852,"z":-100.0,"y":-1003.4347}', 75000),
	(82, 'Sandi8', 'Sandi8', '{"x":1746.707,"z":33.8349,"y":3785.6602}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"x":1746.707,"z":36.8349,"y":3785.6602}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"x":151.4967,"z":-100.0,"y":-1003.7247}', 75000),
	(83, 'Sandi9', 'Sandi9', '{"x":1732.92,"z":33.7743,"y":3809.6099}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"x":1732.92,"z":36.7743,"y":3809.6099}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"x":151.4188,"z":-100.0,"y":-1003.6119}', 75000),
	(84, 'Sandi10', 'Sandi10', '{"x":1776.2448,"z":33.003,"y":3799.1204}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"x":1776.2448,"z":36.003,"y":3799.1204}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"x":151.5028,"z":-100.0,"y":-1003.5663}', 75000),
	(85, 'Sandy11', 'Sandi11', '{"x":1719.9432,"z":33.7967,"y":3851.8276}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"x":1719.9432,"z":36.7967,"y":3851.8276}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"x":151.4947,"z":-100.0,"y":-1003.7182}', 75000),
	(86, 'Sandi12', 'Sandi12', '{"x":1744.9298,"z":33.8144,"y":3885.906}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"x":1744.9298,"z":36.8144,"y":3885.906}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"x":151.4474,"z":-100.0,"y":-1003.4186}', 75000),
	(87, 'Sandi13', 'Sandi13', '{"x":1691.4681,"z":33.907,"y":3866.2878}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"x":1691.4681,"z":36.907,"y":3866.2878}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"x":151.5087,"z":-100.0001,"y":-1003.4715}', 75000),
	(88, 'Sandi14', 'Sandi14', '{"x":1662.1707,"z":34.4698,"y":3820.5813}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"x":1662.1707,"z":37.4698,"y":3820.5813}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"x":151.7314,"z":-100.0001,"y":-1003.6277}', 75000),
	(89, 'Sandi15', 'Sandi15', '{"x":1693.689,"z":33.7677,"y":3785.4954}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"x":1693.689,"z":36.7677,"y":3785.4954}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"x":151.4583,"z":-100.0,"y":-1003.5382}', 75000),
	(90, 'Sandi16', 'Sandi16', '{"x":1925.3948,"z":31.44,"y":3824.2876}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"x":1925.3948,"z":34.44,"y":3824.2876}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"x":151.4582,"z":-100.0,"y":-1003.4076}', 75000),
	(91, 'Sandi17', 'Sandi17', '{"x":1932.6061,"z":31.9098,"y":3804.7319}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"x":1932.6061,"z":34.9098,"y":3804.7319}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"x":151.5757,"z":-100.0,"y":-1003.2552}', 75000),
	(92, 'Sandi18', 'Sandi18', '{"x":1952.778,"z":31.1794,"y":3842.4092}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"x":1952.778,"z":34.1794,"y":3842.4092}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"x":151.7121,"z":-100.0,"y":-1003.2723}', 75000),
	(93, 'Sandi19', 'Sandi19', '{"x":1902.6986,"z":32.0682,"y":3866.4402}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"x":1902.6986,"z":35.0682,"y":3866.4402}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"x":151.7207,"z":-100.0001,"y":-1003.5469}', 75000),
	(94, 'Sandi20', 'Sandi20', '{"x":1894.5845,"z":32.213,"y":3895.519}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"x":1894.5845,"z":35.213,"y":3895.519}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"x":151.716,"z":-100.0,"y":-1003.8424}', 75000),
	(95, 'Sandi21', 'Sandi21', '{"x":1919.4242,"z":32.4417,"y":3913.4204}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"x":1919.4242,"z":35.4417,"y":3913.4204}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"x":151.6214,"z":-100.0,"y":-1003.4912}', 75000),
	(96, 'Sandi22', 'Sandi22', '{"x":1926.834,"z":31.526,"y":3898.6687}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"x":1926.834,"z":34.526,"y":3898.6687}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"x":151.7322,"z":-100.0,"y":-1003.9172}', 75000),
	(97, 'Sandi23', 'Sandi22', '{"x":1813.4258,"z":33.3544,"y":3854.3081}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"x":1813.4258,"z":36.3544,"y":3854.3081}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"x":151.6426,"z":-100.0,"y":-1003.5072}', 75000),
	(98, 'Sandi24', 'Sandi24', '{"x":1834.0494,"z":33.2973,"y":3863.4182}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"x":1834.0494,"z":36.2973,"y":3863.4182}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"x":151.5943,"z":-100.0,"y":-1003.2603}', 75000),
	(99, 'Sandi25', 'Sandi25', '{"x":1862.7158,"z":35.2707,"y":3857.4392}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"x":1862.7158,"z":38.2707,"y":3857.4392}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"x":151.7366,"z":-100.0,"y":-1003.7026}', 75000),
	(100, 'Sandi26', 'Sandi26', '{"x":1846.1887,"z":32.4611,"y":3914.571}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"x":1846.1887,"z":35.4611,"y":3914.571}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"x":151.7138,"z":-99.9999,"y":-1003.2169}', 75000),
	(101, 'Sandi28', 'Sandi28', '{"x":1802.9673,"z":36.057,"y":3914.0718}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"x":1802.9673,"z":39.057,"y":3914.0718}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"x":151.6017,"z":-100.0,"y":-1003.3315}', 75000),
	(102, 'Sandi29', 'Sandi29', '{"x":1781.2961,"z":33.9167,"y":3911.8149}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"x":1781.2961,"z":36.9167,"y":3911.8149}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"x":151.6919,"z":-100.0,"y":-1003.5124}', 75000),
	(103, 'Sandi30', 'Sandi30', '{"x":1433.8647,"z":34.746,"y":3628.24}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"x":1433.8647,"z":37.746,"y":3628.24}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"x":151.5725,"z":-100.0,"y":-1003.3002}', 75000),
	(104, 'Sandi32', 'Sandi32', '{"x":1436.0026,"z":33.302,"y":3657.4272}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"x":1436.0026,"z":36.302,"y":3657.4272}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"x":151.7161,"z":-100.0,"y":-1003.4797}', 75000),
	(105, 'Sandi33', 'Sandi33', '{"x":1425.6234,"z":33.83,"y":3669.9746}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"x":1425.6234,"z":36.83,"y":3669.9746}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"x":151.7137,"z":-100.0,"y":-1003.6182}', 75000),
	(106, 'Sandi34', 'Sandi34', '{"x":1405.9114,"z":33.0868,"y":3655.6602}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"x":1405.9114,"z":36.0868,"y":3655.6602}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"x":151.5886,"z":-100.0,"y":-1003.0471}', 75000),
	(107, 'Sandi36', 'Sandi36', '{"x":1384.8983,"z":33.924,"y":3660.1831}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"x":1384.8983,"z":36.924,"y":3660.1831}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"x":151.6311,"z":-100.0,"y":-1003.322}', 75000),
	(131, 'Paleto1', 'Paleto 1', '{"z":32.2405,"y":6558.0059,"x":-14.5494}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"z":35.2405,"y":6558.0059,"x":-14.5494}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"z":-100.0,"y":-1002.7266,"x":151.7419}', 70000),
	(132, 'Paleto2', 'Paleto 2', '{"z":31.7894,"y":6567.2158,"x":3.4413}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"z":34.7894,"y":6567.2158,"x":3.4413}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"z":-100.0,"y":-1003.0812,"x":151.4245}', 70000),
	(133, 'Paleto3', 'Paleto 3', '{"y":6596.1606,"x":31.9419,"z":31.4705}', '{"x":266.0773,"y":-1007.3900,"z":-101.008}', '{"x":265.307,"y":-1002.802,"z":-101.008}', '{"y":6596.1606,"x":31.9419,"z":34.4705}', '[]', NULL, 1, 1, 0, '{"y":-999.515,"x":265.4469,"z":-100.0087}', 70000),
	(134, 'Paleto5', 'Paleto 5', '{"y":6662.5522,"x":34.9966,"z":31.1904}', '{"x":151.3258,"y":-1007.7642,"z":-100.0000}', '{"x":151.45,"y":-1007.57,"z":-98.9999}', '{"y":6662.5522,"x":34.9966,"z":34.1904}', '["hei_hw1_blimp_interior_v_motel_mp_milo_"]', NULL, 1, 1, 0, '{"y":-1003.8138,"x":151.3702,"z":-100.0}', 70000),
	(135, 'Paleto6', 'Paleto 6', '{"y":6637.1064,"x":-41.2801,"z":30.0875}', '{"x":266.0773,"y":-1007.3900,"z":-101.008}', '{"x":265.307,"y":-1002.802,"z":-101.008}', '{"y":6637.1064,"x":-41.2801,"z":33.0875}', '[]', NULL, 1, 1, 0, '{"y":-999.2656,"x":265.3318,"z":-100.0087}', 70000),
	(136, 'Paleto7', 'Paleto 7', '{"y":6597.5479,"x":-26.7498,"z":30.8549}', '{"x":266.0773,"y":-1007.3900,"z":-101.008}', '{"x":265.307,"y":-1002.802,"z":-101.008}', '{"y":6597.5479,"x":-26.7498,"z":33.8549}', '[]', NULL, 1, 1, 0, '{"y":-999.4975,"x":265.6538,"z":-100.0087}', 70000),
	(137, 'Paleto8', 'Paleto 8', '{"y":6613.9204,"x":1.02,"z":30.8734}', '{"x":266.0773,"y":-1007.3900,"z":-101.008}', '{"x":265.307,"y":-1002.802,"z":-101.008}', '{"y":6613.9204,"x":1.02,"z":33.8734}', '[]', NULL, 1, 1, 0, '{"y":-999.8369,"x":265.2453,"z":-100.0087}', 70000),
	(138, 'Paleto9', 'Paleto 9', '{"y":6653.5503,"x":-9.5407,"z":30.2605}', '{"x":266.0773,"y":-1007.3900,"z":-101.008}', '{"x":265.307,"y":-1002.802,"z":-101.008}', '{"y":6653.5503,"x":-9.5407,"z":33.2605}', '[]', NULL, 1, 1, 0, '{"y":-999.327,"x":265.697,"z":-100.0087}', 70000),
	(139, 'Paleto10', 'Paleto10', '{"y":6582.563,"x":-44.9076,"z":31.1755}', '{"x":266.0773,"y":-1007.3900,"z":-101.008}', '{"x":265.307,"y":-1002.802,"z":-101.008}', '{"y":6582.563,"x":-44.9076,"z":34.1755}', '[]', NULL, 1, 1, 0, '{"y":-999.3923,"x":265.6071,"z":-100.0087}', 70000),
	(140, 'Paleto11', 'Paleto 11', '{"y":6551.3716,"x":-130.1989,"z":28.5228}', '{"x":266.0773,"y":-1007.3900,"z":-101.008}', '{"x":265.307,"y":-1002.802,"z":-101.008}', '{"y":6551.3716,"x":-130.1989,"z":31.5228}', '[]', NULL, 1, 1, 0, '{"y":-999.7258,"x":265.7196,"z":-100.0087}', 70000),
	(141, 'Paleto12', 'Paleto 12', '{"y":6529.1235,"x":-105.3026,"z":29.1669}', '{"x":266.0773,"y":-1007.3900,"z":-101.008}', '{"x":265.307,"y":-1002.802,"z":-101.008}', '{"y":6529.1235,"x":-105.3026,"z":32.1669}', '[]', NULL, 1, 1, 0, '{"y":-999.3994,"x":265.4812,"z":-100.0087}', 70000),
	(142, 'Paleto13', 'Paleto 13', '{"y":6444.7251,"x":-214.4466,"z":30.3135}', '{"x":266.0773,"y":-1007.3900,"z":-101.008}', '{"x":265.307,"y":-1002.802,"z":-101.008}', '{"y":6444.7251,"x":-214.4466,"z":33.3135}', '[]', NULL, 1, 1, 0, '{"y":-999.644,"x":265.2393,"z":-100.0087}', 70000),
	(143, 'Paleto14', 'Paleto 14', '{"y":6409.7847,"x":-188.9604,"z":31.2968}', '{"x":266.0773,"y":-1007.3900,"z":-101.008}', '{"x":265.307,"y":-1002.802,"z":-101.008}', '{"y":6409.7847,"x":-188.9604,"z":34.2968}', '[]', NULL, 1, 1, 0, '{"y":-999.9048,"x":265.6281,"z":-100.0087}', 70000),
	(144, 'Paleto16', 'Paleto 16', '{"y":6422.6445,"x":-237.4992,"z":30.1763}', '{"x":266.0773,"y":-1007.3900,"z":-101.008}', '{"x":265.307,"y":-1002.802,"z":-101.008}', '{"y":6422.6445,"x":-237.4992,"z":33.1763}', '[]', NULL, 1, 1, 0, '{"y":-999.6912,"x":265.5648,"z":-100.0087}', 70000),
	(145, 'Paleto17', 'Paleto 17', '{"y":6396.8418,"x":-214.2472,"z":32.0851}', '{"x":266.0773,"y":-1007.3900,"z":-101.008}', '{"x":265.307,"y":-1002.802,"z":-101.008}', '{"y":6396.8418,"x":-214.2472,"z":35.0851}', '[]', NULL, 1, 1, 0, '{"y":-999.5263,"x":265.6517,"z":-100.0085}', 70000),
	(146, 'Paleto18', 'Paleto 18', '{"y":6400.2915,"x":-272.1192,"z":30.341}', '{"x":266.0773,"y":-1007.3900,"z":-101.008}', '{"x":265.307,"y":-1002.802,"z":-101.008}', '{"y":6400.2915,"x":-272.1192,"z":33.341}', '[]', NULL, 1, 1, 0, '{"y":-999.6368,"x":265.6443,"z":-100.0087}', 70000),
	(147, 'Paleto19', 'paleto 19', '{"y":6350.7637,"x":-280.5113,"z":31.6006}', '{"x":266.0773,"y":-1007.3900,"z":-101.008}', '{"x":265.307,"y":-1002.802,"z":-101.008}', '{"y":6350.7637,"x":-280.5113,"z":34.6006}', '[]', NULL, 1, 1, 0, '{"y":-999.8927,"x":265.8377,"z":-100.0086}', 70000),
	(148, 'Paleto20', 'Paleto 20', '{"y":6327.5142,"x":-302.5565,"z":31.8772}', '{"x":266.0773,"y":-1007.3900,"z":-101.008}', '{"x":265.307,"y":-1002.802,"z":-101.008}', '{"y":6327.5142,"x":-302.5565,"z":34.8772}', '[]', NULL, 1, 1, 0, '{"y":-999.6981,"x":265.6486,"z":-100.0085}', 70000),
	(149, 'Paleto21', 'Paleto 21', '{"y":6302.9702,"x":-333.1793,"z":32.0882}', '{"x":266.0773,"y":-1007.3900,"z":-101.008}', '{"x":265.307,"y":-1002.802,"z":-101.008}', '{"y":6302.9702,"x":-333.1793,"z":35.0882}', '[]', NULL, 1, 1, 0, '{"y":-1000.1271,"x":265.6609,"z":-100.0087}', 70000),
	(150, 'Paleo22', 'Paleto 22', '{"y":6334.2061,"x":-359.3259,"z":28.8441}', '{"x":266.0773,"y":-1007.3900,"z":-101.008}', '{"x":265.307,"y":-1002.802,"z":-101.008}', '{"y":6334.2061,"x":-359.3259,"z":31.8441}', '[]', NULL, 1, 1, 0, '{"y":-999.444,"x":265.532,"z":-100.0087}', 70000),
	(151, 'Paleto22', 'Paleto 22', '{"y":6267.98,"x":-371.8527,"z":30.5087}', '{"x":266.0773,"y":-1007.3900,"z":-101.008}', '{"x":265.307,"y":-1002.802,"z":-101.008}', '{"y":6267.98,"x":-371.8527,"z":33.5087}', '[]', NULL, 1, 1, 0, '{"y":-999.0715,"x":265.5093,"z":-100.0087}', 70000),
	(152, 'Paleto23', 'Paleto 23', '{"y":6314.1777,"x":-407.2762,"z":27.9413}', '{"x":266.0773,"y":-1007.3900,"z":-101.008}', '{"x":265.307,"y":-1002.802,"z":-101.008}', '{"y":6314.1777,"x":-407.2762,"z":30.9413}', '[]', NULL, 1, 1, 0, '{"y":-999.3856,"x":265.486,"z":-100.0087}', 70000),
	(153, 'Paleto24', 'Paleto 24', '{"y":6271.9863,"x":-448.0365,"z":32.33}', '{"x":266.0773,"y":-1007.3900,"z":-101.008}', '{"x":265.307,"y":-1002.802,"z":-101.008}', '{"y":6271.9863,"x":-448.0365,"z":35.33}', '[]', NULL, 1, 1, 0, '{"y":-999.5837,"x":265.5925,"z":-100.0087}', 70000),
	(154, 'Paleto25', 'Paleto25', '{"y":6197.6729,"x":-442.725,"z":28.5519}', '{"x":266.0773,"y":-1007.3900,"z":-101.008}', '{"x":265.307,"y":-1002.802,"z":-101.008}', '{"y":6197.6729,"x":-442.725,"z":31.5519}', '[]', NULL, 1, 1, 0, '{"y":-999.9449,"x":265.4898,"z":-100.0087}', 70000),
	(155, 'Paleto27', 'Paleto 27', '{"y":6253.3931,"x":-379.4362,"z":30.8512}', '{"x":266.0773,"y":-1007.3900,"z":-101.008}', '{"x":265.307,"y":-1002.802,"z":-101.008}', '{"y":6253.3931,"x":-379.4362,"z":33.8512}', '[]', NULL, 1, 1, 0, '{"y":-999.7374,"x":265.4698,"z":-100.0087}', 70000),
	(156, 'Paleto30', 'Paleto 30', '{"y":6190.7539,"x":-374.0465,"z":30.7296}', '{"x":266.0773,"y":-1007.3900,"z":-101.008}', '{"x":265.307,"y":-1002.802,"z":-101.008}', '{"y":6190.7539,"x":-374.0465,"z":33.7296}', '[]', NULL, 1, 1, 0, '{"y":-999.9077,"x":265.4828,"z":-100.0087}', 70000),
	(157, 'Paleto31', 'Paleto 31', '{"y":6206.7993,"x":-356.3018,"z":30.6418}', '{"x":266.0773,"y":-1007.3900,"z":-101.008}', '{"x":265.307,"y":-1002.802,"z":-101.008}', '{"y":6206.7993,"x":-356.3018,"z":33.6418}', '[]', NULL, 1, 1, 0, '{"y":-999.7983,"x":265.5073,"z":-100.0087}', 70000),
	(158, 'Paleto32', 'Paleto 32', '{"y":6225.2803,"x":-347.359,"z":30.8896}', '{"x":266.0773,"y":-1007.3900,"z":-101.008}', '{"x":265.307,"y":-1002.802,"z":-101.008}', '{"y":6225.2803,"x":-347.359,"z":33.8896}', '[]', NULL, 1, 1, 0, '{"y":-999.6747,"x":265.4386,"z":-100.0087}', 70000),
	(159, 'Playa1', 'Playa1', '{"z":9.9453,"y":-639.9606,"x":-1811.679}', '{"x":-603.4308,"y":58.9184,"z":97.2001}', '{"x":-612.16,"y":59.06,"z":97.2}', '{"z":12.9453,"y":-639.9606,"x":-1811.679}', '[]', NULL, 1, 1, 0, '{"z":96.6001,"y":44.222,"x":-615.61}', 235000);
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.rented_aircrafts
CREATE TABLE IF NOT EXISTS `rented_aircrafts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(10) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla miserver.rented_aircrafts: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `rented_aircrafts` DISABLE KEYS */;
/*!40000 ALTER TABLE `rented_aircrafts` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.rented_boats
CREATE TABLE IF NOT EXISTS `rented_boats` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(30) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla miserver.rented_boats: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `rented_boats` DISABLE KEYS */;
/*!40000 ALTER TABLE `rented_boats` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.rented_vehicles
CREATE TABLE IF NOT EXISTS `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla miserver.rented_vehicles: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `rented_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `rented_vehicles` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.shops
CREATE TABLE IF NOT EXISTS `shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `item` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Volcando datos para la tabla miserver.shops: ~30 rows (aproximadamente)
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
INSERT IGNORE INTO `shops` (`id`, `store`, `item`, `price`, `name`) VALUES
	(1, 'TwentyFourSeven', 'bread', 2, NULL),
	(2, 'TwentyFourSeven', 'water', 3, NULL),
	(3, 'RobsLiquor', 'bread', 2, NULL),
	(4, 'RobsLiquor', 'water', 3, NULL),
	(5, 'LTDgasoline', 'bread', 2, NULL),
	(6, 'LTDgasoline', 'water', 3, NULL),
	(7, 'LTDgasoline', 'croquettes', 10, NULL),
	(8, 'TwentyFourSeven', 'croquettes', 10, NULL),
	(9, 'RobsLiquor', 'croquettes', 10, NULL),
	(10, 'LTDgasoline', 'fixkit', 2000, NULL),
	(11, 'TwentyFourSeven', 'fixkit', 2000, NULL),
	(12, 'RobsLiquor', 'fixkit', 2000, NULL),
	(13, 'LTDgasoline', 'clip', 3000, NULL),
	(14, 'TwentyFourSeven', 'clip', 3000, NULL),
	(15, 'RobsLiquor', 'clip', 3000, NULL),
	(22, 'TwentyFourSeven', 'fishingrod', 500, NULL),
	(23, 'TwentyFourSeven', 'fishbait', 150, NULL),
	(24, 'TwentyFourSeven', 'turtlebait', 200, NULL),
	(25, 'RobsLiquor', 'fishingrod', 500, NULL),
	(26, 'RobsLiquor', 'fishbait', 150, NULL),
	(27, 'RobsLiquor', 'fishbait', 200, NULL),
	(28, 'LTDgasoline', 'fishbait', 150, NULL),
	(29, 'LTDgasoline', 'fishingrod', 500, NULL),
	(30, 'LTDgasoline', 'fishbait', 200, NULL),
	(31, 'TwentyFourSeven', 'beer', 2, NULL),
	(32, 'LTDgasoline', 'beer', 2, NULL),
	(33, 'TwentyFourSeven', 'soda', 3, NULL),
	(34, 'LTDgasoline', 'soda', 3, NULL),
	(45, 'TwentyFourSeven', 'phone', 10, NULL),
	(47, 'LTDgasoline', 'phone', 100, NULL);
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.society_moneywash
CREATE TABLE IF NOT EXISTS `society_moneywash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla miserver.society_moneywash: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `society_moneywash` DISABLE KEYS */;
/*!40000 ALTER TABLE `society_moneywash` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.tm1_regcars
CREATE TABLE IF NOT EXISTS `tm1_regcars` (
  `seller` varchar(255) NOT NULL,
  `buyer` varchar(255) NOT NULL,
  `car` varchar(255) NOT NULL,
  `hour` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla miserver.tm1_regcars: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tm1_regcars` DISABLE KEYS */;
/*!40000 ALTER TABLE `tm1_regcars` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.toll_booth_stats
CREATE TABLE IF NOT EXISTS `toll_booth_stats` (
  `id` int(11) NOT NULL,
  `stolen` int(11) NOT NULL DEFAULT 0,
  `failure` int(11) NOT NULL DEFAULT 0,
  `successful` int(11) NOT NULL DEFAULT 0,
  `name` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla miserver.toll_booth_stats: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `toll_booth_stats` DISABLE KEYS */;
INSERT IGNORE INTO `toll_booth_stats` (`id`, `stolen`, `failure`, `successful`, `name`) VALUES
	(1, 2, 0, 0, 'Great Ocean Toll Booth'),
	(2, 0, 0, 0, 'Route 13 Toll Booth'),
	(3, 0, 0, 0, 'Route 15 Toll Booth');
/*!40000 ALTER TABLE `toll_booth_stats` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.truck_inventory2
CREATE TABLE IF NOT EXISTS `truck_inventory2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plate` (`plate`)
) ENGINE=InnoDB AUTO_INCREMENT=440 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla miserver.truck_inventory2: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `truck_inventory2` DISABLE KEYS */;
/*!40000 ALTER TABLE `truck_inventory2` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.trunk_inventory
CREATE TABLE IF NOT EXISTS `trunk_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plate` (`plate`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla miserver.trunk_inventory: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `trunk_inventory` DISABLE KEYS */;
INSERT IGNORE INTO `trunk_inventory` (`id`, `plate`, `data`, `owned`) VALUES
	(1, 'PDG 848 ', '{"coffre":[{"name":"phone","count":1}]}', 1);
/*!40000 ALTER TABLE `trunk_inventory` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.users
CREATE TABLE IF NOT EXISTS `users` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `job` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `position` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `status` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `pet` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `isDead` tinyint(1) DEFAULT 0,
  `tattoos` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `animations` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Volcando datos para la tabla miserver.users: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT IGNORE INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `status`, `last_property`, `phone_number`, `pet`, `isDead`, `tattoos`, `animations`) VALUES
	('steam:11000011b415c99', 'license:f0e176ec5a87adad3df08d798b614090645a655a', 279171, 'CFS IKER', '{"sun_1":0,"blemishes_2":0,"blush_1":0,"makeup_2":0,"tshirt_2":0,"hair_1":1,"eyebrows_4":0,"bproof_1":0,"skin":3,"complexion_2":0,"chest_2":0,"eye_color":0,"makeup_4":0,"lipstick_2":0,"watches_2":0,"blush_3":0,"sun_2":0,"hair_2":1,"shoes_1":5,"lipstick_1":0,"tshirt_1":0,"mask_2":0,"decals_1":0,"hair_color_2":0,"mask_1":0,"helmet_2":0,"bracelets_1":-1,"bproof_2":0,"chain_1":0,"moles_1":0,"eyebrows_3":0,"beard_2":0,"blush_2":0,"bodyb_2":0,"moles_2":0,"pants_2":0,"pants_1":4,"chest_1":0,"lipstick_3":0,"blemishes_1":0,"bodyb_1":0,"eyebrows_1":0,"sex":0,"bracelets_2":0,"hair_color_1":1,"torso_1":7,"eyebrows_2":0,"bags_2":0,"beard_3":0,"lipstick_4":0,"beard_1":0,"watches_1":-1,"chain_2":0,"chest_3":0,"bags_1":0,"complexion_1":0,"makeup_3":0,"ears_1":-1,"glasses_2":0,"age_2":0,"decals_2":0,"makeup_1":0,"beard_4":0,"shoes_2":0,"arms_2":0,"age_1":0,"arms":1,"face":2,"glasses_1":0,"ears_2":0,"helmet_1":-1,"torso_2":0}', 'ambulance', 2, '[{"name":"WEAPON_BAT","label":"Bate","components":[],"ammo":0},{"name":"WEAPON_PISTOL","label":"Pistola","components":["clip_default"],"ammo":0},{"name":"WEAPON_ASSAULTSMG","label":"Assault SMG","components":["clip_default"],"ammo":0},{"name":"WEAPON_ASSAULTRIFLE","label":"AK-47","components":["clip_default"],"ammo":196},{"name":"WEAPON_FIREEXTINGUISHER","label":"Fire extinguisher","components":[],"ammo":0},{"name":"WEAPON_STUNGUN","label":"Taser","components":[],"ammo":250},{"name":"WEAPON_MACHETE","label":"Machete","components":[],"ammo":0},{"name":"WEAPON_FLASHLIGHT","label":"Linterna","components":[],"ammo":0},{"name":"GADGET_NIGHTVISION","label":"Night vision","components":[],"ammo":0}]', '{"z":27.9,"y":-565.7,"x":-426.3}', 136442, 0, 'superadmin', 'Jhon', 'Jhonshon', '12-12-1988', 'm', '189', '[{"val":361700,"name":"hunger","percent":36.17},{"val":396275,"name":"thirst","percent":39.6275},{"val":0,"name":"drunk","percent":0.0}]', NULL, 941, '', 0, NULL, '{}');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.user_accounts
CREATE TABLE IF NOT EXISTS `user_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(22) NOT NULL,
  `name` varchar(50) NOT NULL,
  `money` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla miserver.user_accounts: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `user_accounts` DISABLE KEYS */;
INSERT IGNORE INTO `user_accounts` (`id`, `identifier`, `name`, `money`) VALUES
	(245, 'steam:11000011b415c99', 'black_money', 0);
/*!40000 ALTER TABLE `user_accounts` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.user_contacts
CREATE TABLE IF NOT EXISTS `user_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla miserver.user_contacts: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `user_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_contacts` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.user_inventory
CREATE TABLE IF NOT EXISTS `user_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(22) NOT NULL,
  `item` varchar(50) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla miserver.user_inventory: ~119 rows (aproximadamente)
/*!40000 ALTER TABLE `user_inventory` DISABLE KEYS */;
INSERT IGNORE INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(109, 'steam:11000011b415c99', 'jagerbomb', 0),
	(110, 'steam:11000011b415c99', 'vodka', 0),
	(111, 'steam:11000011b415c99', 'fishingrod', 0),
	(112, 'steam:11000011b415c99', 'copper', 0),
	(113, 'steam:11000011b415c99', 'alive_chicken', 0),
	(114, 'steam:11000011b415c99', 'icetea', 0),
	(115, 'steam:11000011b415c99', 'packaged_plank', 0),
	(116, 'steam:11000011b415c99', 'ice', 0),
	(117, 'steam:11000011b415c99', 'armor', 0),
	(118, 'steam:11000011b415c99', 'soda', 0),
	(119, 'steam:11000011b415c99', 'gazbottle', 0),
	(120, 'steam:11000011b415c99', 'fixtool', 0),
	(121, 'steam:11000011b415c99', 'water', 0),
	(122, 'steam:11000011b415c99', 'meth', 0),
	(123, 'steam:11000011b415c99', 'menthe', 0),
	(124, 'steam:11000011b415c99', 'rhumfruit', 0),
	(125, 'steam:11000011b415c99', 'jusfruit', 0),
	(126, 'steam:11000011b415c99', 'beer', 0),
	(127, 'steam:11000011b415c99', 'rhumcoca', 0),
	(128, 'steam:11000011b415c99', 'croquettes', 0),
	(129, 'steam:11000011b415c99', 'shark', 0),
	(130, 'steam:11000011b415c99', 'blowpipe', 0),
	(131, 'steam:11000011b415c99', 'bolcacahuetes', 0),
	(132, 'steam:11000011b415c99', 'cigarette', 0),
	(133, 'steam:11000011b415c99', 'cutted_wood', 0),
	(134, 'steam:11000011b415c99', 'desfibrillateur', 0),
	(135, 'steam:11000011b415c99', 'carotool', 0),
	(136, 'steam:11000011b415c99', 'bread', 0),
	(137, 'steam:11000011b415c99', 'packaged_chicken', 0),
	(138, 'steam:11000011b415c99', 'weed', 0),
	(139, 'steam:11000011b415c99', 'petrol_raffin', 0),
	(140, 'steam:11000011b415c99', 'bandage', 0),
	(141, 'steam:11000011b415c99', 'petrol', 0),
	(142, 'steam:11000011b415c99', 'pizza', 0),
	(143, 'steam:11000011b415c99', 'martini', 0),
	(144, 'steam:11000011b415c99', 'firstaidkit', 0),
	(145, 'steam:11000011b415c99', 'jagercerbere', 0),
	(146, 'steam:11000011b415c99', 'yusuf', 0),
	(147, 'steam:11000011b415c99', 'clip', 0),
	(148, 'steam:11000011b415c99', 'medikit', 0),
	(149, 'steam:11000011b415c99', 'phone', 1),
	(150, 'steam:11000011b415c99', 'turtlebait', 0),
	(151, 'steam:11000011b415c99', 'wood', 0),
	(152, 'steam:11000011b415c99', 'fabric', 0),
	(153, 'steam:11000011b415c99', 'essence', 0),
	(154, 'steam:11000011b415c99', 'gold', 0),
	(155, 'steam:11000011b415c99', 'whiskycoca', 0),
	(156, 'steam:11000011b415c99', 'golem', 0),
	(157, 'steam:11000011b415c99', 'bolchips', 0),
	(158, 'steam:11000011b415c99', 'bolnoixcajou', 0),
	(159, 'steam:11000011b415c99', 'iron', 0),
	(160, 'steam:11000011b415c99', 'opium', 0),
	(161, 'steam:11000011b415c99', 'whisky', 0),
	(162, 'steam:11000011b415c99', 'energy', 0),
	(163, 'steam:11000011b415c99', 'washed_stone', 0),
	(164, 'steam:11000011b415c99', 'vodkafruit', 0),
	(165, 'steam:11000011b415c99', 'vodkaenergy', 0),
	(166, 'steam:11000011b415c99', 'moneywashid', 0),
	(167, 'steam:11000011b415c99', 'weed_pooch', 0),
	(168, 'steam:11000011b415c99', 'fishbait', 0),
	(169, 'steam:11000011b415c99', 'diamond', 0),
	(170, 'steam:11000011b415c99', 'limonade', 0),
	(171, 'steam:11000011b415c99', 'joint', 0),
	(172, 'steam:11000011b415c99', 'handcuff', 0),
	(173, 'steam:11000011b415c99', 'tequila', 0),
	(174, 'steam:11000011b415c99', 'diamond', 0),
	(175, 'steam:11000011b415c99', 'limonade', 0),
	(176, 'steam:11000011b415c99', 'joint', 0),
	(177, 'steam:11000011b415c99', 'handcuff', 0),
	(178, 'steam:11000011b415c99', 'tequila', 0),
	(179, 'steam:11000011b415c99', 'carokit', 0),
	(180, 'steam:11000011b415c99', 'meth_pooch', 0),
	(181, 'steam:11000011b415c99', 'fixkit', 0),
	(182, 'steam:11000011b415c99', 'stone', 0),
	(183, 'steam:11000011b415c99', 'saucisson', 0),
	(184, 'steam:11000011b415c99', 'carokit', 0),
	(185, 'steam:11000011b415c99', 'fixkit', 0),
	(186, 'steam:11000011b415c99', 'stone', 0),
	(187, 'steam:11000011b415c99', 'meth_pooch', 0),
	(188, 'steam:11000011b415c99', 'saucisson', 0),
	(189, 'steam:11000011b415c99', 'rhum', 0),
	(190, 'steam:11000011b415c99', 'slaughtered_chicken', 0),
	(191, 'steam:11000011b415c99', 'wool', 0),
	(192, 'steam:11000011b415c99', 'bolpistache', 0),
	(193, 'steam:11000011b415c99', 'cutting_pliers', 0),
	(194, 'steam:11000011b415c99', 'rhum', 0),
	(195, 'steam:11000011b415c99', 'slaughtered_chicken', 0),
	(196, 'steam:11000011b415c99', 'bolpistache', 0),
	(197, 'steam:11000011b415c99', 'wool', 0),
	(198, 'steam:11000011b415c99', 'cutting_pliers', 0),
	(199, 'steam:11000011b415c99', 'opium_pooch', 0),
	(200, 'steam:11000011b415c99', 'coke_pooch', 0),
	(201, 'steam:11000011b415c99', 'opium_pooch', 0),
	(202, 'steam:11000011b415c99', 'coke', 0),
	(203, 'steam:11000011b415c99', 'coke', 0),
	(204, 'steam:11000011b415c99', 'grapperaisin', 0),
	(205, 'steam:11000011b415c99', 'mojito', 0),
	(206, 'steam:11000011b415c99', 'coke_pooch', 0),
	(207, 'steam:11000011b415c99', 'grapperaisin', 0),
	(208, 'steam:11000011b415c99', 'mojito', 0),
	(209, 'steam:11000011b415c99', 'mixapero', 0),
	(210, 'steam:11000011b415c99', 'metreshooter', 0),
	(211, 'steam:11000011b415c99', 'drpepper', 0),
	(212, 'steam:11000011b415c99', 'contrat', 0),
	(213, 'steam:11000011b415c99', 'turtle', 0),
	(214, 'steam:11000011b415c99', 'mixapero', 0),
	(215, 'steam:11000011b415c99', 'metreshooter', 0),
	(216, 'steam:11000011b415c99', 'contrat', 0),
	(217, 'steam:11000011b415c99', 'turtle', 0),
	(218, 'steam:11000011b415c99', 'drpepper', 0),
	(219, 'steam:11000011b415c99', 'jager', 0),
	(220, 'steam:11000011b415c99', 'teqpaf', 0),
	(221, 'steam:11000011b415c99', 'clothe', 0),
	(222, 'steam:11000011b415c99', 'fish', 0),
	(223, 'steam:11000011b415c99', 'jager', 0),
	(224, 'steam:11000011b415c99', 'teqpaf', 0),
	(225, 'steam:11000011b415c99', 'clothe', 0),
	(226, 'steam:11000011b415c99', 'fish', 0),
	(227, 'steam:11000011b415c99', 'xanax', 0);
/*!40000 ALTER TABLE `user_inventory` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.user_licenses
CREATE TABLE IF NOT EXISTS `user_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) NOT NULL,
  `owner` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla miserver.user_licenses: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `user_licenses` DISABLE KEYS */;
INSERT IGNORE INTO `user_licenses` (`id`, `type`, `owner`) VALUES
	(1, 'weapon', 'steam:11000011b415c99');
/*!40000 ALTER TABLE `user_licenses` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.vehicles
CREATE TABLE IF NOT EXISTS `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla miserver.vehicles: ~284 rows (aproximadamente)
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT IGNORE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('440i', '440i', 400000, 'reales'),
	('650s', '650s', 10000000, 'donadores'),
	('675lt', '675lt', 10000000, 'donadores'),
	('718caymans', '718caymans', 10000000, 'donadores'),
	('Adder', 'adder', 900000, 'super'),
	('Akuma', 'AKUMA', 7500, 'motorcycles'),
	('Alpha', 'alpha', 60000, 'sports'),
	('amggt', 'amggt', 240000, 'reales'),
	('aperta', 'aperta', 10000000, 'donadores'),
	('Asea', 'asea', 5500, 'sedans'),
	('audi2', 'audi2', 210000, 'reales'),
	('Autarch', 'autarch', 1955000, 'super'),
	('Avarus', 'avarus', 18000, 'motorcycles'),
	('aventadors', 'aventadors', 10000000, 'donadores'),
	('Bagger', 'bagger', 13500, 'motorcycles'),
	('Baller', 'baller2', 40000, 'suvs'),
	('Baller Sport', 'baller3', 60000, 'suvs'),
	('Banshee', 'banshee', 70000, 'sports'),
	('Banshee 900R', 'banshee2', 255000, 'super'),
	('Bati 801', 'bati', 12000, 'motorcycles'),
	('Bati 801RR', 'bati2', 19000, 'motorcycles'),
	('Bestia GTS', 'bestiagts', 55000, 'sports'),
	('BF400', 'bf400', 6500, 'motorcycles'),
	('Bf Injection', 'bfinjection', 16000, 'offroad'),
	('Bifta', 'bifta', 12000, 'offroad'),
	('Bison', 'bison', 45000, 'vans'),
	('Blade', 'blade', 15000, 'muscle'),
	('Blazer', 'blazer', 6500, 'offroad'),
	('Blazer Sport', 'blazer4', 8500, 'offroad'),
	('Blista', 'blista', 8000, 'compacts'),
	('BMX (velo)', 'bmx', 160, 'motorcycles'),
	('Bobcat XL', 'bobcatxl', 32000, 'vans'),
	('Brawler', 'brawler', 45000, 'offroad'),
	('Brioso R/A', 'brioso', 18000, 'compacts'),
	('btr04', 'btr04', 160000, 'reales'),
	('Btype', 'btype', 62000, 'sportsclassics'),
	('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
	('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
	('Buccaneer', 'buccaneer', 18000, 'muscle'),
	('Buccaneer Rider', 'buccaneer2', 24000, 'muscle'),
	('Buffalo', 'buffalo', 12000, 'sports'),
	('Buffalo S', 'buffalo2', 20000, 'sports'),
	('Bullet', 'bullet', 90000, 'super'),
	('Burrito', 'burrito3', 19000, 'vans'),
	('caddyvw', 'caddyvw', 25000, 'reales'),
	('Camper', 'camper', 42000, 'vans'),
	('Carbonizzare', 'carbonizzare', 75000, 'sports'),
	('Carbon RS', 'carbonrs', 18000, 'motorcycles'),
	('Casco', 'casco', 30000, 'sportsclassics'),
	('Cavalcade', 'cavalcade2', 55000, 'suvs'),
	('cbr500r', 'cbr500r', 50000, 'motorcycles'),
	('cbrr500', 'cbrr', 45000, 'motorcycles'),
	('chargerf8', 'chargerf8', 10000000, 'donadores'),
	('Cheetah', 'cheetah', 375000, 'super'),
	('Chimera', 'chimera', 38000, 'motorcycles'),
	('Chino', 'chino', 15000, 'muscle'),
	('Chino Luxe', 'chino2', 19000, 'muscle'),
	('Cliffhanger', 'cliffhanger', 9500, 'motorcycles'),
	('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
	('Cognoscenti', 'cognoscenti', 55000, 'sedans'),
	('Comet', 'comet2', 65000, 'sports'),
	('Comet 5', 'comet5', 1145000, 'sports'),
	('Contender', 'contender', 70000, 'suvs'),
	('Coquette', 'coquette', 65000, 'sports'),
	('Coquette Classic', 'coquette2', 40000, 'sportsclassics'),
	('Coquette BlackFin', 'coquette3', 55000, 'muscle'),
	('Cruiser (velo)', 'cruiser', 510, 'motorcycles'),
	('Cyclone', 'cyclone', 1890000, 'super'),
	('Daemon', 'daemon', 11500, 'motorcycles'),
	('Daemon High', 'daemon2', 13500, 'motorcycles'),
	('Defiler', 'defiler', 9800, 'motorcycles'),
	('divo', 'divo', 10000000, 'donadores'),
	('Dominator', 'dominator', 35000, 'muscle'),
	('Double T', 'double', 28000, 'motorcycles'),
	('drift', 'drift', 10000000, 'donadores'),
	('Dubsta', 'dubsta', 45000, 'suvs'),
	('Dubsta Luxuary', 'dubsta2', 60000, 'suvs'),
	('Bubsta 6x6', 'dubsta3', 120000, 'offroad'),
	('Dukes', 'dukes', 28000, 'muscle'),
	('Dune Buggy', 'dune', 8000, 'offroad'),
	('EK9', 'EK9', 130000, 'reales'),
	('Elegy', 'elegy2', 38500, 'sports'),
	('Emperor', 'emperor', 8500, 'sedans'),
	('Enduro', 'enduro', 5500, 'motorcycles'),
	('Entity XF', 'entityxf', 425000, 'super'),
	('Esskey', 'esskey', 4200, 'motorcycles'),
	('everest', 'everest', 500000, 'reales'),
	('evo9', 'evo9', 180000, 'reales'),
	('Exemplar', 'exemplar', 32000, 'coupes'),
	('F620', 'f620', 40000, 'coupes'),
	('Faction', 'faction', 20000, 'muscle'),
	('Faction Rider', 'faction2', 30000, 'muscle'),
	('Faction XL', 'faction3', 40000, 'muscle'),
	('Faggio', 'faggio', 1900, 'motorcycles'),
	('Vespa', 'faggio2', 2800, 'motorcycles'),
	('Felon', 'felon', 42000, 'coupes'),
	('Felon GT', 'felon2', 55000, 'coupes'),
	('Feltzer', 'feltzer2', 55000, 'sports'),
	('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
	('fenyr', 'fenyr', 10000000, 'donadores'),
	('fiestarbcamber', 'fiestarbcamber', 120000, 'reales'),
	('Fixter (velo)', 'fixter', 225, 'motorcycles'),
	('FMJ', 'fmj', 185000, 'super'),
	('fnfcivic', 'fnfcivic', 140000, 'reales'),
	('forgiecat', 'forgiecat', 140000, 'reales'),
	('Fhantom', 'fq2', 17000, 'suvs'),
	('Fugitive', 'fugitive', 12000, 'sedans'),
	('Furore GT', 'furoregt', 45000, 'sports'),
	('Fusilade', 'fusilade', 40000, 'sports'),
	('Gargoyle', 'gargoyle', 16500, 'motorcycles'),
	('Gauntlet', 'gauntlet', 30000, 'muscle'),
	('Rally', 'gb200', 190000, 'sports'),
	('Gang Burrito', 'gburrito', 45000, 'vans'),
	('Burrito', 'gburrito2', 29000, 'vans'),
	('Glendale', 'glendale', 6500, 'sedans'),
	('Grabger', 'granger', 50000, 'suvs'),
	('Gresley', 'gresley', 47500, 'suvs'),
	('gsxr1000', 'gsxr1000', 60000, 'motorcycles'),
	('GT 500', 'gt500', 785000, 'sportsclassics'),
	('Guardian', 'guardian', 45000, 'offroad'),
	('Hakuchou', 'hakuchou', 31000, 'motorcycles'),
	('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
	('Hermes', 'hermes', 535000, 'muscle'),
	('Hexer', 'hexer', 12000, 'motorcycles'),
	('Hotknife', 'hotknife', 125000, 'muscle'),
	('Huntley S', 'huntley', 40000, 'suvs'),
	('Hustler', 'hustler', 625000, 'muscle'),
	('Infernus', 'infernus', 180000, 'super'),
	('Innovation', 'innovation', 23500, 'motorcycles'),
	('Intruder', 'intruder', 7500, 'sedans'),
	('Issi', 'issi2', 10000, 'compacts'),
	('Jackal', 'jackal', 38000, 'coupes'),
	('Jester', 'jester', 65000, 'sports'),
	('Jester(Racecar)', 'jester2', 135000, 'sports'),
	('Journey', 'journey', 6500, 'vans'),
	('Kamacho', 'kamacho', 345000, 'offroad'),
	('kangoo', 'kangoo', 55000, 'reales'),
	('Khamelion', 'khamelion', 38000, 'sports'),
	('kiagt', 'kiagt', 170000, 'reales'),
	('Kuruma', 'kuruma', 30000, 'sports'),
	('Landstalker', 'landstalker', 35000, 'suvs'),
	('RE-7B', 'le7b', 325000, 'super'),
	('lykan', 'lykan', 10000000, 'donadores'),
	('Lynx', 'lynx', 40000, 'sports'),
	('m3e46', 'm3e46', 270000, 'reales'),
	('m6coupe', 'm6coupe', 160000, 'reales'),
	('macla', 'macla', 190000, 'reales'),
	('Mamba', 'mamba', 70000, 'sports'),
	('Manana', 'manana', 12800, 'sportsclassics'),
	('Manchez', 'manchez', 5300, 'motorcycles'),
	('Massacro', 'massacro', 65000, 'sports'),
	('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
	('Mesa', 'mesa', 16000, 'suvs'),
	('Mesa Trail', 'mesa3', 40000, 'suvs'),
	('minic', 'minic', 75000, 'motorcycles'),
	('Minivan', 'minivan', 13000, 'vans'),
	('Monroe', 'monroe', 55000, 'sportsclassics'),
	('The Liberator', 'monster', 210000, 'offroad'),
	('Moonbeam', 'moonbeam', 18000, 'vans'),
	('Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
	('mslaz', 'mslaz', 50000, 'motorcycles'),
	('mvisiongt', 'mvisiongt', 10000000, 'donadores'),
	('Nemesis', 'nemesis', 5800, 'motorcycles'),
	('Neon', 'neon', 1500000, 'sports'),
	('Nightblade', 'nightblade', 35000, 'motorcycles'),
	('Nightshade', 'nightshade', 65000, 'muscle'),
	('9F', 'ninef', 65000, 'sports'),
	('9F Cabrio', 'ninef2', 80000, 'sports'),
	('ninjah2', 'ninjah2', 50000, 'motorcycles'),
	('Omnis', 'omnis', 35000, 'sports'),
	('Oracle XS', 'oracle2', 35000, 'coupes'),
	('Osiris', 'osiris', 160000, 'super'),
	('p1gtr', 'p1gtr', 10000000, 'donadores'),
	('Panto', 'panto', 10000, 'compacts'),
	('Paradise', 'paradise', 19000, 'vans'),
	('Pariah', 'pariah', 1420000, 'sports'),
	('Patriot', 'patriot', 55000, 'suvs'),
	('PCJ-600', 'pcj', 6200, 'motorcycles'),
	('pcs18', 'pcs18', 180000, 'reales'),
	('Penumbra', 'penumbra', 28000, 'sports'),
	('Pfister', 'pfister811', 85000, 'super'),
	('Phoenix', 'phoenix', 12500, 'muscle'),
	('Picador', 'picador', 18000, 'muscle'),
	('Pigalle', 'pigalle', 20000, 'sportsclassics'),
	('Prairie', 'prairie', 12000, 'compacts'),
	('Premier', 'premier', 8000, 'sedans'),
	('Primo Custom', 'primo2', 14000, 'sedans'),
	('X80 Proto', 'prototipo', 2500000, 'super'),
	('pturismo', 'pturismo', 10000000, 'donadores'),
	('r1', 'r1', 50000, 'motorcycles'),
	('Radius', 'radi', 29000, 'suvs'),
	('raiden', 'raiden', 1375000, 'sports'),
	('Rapid GT', 'rapidgt', 35000, 'sports'),
	('Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
	('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics'),
	('Reaper', 'reaper', 150000, 'super'),
	('Rebel', 'rebel2', 35000, 'offroad'),
	('regera', 'regera', 10000000, 'donadores'),
	('Regina', 'regina', 5000, 'sedans'),
	('Retinue', 'retinue', 615000, 'sportsclassics'),
	('Revolter', 'revolter', 1610000, 'sports'),
	('riata', 'riata', 380000, 'offroad'),
	('rmodmustang', 'rmodmustang', 10000000, 'donadores'),
	('Rocoto', 'rocoto', 45000, 'suvs'),
	('rs6pd600', 'rs6pd600', 10000000, 'donadores'),
	('Ruffian', 'ruffian', 6800, 'motorcycles'),
	('Rumpo', 'rumpo', 15000, 'vans'),
	('Rumpo Trail', 'rumpo3', 19500, 'vans'),
	('Sabre Turbo', 'sabregt', 20000, 'muscle'),
	('Sabre GT', 'sabregt2', 25000, 'muscle'),
	('Sanchez', 'sanchez', 5300, 'motorcycles'),
	('Sanchez Sport', 'sanchez2', 5300, 'motorcycles'),
	('sanchezTS', 'sanchezTS', 45000, 'motorcycles'),
	('Sanctus', 'sanctus', 25000, 'motorcycles'),
	('Sandking', 'sandking', 55000, 'offroad'),
	('Savestra', 'savestra', 990000, 'sportsclassics'),
	('SC 1', 'sc1', 1603000, 'super'),
	('Schafter', 'schafter2', 25000, 'sedans'),
	('Schafter V12', 'schafter3', 50000, 'sports'),
	('Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
	('Seminole', 'seminole', 25000, 'suvs'),
	('Sentinel', 'sentinel', 32000, 'coupes'),
	('Sentinel XS', 'sentinel2', 40000, 'coupes'),
	('Sentinel3', 'sentinel3', 650000, 'sports'),
	('Seven 70', 'seven70', 39500, 'sports'),
	('ETR1', 'sheava', 220000, 'super'),
	('Shotaro Concept', 'shotaro', 320000, 'motorcycles'),
	('Skyline', 'Skyline', 10000000, 'donadores'),
	('Slam Van', 'slamvan3', 11500, 'muscle'),
	('Sovereign', 'sovereign', 22000, 'motorcycles'),
	('Stinger', 'stinger', 80000, 'sportsclassics'),
	('Stinger GT', 'stingergt', 75000, 'sportsclassics'),
	('Streiter', 'streiter', 500000, 'sports'),
	('Stretch', 'stretch', 90000, 'sedans'),
	('Stromberg', 'stromberg', 3185350, 'sports'),
	('Sultan', 'sultan', 15000, 'sports'),
	('Sultan RS', 'sultanrs', 65000, 'super'),
	('Super Diamond', 'superd', 130000, 'sedans'),
	('Surano', 'surano', 50000, 'sports'),
	('Surfer', 'surfer', 12000, 'vans'),
	('T20', 't20', 300000, 'super'),
	('Tailgater', 'tailgater', 30000, 'sedans'),
	('Tampa', 'tampa', 16000, 'muscle'),
	('Drift Tampa', 'tampa2', 80000, 'sports'),
	('Thrust', 'thrust', 24000, 'motorcycles'),
	('titan17', 'titan17', 250000, 'reales'),
	('tmodel', 'tmodel', 10000000, 'donadores'),
	('todoterreno', 'todoterreno', 190000, 'reales'),
	('tr22', 'tr22', 10000000, 'donadores'),
	('Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
	('Trophy Truck', 'trophytruck', 60000, 'offroad'),
	('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad'),
	('Tropos', 'tropos', 40000, 'sports'),
	('Turismo R', 'turismor', 350000, 'super'),
	('Tyrus', 'tyrus', 600000, 'super'),
	('Vacca', 'vacca', 120000, 'super'),
	('Vader', 'vader', 7200, 'motorcycles'),
	('Verlierer', 'verlierer2', 70000, 'sports'),
	('Vigero', 'vigero', 12500, 'muscle'),
	('Virgo', 'virgo', 14000, 'muscle'),
	('Viseris', 'viseris', 875000, 'sportsclassics'),
	('Visione', 'visione', 2250000, 'super'),
	('vito', 'vito', 90666, 'reales'),
	('Voltic', 'voltic', 90000, 'super'),
	('Voodoo', 'voodoo', 7200, 'muscle'),
	('Vortex', 'vortex', 9800, 'motorcycles'),
	('Warrener', 'warrener', 4000, 'sedans'),
	('Washington', 'washington', 9000, 'sedans'),
	('Windsor', 'windsor', 95000, 'coupes'),
	('Windsor Drop', 'windsor2', 125000, 'coupes'),
	('Woflsbane', 'wolfsbane', 9000, 'motorcycles'),
	('BMW X5', 'x5', 10000000, 'donadores'),
	('xkgt', 'xkgt', 300000, 'reales'),
	('XLS', 'xls', 32000, 'suvs'),
	('Yosemite', 'yosemite', 485000, 'muscle'),
	('Youga', 'youga', 10800, 'vans'),
	('Youga Luxuary', 'youga2', 14500, 'vans'),
	('Z190', 'z190', 900000, 'sportsclassics'),
	('Zentorno', 'zentorno', 1500000, 'super'),
	('Zion', 'zion', 36000, 'coupes'),
	('Zion Cabrio', 'zion2', 45000, 'coupes'),
	('Zombie', 'zombiea', 9500, 'motorcycles'),
	('Zombie Luxuary', 'zombieb', 12000, 'motorcycles'),
	('Z-Type', 'ztype', 220000, 'sportsclassics');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.vehicle_categories
CREATE TABLE IF NOT EXISTS `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla miserver.vehicle_categories: ~13 rows (aproximadamente)
/*!40000 ALTER TABLE `vehicle_categories` DISABLE KEYS */;
INSERT IGNORE INTO `vehicle_categories` (`name`, `label`) VALUES
	('compacts', 'Compacts'),
	('coupes', 'Coupés'),
	('donadores', 'Donadores'),
	('motorcycles', 'Motos'),
	('muscle', 'Muscle'),
	('offroad', 'Off Road'),
	('reales', 'Reales'),
	('sedans', 'Sedans'),
	('sports', 'Sports'),
	('sportsclassics', 'Sports Classics'),
	('super', 'Super'),
	('suvs', 'SUVs'),
	('vans', 'Vans');
/*!40000 ALTER TABLE `vehicle_categories` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.vehicle_sold
CREATE TABLE IF NOT EXISTS `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla miserver.vehicle_sold: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `vehicle_sold` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle_sold` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.weashops
CREATE TABLE IF NOT EXISTS `weashops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla miserver.weashops: ~17 rows (aproximadamente)
/*!40000 ALTER TABLE `weashops` DISABLE KEYS */;
INSERT IGNORE INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(1, 'GunShop', 'WEAPON_PISTOL', 50000),
	(2, 'BlackWeashop', 'WEAPON_PISTOL', 50000),
	(3, 'GunShop', 'WEAPON_FLASHLIGHT', 60),
	(4, 'BlackWeashop', 'WEAPON_FLASHLIGHT', 70),
	(5, 'GunShop', 'WEAPON_MACHETE', 1000),
	(6, 'BlackWeashop', 'WEAPON_MACHETE', 800),
	(7, 'GunShop', 'WEAPON_SWITCHBLADE', 4000),
	(8, 'BlackWeashop', 'WEAPON_SWITCHBLADE', 3500),
	(9, 'GunShop', 'WEAPON_BAT', 1500),
	(10, 'BlackWeashop', 'WEAPON_BAT', 1200),
	(11, 'GunShop', 'WEAPON_FIREEXTINGUISHER', 100),
	(12, 'BlackWeashop', 'WEAPON_FIREEXTINGUISHER', 50),
	(13, 'GunShop', 'WEAPON_BALL', 50),
	(14, 'BlackWeashop', 'WEAPON_BALL', 20),
	(15, 'BlackWeashop', 'WEAPON_APPISTOL', 32000),
	(41, 'GunShop', 'GADGET_PARACHUTE', 500),
	(42, 'GunShop', 'GADGET_NIGHTVISION', 500);
/*!40000 ALTER TABLE `weashops` ENABLE KEYS */;

-- Volcando estructura para tabla miserver.whitelist
CREATE TABLE IF NOT EXISTS `whitelist` (
  `identifier` varchar(75) NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla miserver.whitelist: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `whitelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `whitelist` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
