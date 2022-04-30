
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
DROP TABLE IF EXISTS `guild_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild_members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guild_id` int(10) unsigned NOT NULL DEFAULT 0,
  `char_id` int(10) unsigned NOT NULL DEFAULT 0,
  `recruiter_id` int(10) unsigned NOT NULL DEFAULT 0,
  `guild_status` int(10) unsigned NOT NULL DEFAULT 0,
  `points` float NOT NULL DEFAULT 0,
  `rank_id` tinyint(3) unsigned NOT NULL DEFAULT 7,
  `member_flags` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `join_date` int(10) unsigned NOT NULL DEFAULT 0,
  `note` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `officer_note` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `recruiting_message` varchar(512) COLLATE latin1_general_ci DEFAULT NULL,
  `recruiter_picture_data` blob DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `GuildCharIDX` (`guild_id`,`char_id`),
  KEY `FK_guild_members2` (`char_id`),
  CONSTRAINT `FK_guild_members1` FOREIGN KEY (`guild_id`) REFERENCES `guilds` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_guild_members2` FOREIGN KEY (`char_id`) REFERENCES `characters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14940 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

