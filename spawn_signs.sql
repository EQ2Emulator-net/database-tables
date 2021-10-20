
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `spawn_signs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spawn_signs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spawn_id` int(10) unsigned NOT NULL DEFAULT 0,
  `type` enum('Zone','Generic') COLLATE latin1_general_ci NOT NULL DEFAULT 'Generic',
  `zone_id` int(10) unsigned NOT NULL DEFAULT 0,
  `widget_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `widget_x` float NOT NULL DEFAULT 0,
  `widget_y` float NOT NULL DEFAULT 0,
  `widget_z` float NOT NULL DEFAULT 0,
  `icon` smallint(6) NOT NULL DEFAULT 0,
  `description` text COLLATE latin1_general_ci NOT NULL,
  `sign_distance` float NOT NULL DEFAULT 0,
  `zone_x` float NOT NULL DEFAULT 0,
  `zone_y` float NOT NULL DEFAULT 0,
  `zone_z` float NOT NULL DEFAULT 0,
  `zone_heading` float NOT NULL DEFAULT 0,
  `include_heading` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `include_location` tinyint(3) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `SpawnIDX` (`spawn_id`),
  CONSTRAINT `FK_signs_spawn` FOREIGN KEY (`spawn_id`) REFERENCES `spawn` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4725 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

