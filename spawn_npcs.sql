
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
DROP TABLE IF EXISTS `spawn_npcs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spawn_npcs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spawn_id` int(10) unsigned NOT NULL DEFAULT 0,
  `min_level` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `max_level` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `enc_level` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `class_` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `gender` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `min_group_size` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `max_group_size` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `hair_type_id` smallint(5) unsigned NOT NULL DEFAULT 0,
  `facial_hair_type_id` smallint(5) unsigned NOT NULL DEFAULT 0,
  `wing_type_id` smallint(5) unsigned NOT NULL DEFAULT 0,
  `chest_type_id` smallint(5) unsigned NOT NULL DEFAULT 0,
  `legs_type_id` smallint(5) unsigned NOT NULL DEFAULT 0,
  `soga_hair_type_id` smallint(5) unsigned NOT NULL DEFAULT 0,
  `soga_facial_hair_type_id` smallint(5) unsigned NOT NULL DEFAULT 0,
  `soga_model_type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hide_hood` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `heroic_flag` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `action_state` smallint(5) unsigned NOT NULL DEFAULT 0,
  `mood_state` smallint(5) unsigned NOT NULL DEFAULT 0,
  `emote_state` smallint(5) unsigned NOT NULL DEFAULT 0,
  `initial_state` smallint(5) unsigned NOT NULL DEFAULT 0,
  `activity_status` smallint(5) unsigned NOT NULL DEFAULT 0,
  `attack_type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `aggro_radius` float unsigned NOT NULL DEFAULT 10,
  `ai_strategy` enum('BALANCED','OFFENSIVE','DEFENSIVE') COLLATE latin1_general_ci NOT NULL DEFAULT 'BALANCED',
  `spell_list_id` int(10) unsigned NOT NULL DEFAULT 0,
  `secondary_spell_list_id` int(10) unsigned NOT NULL DEFAULT 0,
  `skill_list_id` int(10) unsigned NOT NULL DEFAULT 0,
  `secondary_skill_list_id` int(10) unsigned NOT NULL DEFAULT 0,
  `equipment_list_id` int(10) unsigned NOT NULL DEFAULT 0,
  `str` smallint(5) NOT NULL DEFAULT 0,
  `sta` smallint(5) NOT NULL DEFAULT 0,
  `wis` smallint(5) NOT NULL DEFAULT 0,
  `intel` smallint(5) NOT NULL DEFAULT 0,
  `agi` smallint(5) NOT NULL DEFAULT 0,
  `heat` smallint(5) NOT NULL DEFAULT 0,
  `cold` smallint(5) NOT NULL DEFAULT 0,
  `magic` smallint(5) NOT NULL DEFAULT 0,
  `mental` smallint(5) NOT NULL DEFAULT 0,
  `divine` smallint(5) NOT NULL DEFAULT 0,
  `disease` smallint(5) NOT NULL DEFAULT 0,
  `poison` smallint(5) NOT NULL DEFAULT 0,
  `elemental` smallint(5) unsigned NOT NULL DEFAULT 0,
  `arcane` smallint(5) unsigned NOT NULL DEFAULT 0,
  `noxious` smallint(5) unsigned NOT NULL DEFAULT 0,
  `cast_percentage` tinyint(3) unsigned NOT NULL DEFAULT 10,
  `randomize` int(10) unsigned NOT NULL DEFAULT 0,
  `alignment` tinyint(3) NOT NULL DEFAULT 0,
  `water_type` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `flying_type` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `SpawnIDX` (`spawn_id`),
  CONSTRAINT `FK_npcs_spawn` FOREIGN KEY (`spawn_id`) REFERENCES `spawn` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36158 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

