
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
DROP TABLE IF EXISTS `dialog_flavors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dialog_flavors` (
  `id` int(10) unsigned NOT NULL,
  `voiceover_id` int(10) unsigned DEFAULT NULL,
  `text_id` int(10) unsigned NOT NULL,
  `language` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `understood` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `emote` text COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `emote_text_id` int(10) unsigned DEFAULT NULL,
  `unknown4` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `log_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IndexEmote` (`emote`(100)),
  KEY `FK__flavor_dialog_text` (`text_id`),
  KEY `FK_dialog_flavors_dialog_voiceovers` (`voiceover_id`),
  KEY `FK_dialog_flavors_dialog_text` (`emote_text_id`),
  CONSTRAINT `FK__flavor_dialog_text` FOREIGN KEY (`text_id`) REFERENCES `dialog_text` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_dialog_flavors_dialog_text` FOREIGN KEY (`emote_text_id`) REFERENCES `dialog_text` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_dialog_flavors_dialog_voiceovers` FOREIGN KEY (`voiceover_id`) REFERENCES `dialog_voiceovers` (`id`) ON UPDATE CASCADE
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

