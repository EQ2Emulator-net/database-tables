
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
DROP TABLE IF EXISTS `character_spell_effects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_spell_effects` (
  `name` varchar(64) NOT NULL DEFAULT '',
  `caster_char_id` int(10) unsigned NOT NULL DEFAULT 0,
  `target_char_id` int(10) unsigned NOT NULL DEFAULT 0,
  `target_type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `db_effect_type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `spell_id` int(10) unsigned NOT NULL DEFAULT 0,
  `effect_slot` int(10) unsigned NOT NULL DEFAULT 0,
  `slot_pos` int(10) unsigned NOT NULL DEFAULT 0,
  `icon` smallint(5) unsigned NOT NULL DEFAULT 0,
  `icon_backdrop` smallint(5) unsigned NOT NULL DEFAULT 0,
  `conc_used` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `tier` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `total_time` float unsigned NOT NULL DEFAULT 0,
  `expire_timestamp` int(10) unsigned NOT NULL DEFAULT 0,
  `lua_file` text NOT NULL DEFAULT '',
  `custom_spell` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `charid` int(10) unsigned NOT NULL DEFAULT 0,
  `damage_remaining` int(10) unsigned NOT NULL DEFAULT 0,
  `effect_bitmask` int(10) unsigned NOT NULL DEFAULT 0,
  `num_triggers` smallint(5) unsigned NOT NULL DEFAULT 0,
  `had_triggers` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `cancel_after_triggers` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `crit` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `last_spellattack_hit` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `interrupted` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `resisted` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `custom_function` text NOT NULL DEFAULT 'notset'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

