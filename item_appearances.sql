
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
DROP TABLE IF EXISTS `item_appearances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_appearances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL DEFAULT 0,
  `equip_type` int(10) unsigned NOT NULL DEFAULT 0,
  `red` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `green` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `blue` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `highlight_red` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `highlight_green` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `highlight_blue` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `appearance_type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `slot` smallint(5) unsigned NOT NULL DEFAULT 0,
  `house_placement_type` int(10) unsigned NOT NULL DEFAULT 0,
  `vis_state` int(10) unsigned NOT NULL DEFAULT 4294967295,
  `vis_state2` int(10) unsigned NOT NULL DEFAULT 4294967295,
  `mount_type` int(10) unsigned NOT NULL DEFAULT 4294967295,
  `heraldry` binary(7) NOT NULL DEFAULT '0\0\0\0\0\0\0',
  `reforging_decoration` int(10) unsigned NOT NULL DEFAULT 0,
  `bWeaponUnk` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `b2hWeapon` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `bUnknown` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_new_appearances_items` (`item_id`),
  CONSTRAINT `FK_new_appearances_items` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=147468 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

