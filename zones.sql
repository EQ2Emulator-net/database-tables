
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zones` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `expansion_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(64) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `file` varchar(64) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT 'Describe me in the zones table! :)',
  `safe_x` float NOT NULL DEFAULT '0',
  `safe_y` float NOT NULL DEFAULT '0',
  `safe_z` float NOT NULL DEFAULT '0',
  `safe_heading` float NOT NULL DEFAULT '0',
  `underworld` float NOT NULL DEFAULT '-1000000',
  `xp_modifier` float NOT NULL DEFAULT '0',
  `min_recommended` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `max_recommended` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `zone_type` varchar(64) COLLATE latin1_general_ci DEFAULT '',
  `always_loaded` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `city_zone` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `weather_allowed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `min_status` int(10) NOT NULL DEFAULT '0',
  `min_level` int(10) NOT NULL DEFAULT '0',
  `max_level` int(10) NOT NULL DEFAULT '0',
  `start_zone` tinyint(3) NOT NULL DEFAULT '0',
  `instance_type` enum('NONE','GROUP_LOCKOUT_INSTANCE','GROUP_PERSIST_INSTANCE','RAID_LOCKOUT_INSTANCE','RAID_PERSIST_INSTANCE','SOLO_LOCKOUT_INSTANCE','SOLO_PERSIST_INSTANCE','TRADESKILL_INSTANCE','PUBLIC_INSTANCE','PERSONAL_HOUSE_INSTANCE','GUILD_HOUSE_INSTANCE','QUEST_INSTANCE') COLLATE latin1_general_ci NOT NULL DEFAULT 'NONE',
  `default_reenter_time` int(10) unsigned NOT NULL DEFAULT '0',
  `default_reset_time` int(10) unsigned NOT NULL DEFAULT '0',
  `default_lockout_time` int(10) unsigned NOT NULL DEFAULT '0',
  `force_group_to_zone` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lua_script` varchar(255) COLLATE latin1_general_ci DEFAULT '',
  `shutdown_timer` int(10) unsigned NOT NULL DEFAULT '300' COMMENT 'In seconds',
  `zone_motd` varchar(250) COLLATE latin1_general_ci DEFAULT '',
  `ruleset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `login_checksum` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ZoneNameIDX` (`name`),
  KEY `ZoneDescIDX` (`description`),
  KEY `ZoneFileIDX` (`file`)
) ENGINE=InnoDB AUTO_INCREMENT=816 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

