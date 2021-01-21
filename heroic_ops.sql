
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
DROP TABLE IF EXISTS `heroic_ops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `heroic_ops` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ho_type` enum('Starter','Wheel') COLLATE latin1_general_ci NOT NULL DEFAULT 'Starter',
  `starter_link_id` int(10) unsigned NOT NULL DEFAULT 0,
  `starter_class` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `starter_icon` smallint(5) unsigned NOT NULL DEFAULT 65535,
  `chain_order` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `shift_icon` smallint(5) unsigned NOT NULL DEFAULT 41,
  `spell_id` int(10) unsigned NOT NULL DEFAULT 0,
  `chance` float unsigned NOT NULL DEFAULT 0,
  `ability1` smallint(5) unsigned NOT NULL DEFAULT 65535,
  `ability2` smallint(5) unsigned NOT NULL DEFAULT 65535,
  `ability3` smallint(5) unsigned NOT NULL DEFAULT 65535,
  `ability4` smallint(5) unsigned NOT NULL DEFAULT 65535,
  `ability5` smallint(5) unsigned NOT NULL DEFAULT 65535,
  `ability6` smallint(5) unsigned NOT NULL DEFAULT 65535,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=607 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

