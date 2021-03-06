
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
DROP TABLE IF EXISTS `transporters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transporters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transport_id` int(10) unsigned NOT NULL DEFAULT 0,
  `transport_type` enum('Zone','Location','Generic Transport','Flight') COLLATE latin1_general_ci DEFAULT 'Zone',
  `display_name` varchar(64) COLLATE latin1_general_ci DEFAULT NULL,
  `destination_zone_id` int(10) unsigned NOT NULL DEFAULT 0,
  `destination_x` float NOT NULL DEFAULT 0,
  `destination_y` float NOT NULL DEFAULT 0,
  `destination_z` float NOT NULL DEFAULT 0,
  `destination_heading` float NOT NULL DEFAULT 0,
  `trigger_location_zone_id` int(10) unsigned NOT NULL DEFAULT 0,
  `trigger_location_x` float NOT NULL DEFAULT -1,
  `trigger_location_y` float NOT NULL DEFAULT -1,
  `trigger_location_z` float NOT NULL DEFAULT -1,
  `trigger_radius` float NOT NULL DEFAULT -1,
  `cost` int(10) unsigned NOT NULL DEFAULT 0,
  `message` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `min_level` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `max_level` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `quest_req` int(10) unsigned NOT NULL DEFAULT 0,
  `quest_step_req` smallint(5) unsigned NOT NULL DEFAULT 0,
  `quest_completed` int(10) unsigned NOT NULL DEFAULT 0,
  `map_x` int(10) unsigned NOT NULL DEFAULT 0,
  `map_y` int(10) unsigned NOT NULL DEFAULT 0,
  `expansion_flag` int(10) unsigned NOT NULL DEFAULT 0,
  `min_client_version` int(10) unsigned NOT NULL DEFAULT 0,
  `max_client_version` int(10) unsigned NOT NULL DEFAULT 0,
  `flight_path_id` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_id` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_red_color` smallint(5) unsigned NOT NULL DEFAULT 255,
  `mount_green_color` smallint(5) unsigned NOT NULL DEFAULT 255,
  `mount_blue_color` smallint(5) unsigned NOT NULL DEFAULT 255,
  `holiday_flag` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_transporters` (`destination_zone_id`),
  KEY `FK_transporters2` (`trigger_location_zone_id`),
  CONSTRAINT `FK_transporters` FOREIGN KEY (`destination_zone_id`) REFERENCES `zones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

