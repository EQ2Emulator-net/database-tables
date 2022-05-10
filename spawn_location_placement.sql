
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
DROP TABLE IF EXISTS `spawn_location_placement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spawn_location_placement` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` int(10) unsigned NOT NULL DEFAULT 0,
  `spawn_location_id` int(10) unsigned NOT NULL DEFAULT 0,
  `x` float NOT NULL DEFAULT 0,
  `y` float NOT NULL DEFAULT 0,
  `z` float NOT NULL DEFAULT 0,
  `x_offset` float NOT NULL DEFAULT 0,
  `y_offset` float NOT NULL DEFAULT 0,
  `z_offset` float NOT NULL DEFAULT 0,
  `heading` float NOT NULL DEFAULT 0,
  `pitch` float NOT NULL DEFAULT 0,
  `roll` float NOT NULL DEFAULT 0,
  `respawn` int(10) unsigned NOT NULL DEFAULT 3600,
  `expire_timer` int(10) unsigned NOT NULL DEFAULT 0,
  `expire_offset` int(10) unsigned NOT NULL DEFAULT 0,
  `grid_id` int(10) unsigned NOT NULL DEFAULT 0,
  `processed` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `instance_id` int(10) unsigned NOT NULL DEFAULT 0,
  `lvl_override` int(11) NOT NULL DEFAULT 0,
  `hp_override` int(11) NOT NULL DEFAULT 0,
  `mp_override` int(11) NOT NULL DEFAULT 0,
  `str_override` int(11) unsigned NOT NULL DEFAULT 0,
  `sta_override` int(11) unsigned NOT NULL DEFAULT 0,
  `wis_override` int(11) unsigned NOT NULL DEFAULT 0,
  `int_override` int(11) unsigned NOT NULL DEFAULT 0,
  `agi_override` int(11) unsigned NOT NULL DEFAULT 0,
  `heat_override` int(10) unsigned NOT NULL DEFAULT 0,
  `cold_override` int(10) unsigned NOT NULL DEFAULT 0,
  `magic_override` int(10) unsigned NOT NULL DEFAULT 0,
  `mental_override` int(10) unsigned NOT NULL DEFAULT 0,
  `divine_override` int(10) unsigned NOT NULL DEFAULT 0,
  `disease_override` int(10) unsigned NOT NULL DEFAULT 0,
  `poison_override` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `SpawnLocationIDX` (`spawn_location_id`),
  KEY `ZoneIDX` (`zone_id`),
  CONSTRAINT `FK_placement1` FOREIGN KEY (`spawn_location_id`) REFERENCES `spawn_location_name` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_placement2` FOREIGN KEY (`zone_id`) REFERENCES `zones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1593946 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

