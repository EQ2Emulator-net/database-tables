
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
DROP TABLE IF EXISTS `map_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `map_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `map_id` int(10) unsigned NOT NULL DEFAULT 0,
  `zone_name` varchar(128) COLLATE latin1_general_ci DEFAULT NULL,
  `highest` float NOT NULL DEFAULT 0,
  `lowest` float NOT NULL DEFAULT 0,
  `explored_map_name` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `unexplored_map_name` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `bounds1_x` float NOT NULL DEFAULT 0,
  `bounds1_z` float NOT NULL DEFAULT 0,
  `bounds2_x` float NOT NULL DEFAULT 0,
  `bounds2_z` float NOT NULL DEFAULT 0,
  `bounds3_x` float NOT NULL DEFAULT 0,
  `bounds3_z` float NOT NULL DEFAULT 0,
  `bounds4_x` float NOT NULL DEFAULT 0,
  `bounds4_z` float NOT NULL DEFAULT 0,
  `explored_key` bigint(20) unsigned NOT NULL DEFAULT 0,
  `unexplored_key` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `MapIDX` (`map_id`,`zone_name`,`unexplored_map_name`,`explored_map_name`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

