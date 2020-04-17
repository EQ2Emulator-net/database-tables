
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
DROP TABLE IF EXISTS `recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recipe_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tier` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `icon` smallint(5) unsigned NOT NULL DEFAULT '0',
  `skill_level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `technique` int(10) unsigned NOT NULL DEFAULT '0',
  `knowledge` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(200) COLLATE latin1_general_ci DEFAULT 'Unknown',
  `book` varchar(200) COLLATE latin1_general_ci DEFAULT 'Unknown',
  `device` enum('Chemistry Table','Engraved Desk','Forge','Stove & Keg','Sewing Table & Mannequin','Woodworking Table','Work Bench') CHARACTER SET utf8 NOT NULL,
  `product_classes` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unknown2` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown3` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown4` int(10) unsigned NOT NULL DEFAULT '0',
  `product_item_id` int(10) NOT NULL,
  `product_name` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `product_qty` smallint(5) unsigned NOT NULL,
  `primary_comp_title` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `build_comp_title` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `build2_comp_title` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `build3_comp_title` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `build4_comp_title` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `build_comp_qty` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `build2_comp_qty` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `build3_comp_qty` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `build4_comp_qty` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `fuel_comp_title` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `fuel_comp_qty` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `recipe_id` (`recipe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=983 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

