
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
DROP TABLE IF EXISTS `houses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `houses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(64) COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `cost_coins` bigint(20) unsigned NOT NULL DEFAULT 0,
  `cost_status` int(10) unsigned NOT NULL DEFAULT 0,
  `upkeep_coins` bigint(20) unsigned NOT NULL DEFAULT 0,
  `upkeep_status` int(10) unsigned NOT NULL DEFAULT 0,
  `vault_slots` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `alignment` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `guild_level` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `zone_id` int(10) unsigned NOT NULL DEFAULT 0,
  `exit_zone_id` int(10) NOT NULL DEFAULT 0,
  `exit_x` float NOT NULL DEFAULT 0,
  `exit_y` float NOT NULL DEFAULT 0,
  `exit_z` float NOT NULL DEFAULT 0,
  `exit_heading` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

