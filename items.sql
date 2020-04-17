
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
DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `item_type` enum('Normal','Weapon','Ranged','Armor','Shield','Bag','Scroll','Recipe','Food','Bauble','House','Thrown','House Container','Adornment','Profile','Pattern Set','Item Set','Book','Decoration','Dungeon Maker','Marketplace') COLLATE latin1_general_ci NOT NULL DEFAULT 'Normal',
  `icon` smallint(5) unsigned NOT NULL DEFAULT '0',
  `count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tier` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `skill_id_req` int(10) unsigned NOT NULL DEFAULT '0',
  `skill_id_req2` int(10) unsigned NOT NULL DEFAULT '0',
  `skill_min` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weight` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE latin1_general_ci,
  `show_name` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `attuneable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `artifact` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lore` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `temporary` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `notrade` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `novalue` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `nozone` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `nodestroy` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `crafted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `good_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `evil_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `stacklore` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lore_equip` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `flags_16384` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `flags_32768` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ornate` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `heirloom` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `appearance_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `unlocked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reforged` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `norepair` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `etheral` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `refined` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `flags2_256` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `usable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `slots` int(10) unsigned NOT NULL DEFAULT '0',
  `set_name` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `sell_price` int(10) unsigned NOT NULL DEFAULT '0',
  `sell_status_amount` int(10) unsigned NOT NULL DEFAULT '0',
  `stack_count` smallint(5) unsigned NOT NULL DEFAULT '1',
  `collectable` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `adornment_slot1` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `adornment_slot2` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `adornment_slot3` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `adornment_slot4` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `adornment_slot5` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `adornment_slot6` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `adornment_description` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `offers_quest_id` int(10) unsigned NOT NULL DEFAULT '0',
  `soe_autoquest_id` int(11) DEFAULT NULL,
  `part_of_quest_id` int(10) unsigned NOT NULL DEFAULT '0',
  `quest_unknown` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `max_charges` smallint(5) unsigned NOT NULL DEFAULT '0',
  `display_charges` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recommended_level` smallint(5) unsigned NOT NULL DEFAULT '0',
  `adventure_default_level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `tradeskill_default_level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `adventure_classes` bigint(20) unsigned NOT NULL DEFAULT '0',
  `tradeskill_classes` bigint(20) unsigned NOT NULL DEFAULT '0',
  `soe_item_id` int(10) NOT NULL DEFAULT '0',
  `soe_item_crc` int(10) NOT NULL DEFAULT '0',
  `lua_script` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `harvest` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ItemIDX` (`soe_item_id`),
  KEY `ItemTypeIDX` (`item_type`),
  KEY `ItemNameIDX` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=192188 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

