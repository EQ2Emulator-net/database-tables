
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
DROP TABLE IF EXISTS `item_details_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_details_skills` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown12` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown13` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unknown14` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unknown15` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unknown16` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unknown17` smallint(5) unsigned NOT NULL DEFAULT '0',
  `duration` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unknown18` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown19` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown20` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown21` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown22` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unknown23` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unknown24` smallint(5) unsigned NOT NULL DEFAULT '0',
  `power_req` smallint(5) unsigned NOT NULL DEFAULT '0',
  `power_upkeep_req` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hp_req` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hp_upkeep_req` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cast` smallint(5) unsigned NOT NULL DEFAULT '0',
  `recovery` smallint(5) unsigned NOT NULL DEFAULT '0',
  `recast` float unsigned NOT NULL DEFAULT '0',
  `unknown25` float unsigned NOT NULL DEFAULT '0',
  `unknown26` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ItemSkillsIDX` (`item_id`),
  CONSTRAINT `FK_item_details_skills` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

