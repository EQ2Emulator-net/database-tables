
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
DROP TABLE IF EXISTS `starting_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `starting_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `race_id` tinyint(3) unsigned NOT NULL DEFAULT 255,
  `class_id` tinyint(3) unsigned NOT NULL DEFAULT 255,
  `max_hp` int(10) unsigned NOT NULL DEFAULT 0,
  `max_power` int(10) unsigned NOT NULL DEFAULT 0,
  `max_savagery` int(10) unsigned NOT NULL DEFAULT 0,
  `max_dissonance` int(10) unsigned NOT NULL DEFAULT 0,
  `max_concentration` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `str` smallint(5) unsigned NOT NULL DEFAULT 0,
  `agi` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sta` smallint(5) unsigned NOT NULL DEFAULT 0,
  `intel` smallint(5) unsigned NOT NULL DEFAULT 0,
  `wis` smallint(5) unsigned NOT NULL DEFAULT 0,
  `heat` smallint(5) unsigned NOT NULL DEFAULT 0,
  `cold` smallint(5) unsigned NOT NULL DEFAULT 0,
  `magic` smallint(5) unsigned NOT NULL DEFAULT 0,
  `mental` smallint(5) unsigned NOT NULL DEFAULT 0,
  `divine` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disease` smallint(5) unsigned NOT NULL DEFAULT 0,
  `poison` smallint(5) unsigned NOT NULL DEFAULT 0,
  `elemental` smallint(5) unsigned NOT NULL DEFAULT 0,
  `arcane` smallint(5) unsigned NOT NULL DEFAULT 0,
  `noxious` smallint(5) unsigned NOT NULL DEFAULT 0,
  `coin_copper` int(10) unsigned NOT NULL DEFAULT 0,
  `coin_silver` int(10) unsigned NOT NULL DEFAULT 0,
  `coin_gold` int(10) unsigned NOT NULL DEFAULT 0,
  `coin_plat` int(10) unsigned NOT NULL DEFAULT 0,
  `status_points` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `RaceClassIDX` (`race_id`,`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

