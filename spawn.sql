
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
DROP TABLE IF EXISTS `spawn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spawn` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE latin1_general_ci DEFAULT NULL,
  `sub_title` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `prefix` varchar(128) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `suffix` varchar(128) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `last_name` varchar(64) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `race` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `model_type` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `size` smallint(5) unsigned NOT NULL DEFAULT 32,
  `size_offset` tinyint(3) NOT NULL DEFAULT 0,
  `targetable` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `show_name` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `command_primary` int(10) unsigned NOT NULL DEFAULT 0,
  `command_secondary` int(10) unsigned NOT NULL DEFAULT 0,
  `visual_state` int(10) unsigned NOT NULL DEFAULT 0,
  `attackable` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `show_level` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `show_command_icon` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `display_hand_icon` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `faction_id` int(10) unsigned NOT NULL DEFAULT 0,
  `collision_radius` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hp` int(10) unsigned NOT NULL DEFAULT 0,
  `power` int(10) unsigned NOT NULL DEFAULT 0,
  `savagery` int(10) unsigned NOT NULL DEFAULT 0,
  `dissonance` int(10) unsigned NOT NULL DEFAULT 0,
  `merchant_id` int(10) unsigned NOT NULL DEFAULT 0,
  `transport_id` int(10) unsigned NOT NULL DEFAULT 0,
  `merchant_type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `processed` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `expansion_flag` int(10) NOT NULL DEFAULT 0,
  `is_instanced_spawn` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `disable_sounds` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `merchant_min_level` int(10) unsigned NOT NULL DEFAULT 0,
  `merchant_max_level` int(10) unsigned NOT NULL DEFAULT 0,
  `holiday_flag` int(10) unsigned NOT NULL DEFAULT 0,
  `aaxp_rewards` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `SpawnIDX` (`name`),
  KEY `SpawnCmdIDX` (`command_primary`,`command_secondary`),
  KEY `SpawnMiscIDX` (`faction_id`,`merchant_id`,`transport_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8220003 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

