
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
DROP TABLE IF EXISTS `bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(10) unsigned NOT NULL DEFAULT 0,
  `player` varchar(64) COLLATE latin1_general_ci NOT NULL DEFAULT ' ',
  `category` varchar(64) COLLATE latin1_general_ci NOT NULL DEFAULT ' ',
  `subcategory` varchar(64) COLLATE latin1_general_ci NOT NULL DEFAULT ' ',
  `causes_crash` varchar(64) COLLATE latin1_general_ci NOT NULL DEFAULT ' ',
  `reproducible` varchar(64) COLLATE latin1_general_ci NOT NULL DEFAULT ' ',
  `summary` varchar(128) COLLATE latin1_general_ci NOT NULL DEFAULT ' ',
  `description` text COLLATE latin1_general_ci NOT NULL,
  `version` varchar(32) COLLATE latin1_general_ci NOT NULL DEFAULT ' ',
  `spawn_name` varchar(64) COLLATE latin1_general_ci NOT NULL DEFAULT 'N/A',
  `spawn_id` int(10) unsigned NOT NULL DEFAULT 0,
  `bug_datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `zone_id` int(10) unsigned NOT NULL DEFAULT 0,
  `copied` int(10) unsigned NOT NULL DEFAULT 0,
  `dbversion` int(10) NOT NULL DEFAULT 0,
  `worldversion` varchar(64) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

