
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
DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `soe_id` int(10) unsigned DEFAULT NULL,
  `bHaveAllProducts` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `name` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `description` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `level` int(10) unsigned NOT NULL DEFAULT 0,
  `skill_level` int(10) unsigned NOT NULL DEFAULT 0,
  `technique` int(10) unsigned NOT NULL DEFAULT 0,
  `knowledge` int(10) unsigned NOT NULL DEFAULT 0,
  `icon` int(10) unsigned NOT NULL DEFAULT 0,
  `adv_classes` bigint(20) unsigned NOT NULL DEFAULT 0,
  `ts_classes` int(10) unsigned NOT NULL DEFAULT 0,
  `can_commission` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `bench` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `primary_comp_list` int(10) unsigned DEFAULT NULL,
  `primary_comp_qty` int(10) unsigned NOT NULL DEFAULT 1,
  `fuel_comp_list` int(10) unsigned DEFAULT NULL,
  `fuel_comp_qty` int(10) unsigned NOT NULL DEFAULT 1,
  `stage0_soe_id` int(10) unsigned DEFAULT NULL,
  `stage0_id` int(10) unsigned DEFAULT NULL,
  `stage1_soe_id` int(10) unsigned DEFAULT NULL,
  `stage1_id` int(10) unsigned DEFAULT NULL,
  `stage2_soe_id` int(10) unsigned DEFAULT NULL,
  `stage2_id` int(10) unsigned DEFAULT NULL,
  `stage3_soe_id` int(10) unsigned DEFAULT NULL,
  `stage3_id` int(10) unsigned DEFAULT NULL,
  `stage4_soe_id` int(10) unsigned DEFAULT NULL,
  `stage4_id` int(10) unsigned DEFAULT NULL,
  `stage0_qty` int(10) unsigned NOT NULL DEFAULT 1,
  `stage1_qty` int(10) unsigned NOT NULL DEFAULT 1,
  `stage2_qty` int(10) unsigned NOT NULL DEFAULT 1,
  `stage3_qty` int(10) unsigned NOT NULL DEFAULT 1,
  `stage4_qty` int(10) unsigned NOT NULL DEFAULT 1,
  `stage0_byp_id` int(10) unsigned DEFAULT NULL,
  `stage1_byp_id` int(10) unsigned DEFAULT NULL,
  `stage2_byp_id` int(10) unsigned DEFAULT NULL,
  `stage3_byp_id` int(10) unsigned DEFAULT NULL,
  `stage4_byp_id` int(10) unsigned DEFAULT NULL,
  `stage0_byp_qty` int(10) unsigned NOT NULL DEFAULT 0,
  `stage1_byp_qty` int(10) unsigned NOT NULL DEFAULT 0,
  `stage2_byp_qty` int(10) unsigned NOT NULL DEFAULT 0,
  `stage3_byp_qty` int(10) unsigned NOT NULL DEFAULT 0,
  `stage4_byp_qty` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `IDXName` (`name`(100)),
  KEY `IDXBench` (`bench`),
  KEY `IDXSoeID` (`soe_id`),
  KEY `FK_recipe_recipe_comp_list` (`primary_comp_list`),
  KEY `FK_recipe_recipe_comp_list_2` (`fuel_comp_list`),
  KEY `FK_recipe_items` (`stage0_id`),
  KEY `FK_recipe_items_2` (`stage1_id`),
  KEY `FK_recipe_items_3` (`stage2_id`),
  KEY `FK_recipe_items_4` (`stage3_id`),
  KEY `FK_recipe_items_5` (`stage4_id`),
  KEY `FK_recipe_items_6` (`stage0_byp_id`),
  KEY `FK_recipe_items_7` (`stage1_byp_id`),
  KEY `FK_recipe_items_8` (`stage2_byp_id`),
  KEY `FK_recipe_items_9` (`stage3_byp_id`),
  KEY `FK_recipe_items_10` (`stage4_byp_id`),
  CONSTRAINT `FK_recipe_items` FOREIGN KEY (`stage0_id`) REFERENCES `items` (`id`),
  CONSTRAINT `FK_recipe_items_10` FOREIGN KEY (`stage4_byp_id`) REFERENCES `items` (`id`),
  CONSTRAINT `FK_recipe_items_2` FOREIGN KEY (`stage1_id`) REFERENCES `items` (`id`),
  CONSTRAINT `FK_recipe_items_3` FOREIGN KEY (`stage2_id`) REFERENCES `items` (`id`),
  CONSTRAINT `FK_recipe_items_4` FOREIGN KEY (`stage3_id`) REFERENCES `items` (`id`),
  CONSTRAINT `FK_recipe_items_5` FOREIGN KEY (`stage4_id`) REFERENCES `items` (`id`),
  CONSTRAINT `FK_recipe_items_6` FOREIGN KEY (`stage0_byp_id`) REFERENCES `items` (`id`),
  CONSTRAINT `FK_recipe_items_7` FOREIGN KEY (`stage1_byp_id`) REFERENCES `items` (`id`),
  CONSTRAINT `FK_recipe_items_8` FOREIGN KEY (`stage2_byp_id`) REFERENCES `items` (`id`),
  CONSTRAINT `FK_recipe_items_9` FOREIGN KEY (`stage3_byp_id`) REFERENCES `items` (`id`),
  CONSTRAINT `FK_recipe_recipe_comp_list` FOREIGN KEY (`primary_comp_list`) REFERENCES `recipe_comp_list` (`id`),
  CONSTRAINT `FK_recipe_recipe_comp_list_2` FOREIGN KEY (`fuel_comp_list`) REFERENCES `recipe_comp_list` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65536 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

