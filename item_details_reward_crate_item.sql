
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
DROP TABLE IF EXISTS `item_details_reward_crate_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_details_reward_crate_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `crate_item_id` int(10) unsigned NOT NULL DEFAULT 0,
  `reward_item_id` int(10) unsigned DEFAULT NULL,
  `soe_item_id` int(10) unsigned NOT NULL DEFAULT 0,
  `soe_item_crc` int(10) unsigned NOT NULL,
  `icon` smallint(5) unsigned NOT NULL DEFAULT 0,
  `stack_size` int(10) unsigned NOT NULL DEFAULT 0,
  `name_color` int(10) NOT NULL DEFAULT 0,
  `name` text COLLATE latin1_general_ci DEFAULT NULL,
  `language_type` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_item_details_itemset` (`crate_item_id`),
  KEY `FK_item_details_reward_crate_item_items` (`reward_item_id`),
  CONSTRAINT `FK_item_details_reward_crate_item_items` FOREIGN KEY (`reward_item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_item_details_reward_crate_item_items_crateid` FOREIGN KEY (`crate_item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2618 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

