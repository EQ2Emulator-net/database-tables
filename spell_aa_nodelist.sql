
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
DROP TABLE IF EXISTS `spell_aa_nodelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_aa_nodelist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aa_list_fk` int(10) unsigned NOT NULL DEFAULT '0',
  `displayedclassification` varchar(64) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `requiredclassification` varchar(64) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `classificationpointsrequired` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE latin1_general_ci,
  `firstparentid` int(10) unsigned NOT NULL DEFAULT '0',
  `firstparentrequiredtier` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `maxtier` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `minlevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(64) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `nodeid` int(10) unsigned NOT NULL DEFAULT '0',
  `pointspertier` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pointsspentgloballytounlock` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pointsspentintreetounlock` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spellcrc` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(64) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `titlelevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `xcoord` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ycoord` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `icon_backdrop` int(10) DEFAULT '0',
  `icon_id` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3085 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

