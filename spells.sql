
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
DROP TABLE IF EXISTS `spells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spells` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `soe_spell_crc` int(10) unsigned NOT NULL DEFAULT 0,
  `type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `cast_type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `name` varchar(250) COLLATE latin1_general_ci NOT NULL DEFAULT 'NoName',
  `description` text COLLATE latin1_general_ci NOT NULL,
  `icon` smallint(5) unsigned NOT NULL DEFAULT 0,
  `icon_heroic_op` smallint(5) unsigned NOT NULL DEFAULT 0,
  `icon_backdrop` smallint(5) unsigned NOT NULL DEFAULT 0,
  `class_skill` bigint(20) unsigned NOT NULL DEFAULT 0,
  `mastery_skill` bigint(20) unsigned NOT NULL DEFAULT 0,
  `min_class_skill_req` smallint(5) unsigned NOT NULL DEFAULT 0,
  `duration_until_cancel` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `target_type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `success_message` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `fade_message` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `fade_message_others` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `interruptable` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `cast_while_moving` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `lua_script` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `spell_visual` int(10) unsigned NOT NULL DEFAULT 0,
  `effect_message` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `spell_book_type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `can_effect_raid` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `affect_only_group_members` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `display_spell_tier` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `friendly_spell` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `group_spell` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `det_type` tinyint(3) NOT NULL DEFAULT 0,
  `control_effect_type` tinyint(3) NOT NULL DEFAULT 0,
  `incurable` tinyint(1) NOT NULL DEFAULT 0,
  `linked_timer_id` int(10) unsigned NOT NULL DEFAULT 0,
  `not_maintained` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `casting_flags` int(10) unsigned NOT NULL DEFAULT 0,
  `persist_through_death` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `savage_bar` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `savage_bar_slot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `is_active` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `is_aa` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `is_deity` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `deity` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `spell_type` enum('Unset','DD','DoT','Heal','HoT-Ward','Debuff','Buff','CombatBuff','Taunt','Detaunt','Rez','Cure') COLLATE latin1_general_ci DEFAULT 'Unset',
  `last_auto_update` int(10) unsigned NOT NULL DEFAULT 0,
  `soe_last_update` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `SpellIDX` (`name`),
  KEY `SpellLUAIDX` (`lua_script`),
  KEY `SpellSkillsIDX` (`class_skill`,`mastery_skill`)
) ENGINE=InnoDB AUTO_INCREMENT=2550377 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

