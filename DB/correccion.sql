# ************************************************************
# Sequel Pro SQL dump
# Version 4499
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 10.1.9-MariaDB)
# Database: nabu
# Generation Time: 2016-01-04 20:26:10 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table nb_config_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_config_tbl`;

CREATE TABLE `nb_config_tbl` (
  `nb_id_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_slogan_tbl` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_config_tbl` WRITE;
/*!40000 ALTER TABLE `nb_config_tbl` DISABLE KEYS */;

INSERT INTO `nb_config_tbl` (`nb_id_fld`, `nb_slogan_tbl`)
VALUES
	('nabu','Semilla de innovacion que da vida a tus ideas <br> V. 0.29');

/*!40000 ALTER TABLE `nb_config_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_role_pag_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_role_pag_tbl`;

CREATE TABLE `nb_role_pag_tbl` (
  `nb_id_role_fld` int(11) NOT NULL AUTO_INCREMENT,
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`nb_id_role_fld`,`nb_id_page_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_role_pag_tbl` WRITE;
/*!40000 ALTER TABLE `nb_role_pag_tbl` DISABLE KEYS */;

INSERT INTO `nb_role_pag_tbl` (`nb_id_role_fld`, `nb_id_page_fld`)
VALUES
	(1,'construccion'),
	(1,'error'),
	(1,'home'),
	(1,'login'),
	(1,'nb_loginm_pg'),
	(1,'nb_loginv_pg'),
	(1,'nb_reporte_diario_pg'),
	(1,'nb_reporte_mensual_pg'),
	(1,'nb_reporte_total_pg'),
	(1,'nb_tarifasm_pg'),
	(1,'nb_tarifasv_pg'),
	(1,'nb_tarifas_pg'),
	(1,'nb_users_pg'),
	(1,'nb_usuariosm_pg'),
	(1,'nb_usuariosv_pg'),
	(1,'nb_usuarios_pg'),
	(2,'error'),
	(2,'home'),
	(2,'login'),
	(2,'nb_controlv_pg'),
	(2,'nb_control_pg'),
	(2,'nb_monitoreo_pg'),
	(2,'nb_recaudo_pg'),
	(2,'nb_reporte_diario_pg'),
	(2,'nb_reporte_mensual_pg'),
	(2,'nb_reporte_total_pg'),
	(3,'error'),
	(3,'home'),
	(3,'login'),
	(3,'nb_monitoreo_pg'),
	(3,'nb_recaudo_pg'),
	(3,'nb_reporte_diario_pg'),
	(3,'nb_reporte_mensual_pg'),
	(3,'nb_reporte_total_pg');

/*!40000 ALTER TABLE `nb_role_pag_tbl` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
