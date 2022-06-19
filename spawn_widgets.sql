
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
DROP TABLE IF EXISTS `spawn_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spawn_widgets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spawn_id` int(10) unsigned NOT NULL,
  `widget_id` int(10) unsigned NOT NULL DEFAULT 0,
  `widget_x` float NOT NULL DEFAULT 0,
  `widget_y` float NOT NULL DEFAULT 0,
  `widget_z` float NOT NULL DEFAULT 0,
  `include_heading` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `include_location` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `icon` tinyint(3) unsigned NOT NULL DEFAULT 4,
  `type` enum('Generic','Door','Lift') COLLATE latin1_general_ci NOT NULL DEFAULT 'Generic',
  `open_heading` float NOT NULL DEFAULT -1,
  `closed_heading` float NOT NULL DEFAULT -1,
  `open_x` float NOT NULL DEFAULT 0,
  `open_y` float NOT NULL DEFAULT 0,
  `open_z` float NOT NULL DEFAULT 0,
  `action_spawn_id` int(10) unsigned NOT NULL DEFAULT 0,
  `open_sound_file` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `close_sound_file` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `open_duration` smallint(5) unsigned NOT NULL DEFAULT 10,
  `close_x` float NOT NULL,
  `close_y` float NOT NULL DEFAULT 0,
  `close_z` float NOT NULL DEFAULT 0,
  `linked_spawn_id` int(10) unsigned NOT NULL DEFAULT 0,
  `house_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `SpawnIDX` (`spawn_id`),
  KEY `WidgetIDX` (`widget_id`),
  CONSTRAINT `FK_widgets_spawn` FOREIGN KEY (`spawn_id`) REFERENCES `spawn` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5564 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

