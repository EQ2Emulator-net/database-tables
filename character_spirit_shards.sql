
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
DROP TABLE IF EXISTS `character_spirit_shards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_spirit_shards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` bigint(20) NOT NULL DEFAULT current_timestamp(),
  `name` varchar(64) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `level` int(10) unsigned NOT NULL DEFAULT 0,
  `race` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `gender` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `adventure_class` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `model_type` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `soga_model_type` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `hair_type` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `hair_face_type` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `wing_type` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `chest_type` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `legs_type` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `soga_hair_type` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `soga_hair_face_type` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `hide_hood` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `size` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `collision_radius` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `action_state` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `visual_state` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `mood_state` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `emote_state` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `pos_state` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `activity_status` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `sub_title` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `prefix_title` varchar(128) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `suffix_title` varchar(128) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `lastname` varchar(64) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `x` float NOT NULL DEFAULT 0,
  `y` float NOT NULL DEFAULT 0,
  `z` float NOT NULL DEFAULT 0,
  `heading` float NOT NULL DEFAULT 0,
  `gridid` int(10) unsigned NOT NULL DEFAULT 0,
  `zoneid` int(10) unsigned NOT NULL DEFAULT 0,
  `instanceid` int(10) unsigned NOT NULL DEFAULT 0,
  `charid` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

