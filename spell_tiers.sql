
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
DROP TABLE IF EXISTS `spell_tiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_tiers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spell_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tier` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hp_req` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hp_req_percent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hp_upkeep` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `power_req` float unsigned NOT NULL DEFAULT '0',
  `power_req_percent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `power_upkeep` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `power_by_level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `savagery_req` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `savagery_req_percent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `savagery_upkeep` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dissonance_req` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dissonance_req_percent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dissonance_upkeep` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `req_concentration` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `cast_time` mediumint(8) unsigned NOT NULL DEFAULT '100',
  `recovery` float NOT NULL DEFAULT '0',
  `recast` float unsigned NOT NULL DEFAULT '1',
  `radius` float unsigned NOT NULL DEFAULT '0',
  `max_aoe_targets` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `min_range` float unsigned NOT NULL DEFAULT '0',
  `range` float unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `duration2` int(10) unsigned NOT NULL DEFAULT '0',
  `resistibility` float unsigned NOT NULL DEFAULT '0',
  `hit_bonus` float NOT NULL DEFAULT '0',
  `call_frequency` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown9` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `given_by` varchar(64) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SpellTierIDX` (`spell_id`,`tier`),
  CONSTRAINT `FK_spell_tiers` FOREIGN KEY (`spell_id`) REFERENCES `spells` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=61399 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

