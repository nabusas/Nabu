# ************************************************************
# Sequel Pro SQL dump
# Version 4499
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 10.1.9-MariaDB)
# Database: naburest
# Generation Time: 2016-01-25 16:14:28 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table nb_chart_data_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_chart_data_tbl`;

CREATE TABLE `nb_chart_data_tbl` (
  `nb_id_page_fld` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `nb_type_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_value_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_pos_fld` int(2) DEFAULT NULL,
  `nb_color_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_page_fld`,`nb_type_fld`,`nb_value_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;



# Dump of table nb_chart_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_chart_tbl`;

CREATE TABLE `nb_chart_tbl` (
  `nb_id_page_fld` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `nb_source_fld` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '',
  PRIMARY KEY (`nb_id_page_fld`,`nb_source_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;



# Dump of table nb_clientes_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_clientes_tbl`;

CREATE TABLE `nb_clientes_tbl` (
  `nb_clie_1_fld` int(11) NOT NULL AUTO_INCREMENT,
  `nb_clie_2_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_clie_3_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_clie_4_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_clie_5_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_clie_6_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_clie_7_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_clie_8_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_clie_9_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_clie_10_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_clie_11_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_clie_12_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_clie_13_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_clie_14_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_clie_15_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_clie_16_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_clie_17_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_clie_18_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_clie_19_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_clie_20_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_clie_1_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_clientes_tbl` WRITE;
/*!40000 ALTER TABLE `nb_clientes_tbl` DISABLE KEYS */;

INSERT INTO `nb_clientes_tbl` (`nb_clie_1_fld`, `nb_clie_2_fld`, `nb_clie_3_fld`, `nb_clie_4_fld`, `nb_clie_5_fld`, `nb_clie_6_fld`, `nb_clie_7_fld`, `nb_clie_8_fld`, `nb_clie_9_fld`, `nb_clie_10_fld`, `nb_clie_11_fld`, `nb_clie_12_fld`, `nb_clie_13_fld`, `nb_clie_14_fld`, `nb_clie_15_fld`, `nb_clie_16_fld`, `nb_clie_17_fld`, `nb_clie_18_fld`, `nb_clie_19_fld`, `nb_clie_20_fld`)
VALUES
	(1,'1','14800275','','','Carlos Alberto Garcia Cobo','','','','','0','','','','','','','','','');

/*!40000 ALTER TABLE `nb_clientes_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_config_frmwrk_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_config_frmwrk_tbl`;

CREATE TABLE `nb_config_frmwrk_tbl` (
  `nb_config_frmwrk_id_fld` int(11) NOT NULL AUTO_INCREMENT,
  `nb_config_type_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_property_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_type_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_default_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_config_frmwrk_id_fld`,`nb_config_type_fld`,`nb_property_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_config_frmwrk_tbl` WRITE;
/*!40000 ALTER TABLE `nb_config_frmwrk_tbl` DISABLE KEYS */;

INSERT INTO `nb_config_frmwrk_tbl` (`nb_config_frmwrk_id_fld`, `nb_config_type_fld`, `nb_property_fld`, `nb_type_fld`, `nb_default_fld`)
VALUES
	(1,'schema','default','any',NULL),
	(2,'schema','dependencies','array',NULL),
	(3,'schema','description','string',NULL),
	(4,'schema','disallow','array',NULL),
	(5,'schema','enum','array',NULL),
	(6,'schema','format','string',NULL),
	(7,'schema','maxLength','number',NULL),
	(8,'schema','minLength','number',NULL),
	(9,'schema','pattern','string',NULL),
	(10,'schema','readonly','boolean',NULL),
	(11,'schema','required','boolean',NULL),
	(12,'schema','title','string',NULL),
	(13,'schema','type','string','string'),
	(14,'options','allowOptionalEmpty',NULL,NULL),
	(15,'options','data','object',NULL),
	(16,'options','disabled','boolean',NULL),
	(17,'options','fieldClass','string',NULL),
	(18,'options','focus','checkbox','true'),
	(19,'options','form','object',NULL),
	(20,'options','helper','hidden','boolean'),
	(21,'options','hideInitValidationError','boolean',NULL),
	(22,'options','id','string',NULL),
	(23,'options','inputType','string',NULL),
	(24,'options','label','string',NULL),
	(25,'options','maskString','string',NULL),
	(26,'options','name','string',NULL),
	(27,'options','optionLabels','array',NULL),
	(28,'options','placeholder','string',NULL),
	(29,'options','readonly','boolean',NULL),
	(30,'options','showMessages','boolean','true'),
	(31,'options','size','number','40'),
	(32,'options','type','string','text'),
	(33,'options','typeahead',NULL,NULL),
	(34,'options','validate','boolean','true'),
	(35,'options','view','string',NULL),
	(36,'options','hidden','boolean',NULL),
	(37,'gridoptions','caption','string',NULL),
	(38,'gridoptions','resizable','boolean',NULL),
	(39,'gridoptions','rowNum','number',NULL),
	(40,'gridoptions','autowidth','boolean',NULL),
	(41,'gridoptions','ignorecase','boolean',NULL),
	(42,'gridoptions','sortname','string',NULL),
	(43,'gridoptions','height','number',NULL),
	(44,'gridoptions','table','string',NULL),
	(45,'gridcoloptions','title','string',NULL),
	(46,'gridcoloptions','name','string',NULL),
	(47,'gridcoloptions','search','boolean',NULL),
	(48,'gridcoloptions','sorteable','boolean',NULL),
	(49,'gridcoloptions','autowidth','boolean',NULL),
	(50,'gridcoloptions','link','string',NULL),
	(51,'gridcoloptions','linkoptions','string',NULL),
	(52,'gridcoloptions','formatter','string',NULL),
	(53,'gridcoloptions','editable','boolean',NULL),
	(54,'gridcoloptions','align','string',NULL),
	(55,'options','dataSource','string',NULL),
	(56,'options','dateFormat','string',NULL),
	(57,'options','onFieldChange','string',NULL),
	(58,'options','noneLabel','string','none'),
	(59,'options','removeDefaultNone','boolean',NULL),
	(60,'options','dependencies','array',NULL),
	(61,'options','vertical','boolean',NULL),
	(62,'options','onFieldChange','string',NULL);

/*!40000 ALTER TABLE `nb_config_frmwrk_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_config_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_config_tbl`;

CREATE TABLE `nb_config_tbl` (
  `nb_id_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_slogan_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_versionbd_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_versionap_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_config_tbl` WRITE;
/*!40000 ALTER TABLE `nb_config_tbl` DISABLE KEYS */;

INSERT INTO `nb_config_tbl` (`nb_id_fld`, `nb_slogan_fld`, `nb_versionbd_fld`, `nb_versionap_fld`)
VALUES
	('nabu','Semilla de innovacion que da vida a tus ideas','1.1','1.1');

/*!40000 ALTER TABLE `nb_config_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_data_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_data_tbl`;

CREATE TABLE `nb_data_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_id_pr_schema_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_value_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_page_fld`,`nb_id_pr_schema_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_data_tbl` WRITE;
/*!40000 ALTER TABLE `nb_data_tbl` DISABLE KEYS */;

INSERT INTO `nb_data_tbl` (`nb_id_page_fld`, `nb_id_pr_schema_fld`, `nb_value_fld`)
VALUES
	('home','image','../Images/imagenHome2.png');

/*!40000 ALTER TABLE `nb_data_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_datagrid_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_datagrid_tbl`;

CREATE TABLE `nb_datagrid_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_config_frmwrk_id_fld` int(11) NOT NULL DEFAULT '0',
  `nb_value_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_page_fld`,`nb_config_frmwrk_id_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_datagrid_tbl` WRITE;
/*!40000 ALTER TABLE `nb_datagrid_tbl` DISABLE KEYS */;

INSERT INTO `nb_datagrid_tbl` (`nb_id_page_fld`, `nb_config_frmwrk_id_fld`, `nb_value_fld`)
VALUES
	('nb_clientes_v_pg',37,'Data'),
	('nb_clientes_v_pg',38,'true'),
	('nb_clientes_v_pg',39,'44'),
	('nb_clientes_v_pg',40,'true'),
	('nb_clientes_v_pg',41,'true'),
	('nb_clientes_v_pg',43,'350'),
	('nb_clientes_v_pg',44,'nb_clientes_tbl'),
	('nb_facturacion_v_pg',37,'Data'),
	('nb_facturacion_v_pg',38,'true'),
	('nb_facturacion_v_pg',39,'44'),
	('nb_facturacion_v_pg',40,'true'),
	('nb_facturacion_v_pg',41,'true'),
	('nb_facturacion_v_pg',43,'350'),
	('nb_facturacion_v_pg',44,'nb_facturacion_tbl'),
	('nb_inventario_v_pg',37,'Data'),
	('nb_inventario_v_pg',38,'true'),
	('nb_inventario_v_pg',39,'44'),
	('nb_inventario_v_pg',40,'true'),
	('nb_inventario_v_pg',41,'true'),
	('nb_inventario_v_pg',43,'350'),
	('nb_inventario_v_pg',44,'nb_inventario_tbl'),
	('nb_loginv_pg',37,'Usuarios del Sistema'),
	('nb_loginv_pg',38,'true'),
	('nb_loginv_pg',39,'44'),
	('nb_loginv_pg',40,'true'),
	('nb_loginv_pg',41,'true'),
	('nb_loginv_pg',43,'350'),
	('nb_loginv_pg',44,'nb_login_vw'),
	('nb_productos_v_pg',37,'Data'),
	('nb_productos_v_pg',38,'true'),
	('nb_productos_v_pg',39,'44'),
	('nb_productos_v_pg',40,'true'),
	('nb_productos_v_pg',41,'true'),
	('nb_productos_v_pg',43,'350'),
	('nb_productos_v_pg',44,'nb_productos_tbl'),
	('nb_reporte_1_pg',37,'Data'),
	('nb_reporte_1_pg',38,'true'),
	('nb_reporte_1_pg',39,'44'),
	('nb_reporte_1_pg',40,'true'),
	('nb_reporte_1_pg',41,'true'),
	('nb_reporte_1_pg',43,'350'),
	('nb_reporte_1_pg',44,'nb_pruebaData_vw'),
	('nb_reporte_2_pg',37,'Data'),
	('nb_reporte_2_pg',38,'true'),
	('nb_reporte_2_pg',39,'44'),
	('nb_reporte_2_pg',40,'true'),
	('nb_reporte_2_pg',41,'true'),
	('nb_reporte_2_pg',43,'350'),
	('nb_reporte_2_pg',44,'nb_pruebaData_vw');

/*!40000 ALTER TABLE `nb_datagrid_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_datagridcol_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_datagridcol_tbl`;

CREATE TABLE `nb_datagridcol_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_column_fld` int(2) NOT NULL DEFAULT '0',
  `nb_config_frmwrk_id_fld` int(11) NOT NULL DEFAULT '0',
  `nb_value_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_page_fld`,`nb_column_fld`,`nb_config_frmwrk_id_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_datagridcol_tbl` WRITE;
/*!40000 ALTER TABLE `nb_datagridcol_tbl` DISABLE KEYS */;

INSERT INTO `nb_datagridcol_tbl` (`nb_id_page_fld`, `nb_column_fld`, `nb_config_frmwrk_id_fld`, `nb_value_fld`)
VALUES
	('nb_loginv_pg',1,45,'Id'),
	('nb_loginv_pg',1,46,'Id'),
	('nb_loginv_pg',1,47,'true'),
	('nb_loginv_pg',1,48,'true'),
	('nb_loginv_pg',1,50,'nbd_id_user_fld={Id}&nbd_email_fld={Login}'),
	('nb_loginv_pg',1,54,'center'),
	('nb_loginv_pg',2,45,'Usuario'),
	('nb_loginv_pg',2,46,'Usuario'),
	('nb_loginv_pg',2,47,'true'),
	('nb_loginv_pg',2,48,'true'),
	('nb_loginv_pg',2,54,'center'),
	('nb_loginv_pg',3,45,'Login'),
	('nb_loginv_pg',3,46,'Login'),
	('nb_loginv_pg',3,47,'true'),
	('nb_loginv_pg',3,48,'true'),
	('nb_loginv_pg',3,54,'center'),
	('nb_loginv_pg',4,45,'Role'),
	('nb_loginv_pg',4,46,'Role'),
	('nb_loginv_pg',4,47,'true'),
	('nb_loginv_pg',4,48,'true'),
	('nb_loginv_pg',4,54,'center'),
	('nb_loginv_pg',5,45,'Estado'),
	('nb_loginv_pg',5,46,'Estado'),
	('nb_loginv_pg',5,47,'true'),
	('nb_loginv_pg',5,48,'true'),
	('nb_loginv_pg',5,54,'center');

/*!40000 ALTER TABLE `nb_datagridcol_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_event_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_event_tbl`;

CREATE TABLE `nb_event_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_id_field_1_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `nb_id_field_2_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `nb_id_table_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_id_field_3_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_id_field_4_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_page_fld`,`nb_id_field_1_fld`,`nb_id_field_2_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_event_tbl` WRITE;
/*!40000 ALTER TABLE `nb_event_tbl` DISABLE KEYS */;

INSERT INTO `nb_event_tbl` (`nb_id_page_fld`, `nb_id_field_1_fld`, `nb_id_field_2_fld`, `nb_id_table_fld`, `nb_id_field_3_fld`, `nb_id_field_4_fld`)
VALUES
	('nb_facturacion_pg','nb_fact_3_fld','nb_fact_4_fld','nb_clientes_tbl','nb_clie_3_fld','nb_clie_6_fld');

/*!40000 ALTER TABLE `nb_event_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_facturacion_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_facturacion_tbl`;

CREATE TABLE `nb_facturacion_tbl` (
  `nb_fact_1_fld` int(11) NOT NULL AUTO_INCREMENT,
  `nb_fact_2_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_fact_3_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_fact_4_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_fact_5_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_fact_6_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_fact_7_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_fact_8_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_fact_9_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_fact_10_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_fact_11_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_fact_12_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_fact_13_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_fact_14_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_fact_15_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_fact_16_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_fact_17_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_fact_18_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_fact_19_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_fact_20_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_fact_1_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;



# Dump of table nb_form_tables_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_form_tables_tbl`;

CREATE TABLE `nb_form_tables_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `nb_id_table_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `nb_id_page_field_fld` varchar(100) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_id_table_field_fld` varchar(100) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`nb_id_page_fld`,`nb_id_table_fld`,`nb_id_page_field_fld`,`nb_id_table_field_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_form_tables_tbl` WRITE;
/*!40000 ALTER TABLE `nb_form_tables_tbl` DISABLE KEYS */;

INSERT INTO `nb_form_tables_tbl` (`nb_id_page_fld`, `nb_id_table_fld`, `nb_id_page_field_fld`, `nb_id_table_field_fld`)
VALUES
	('nb_clientes_pg','nb_clientes_tbl','nb_clie_10_fld','nb_clie_10_fld'),
	('nb_clientes_pg','nb_clientes_tbl','nb_clie_11_fld','nb_clie_11_fld'),
	('nb_clientes_pg','nb_clientes_tbl','nb_clie_12_fld','nb_clie_12_fld'),
	('nb_clientes_pg','nb_clientes_tbl','nb_clie_13_fld','nb_clie_13_fld'),
	('nb_clientes_pg','nb_clientes_tbl','nb_clie_14_fld','nb_clie_14_fld'),
	('nb_clientes_pg','nb_clientes_tbl','nb_clie_15_fld','nb_clie_15_fld'),
	('nb_clientes_pg','nb_clientes_tbl','nb_clie_16_fld','nb_clie_16_fld'),
	('nb_clientes_pg','nb_clientes_tbl','nb_clie_17_fld','nb_clie_17_fld'),
	('nb_clientes_pg','nb_clientes_tbl','nb_clie_18_fld','nb_clie_18_fld'),
	('nb_clientes_pg','nb_clientes_tbl','nb_clie_19_fld','nb_clie_19_fld'),
	('nb_clientes_pg','nb_clientes_tbl','nb_clie_1_fld','nb_clie_1_fld'),
	('nb_clientes_pg','nb_clientes_tbl','nb_clie_20_fld','nb_clie_20_fld'),
	('nb_clientes_pg','nb_clientes_tbl','nb_clie_2_fld','nb_clie_2_fld'),
	('nb_clientes_pg','nb_clientes_tbl','nb_clie_3_fld','nb_clie_3_fld'),
	('nb_clientes_pg','nb_clientes_tbl','nb_clie_4_fld','nb_clie_4_fld'),
	('nb_clientes_pg','nb_clientes_tbl','nb_clie_5_fld','nb_clie_5_fld'),
	('nb_clientes_pg','nb_clientes_tbl','nb_clie_6_fld','nb_clie_6_fld'),
	('nb_clientes_pg','nb_clientes_tbl','nb_clie_7_fld','nb_clie_7_fld'),
	('nb_clientes_pg','nb_clientes_tbl','nb_clie_8_fld','nb_clie_8_fld'),
	('nb_clientes_pg','nb_clientes_tbl','nb_clie_9_fld','nb_clie_9_fld'),
	('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_10_fld','nb_fact_10_fld'),
	('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_11_fld','nb_fact_11_fld'),
	('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_12_fld','nb_fact_12_fld'),
	('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_13_fld','nb_fact_13_fld'),
	('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_14_fld','nb_fact_14_fld'),
	('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_15_fld','nb_fact_15_fld'),
	('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_16_fld','nb_fact_16_fld'),
	('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_17_fld','nb_fact_17_fld'),
	('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_18_fld','nb_fact_18_fld'),
	('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_19_fld','nb_fact_19_fld'),
	('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_1_fld','nb_fact_1_fld'),
	('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_20_fld','nb_fact_20_fld'),
	('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_2_fld','nb_fact_2_fld'),
	('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_3_fld','nb_fact_3_fld'),
	('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_4_fld','nb_fact_4_fld'),
	('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_5_fld','nb_fact_5_fld'),
	('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_6_fld','nb_fact_6_fld'),
	('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_7_fld','nb_fact_7_fld'),
	('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_8_fld','nb_fact_8_fld'),
	('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_9_fld','nb_fact_9_fld'),
	('nb_inventario_pg','nb_inventario_tbl','nb_inve_10_fld','nb_inve_10_fld'),
	('nb_inventario_pg','nb_inventario_tbl','nb_inve_11_fld','nb_inve_11_fld'),
	('nb_inventario_pg','nb_inventario_tbl','nb_inve_12_fld','nb_inve_12_fld'),
	('nb_inventario_pg','nb_inventario_tbl','nb_inve_13_fld','nb_inve_13_fld'),
	('nb_inventario_pg','nb_inventario_tbl','nb_inve_14_fld','nb_inve_14_fld'),
	('nb_inventario_pg','nb_inventario_tbl','nb_inve_15_fld','nb_inve_15_fld'),
	('nb_inventario_pg','nb_inventario_tbl','nb_inve_16_fld','nb_inve_16_fld'),
	('nb_inventario_pg','nb_inventario_tbl','nb_inve_17_fld','nb_inve_17_fld'),
	('nb_inventario_pg','nb_inventario_tbl','nb_inve_18_fld','nb_inve_18_fld'),
	('nb_inventario_pg','nb_inventario_tbl','nb_inve_19_fld','nb_inve_19_fld'),
	('nb_inventario_pg','nb_inventario_tbl','nb_inve_1_fld','nb_inve_1_fld'),
	('nb_inventario_pg','nb_inventario_tbl','nb_inve_20_fld','nb_inve_20_fld'),
	('nb_inventario_pg','nb_inventario_tbl','nb_inve_2_fld','nb_inve_2_fld'),
	('nb_inventario_pg','nb_inventario_tbl','nb_inve_3_fld','nb_inve_3_fld'),
	('nb_inventario_pg','nb_inventario_tbl','nb_inve_4_fld','nb_inve_4_fld'),
	('nb_inventario_pg','nb_inventario_tbl','nb_inve_5_fld','nb_inve_5_fld'),
	('nb_inventario_pg','nb_inventario_tbl','nb_inve_6_fld','nb_inve_6_fld'),
	('nb_inventario_pg','nb_inventario_tbl','nb_inve_7_fld','nb_inve_7_fld'),
	('nb_inventario_pg','nb_inventario_tbl','nb_inve_8_fld','nb_inve_8_fld'),
	('nb_inventario_pg','nb_inventario_tbl','nb_inve_9_fld','nb_inve_9_fld'),
	('nb_password_pg','nbd_role_user_tbl','nbd_id_user_fld','nbd_id_user_fld'),
	('nb_password_pg','nbd_role_user_tbl','nb_id_role_fld','nb_id_role_fld'),
	('nb_password_pg','nbd_user_tbl','nbd_descr_fld','nbd_descr_fld'),
	('nb_password_pg','nbd_user_tbl','nbd_email_fld','nbd_email_fld'),
	('nb_password_pg','nbd_user_tbl','nbd_id_user_fld','nbd_id_user_fld'),
	('nb_password_pg','nbd_user_tbl','nbd_password_fld','nbd_password_fld'),
	('nb_password_pg','nbd_user_tbl','nb_estado_fld','nb_estado_fld'),
	('nb_productos_pg','nb_productos_tbl','nb_prod_10_fld','nb_prod_10_fld'),
	('nb_productos_pg','nb_productos_tbl','nb_prod_11_fld','nb_prod_11_fld'),
	('nb_productos_pg','nb_productos_tbl','nb_prod_12_fld','nb_prod_12_fld'),
	('nb_productos_pg','nb_productos_tbl','nb_prod_13_fld','nb_prod_13_fld'),
	('nb_productos_pg','nb_productos_tbl','nb_prod_14_fld','nb_prod_14_fld'),
	('nb_productos_pg','nb_productos_tbl','nb_prod_15_fld','nb_prod_15_fld'),
	('nb_productos_pg','nb_productos_tbl','nb_prod_16_fld','nb_prod_16_fld'),
	('nb_productos_pg','nb_productos_tbl','nb_prod_17_fld','nb_prod_17_fld'),
	('nb_productos_pg','nb_productos_tbl','nb_prod_18_fld','nb_prod_18_fld'),
	('nb_productos_pg','nb_productos_tbl','nb_prod_19_fld','nb_prod_19_fld'),
	('nb_productos_pg','nb_productos_tbl','nb_prod_1_fld','nb_prod_1_fld'),
	('nb_productos_pg','nb_productos_tbl','nb_prod_20_fld','nb_prod_20_fld'),
	('nb_productos_pg','nb_productos_tbl','nb_prod_2_fld','nb_prod_2_fld'),
	('nb_productos_pg','nb_productos_tbl','nb_prod_3_fld','nb_prod_3_fld'),
	('nb_productos_pg','nb_productos_tbl','nb_prod_4_fld','nb_prod_4_fld'),
	('nb_productos_pg','nb_productos_tbl','nb_prod_5_fld','nb_prod_5_fld'),
	('nb_productos_pg','nb_productos_tbl','nb_prod_6_fld','nb_prod_6_fld'),
	('nb_productos_pg','nb_productos_tbl','nb_prod_7_fld','nb_prod_7_fld'),
	('nb_productos_pg','nb_productos_tbl','nb_prod_8_fld','nb_prod_8_fld'),
	('nb_productos_pg','nb_productos_tbl','nb_prod_9_fld','nb_prod_9_fld'),
	('nb_product_pg','nb_productos_tbl','nb_desc_producto_fld','nb_desc_producto_fld'),
	('nb_product_pg','nb_productos_tbl','nb_id_producto_fld','nb_id_producto_fld'),
	('nb_product_pg','nb_productos_tbl','nb_marc_producto_fld','nb_marc_producto_fld'),
	('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_10_fld','nb_prov_10_fld'),
	('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_11_fld','nb_prov_11_fld'),
	('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_12_fld','nb_prov_12_fld'),
	('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_13_fld','nb_prov_13_fld'),
	('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_14_fld','nb_prov_14_fld'),
	('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_15_fld','nb_prov_15_fld'),
	('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_16_fld','nb_prov_16_fld'),
	('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_17_fld','nb_prov_17_fld'),
	('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_18_fld','nb_prov_18_fld'),
	('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_19_fld','nb_prov_19_fld'),
	('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_1_fld','nb_prov_1_fld'),
	('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_20_fld','nb_prov_20_fld'),
	('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_2_fld','nb_prov_2_fld'),
	('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_3_fld','nb_prov_3_fld'),
	('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_4_fld','nb_prov_4_fld'),
	('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_5_fld','nb_prov_5_fld'),
	('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_6_fld','nb_prov_6_fld'),
	('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_7_fld','nb_prov_7_fld'),
	('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_8_fld','nb_prov_8_fld'),
	('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_9_fld','nb_prov_9_fld'),
	('nb_prueba_pg','prueba','nb_inve_1_fld','nb_inve_1_fld'),
	('nb_prueba_pg','prueba','nb_inve_2_fld','nb_inve_2_fld'),
	('nb_prueba_pg','prueba','nb_inve_3_fld','nb_inve_3_fld'),
	('nb_prueba_pg','prueba','nb_inve_4_fld','nb_inve_4_fld'),
	('nb_usersm_pg','nbd_role_user_tbl','nbd_id_user_fld','nbd_id_user_fld'),
	('nb_usersm_pg','nbd_role_user_tbl','nb_id_role_fld','nb_id_role_fld'),
	('nb_usersm_pg','nbd_user_tbl','nbd_descr_fld','nbd_descr_fld'),
	('nb_usersm_pg','nbd_user_tbl','nbd_email_fld','nbd_email_fld'),
	('nb_usersm_pg','nbd_user_tbl','nbd_id_user_fld','nbd_id_user_fld'),
	('nb_usersm_pg','nbd_user_tbl','nbd_password_fld','nbd_password_fld'),
	('nb_usersm_pg','nbd_user_tbl','nb_estado_fld','nb_estado_fld'),
	('nb_users_pg','nbd_role_user_tbl','nbd_id_user_fld','nbd_id_user_fld'),
	('nb_users_pg','nbd_role_user_tbl','nb_id_role_fld','nb_id_role_fld'),
	('nb_users_pg','nbd_user_tbl','nbd_descr_fld','nbd_descr_fld'),
	('nb_users_pg','nbd_user_tbl','nbd_email_fld','nbd_email_fld'),
	('nb_users_pg','nbd_user_tbl','nbd_id_user_fld','nbd_id_user_fld'),
	('nb_users_pg','nbd_user_tbl','nbd_password_fld','nbd_password_fld'),
	('nb_users_pg','nbd_user_tbl','nb_estado_fld','nb_estado_fld'),
	('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_10_fld','nb_vend_10_fld'),
	('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_11_fld','nb_vend_11_fld'),
	('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_12_fld','nb_vend_12_fld'),
	('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_13_fld','nb_vend_13_fld'),
	('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_14_fld','nb_vend_14_fld'),
	('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_15_fld','nb_vend_15_fld'),
	('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_16_fld','nb_vend_16_fld'),
	('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_17_fld','nb_vend_17_fld'),
	('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_18_fld','nb_vend_18_fld'),
	('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_19_fld','nb_vend_19_fld'),
	('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_1_fld','nb_vend_1_fld'),
	('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_20_fld','nb_vend_20_fld'),
	('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_2_fld','nb_vend_2_fld'),
	('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_3_fld','nb_vend_3_fld'),
	('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_4_fld','nb_vend_4_fld'),
	('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_5_fld','nb_vend_5_fld'),
	('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_6_fld','nb_vend_6_fld'),
	('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_7_fld','nb_vend_7_fld'),
	('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_8_fld','nb_vend_8_fld'),
	('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_9_fld','nb_vend_9_fld');

/*!40000 ALTER TABLE `nb_form_tables_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_forms_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_forms_tbl`;

CREATE TABLE `nb_forms_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `nb_id_pr_schema_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `nb_config_frmwrk_id_fld` int(11) NOT NULL DEFAULT '0',
  `nb_schem_value_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_page_fld`,`nb_id_pr_schema_fld`,`nb_config_frmwrk_id_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_forms_tbl` WRITE;
/*!40000 ALTER TABLE `nb_forms_tbl` DISABLE KEYS */;

INSERT INTO `nb_forms_tbl` (`nb_id_page_fld`, `nb_id_pr_schema_fld`, `nb_config_frmwrk_id_fld`, `nb_schem_value_fld`)
VALUES
	('home','image',13,'string'),
	('home','image',32,'image'),
	('home','image',35,'bootstrap-display'),
	('nb_clientes_pg','nb_clie_10_fld',6,'email'),
	('nb_clientes_pg','nb_clie_10_fld',11,'false'),
	('nb_clientes_pg','nb_clie_10_fld',13,'string'),
	('nb_clientes_pg','nb_clie_10_fld',24,'Email'),
	('nb_clientes_pg','nb_clie_10_fld',36,'false'),
	('nb_clientes_pg','nb_clie_11_fld',11,'true'),
	('nb_clientes_pg','nb_clie_11_fld',13,'string'),
	('nb_clientes_pg','nb_clie_11_fld',24,'Estado'),
	('nb_clientes_pg','nb_clie_11_fld',32,'select'),
	('nb_clientes_pg','nb_clie_11_fld',36,'false'),
	('nb_clientes_pg','nb_clie_11_fld',55,'../Events/ValoresCampo.php?campo=nb_estado_fld'),
	('nb_clientes_pg','nb_clie_11_fld',58,'Seleccione Estado Cliente'),
	('nb_clientes_pg','nb_clie_11_fld',59,'false'),
	('nb_clientes_pg','nb_clie_12_fld',11,'false'),
	('nb_clientes_pg','nb_clie_12_fld',13,'string'),
	('nb_clientes_pg','nb_clie_12_fld',24,'Observaciones'),
	('nb_clientes_pg','nb_clie_12_fld',32,'textarea'),
	('nb_clientes_pg','nb_clie_12_fld',36,'false'),
	('nb_clientes_pg','nb_clie_13_fld',11,'false'),
	('nb_clientes_pg','nb_clie_13_fld',13,'string'),
	('nb_clientes_pg','nb_clie_13_fld',24,'Campo 13'),
	('nb_clientes_pg','nb_clie_13_fld',36,'true'),
	('nb_clientes_pg','nb_clie_14_fld',11,'false'),
	('nb_clientes_pg','nb_clie_14_fld',13,'string'),
	('nb_clientes_pg','nb_clie_14_fld',24,'Campo 14'),
	('nb_clientes_pg','nb_clie_14_fld',36,'true'),
	('nb_clientes_pg','nb_clie_15_fld',11,'false'),
	('nb_clientes_pg','nb_clie_15_fld',13,'string'),
	('nb_clientes_pg','nb_clie_15_fld',24,'Campo 15'),
	('nb_clientes_pg','nb_clie_15_fld',36,'true'),
	('nb_clientes_pg','nb_clie_16_fld',11,'false'),
	('nb_clientes_pg','nb_clie_16_fld',13,'string'),
	('nb_clientes_pg','nb_clie_16_fld',24,'Campo 16'),
	('nb_clientes_pg','nb_clie_16_fld',36,'true'),
	('nb_clientes_pg','nb_clie_17_fld',11,'false'),
	('nb_clientes_pg','nb_clie_17_fld',13,'string'),
	('nb_clientes_pg','nb_clie_17_fld',24,'Campo 17'),
	('nb_clientes_pg','nb_clie_17_fld',36,'true'),
	('nb_clientes_pg','nb_clie_18_fld',11,'false'),
	('nb_clientes_pg','nb_clie_18_fld',13,'string'),
	('nb_clientes_pg','nb_clie_18_fld',24,'Campo 18'),
	('nb_clientes_pg','nb_clie_18_fld',36,'true'),
	('nb_clientes_pg','nb_clie_19_fld',11,'false'),
	('nb_clientes_pg','nb_clie_19_fld',13,'string'),
	('nb_clientes_pg','nb_clie_19_fld',24,'Campo 19'),
	('nb_clientes_pg','nb_clie_19_fld',36,'true'),
	('nb_clientes_pg','nb_clie_1_fld',11,'false'),
	('nb_clientes_pg','nb_clie_1_fld',13,'string'),
	('nb_clientes_pg','nb_clie_1_fld',24,'Id Cliente'),
	('nb_clientes_pg','nb_clie_1_fld',36,'true'),
	('nb_clientes_pg','nb_clie_20_fld',11,'false'),
	('nb_clientes_pg','nb_clie_20_fld',13,'string'),
	('nb_clientes_pg','nb_clie_20_fld',24,'Campo 20'),
	('nb_clientes_pg','nb_clie_20_fld',36,'true'),
	('nb_clientes_pg','nb_clie_2_fld',11,'true'),
	('nb_clientes_pg','nb_clie_2_fld',13,'string'),
	('nb_clientes_pg','nb_clie_2_fld',24,'Tipo Documento'),
	('nb_clientes_pg','nb_clie_2_fld',32,'select'),
	('nb_clientes_pg','nb_clie_2_fld',36,'false'),
	('nb_clientes_pg','nb_clie_2_fld',55,'../Events/ValoresCampo.php?campo=nb_tipodoc_fld'),
	('nb_clientes_pg','nb_clie_2_fld',58,'Seleccione Tipo Documento'),
	('nb_clientes_pg','nb_clie_2_fld',59,'false'),
	('nb_clientes_pg','nb_clie_3_fld',11,'true'),
	('nb_clientes_pg','nb_clie_3_fld',13,'string'),
	('nb_clientes_pg','nb_clie_3_fld',24,'# Documento'),
	('nb_clientes_pg','nb_clie_3_fld',32,'number'),
	('nb_clientes_pg','nb_clie_3_fld',36,'false'),
	('nb_clientes_pg','nb_clie_4_fld',11,'false'),
	('nb_clientes_pg','nb_clie_4_fld',13,'string'),
	('nb_clientes_pg','nb_clie_4_fld',24,'Nombre'),
	('nb_clientes_pg','nb_clie_4_fld',36,'true'),
	('nb_clientes_pg','nb_clie_5_fld',11,'false'),
	('nb_clientes_pg','nb_clie_5_fld',13,'string'),
	('nb_clientes_pg','nb_clie_5_fld',24,'Apellido'),
	('nb_clientes_pg','nb_clie_5_fld',36,'true'),
	('nb_clientes_pg','nb_clie_6_fld',11,'true'),
	('nb_clientes_pg','nb_clie_6_fld',13,'string'),
	('nb_clientes_pg','nb_clie_6_fld',24,'Nombre o Razon Social'),
	('nb_clientes_pg','nb_clie_6_fld',36,'false'),
	('nb_clientes_pg','nb_clie_7_fld',11,'false'),
	('nb_clientes_pg','nb_clie_7_fld',13,'string'),
	('nb_clientes_pg','nb_clie_7_fld',24,'Ciudad'),
	('nb_clientes_pg','nb_clie_7_fld',36,'true'),
	('nb_clientes_pg','nb_clie_8_fld',11,'false'),
	('nb_clientes_pg','nb_clie_8_fld',13,'string'),
	('nb_clientes_pg','nb_clie_8_fld',24,'Direccion'),
	('nb_clientes_pg','nb_clie_8_fld',36,'false'),
	('nb_clientes_pg','nb_clie_9_fld',11,'false'),
	('nb_clientes_pg','nb_clie_9_fld',13,'string'),
	('nb_clientes_pg','nb_clie_9_fld',24,'Telefono'),
	('nb_clientes_pg','nb_clie_9_fld',36,'false'),
	('nb_facturacion_pg','nb_fact_10_fld',11,'true'),
	('nb_facturacion_pg','nb_fact_10_fld',13,'string'),
	('nb_facturacion_pg','nb_fact_10_fld',24,'Codigo Vendedor'),
	('nb_facturacion_pg','nb_fact_10_fld',36,'false'),
	('nb_facturacion_pg','nb_fact_11_fld',11,'false'),
	('nb_facturacion_pg','nb_fact_11_fld',13,'string'),
	('nb_facturacion_pg','nb_fact_11_fld',24,'Observaciones'),
	('nb_facturacion_pg','nb_fact_11_fld',32,'textarea'),
	('nb_facturacion_pg','nb_fact_11_fld',36,'false'),
	('nb_facturacion_pg','nb_fact_12_fld',11,'false'),
	('nb_facturacion_pg','nb_fact_12_fld',13,'string'),
	('nb_facturacion_pg','nb_fact_12_fld',24,'campo'),
	('nb_facturacion_pg','nb_fact_12_fld',36,'true'),
	('nb_facturacion_pg','nb_fact_13_fld',11,'false'),
	('nb_facturacion_pg','nb_fact_13_fld',13,'string'),
	('nb_facturacion_pg','nb_fact_13_fld',24,'campo'),
	('nb_facturacion_pg','nb_fact_13_fld',36,'true'),
	('nb_facturacion_pg','nb_fact_14_fld',11,'false'),
	('nb_facturacion_pg','nb_fact_14_fld',13,'string'),
	('nb_facturacion_pg','nb_fact_14_fld',24,'campo'),
	('nb_facturacion_pg','nb_fact_14_fld',36,'true'),
	('nb_facturacion_pg','nb_fact_15_fld',11,'false'),
	('nb_facturacion_pg','nb_fact_15_fld',13,'string'),
	('nb_facturacion_pg','nb_fact_15_fld',24,'campo'),
	('nb_facturacion_pg','nb_fact_15_fld',36,'true'),
	('nb_facturacion_pg','nb_fact_16_fld',11,'false'),
	('nb_facturacion_pg','nb_fact_16_fld',13,'string'),
	('nb_facturacion_pg','nb_fact_16_fld',24,'campo'),
	('nb_facturacion_pg','nb_fact_16_fld',36,'true'),
	('nb_facturacion_pg','nb_fact_17_fld',11,'false'),
	('nb_facturacion_pg','nb_fact_17_fld',13,'string'),
	('nb_facturacion_pg','nb_fact_17_fld',24,'campo'),
	('nb_facturacion_pg','nb_fact_17_fld',36,'true'),
	('nb_facturacion_pg','nb_fact_18_fld',11,'false'),
	('nb_facturacion_pg','nb_fact_18_fld',13,'string'),
	('nb_facturacion_pg','nb_fact_18_fld',24,'campo'),
	('nb_facturacion_pg','nb_fact_18_fld',36,'true'),
	('nb_facturacion_pg','nb_fact_19_fld',11,'false'),
	('nb_facturacion_pg','nb_fact_19_fld',13,'string'),
	('nb_facturacion_pg','nb_fact_19_fld',24,'campo'),
	('nb_facturacion_pg','nb_fact_19_fld',36,'true'),
	('nb_facturacion_pg','nb_fact_1_fld',11,'false'),
	('nb_facturacion_pg','nb_fact_1_fld',13,'string'),
	('nb_facturacion_pg','nb_fact_1_fld',24,'# Factura'),
	('nb_facturacion_pg','nb_fact_1_fld',36,'true'),
	('nb_facturacion_pg','nb_fact_20_fld',11,'campo 18'),
	('nb_facturacion_pg','nb_fact_20_fld',13,'string'),
	('nb_facturacion_pg','nb_fact_20_fld',24,'campo'),
	('nb_facturacion_pg','nb_fact_20_fld',36,'true'),
	('nb_facturacion_pg','nb_fact_2_fld',11,'false'),
	('nb_facturacion_pg','nb_fact_2_fld',13,'string'),
	('nb_facturacion_pg','nb_fact_2_fld',24,'Campo'),
	('nb_facturacion_pg','nb_fact_2_fld',36,'true'),
	('nb_facturacion_pg','nb_fact_3_fld',11,'true'),
	('nb_facturacion_pg','nb_fact_3_fld',13,'string'),
	('nb_facturacion_pg','nb_fact_3_fld',24,'# Documento'),
	('nb_facturacion_pg','nb_fact_3_fld',32,'number'),
	('nb_facturacion_pg','nb_fact_3_fld',36,'false'),
	('nb_facturacion_pg','nb_fact_3_fld',62,'function(e) {buscarCliente(this.getValue());}'),
	('nb_facturacion_pg','nb_fact_4_fld',11,'true'),
	('nb_facturacion_pg','nb_fact_4_fld',13,'string'),
	('nb_facturacion_pg','nb_fact_4_fld',24,'Nombre o Razon Social'),
	('nb_facturacion_pg','nb_fact_4_fld',36,'false'),
	('nb_facturacion_pg','nb_fact_5_fld',11,'false'),
	('nb_facturacion_pg','nb_fact_5_fld',13,'string'),
	('nb_facturacion_pg','nb_fact_5_fld',24,'Direccion'),
	('nb_facturacion_pg','nb_fact_5_fld',36,'false'),
	('nb_facturacion_pg','nb_fact_6_fld',11,'false'),
	('nb_facturacion_pg','nb_fact_6_fld',13,'string'),
	('nb_facturacion_pg','nb_fact_6_fld',24,'Telefono'),
	('nb_facturacion_pg','nb_fact_6_fld',36,'false'),
	('nb_facturacion_pg','nb_fact_7_fld',6,'email'),
	('nb_facturacion_pg','nb_fact_7_fld',11,'false'),
	('nb_facturacion_pg','nb_fact_7_fld',13,'string'),
	('nb_facturacion_pg','nb_fact_7_fld',24,'Email'),
	('nb_facturacion_pg','nb_fact_7_fld',36,'false'),
	('nb_facturacion_pg','nb_fact_8_fld',6,'date'),
	('nb_facturacion_pg','nb_fact_8_fld',11,'true'),
	('nb_facturacion_pg','nb_fact_8_fld',13,'string'),
	('nb_facturacion_pg','nb_fact_8_fld',24,'Fecha Factura'),
	('nb_facturacion_pg','nb_fact_8_fld',36,'false'),
	('nb_facturacion_pg','nb_fact_9_fld',6,'date'),
	('nb_facturacion_pg','nb_fact_9_fld',11,'true'),
	('nb_facturacion_pg','nb_fact_9_fld',13,'string'),
	('nb_facturacion_pg','nb_fact_9_fld',24,'Fecha Vencimiento'),
	('nb_facturacion_pg','nb_fact_9_fld',36,'false'),
	('nb_inventario_pg','nb_inve_10_fld',11,'false'),
	('nb_inventario_pg','nb_inve_10_fld',13,'string'),
	('nb_inventario_pg','nb_inve_10_fld',24,'campo'),
	('nb_inventario_pg','nb_inve_10_fld',36,'true'),
	('nb_inventario_pg','nb_inve_11_fld',11,'false'),
	('nb_inventario_pg','nb_inve_11_fld',13,'string'),
	('nb_inventario_pg','nb_inve_11_fld',24,'campo'),
	('nb_inventario_pg','nb_inve_11_fld',36,'true'),
	('nb_inventario_pg','nb_inve_12_fld',11,'false'),
	('nb_inventario_pg','nb_inve_12_fld',13,'string'),
	('nb_inventario_pg','nb_inve_12_fld',24,'campo'),
	('nb_inventario_pg','nb_inve_12_fld',36,'true'),
	('nb_inventario_pg','nb_inve_13_fld',11,'false'),
	('nb_inventario_pg','nb_inve_13_fld',13,'string'),
	('nb_inventario_pg','nb_inve_13_fld',24,'campo'),
	('nb_inventario_pg','nb_inve_13_fld',36,'true'),
	('nb_inventario_pg','nb_inve_14_fld',11,'false'),
	('nb_inventario_pg','nb_inve_14_fld',13,'string'),
	('nb_inventario_pg','nb_inve_14_fld',24,'campo'),
	('nb_inventario_pg','nb_inve_14_fld',36,'true'),
	('nb_inventario_pg','nb_inve_15_fld',11,'false'),
	('nb_inventario_pg','nb_inve_15_fld',13,'string'),
	('nb_inventario_pg','nb_inve_15_fld',24,'campo'),
	('nb_inventario_pg','nb_inve_15_fld',36,'true'),
	('nb_inventario_pg','nb_inve_16_fld',11,'false'),
	('nb_inventario_pg','nb_inve_16_fld',13,'string'),
	('nb_inventario_pg','nb_inve_16_fld',24,'campo'),
	('nb_inventario_pg','nb_inve_16_fld',36,'true'),
	('nb_inventario_pg','nb_inve_17_fld',11,'false'),
	('nb_inventario_pg','nb_inve_17_fld',13,'string'),
	('nb_inventario_pg','nb_inve_17_fld',24,'campo'),
	('nb_inventario_pg','nb_inve_17_fld',36,'true'),
	('nb_inventario_pg','nb_inve_18_fld',11,'false'),
	('nb_inventario_pg','nb_inve_18_fld',13,'string'),
	('nb_inventario_pg','nb_inve_18_fld',24,'campo'),
	('nb_inventario_pg','nb_inve_18_fld',36,'true'),
	('nb_inventario_pg','nb_inve_19_fld',11,'false'),
	('nb_inventario_pg','nb_inve_19_fld',13,'string'),
	('nb_inventario_pg','nb_inve_19_fld',24,'campo'),
	('nb_inventario_pg','nb_inve_19_fld',36,'true'),
	('nb_inventario_pg','nb_inve_1_fld',11,'false'),
	('nb_inventario_pg','nb_inve_1_fld',13,'string'),
	('nb_inventario_pg','nb_inve_1_fld',24,'Cod Inventario'),
	('nb_inventario_pg','nb_inve_1_fld',32,'number'),
	('nb_inventario_pg','nb_inve_1_fld',36,'true'),
	('nb_inventario_pg','nb_inve_20_fld',11,'campo 18'),
	('nb_inventario_pg','nb_inve_20_fld',13,'string'),
	('nb_inventario_pg','nb_inve_20_fld',24,'campo'),
	('nb_inventario_pg','nb_inve_20_fld',36,'true'),
	('nb_inventario_pg','nb_inve_2_fld',11,'true'),
	('nb_inventario_pg','nb_inve_2_fld',13,'string'),
	('nb_inventario_pg','nb_inve_2_fld',24,'Id Producto'),
	('nb_inventario_pg','nb_inve_2_fld',32,'number'),
	('nb_inventario_pg','nb_inve_2_fld',36,'false'),
	('nb_inventario_pg','nb_inve_3_fld',11,'true'),
	('nb_inventario_pg','nb_inve_3_fld',13,'string'),
	('nb_inventario_pg','nb_inve_3_fld',24,'Cantidad'),
	('nb_inventario_pg','nb_inve_3_fld',32,'number'),
	('nb_inventario_pg','nb_inve_3_fld',36,'false'),
	('nb_inventario_pg','nb_inve_4_fld',11,'false'),
	('nb_inventario_pg','nb_inve_4_fld',13,'string'),
	('nb_inventario_pg','nb_inve_4_fld',24,'campo'),
	('nb_inventario_pg','nb_inve_4_fld',36,'true'),
	('nb_inventario_pg','nb_inve_5_fld',11,'false'),
	('nb_inventario_pg','nb_inve_5_fld',13,'string'),
	('nb_inventario_pg','nb_inve_5_fld',24,'campo'),
	('nb_inventario_pg','nb_inve_5_fld',36,'true'),
	('nb_inventario_pg','nb_inve_6_fld',11,'false'),
	('nb_inventario_pg','nb_inve_6_fld',13,'string'),
	('nb_inventario_pg','nb_inve_6_fld',24,'campo'),
	('nb_inventario_pg','nb_inve_6_fld',36,'true'),
	('nb_inventario_pg','nb_inve_7_fld',11,'false'),
	('nb_inventario_pg','nb_inve_7_fld',13,'string'),
	('nb_inventario_pg','nb_inve_7_fld',24,'campo'),
	('nb_inventario_pg','nb_inve_7_fld',36,'true'),
	('nb_inventario_pg','nb_inve_8_fld',11,'false'),
	('nb_inventario_pg','nb_inve_8_fld',13,'string'),
	('nb_inventario_pg','nb_inve_8_fld',24,'campo'),
	('nb_inventario_pg','nb_inve_8_fld',36,'true'),
	('nb_inventario_pg','nb_inve_9_fld',11,'false'),
	('nb_inventario_pg','nb_inve_9_fld',13,'string'),
	('nb_inventario_pg','nb_inve_9_fld',24,'campo'),
	('nb_inventario_pg','nb_inve_9_fld',36,'true'),
	('nb_password_pg','nbd_email_fld',11,'true'),
	('nb_password_pg','nbd_email_fld',13,'string'),
	('nb_password_pg','nbd_email_fld',24,'Usuario'),
	('nb_password_pg','nbd_password_fld',11,'true'),
	('nb_password_pg','nbd_password_fld',13,'string'),
	('nb_password_pg','nbd_password_fld',24,'Contrase&#241;a'),
	('nb_productos_pg','nb_prod_10_fld',11,'false'),
	('nb_productos_pg','nb_prod_10_fld',13,'string'),
	('nb_productos_pg','nb_prod_10_fld',24,'campo'),
	('nb_productos_pg','nb_prod_10_fld',36,'true'),
	('nb_productos_pg','nb_prod_11_fld',11,'false'),
	('nb_productos_pg','nb_prod_11_fld',13,'string'),
	('nb_productos_pg','nb_prod_11_fld',24,'campo'),
	('nb_productos_pg','nb_prod_11_fld',36,'true'),
	('nb_productos_pg','nb_prod_12_fld',11,'false'),
	('nb_productos_pg','nb_prod_12_fld',13,'string'),
	('nb_productos_pg','nb_prod_12_fld',24,'campo'),
	('nb_productos_pg','nb_prod_12_fld',36,'true'),
	('nb_productos_pg','nb_prod_13_fld',11,'false'),
	('nb_productos_pg','nb_prod_13_fld',13,'string'),
	('nb_productos_pg','nb_prod_13_fld',24,'campo'),
	('nb_productos_pg','nb_prod_13_fld',36,'true'),
	('nb_productos_pg','nb_prod_14_fld',11,'false'),
	('nb_productos_pg','nb_prod_14_fld',13,'string'),
	('nb_productos_pg','nb_prod_14_fld',24,'campo'),
	('nb_productos_pg','nb_prod_14_fld',36,'true'),
	('nb_productos_pg','nb_prod_15_fld',11,'false'),
	('nb_productos_pg','nb_prod_15_fld',13,'string'),
	('nb_productos_pg','nb_prod_15_fld',24,'campo'),
	('nb_productos_pg','nb_prod_15_fld',36,'true'),
	('nb_productos_pg','nb_prod_16_fld',11,'false'),
	('nb_productos_pg','nb_prod_16_fld',13,'string'),
	('nb_productos_pg','nb_prod_16_fld',24,'campo'),
	('nb_productos_pg','nb_prod_16_fld',36,'true'),
	('nb_productos_pg','nb_prod_17_fld',11,'false'),
	('nb_productos_pg','nb_prod_17_fld',13,'string'),
	('nb_productos_pg','nb_prod_17_fld',24,'campo'),
	('nb_productos_pg','nb_prod_17_fld',36,'true'),
	('nb_productos_pg','nb_prod_18_fld',11,'false'),
	('nb_productos_pg','nb_prod_18_fld',13,'string'),
	('nb_productos_pg','nb_prod_18_fld',24,'campo'),
	('nb_productos_pg','nb_prod_18_fld',36,'true'),
	('nb_productos_pg','nb_prod_19_fld',11,'false'),
	('nb_productos_pg','nb_prod_19_fld',13,'string'),
	('nb_productos_pg','nb_prod_19_fld',24,'campo'),
	('nb_productos_pg','nb_prod_19_fld',36,'true'),
	('nb_productos_pg','nb_prod_1_fld',11,'false'),
	('nb_productos_pg','nb_prod_1_fld',13,'string'),
	('nb_productos_pg','nb_prod_1_fld',24,'Id Producto'),
	('nb_productos_pg','nb_prod_1_fld',32,'number'),
	('nb_productos_pg','nb_prod_1_fld',36,'true'),
	('nb_productos_pg','nb_prod_20_fld',11,'campo 18'),
	('nb_productos_pg','nb_prod_20_fld',13,'string'),
	('nb_productos_pg','nb_prod_20_fld',24,'campo'),
	('nb_productos_pg','nb_prod_20_fld',36,'true'),
	('nb_productos_pg','nb_prod_2_fld',11,'true'),
	('nb_productos_pg','nb_prod_2_fld',13,'string'),
	('nb_productos_pg','nb_prod_2_fld',24,'Descripcion'),
	('nb_productos_pg','nb_prod_2_fld',36,'false'),
	('nb_productos_pg','nb_prod_3_fld',11,'false'),
	('nb_productos_pg','nb_prod_3_fld',13,'string'),
	('nb_productos_pg','nb_prod_3_fld',24,'Marca'),
	('nb_productos_pg','nb_prod_3_fld',36,'false'),
	('nb_productos_pg','nb_prod_4_fld',11,'false'),
	('nb_productos_pg','nb_prod_4_fld',13,'string'),
	('nb_productos_pg','nb_prod_4_fld',24,'Modelo'),
	('nb_productos_pg','nb_prod_4_fld',36,'false'),
	('nb_productos_pg','nb_prod_5_fld',11,'false'),
	('nb_productos_pg','nb_prod_5_fld',13,'string'),
	('nb_productos_pg','nb_prod_5_fld',24,'Observaciones'),
	('nb_productos_pg','nb_prod_5_fld',32,'textarea'),
	('nb_productos_pg','nb_prod_5_fld',36,'false'),
	('nb_productos_pg','nb_prod_6_fld',11,'false'),
	('nb_productos_pg','nb_prod_6_fld',13,'string'),
	('nb_productos_pg','nb_prod_6_fld',24,'Unidad Medida'),
	('nb_productos_pg','nb_prod_6_fld',32,'select'),
	('nb_productos_pg','nb_prod_6_fld',36,'false'),
	('nb_productos_pg','nb_prod_6_fld',55,'../Events/ValoresCampo.php?campo=nb_umed_fld'),
	('nb_productos_pg','nb_prod_6_fld',58,'Seleccione Tipo Medida'),
	('nb_productos_pg','nb_prod_6_fld',59,'false'),
	('nb_productos_pg','nb_prod_7_fld',11,'true'),
	('nb_productos_pg','nb_prod_7_fld',13,'string'),
	('nb_productos_pg','nb_prod_7_fld',24,'Precio'),
	('nb_productos_pg','nb_prod_7_fld',32,'number'),
	('nb_productos_pg','nb_prod_7_fld',36,'false'),
	('nb_productos_pg','nb_prod_8_fld',11,'true'),
	('nb_productos_pg','nb_prod_8_fld',13,'string'),
	('nb_productos_pg','nb_prod_8_fld',24,'Iva'),
	('nb_productos_pg','nb_prod_8_fld',32,'number'),
	('nb_productos_pg','nb_prod_8_fld',36,'false'),
	('nb_productos_pg','nb_prod_9_fld',11,'false'),
	('nb_productos_pg','nb_prod_9_fld',13,'string'),
	('nb_productos_pg','nb_prod_9_fld',24,'campo'),
	('nb_productos_pg','nb_prod_9_fld',36,'true'),
	('nb_prueba_pg','nb_inve_1_fld',11,'FALSE'),
	('nb_prueba_pg','nb_inve_1_fld',13,'string'),
	('nb_prueba_pg','nb_inve_1_fld',24,'Campo 1'),
	('nb_prueba_pg','nb_inve_2_fld',11,'FALSE'),
	('nb_prueba_pg','nb_inve_2_fld',13,'string'),
	('nb_prueba_pg','nb_inve_2_fld',24,'Campo 2'),
	('nb_prueba_pg','nb_inve_3_fld',11,'FALSE'),
	('nb_prueba_pg','nb_inve_3_fld',13,'string'),
	('nb_prueba_pg','nb_inve_3_fld',24,'Campo 3'),
	('nb_prueba_pg','nb_inve_4_fld',11,'FALSE'),
	('nb_prueba_pg','nb_inve_4_fld',13,'string'),
	('nb_prueba_pg','nb_inve_4_fld',24,'Campo 4'),
	('nb_usersm_pg','nbd_descr_fld',11,'true'),
	('nb_usersm_pg','nbd_descr_fld',13,'string'),
	('nb_usersm_pg','nbd_descr_fld',24,'Nombre'),
	('nb_usersm_pg','nbd_email_fld',11,'true'),
	('nb_usersm_pg','nbd_email_fld',13,'string'),
	('nb_usersm_pg','nbd_email_fld',24,'Usuario'),
	('nb_usersm_pg','nbd_email_fld',36,'true'),
	('nb_usersm_pg','nbd_email_fldx',11,'true'),
	('nb_usersm_pg','nbd_email_fldx',13,'string'),
	('nb_usersm_pg','nbd_email_fldx',24,'Usuario'),
	('nb_usersm_pg','nbd_email_fldx',29,'true'),
	('nb_usersm_pg','nbd_id_user_fld',11,'true'),
	('nb_usersm_pg','nbd_id_user_fld',13,'string'),
	('nb_usersm_pg','nbd_id_user_fld',24,'Id'),
	('nb_usersm_pg','nbd_id_user_fld',36,'true'),
	('nb_usersm_pg','nbd_id_user_fldx',11,'true'),
	('nb_usersm_pg','nbd_id_user_fldx',13,'string'),
	('nb_usersm_pg','nbd_id_user_fldx',24,'Id'),
	('nb_usersm_pg','nbd_id_user_fldx',29,'true'),
	('nb_usersm_pg','nbd_password_fld',11,'true'),
	('nb_usersm_pg','nbd_password_fld',13,'string'),
	('nb_usersm_pg','nbd_password_fld',24,'Contrase&#241;a'),
	('nb_usersm_pg','nbd_password_fld',36,'true'),
	('nb_usersm_pg','nb_estado_fld',11,'true'),
	('nb_usersm_pg','nb_estado_fld',13,'string'),
	('nb_usersm_pg','nb_estado_fld',24,'Estado'),
	('nb_usersm_pg','nb_estado_fld',32,'select'),
	('nb_usersm_pg','nb_estado_fld',55,'../Events/ValoresCampo.php?campo=nb_estado_fld'),
	('nb_usersm_pg','nb_estado_fld',58,'Seleccione Estado'),
	('nb_usersm_pg','nb_estado_fld',59,'false'),
	('nb_usersm_pg','nb_id_role_fld',11,'true'),
	('nb_usersm_pg','nb_id_role_fld',13,'string'),
	('nb_usersm_pg','nb_id_role_fld',24,'Role'),
	('nb_usersm_pg','nb_id_role_fld',32,'select'),
	('nb_usersm_pg','nb_id_role_fld',55,'../Events/ValoresCampo.php?campo=role'),
	('nb_usersm_pg','nb_id_role_fld',58,'Seleccione Role'),
	('nb_usersm_pg','nb_id_role_fld',59,'false'),
	('nb_users_pg','nbd_descr_fld',11,'true'),
	('nb_users_pg','nbd_descr_fld',13,'string'),
	('nb_users_pg','nbd_descr_fld',24,'Nombre'),
	('nb_users_pg','nbd_email_fld',11,'true'),
	('nb_users_pg','nbd_email_fld',13,'string'),
	('nb_users_pg','nbd_email_fld',24,'Usuario'),
	('nb_users_pg','nbd_id_user_fld',11,'true'),
	('nb_users_pg','nbd_id_user_fld',13,'string'),
	('nb_users_pg','nbd_id_user_fld',24,'Id'),
	('nb_users_pg','nbd_password_fld',11,'true'),
	('nb_users_pg','nbd_password_fld',13,'string'),
	('nb_users_pg','nbd_password_fld',24,'Contrase&#241;a'),
	('nb_users_pg','nb_estado_fld',11,'true'),
	('nb_users_pg','nb_estado_fld',13,'string'),
	('nb_users_pg','nb_estado_fld',24,'Estado'),
	('nb_users_pg','nb_estado_fld',32,'select'),
	('nb_users_pg','nb_estado_fld',55,'../Events/ValoresCampo.php?campo=nb_estado_fld'),
	('nb_users_pg','nb_estado_fld',58,'Seleccione Estado'),
	('nb_users_pg','nb_estado_fld',59,'false'),
	('nb_users_pg','nb_id_role_fld',11,'true'),
	('nb_users_pg','nb_id_role_fld',13,'string'),
	('nb_users_pg','nb_id_role_fld',24,'Role'),
	('nb_users_pg','nb_id_role_fld',32,'select'),
	('nb_users_pg','nb_id_role_fld',55,'../Events/ValoresCampo.php?campo=role'),
	('nb_users_pg','nb_id_role_fld',58,'Seleccione Role'),
	('nb_users_pg','nb_id_role_fld',59,'false'),
	('nb_vendedores_pg','nb_vend_1_fld',11,'false'),
	('nb_vendedores_pg','nb_vend_1_fld',13,'string'),
	('nb_vendedores_pg','nb_vend_1_fld',24,'campo'),
	('nb_vendedores_pg','nb_vend_1_fld',36,'false'),
	('nb_vendedores_pg','nb_vend_2_fld',11,'false'),
	('nb_vendedores_pg','nb_vend_2_fld',13,'string'),
	('nb_vendedores_pg','nb_vend_2_fld',24,'campo'),
	('nb_vendedores_pg','nb_vend_2_fld',36,'false'),
	('nb_vendedores_pg','nb_vend_3_fld',11,'false'),
	('nb_vendedores_pg','nb_vend_3_fld',13,'string'),
	('nb_vendedores_pg','nb_vend_3_fld',24,'campo'),
	('nb_vendedores_pg','nb_vend_3_fld',36,'false'),
	('nb_vendedores_pg','nb_vend_4_fld',11,'false'),
	('nb_vendedores_pg','nb_vend_4_fld',13,'string'),
	('nb_vendedores_pg','nb_vend_4_fld',24,'campo'),
	('nb_vendedores_pg','nb_vend_4_fld',36,'false'),
	('nb_vendedores_pg','nb_vend_5_fld',11,'false'),
	('nb_vendedores_pg','nb_vend_5_fld',13,'string'),
	('nb_vendedores_pg','nb_vend_5_fld',24,'campo'),
	('nb_vendedores_pg','nb_vend_5_fld',36,'false'),
	('nb_vendedores_pg','nb_vend_6_fld',11,'false'),
	('nb_vendedores_pg','nb_vend_6_fld',13,'string'),
	('nb_vendedores_pg','nb_vend_6_fld',24,'campo'),
	('nb_vendedores_pg','nb_vend_6_fld',36,'false'),
	('nb_vendedores_pg','nb_vend_7_fld',11,'false'),
	('nb_vendedores_pg','nb_vend_7_fld',13,'string'),
	('nb_vendedores_pg','nb_vend_7_fld',24,'campo'),
	('nb_vendedores_pg','nb_vend_7_fld',36,'false'),
	('nb_vendedores_pg','nb_vend_8_fld',11,'false'),
	('nb_vendedores_pg','nb_vend_8_fld',13,'string'),
	('nb_vendedores_pg','nb_vend_8_fld',24,'campo'),
	('nb_vendedores_pg','nb_vend_8_fld',36,'false'),
	('nb_vendedores_pg','nb_vend_9_fld',11,'false'),
	('nb_vendedores_pg','nb_vend_9_fld',13,'string'),
	('nb_vendedores_pg','nb_vend_9_fld',24,'campo'),
	('nb_vendedores_pg','nb_vend_9_fld',36,'false'),
	('nb_vendedores_pg','nb_vend_10_fld',11,'false'),
	('nb_vendedores_pg','nb_vend_10_fld',13,'string'),
	('nb_vendedores_pg','nb_vend_10_fld',24,'campo'),
	('nb_vendedores_pg','nb_vend_10_fld',36,'false'),
	('nb_vendedores_pg','nb_vend_11_fld',11,'false'),
	('nb_vendedores_pg','nb_vend_11_fld',13,'string'),
	('nb_vendedores_pg','nb_vend_11_fld',24,'campo'),
	('nb_vendedores_pg','nb_vend_11_fld',36,'false'),
	('nb_vendedores_pg','nb_vend_12_fld',11,'false'),
	('nb_vendedores_pg','nb_vend_12_fld',13,'string'),
	('nb_vendedores_pg','nb_vend_12_fld',24,'campo'),
	('nb_vendedores_pg','nb_vend_12_fld',36,'false'),
	('nb_vendedores_pg','nb_vend_13_fld',11,'false'),
	('nb_vendedores_pg','nb_vend_13_fld',13,'string'),
	('nb_vendedores_pg','nb_vend_13_fld',24,'campo'),
	('nb_vendedores_pg','nb_vend_13_fld',36,'false'),
	('nb_vendedores_pg','nb_vend_14_fld',11,'false'),
	('nb_vendedores_pg','nb_vend_14_fld',13,'string'),
	('nb_vendedores_pg','nb_vend_14_fld',24,'campo'),
	('nb_vendedores_pg','nb_vend_14_fld',36,'false'),
	('nb_vendedores_pg','nb_vend_15_fld',11,'false'),
	('nb_vendedores_pg','nb_vend_15_fld',13,'string'),
	('nb_vendedores_pg','nb_vend_15_fld',24,'campo'),
	('nb_vendedores_pg','nb_vend_15_fld',36,'false'),
	('nb_vendedores_pg','nb_vend_16_fld',11,'false'),
	('nb_vendedores_pg','nb_vend_16_fld',13,'string'),
	('nb_vendedores_pg','nb_vend_16_fld',24,'campo'),
	('nb_vendedores_pg','nb_vend_16_fld',36,'false'),
	('nb_vendedores_pg','nb_vend_17_fld',11,'false'),
	('nb_vendedores_pg','nb_vend_17_fld',13,'string'),
	('nb_vendedores_pg','nb_vend_17_fld',24,'campo'),
	('nb_vendedores_pg','nb_vend_17_fld',36,'false'),
	('nb_vendedores_pg','nb_vend_18_fld',11,'false'),
	('nb_vendedores_pg','nb_vend_18_fld',13,'string'),
	('nb_vendedores_pg','nb_vend_18_fld',24,'campo'),
	('nb_vendedores_pg','nb_vend_18_fld',36,'false'),
	('nb_vendedores_pg','nb_vend_19_fld',11,'false'),
	('nb_vendedores_pg','nb_vend_19_fld',13,'string'),
	('nb_vendedores_pg','nb_vend_19_fld',24,'campo'),
	('nb_vendedores_pg','nb_vend_19_fld',36,'false'),
	('nb_vendedores_pg','nb_vend_20_fld',11,'campo 18'),
	('nb_vendedores_pg','nb_vend_20_fld',13,'string'),
	('nb_vendedores_pg','nb_vend_20_fld',24,'campo'),
	('nb_vendedores_pg','nb_vend_20_fld',36,'false'),
	('nb_proveedores_pg','nb_prov_1_fld',11,'false'),
	('nb_proveedores_pg','nb_prov_1_fld',13,'string'),
	('nb_proveedores_pg','nb_prov_1_fld',24,'campo'),
	('nb_proveedores_pg','nb_prov_1_fld',36,'false'),
	('nb_proveedores_pg','nb_prov_2_fld',11,'false'),
	('nb_proveedores_pg','nb_prov_2_fld',13,'string'),
	('nb_proveedores_pg','nb_prov_2_fld',24,'campo'),
	('nb_proveedores_pg','nb_prov_2_fld',36,'false'),
	('nb_proveedores_pg','nb_prov_3_fld',11,'false'),
	('nb_proveedores_pg','nb_prov_3_fld',13,'string'),
	('nb_proveedores_pg','nb_prov_3_fld',24,'campo'),
	('nb_proveedores_pg','nb_prov_3_fld',36,'false'),
	('nb_proveedores_pg','nb_prov_4_fld',11,'false'),
	('nb_proveedores_pg','nb_prov_4_fld',13,'string'),
	('nb_proveedores_pg','nb_prov_4_fld',24,'campo'),
	('nb_proveedores_pg','nb_prov_4_fld',36,'false'),
	('nb_proveedores_pg','nb_prov_5_fld',11,'false'),
	('nb_proveedores_pg','nb_prov_5_fld',13,'string'),
	('nb_proveedores_pg','nb_prov_5_fld',24,'campo'),
	('nb_proveedores_pg','nb_prov_5_fld',36,'false'),
	('nb_proveedores_pg','nb_prov_6_fld',11,'false'),
	('nb_proveedores_pg','nb_prov_6_fld',13,'string'),
	('nb_proveedores_pg','nb_prov_6_fld',24,'campo'),
	('nb_proveedores_pg','nb_prov_6_fld',36,'false'),
	('nb_proveedores_pg','nb_prov_7_fld',11,'false'),
	('nb_proveedores_pg','nb_prov_7_fld',13,'string'),
	('nb_proveedores_pg','nb_prov_7_fld',24,'campo'),
	('nb_proveedores_pg','nb_prov_7_fld',36,'false'),
	('nb_proveedores_pg','nb_prov_8_fld',11,'false'),
	('nb_proveedores_pg','nb_prov_8_fld',13,'string'),
	('nb_proveedores_pg','nb_prov_8_fld',24,'campo'),
	('nb_proveedores_pg','nb_prov_8_fld',36,'false'),
	('nb_proveedores_pg','nb_prov_9_fld',11,'false'),
	('nb_proveedores_pg','nb_prov_9_fld',13,'string'),
	('nb_proveedores_pg','nb_prov_9_fld',24,'campo'),
	('nb_proveedores_pg','nb_prov_9_fld',36,'false'),
	('nb_proveedores_pg','nb_prov_10_fld',11,'false'),
	('nb_proveedores_pg','nb_prov_10_fld',13,'string'),
	('nb_proveedores_pg','nb_prov_10_fld',24,'campo'),
	('nb_proveedores_pg','nb_prov_10_fld',36,'false'),
	('nb_proveedores_pg','nb_prov_11_fld',11,'false'),
	('nb_proveedores_pg','nb_prov_11_fld',13,'string'),
	('nb_proveedores_pg','nb_prov_11_fld',24,'campo'),
	('nb_proveedores_pg','nb_prov_11_fld',36,'false'),
	('nb_proveedores_pg','nb_prov_12_fld',11,'false'),
	('nb_proveedores_pg','nb_prov_12_fld',13,'string'),
	('nb_proveedores_pg','nb_prov_12_fld',24,'campo'),
	('nb_proveedores_pg','nb_prov_12_fld',36,'false'),
	('nb_proveedores_pg','nb_prov_13_fld',11,'false'),
	('nb_proveedores_pg','nb_prov_13_fld',13,'string'),
	('nb_proveedores_pg','nb_prov_13_fld',24,'campo'),
	('nb_proveedores_pg','nb_prov_13_fld',36,'false'),
	('nb_proveedores_pg','nb_prov_14_fld',11,'false'),
	('nb_proveedores_pg','nb_prov_14_fld',13,'string'),
	('nb_proveedores_pg','nb_prov_14_fld',24,'campo'),
	('nb_proveedores_pg','nb_prov_14_fld',36,'false'),
	('nb_proveedores_pg','nb_prov_15_fld',11,'false'),
	('nb_proveedores_pg','nb_prov_15_fld',13,'string'),
	('nb_proveedores_pg','nb_prov_15_fld',24,'campo'),
	('nb_proveedores_pg','nb_prov_15_fld',36,'false'),
	('nb_proveedores_pg','nb_prov_16_fld',11,'false'),
	('nb_proveedores_pg','nb_prov_16_fld',13,'string'),
	('nb_proveedores_pg','nb_prov_16_fld',24,'campo'),
	('nb_proveedores_pg','nb_prov_16_fld',36,'false'),
	('nb_proveedores_pg','nb_prov_17_fld',11,'false'),
	('nb_proveedores_pg','nb_prov_17_fld',13,'string'),
	('nb_proveedores_pg','nb_prov_17_fld',24,'campo'),
	('nb_proveedores_pg','nb_prov_17_fld',36,'false'),
	('nb_proveedores_pg','nb_prov_18_fld',11,'false'),
	('nb_proveedores_pg','nb_prov_18_fld',13,'string'),
	('nb_proveedores_pg','nb_prov_18_fld',24,'campo'),
	('nb_proveedores_pg','nb_prov_18_fld',36,'false'),
	('nb_proveedores_pg','nb_prov_19_fld',11,'false'),
	('nb_proveedores_pg','nb_prov_19_fld',13,'string'),
	('nb_proveedores_pg','nb_prov_19_fld',24,'campo'),
	('nb_proveedores_pg','nb_prov_19_fld',36,'false'),
	('nb_proveedores_pg','nb_prov_20_fld',11,'campo 18'),
	('nb_proveedores_pg','nb_prov_20_fld',13,'string'),
	('nb_proveedores_pg','nb_prov_20_fld',24,'campo'),
	('nb_proveedores_pg','nb_prov_20_fld',36,'false');

/*!40000 ALTER TABLE `nb_forms_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_htmlattribute_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_htmlattribute_tbl`;

CREATE TABLE `nb_htmlattribute_tbl` (
  `nb_id_attribute_fld` int(11) NOT NULL DEFAULT '0',
  `nb_attribute_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `nb_url_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_type_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_rel_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_descripcion_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_attribute_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_htmlattribute_tbl` WRITE;
/*!40000 ALTER TABLE `nb_htmlattribute_tbl` DISABLE KEYS */;

INSERT INTO `nb_htmlattribute_tbl` (`nb_id_attribute_fld`, `nb_attribute_fld`, `nb_url_fld`, `nb_type_fld`, `nb_rel_fld`, `nb_descripcion_fld`)
VALUES
	(1,'link','../Styles/nabu.css','text/css','stylesheet','Estilos Nabu'),
	(2,'link','../Images/logo.ico','image/x-icon','icon','Icono'),
	(3,'script','../Framework/jquery/dist/jquery.min.js','text/javascript',NULL,'Libreria Jquery'),
	(4,'script','../Framework/handlebars/handlebars.min.js','text/javascript',NULL,'Handlebars'),
	(5,'script','../Framework/bootstrap/dist/js/bootstrap.min.js','text/javascript',NULL,'Bootstrap'),
	(6,'link','../Framework/bootstrap/dist/css/bootstrap.min.css','text/css','stylesheet','Bootstrap'),
	(7,'link','../Framework/alpaca/dist/alpaca/bootstrap/alpaca.min.css','text/css','stylesheet','Alpaca'),
	(8,'script','../Framework/alpaca/dist/alpaca/bootstrap/alpaca.min.js','text/javascript',NULL,'Alpaca'),
	(9,'script','../Framework/mmenu/src/js/jquery.mmenu.min.js','text/javascript',NULL,'Menu'),
	(10,'link','../Framework/mmenu/src/css/jquery.mmenu.all.css','text/css','stylesheet','Menu'),
	(11,'link','../Framework/mmenu/src/css/extensions/jquery.mmenu.iconbar.css','text/css','stylesheet','Menu'),
	(12,'link','../Styles/menuNabu.css','text/css','stylesheet','Menu'),
	(13,'link','../Framework/font-awesome/css/font-awesome.min.css','text/css','stylesheet','Menu'),
	(14,'link','../Framework/datatables/media/css/jquery.dataTables.min.css','text/css','text/css','Tables'),
	(15,'script','../Framework/datatables/media/js/jquery.dataTables.min.js','text/javascript',NULL,'Tables'),
	(16,'link','../Framework/Datagrid/lib/js/themes/cobo/jquery-ui.custom.css','text/css','stylesheet','Datagrid'),
	(17,'link','../Framework/Datagrid/lib/js/jqgrid/css/ui.jqgrid.css','text/css','stylesheet','Datagrid'),
	(18,'script','../Framework/Datagrid/lib/js/jqgrid/js/i18n/grid.locale-es.js','text/javascript',NULL,'Datagrid'),
	(19,'script','../Framework/Datagrid/lib/js/themes/jquery-ui.custom.min.js','text/javascript',NULL,'Datagrid'),
	(20,'script','../Framework/Datagrid/lib/js/jqgrid/js/jquery.jqGrid.min.js','text/javascript',NULL,'Datagrid'),
	(21,'script','../Framework/Chart.js/Chart.js','text/javascript',NULL,'Charts'),
	(22,'script','../Framework/jquery-ui/jquery-ui.min.js','text/javascript',NULL,'jQuery UI Support'),
	(23,'script','../Script/funciones.js','text/javascript',NULL,'Funciones Propias');

/*!40000 ALTER TABLE `nb_htmlattribute_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_inventario_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_inventario_tbl`;

CREATE TABLE `nb_inventario_tbl` (
  `nb_inve_1_fld` int(11) NOT NULL AUTO_INCREMENT,
  `nb_inve_2_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_inve_3_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_inve_4_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_inve_5_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_inve_6_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_inve_7_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_inve_8_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_inve_9_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_inve_10_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_inve_11_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_inve_12_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_inve_13_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_inve_14_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_inve_15_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_inve_16_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_inve_17_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_inve_18_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_inve_19_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_inve_20_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_inve_1_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;



# Dump of table nb_link_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_link_tbl`;

CREATE TABLE `nb_link_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_id2_page_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_page_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_link_tbl` WRITE;
/*!40000 ALTER TABLE `nb_link_tbl` DISABLE KEYS */;

INSERT INTO `nb_link_tbl` (`nb_id_page_fld`, `nb_id2_page_fld`)
VALUES
	('nb_loginv_pg','nb_usersm_pg');

/*!40000 ALTER TABLE `nb_link_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_login_vw
# ------------------------------------------------------------

DROP VIEW IF EXISTS `nb_login_vw`;

CREATE TABLE `nb_login_vw` (
   `Id` INT(11) NOT NULL DEFAULT '0',
   `Usuario` VARCHAR(255) NULL DEFAULT NULL,
   `Login` VARCHAR(255) NULL DEFAULT NULL,
   `Role` VARCHAR(255) NOT NULL DEFAULT '',
   `Estado` VARCHAR(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM;



# Dump of table nb_navigation_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_navigation_tbl`;

CREATE TABLE `nb_navigation_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_sec_fld` int(11) NOT NULL DEFAULT '0',
  `nb_parent_fld` int(11) NOT NULL DEFAULT '0',
  `nb_id_menu_fld` int(11) NOT NULL DEFAULT '0',
  `nb_descr_men_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_link_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_image_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_target_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT 'N',
  PRIMARY KEY (`nb_id_page_fld`,`nb_sec_fld`,`nb_parent_fld`,`nb_id_menu_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_navigation_tbl` WRITE;
/*!40000 ALTER TABLE `nb_navigation_tbl` DISABLE KEYS */;

INSERT INTO `nb_navigation_tbl` (`nb_id_page_fld`, `nb_sec_fld`, `nb_parent_fld`, `nb_id_menu_fld`, `nb_descr_men_fld`, `nb_link_fld`, `nb_image_fld`, `nb_target_fld`)
VALUES
	('home',1,0,1,'Home','home','fa fa-home','N'),
	('home',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),
	('home',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),
	('home',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),
	('home',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),
	('home',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),
	('home',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),
	('home',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),
	('home',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),
	('home',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),
	('home',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),
	('home',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),
	('home',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),
	('home',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),
	('home',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),
	('home',22,20,2,'Facturacion Mensual','nb_reporte_2_pg','fa fa-bar-chart','N'),
	('home',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('home',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('home',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('home',26,0,10,'Configuracion','home','fa fa-cog','N'),
	('home',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('home',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('home',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),
	('home',30,0,12,'Prueba','nb_prueba_pg','fa fa-cog','N'),
	('nb_loginv_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),
	('nb_loginv_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),
	('nb_loginv_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),
	('nb_loginv_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),
	('nb_loginv_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),
	('nb_loginv_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),
	('nb_loginv_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),
	('nb_loginv_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),
	('nb_loginv_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),
	('nb_loginv_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),
	('nb_loginv_pg',1,0,1,'Home','home','fa fa-home','N'),
	('nb_proveedores_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),
	('nb_inventario_v_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),
	('nb_inventario_v_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('nb_inventario_v_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('nb_inventario_v_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),
	('nb_inventario_v_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('nb_inventario_v_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('nb_inventario_v_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('nb_inventario_v_pg',22,20,2,'Facturacion Mensual','nb_reporte_2_pg','fa fa-bar-chart','N'),
	('nb_inventario_v_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),
	('nb_inventario_v_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),
	('nb_inventario_v_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),
	('nb_inventario_v_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),
	('nb_inventario_v_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),
	('nb_inventario_v_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),
	('nb_inventario_v_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),
	('nb_inventario_v_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),
	('nb_inventario_v_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),
	('nb_inventario_v_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),
	('nb_inventario_v_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),
	('nb_inventario_v_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),
	('nb_inventario_v_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),
	('nb_inventario_v_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),
	('nb_inventario_v_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),
	('nb_inventario_v_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),
	('nb_inventario_v_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),
	('nb_inventario_v_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),
	('nb_inventario_v_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),
	('nb_inventario_v_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),
	('nb_inventario_v_pg',1,0,1,'Home','home','fa fa-home','N'),
	('nb_proveedores_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),
	('nb_inventario_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),
	('nb_inventario_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('nb_inventario_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('nb_inventario_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),
	('nb_inventario_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('nb_inventario_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('nb_inventario_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('nb_inventario_pg',22,20,2,'Facturacion Mensual','nb_reporte_2_pg','fa fa-bar-chart','N'),
	('nb_inventario_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),
	('nb_inventario_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),
	('nb_inventario_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),
	('nb_inventario_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),
	('nb_inventario_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),
	('nb_inventario_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),
	('nb_inventario_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),
	('nb_inventario_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),
	('nb_inventario_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),
	('nb_inventario_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),
	('nb_inventario_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),
	('nb_inventario_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),
	('nb_inventario_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),
	('nb_inventario_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),
	('nb_inventario_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),
	('nb_inventario_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),
	('nb_inventario_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),
	('nb_inventario_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),
	('nb_inventario_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),
	('nb_inventario_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),
	('nb_inventario_pg',1,0,1,'Home','home','fa fa-home','N'),
	('nb_proveedores_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),
	('nb_facturacion_v_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),
	('nb_facturacion_v_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('nb_facturacion_v_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('nb_facturacion_v_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),
	('nb_facturacion_v_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('nb_facturacion_v_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('nb_facturacion_v_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('nb_facturacion_v_pg',22,20,2,'Facturacion Mensual','nb_reporte_2_pg','fa fa-bar-chart','N'),
	('nb_facturacion_v_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),
	('nb_facturacion_v_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),
	('nb_facturacion_v_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),
	('nb_facturacion_v_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),
	('nb_facturacion_v_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),
	('nb_facturacion_v_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),
	('nb_facturacion_v_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),
	('nb_facturacion_v_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),
	('nb_facturacion_v_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),
	('nb_facturacion_v_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),
	('nb_facturacion_v_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),
	('nb_facturacion_v_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),
	('nb_facturacion_v_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),
	('nb_facturacion_v_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),
	('nb_facturacion_v_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),
	('nb_facturacion_v_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),
	('nb_facturacion_v_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),
	('nb_facturacion_v_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),
	('nb_facturacion_v_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),
	('nb_facturacion_v_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),
	('nb_facturacion_v_pg',1,0,1,'Home','home','fa fa-home','N'),
	('nb_proveedores_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),
	('nb_facturacion_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),
	('nb_facturacion_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('nb_facturacion_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('nb_facturacion_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),
	('nb_facturacion_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('nb_facturacion_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('nb_facturacion_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('nb_facturacion_pg',22,20,2,'Facturacion Mensual','nb_reporte_2_pg','fa fa-bar-chart','N'),
	('nb_facturacion_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),
	('nb_facturacion_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),
	('nb_facturacion_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),
	('nb_facturacion_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),
	('nb_facturacion_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),
	('nb_facturacion_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),
	('nb_facturacion_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),
	('nb_facturacion_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),
	('nb_facturacion_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),
	('nb_facturacion_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),
	('nb_facturacion_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),
	('nb_facturacion_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),
	('nb_facturacion_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),
	('nb_facturacion_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),
	('nb_facturacion_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),
	('nb_facturacion_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),
	('nb_facturacion_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),
	('nb_facturacion_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),
	('nb_facturacion_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),
	('nb_facturacion_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),
	('nb_facturacion_pg',1,0,1,'Home','home','fa fa-home','N'),
	('nb_clientes_v_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),
	('nb_clientes_v_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('nb_clientes_v_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('nb_clientes_v_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),
	('nb_clientes_v_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('nb_clientes_v_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('nb_clientes_v_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('nb_clientes_v_pg',22,20,2,'Facturacion Mensual','nb_reporte_2_pg','fa fa-bar-chart','N'),
	('nb_clientes_v_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),
	('nb_clientes_v_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),
	('nb_clientes_v_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),
	('nb_clientes_v_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),
	('nb_clientes_v_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),
	('nb_clientes_v_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),
	('nb_clientes_v_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),
	('nb_clientes_v_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),
	('nb_clientes_v_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),
	('nb_clientes_v_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),
	('nb_clientes_v_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),
	('nb_clientes_v_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),
	('nb_clientes_v_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),
	('nb_clientes_v_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),
	('nb_clientes_v_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),
	('nb_clientes_v_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),
	('nb_clientes_v_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),
	('nb_clientes_v_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),
	('nb_clientes_v_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),
	('nb_clientes_v_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),
	('nb_clientes_v_pg',1,0,1,'Home','home','fa fa-home','N'),
	('nb_proveedores_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),
	('nb_clientes_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),
	('nb_clientes_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('nb_clientes_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('nb_clientes_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),
	('nb_clientes_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('nb_clientes_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('nb_clientes_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('nb_clientes_pg',22,20,2,'Facturacion Mensual','nb_reporte_2_pg','fa fa-bar-chart','N'),
	('nb_clientes_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),
	('nb_clientes_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),
	('nb_clientes_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),
	('nb_clientes_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),
	('nb_clientes_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),
	('nb_clientes_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),
	('nb_clientes_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),
	('nb_clientes_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),
	('nb_clientes_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),
	('nb_clientes_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),
	('nb_clientes_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),
	('nb_clientes_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),
	('nb_clientes_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),
	('nb_clientes_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),
	('nb_clientes_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),
	('nb_clientes_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),
	('nb_clientes_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),
	('nb_clientes_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),
	('nb_clientes_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),
	('nb_clientes_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),
	('nb_clientes_pg',1,0,1,'Home','home','fa fa-home','N'),
	('nb_proveedores_pg',1,0,1,'Home','home','fa fa-home','N'),
	('nb_users_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),
	('nb_users_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('nb_users_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('nb_users_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),
	('nb_users_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('nb_users_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('nb_users_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('nb_users_pg',22,20,2,'Facturacion Mensual','nb_reporte_2_pg','fa fa-bar-chart','N'),
	('nb_users_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),
	('nb_users_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),
	('nb_users_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),
	('nb_users_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),
	('nb_users_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),
	('nb_users_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),
	('nb_users_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),
	('nb_users_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),
	('nb_users_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),
	('nb_users_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),
	('nb_users_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),
	('nb_users_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),
	('nb_users_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),
	('nb_users_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),
	('nb_users_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),
	('nb_users_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),
	('nb_users_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),
	('nb_users_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),
	('nb_users_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),
	('nb_users_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),
	('nb_users_pg',1,0,1,'Home','home','fa fa-home','N'),
	('home',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),
	('home',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),
	('home',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),
	('home',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),
	('home',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),
	('home',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),
	('nb_loginv_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),
	('nb_loginv_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),
	('nb_loginv_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),
	('nb_loginv_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),
	('nb_loginv_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),
	('nb_loginv_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),
	('nb_loginv_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),
	('nb_loginv_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),
	('nb_loginv_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),
	('nb_loginv_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),
	('nb_loginv_pg',22,20,2,'Facturacion Mensual','nb_reporte_2_pg','fa fa-bar-chart','N'),
	('nb_loginv_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('nb_loginv_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('nb_loginv_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('nb_loginv_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),
	('nb_loginv_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('nb_loginv_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('nb_loginv_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),
	('nb_password_pg',1,0,1,'Home','home','fa fa-home','N'),
	('nb_password_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),
	('nb_password_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),
	('nb_password_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),
	('nb_password_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),
	('nb_password_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),
	('nb_password_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),
	('nb_password_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),
	('nb_password_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),
	('nb_password_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),
	('nb_password_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),
	('nb_password_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),
	('nb_password_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),
	('nb_password_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),
	('nb_password_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),
	('nb_password_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),
	('nb_password_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),
	('nb_password_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),
	('nb_password_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),
	('nb_password_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),
	('nb_password_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),
	('nb_password_pg',22,20,2,'Facturacion Mensual','nb_reporte_2_pg','fa fa-bar-chart','N'),
	('nb_password_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('nb_password_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('nb_password_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('nb_password_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),
	('nb_password_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('nb_password_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('nb_password_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),
	('nb_proveedores_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),
	('nb_productos_pg',1,0,1,'Home','home','fa fa-home','N'),
	('nb_productos_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),
	('nb_productos_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),
	('nb_productos_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),
	('nb_productos_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),
	('nb_productos_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),
	('nb_productos_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),
	('nb_productos_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),
	('nb_productos_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),
	('nb_productos_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),
	('nb_productos_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),
	('nb_productos_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),
	('nb_productos_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),
	('nb_productos_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),
	('nb_productos_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),
	('nb_productos_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),
	('nb_productos_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),
	('nb_productos_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),
	('nb_productos_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),
	('nb_productos_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),
	('nb_productos_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),
	('nb_productos_pg',22,20,2,'Facturacion Mensual','nb_reporte_2_pg','fa fa-bar-chart','N'),
	('nb_productos_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('nb_productos_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('nb_productos_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('nb_productos_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),
	('nb_productos_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('nb_productos_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('nb_productos_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),
	('nb_productos_v_pg',1,0,1,'Home','home','fa fa-home','N'),
	('nb_productos_v_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),
	('nb_productos_v_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),
	('nb_productos_v_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),
	('nb_productos_v_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),
	('nb_productos_v_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),
	('nb_productos_v_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),
	('nb_productos_v_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),
	('nb_productos_v_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),
	('nb_productos_v_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),
	('nb_productos_v_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),
	('nb_productos_v_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),
	('nb_productos_v_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),
	('nb_productos_v_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),
	('nb_productos_v_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),
	('nb_productos_v_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),
	('nb_productos_v_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),
	('nb_productos_v_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),
	('nb_productos_v_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),
	('nb_productos_v_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),
	('nb_productos_v_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),
	('nb_productos_v_pg',22,20,2,'Facturacion Mensual','nb_reporte_2_pg','fa fa-bar-chart','N'),
	('nb_productos_v_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('nb_productos_v_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('nb_productos_v_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('nb_productos_v_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),
	('nb_productos_v_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('nb_productos_v_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('nb_productos_v_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),
	('nb_proveedores_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),
	('nb_prueba_pg',1,0,1,'Home','home','fa fa-home','N'),
	('nb_prueba_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),
	('nb_prueba_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),
	('nb_prueba_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),
	('nb_prueba_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),
	('nb_prueba_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),
	('nb_prueba_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),
	('nb_prueba_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),
	('nb_prueba_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),
	('nb_prueba_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),
	('nb_prueba_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),
	('nb_prueba_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),
	('nb_prueba_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),
	('nb_prueba_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),
	('nb_prueba_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),
	('nb_prueba_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),
	('nb_prueba_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),
	('nb_prueba_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),
	('nb_prueba_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),
	('nb_prueba_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),
	('nb_prueba_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),
	('nb_prueba_pg',22,20,2,'Facturacion Mensual','nb_reporte_2_pg','fa fa-bar-chart','N'),
	('nb_prueba_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('nb_prueba_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('nb_prueba_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('nb_prueba_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),
	('nb_prueba_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('nb_prueba_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('nb_prueba_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),
	('nb_reporte_1_pg',1,0,1,'Home','home','fa fa-home','N'),
	('nb_reporte_1_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),
	('nb_reporte_1_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),
	('nb_reporte_1_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),
	('nb_reporte_1_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),
	('nb_reporte_1_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),
	('nb_reporte_1_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),
	('nb_reporte_1_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),
	('nb_reporte_1_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),
	('nb_reporte_1_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),
	('nb_reporte_1_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),
	('nb_reporte_1_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),
	('nb_reporte_1_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),
	('nb_reporte_1_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),
	('nb_reporte_1_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),
	('nb_reporte_1_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),
	('nb_reporte_1_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),
	('nb_reporte_1_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),
	('nb_reporte_1_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),
	('nb_reporte_1_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),
	('nb_reporte_1_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),
	('nb_reporte_1_pg',22,20,2,'Facturacion Mensual','nb_reporte_2_pg','fa fa-bar-chart','N'),
	('nb_reporte_1_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('nb_reporte_1_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('nb_reporte_1_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('nb_reporte_1_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),
	('nb_reporte_1_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('nb_reporte_1_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('nb_reporte_1_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),
	('nb_proveedores_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),
	('nb_reporte_2_pg',1,0,1,'Home','home','fa fa-home','N'),
	('nb_reporte_2_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),
	('nb_reporte_2_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),
	('nb_reporte_2_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),
	('nb_reporte_2_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),
	('nb_reporte_2_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),
	('nb_reporte_2_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),
	('nb_reporte_2_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),
	('nb_reporte_2_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),
	('nb_reporte_2_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),
	('nb_reporte_2_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),
	('nb_reporte_2_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),
	('nb_reporte_2_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),
	('nb_reporte_2_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),
	('nb_reporte_2_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),
	('nb_reporte_2_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),
	('nb_reporte_2_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),
	('nb_reporte_2_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),
	('nb_reporte_2_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),
	('nb_reporte_2_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),
	('nb_reporte_2_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),
	('nb_reporte_2_pg',22,20,2,'Facturacion Mensual','nb_reporte_2_pg','fa fa-bar-chart','N'),
	('nb_reporte_2_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('nb_reporte_2_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('nb_reporte_2_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('nb_reporte_2_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),
	('nb_reporte_2_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('nb_reporte_2_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('nb_reporte_2_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),
	('nb_usersm_pg',1,0,1,'Home','home','fa fa-home','N'),
	('nb_usersm_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),
	('nb_usersm_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),
	('nb_usersm_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),
	('nb_usersm_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),
	('nb_usersm_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),
	('nb_usersm_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),
	('nb_usersm_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),
	('nb_usersm_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),
	('nb_usersm_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),
	('nb_usersm_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),
	('nb_usersm_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),
	('nb_usersm_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),
	('nb_usersm_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),
	('nb_usersm_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),
	('nb_usersm_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),
	('nb_usersm_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),
	('nb_usersm_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),
	('nb_usersm_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),
	('nb_usersm_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),
	('nb_usersm_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),
	('nb_usersm_pg',22,20,2,'Facturacion Mensual','nb_reporte_2_pg','fa fa-bar-chart','N'),
	('nb_usersm_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('nb_usersm_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('nb_usersm_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('nb_usersm_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),
	('nb_usersm_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('nb_usersm_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('nb_usersm_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),
	('nb_proveedores_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),
	('nb_proveedores_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),
	('nb_proveedores_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),
	('nb_proveedores_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),
	('nb_proveedores_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),
	('nb_proveedores_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),
	('nb_proveedores_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),
	('nb_proveedores_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),
	('nb_proveedores_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),
	('nb_proveedores_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),
	('nb_proveedores_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),
	('nb_proveedores_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),
	('nb_proveedores_pg',22,20,2,'Facturacion Mensual','nb_reporte_2_pg','fa fa-bar-chart','N'),
	('nb_proveedores_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('nb_proveedores_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('nb_proveedores_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('nb_proveedores_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),
	('nb_proveedores_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('nb_proveedores_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('nb_proveedores_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),
	('nb_proveedores_pg',30,0,12,'Prueba','nb_prueba_pg','fa fa-cog','N'),
	('nb_proveedores_v_pg',1,0,1,'Home','home','fa fa-home','N'),
	('nb_proveedores_v_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),
	('nb_proveedores_v_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),
	('nb_proveedores_v_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),
	('nb_proveedores_v_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),
	('nb_proveedores_v_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),
	('nb_proveedores_v_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),
	('nb_proveedores_v_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),
	('nb_proveedores_v_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),
	('nb_proveedores_v_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),
	('nb_proveedores_v_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),
	('nb_proveedores_v_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),
	('nb_proveedores_v_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),
	('nb_proveedores_v_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),
	('nb_proveedores_v_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),
	('nb_proveedores_v_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),
	('nb_proveedores_v_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),
	('nb_proveedores_v_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),
	('nb_proveedores_v_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),
	('nb_proveedores_v_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),
	('nb_proveedores_v_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),
	('nb_proveedores_v_pg',22,20,2,'Facturacion Mensual','nb_reporte_2_pg','fa fa-bar-chart','N'),
	('nb_proveedores_v_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('nb_proveedores_v_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('nb_proveedores_v_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('nb_proveedores_v_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),
	('nb_proveedores_v_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('nb_proveedores_v_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('nb_proveedores_v_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),
	('nb_proveedores_v_pg',30,0,12,'Prueba','nb_prueba_pg','fa fa-cog','N'),
	('nb_vendedores_v_pg',1,0,1,'Home','home','fa fa-home','N'),
	('nb_vendedores_v_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),
	('nb_vendedores_v_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),
	('nb_vendedores_v_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),
	('nb_vendedores_v_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),
	('nb_vendedores_v_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),
	('nb_vendedores_v_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),
	('nb_vendedores_v_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),
	('nb_vendedores_v_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),
	('nb_vendedores_v_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),
	('nb_vendedores_v_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),
	('nb_vendedores_v_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),
	('nb_vendedores_v_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),
	('nb_vendedores_v_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),
	('nb_vendedores_v_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),
	('nb_vendedores_v_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),
	('nb_vendedores_v_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),
	('nb_vendedores_v_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),
	('nb_vendedores_v_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),
	('nb_vendedores_v_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),
	('nb_vendedores_v_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),
	('nb_vendedores_v_pg',22,20,2,'Facturacion Mensual','nb_reporte_2_pg','fa fa-bar-chart','N'),
	('nb_vendedores_v_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('nb_vendedores_v_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('nb_vendedores_v_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('nb_vendedores_v_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),
	('nb_vendedores_v_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('nb_vendedores_v_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('nb_vendedores_v_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),
	('nb_vendedores_v_pg',30,0,12,'Prueba','nb_prueba_pg','fa fa-cog','N'),
	('nb_vendedores_pg',1,0,1,'Home','home','fa fa-home','N'),
	('nb_vendedores_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),
	('nb_vendedores_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),
	('nb_vendedores_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),
	('nb_vendedores_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),
	('nb_vendedores_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),
	('nb_vendedores_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),
	('nb_vendedores_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),
	('nb_vendedores_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),
	('nb_vendedores_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),
	('nb_vendedores_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),
	('nb_vendedores_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),
	('nb_vendedores_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),
	('nb_vendedores_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),
	('nb_vendedores_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),
	('nb_vendedores_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),
	('nb_vendedores_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),
	('nb_vendedores_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),
	('nb_vendedores_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),
	('nb_vendedores_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),
	('nb_vendedores_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),
	('nb_vendedores_pg',22,20,2,'Facturacion Mensual','nb_reporte_2_pg','fa fa-bar-chart','N'),
	('nb_vendedores_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('nb_vendedores_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('nb_vendedores_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('nb_vendedores_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),
	('nb_vendedores_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('nb_vendedores_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('nb_vendedores_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),
	('nb_vendedores_pg',30,0,12,'Prueba','nb_prueba_pg','fa fa-cog','N');

/*!40000 ALTER TABLE `nb_navigation_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_option_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_option_tbl`;

CREATE TABLE `nb_option_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_typealpaca_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_renderform_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_action_path` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_action_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_typeaccion_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_method_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_enctype_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_typealpaca_fld`,`nb_id_page_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_option_tbl` WRITE;
/*!40000 ALTER TABLE `nb_option_tbl` DISABLE KEYS */;

INSERT INTO `nb_option_tbl` (`nb_id_page_fld`, `nb_typealpaca_fld`, `nb_renderform_fld`, `nb_action_path`, `nb_action_fld`, `nb_typeaccion_fld`, `nb_method_fld`, `nb_enctype_fld`)
VALUES
	('home','image','false','','','','',''),
	('nb_prueba_pg','table','true','../Events/','nabuSave','2','post',''),
	('nb_clientes_pg','wizard','true','../Events/','nabuSave','0','post',''),
	('nb_facturacion_pg','wizard','TRUE','../Events/','nabuSave','0','post',''),
	('nb_inventario_pg','wizard','TRUE','../Events/','nabuSave','0','post',''),
	('nb_password_pg','wizard','true','../Events/','nabuSave','1','post',''),
	('nb_productos_pg','wizard','TRUE','../Events/','nabuSave','0','post',''),
	('nb_users_pg','wizard','true','../Events/','nabuSave','0','post',''),
	('nb_usuariosm_pg','wizard','true','../Events/','nabuSave','1','post',''),
	('nb_vendedores_pg','wizard','TRUE','../Events/','nabuSave','0','post',''),
	('nb_proveedores_pg','wizard','TRUE','../Events/','nabuSave','0','post','');

/*!40000 ALTER TABLE `nb_option_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_options_buttons_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_options_buttons_tbl`;

CREATE TABLE `nb_options_buttons_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_id_opt_form_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_value_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_title_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_click_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_page_fld`,`nb_id_opt_form_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_options_buttons_tbl` WRITE;
/*!40000 ALTER TABLE `nb_options_buttons_tbl` DISABLE KEYS */;

INSERT INTO `nb_options_buttons_tbl` (`nb_id_page_fld`, `nb_id_opt_form_fld`, `nb_value_fld`, `nb_title_fld`, `nb_click_fld`)
VALUES
	('nb_prueba_pg','submit','Guardar',NULL,NULL);

/*!40000 ALTER TABLE `nb_options_buttons_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_pageattribute_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_pageattribute_tbl`;

CREATE TABLE `nb_pageattribute_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_id_attribute_fld` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`nb_id_page_fld`,`nb_id_attribute_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_pageattribute_tbl` WRITE;
/*!40000 ALTER TABLE `nb_pageattribute_tbl` DISABLE KEYS */;

INSERT INTO `nb_pageattribute_tbl` (`nb_id_page_fld`, `nb_id_attribute_fld`)
VALUES
	('home',1),
	('home',2),
	('home',3),
	('home',4),
	('home',5),
	('home',6),
	('home',8),
	('home',9),
	('home',10),
	('home',12),
	('home',13),
	('home',22),
	('nb_clientes_pg',1),
	('nb_clientes_pg',2),
	('nb_clientes_pg',3),
	('nb_clientes_pg',4),
	('nb_clientes_pg',5),
	('nb_clientes_pg',6),
	('nb_clientes_pg',7),
	('nb_clientes_pg',8),
	('nb_clientes_pg',9),
	('nb_clientes_pg',10),
	('nb_clientes_pg',12),
	('nb_clientes_pg',13),
	('nb_clientes_pg',15),
	('nb_clientes_pg',16),
	('nb_clientes_pg',17),
	('nb_clientes_pg',19),
	('nb_clientes_pg',22),
	('nb_clientes_v_pg',1),
	('nb_clientes_v_pg',2),
	('nb_clientes_v_pg',3),
	('nb_clientes_v_pg',6),
	('nb_clientes_v_pg',9),
	('nb_clientes_v_pg',10),
	('nb_clientes_v_pg',12),
	('nb_clientes_v_pg',13),
	('nb_clientes_v_pg',16),
	('nb_clientes_v_pg',17),
	('nb_clientes_v_pg',18),
	('nb_clientes_v_pg',19),
	('nb_clientes_v_pg',20),
	('nb_facturacion_pg',1),
	('nb_facturacion_pg',2),
	('nb_facturacion_pg',3),
	('nb_facturacion_pg',4),
	('nb_facturacion_pg',5),
	('nb_facturacion_pg',6),
	('nb_facturacion_pg',7),
	('nb_facturacion_pg',8),
	('nb_facturacion_pg',9),
	('nb_facturacion_pg',10),
	('nb_facturacion_pg',12),
	('nb_facturacion_pg',13),
	('nb_facturacion_pg',15),
	('nb_facturacion_pg',16),
	('nb_facturacion_pg',17),
	('nb_facturacion_pg',19),
	('nb_facturacion_pg',22),
	('nb_facturacion_pg',23),
	('nb_facturacion_v_pg',1),
	('nb_facturacion_v_pg',2),
	('nb_facturacion_v_pg',3),
	('nb_facturacion_v_pg',6),
	('nb_facturacion_v_pg',9),
	('nb_facturacion_v_pg',10),
	('nb_facturacion_v_pg',12),
	('nb_facturacion_v_pg',13),
	('nb_facturacion_v_pg',16),
	('nb_facturacion_v_pg',17),
	('nb_facturacion_v_pg',18),
	('nb_facturacion_v_pg',19),
	('nb_facturacion_v_pg',20),
	('nb_inventario_pg',1),
	('nb_inventario_pg',2),
	('nb_inventario_pg',3),
	('nb_inventario_pg',4),
	('nb_inventario_pg',5),
	('nb_inventario_pg',6),
	('nb_inventario_pg',7),
	('nb_inventario_pg',8),
	('nb_inventario_pg',9),
	('nb_inventario_pg',10),
	('nb_inventario_pg',12),
	('nb_inventario_pg',13),
	('nb_inventario_pg',15),
	('nb_inventario_pg',16),
	('nb_inventario_pg',17),
	('nb_inventario_pg',19),
	('nb_inventario_pg',22),
	('nb_inventario_v_pg',1),
	('nb_inventario_v_pg',2),
	('nb_inventario_v_pg',3),
	('nb_inventario_v_pg',6),
	('nb_inventario_v_pg',9),
	('nb_inventario_v_pg',10),
	('nb_inventario_v_pg',12),
	('nb_inventario_v_pg',13),
	('nb_inventario_v_pg',16),
	('nb_inventario_v_pg',17),
	('nb_inventario_v_pg',18),
	('nb_inventario_v_pg',19),
	('nb_inventario_v_pg',20),
	('nb_loginv_pg',1),
	('nb_loginv_pg',2),
	('nb_loginv_pg',3),
	('nb_loginv_pg',6),
	('nb_loginv_pg',9),
	('nb_loginv_pg',10),
	('nb_loginv_pg',12),
	('nb_loginv_pg',13),
	('nb_loginv_pg',16),
	('nb_loginv_pg',17),
	('nb_loginv_pg',18),
	('nb_loginv_pg',19),
	('nb_loginv_pg',20),
	('nb_password_pg',1),
	('nb_password_pg',2),
	('nb_password_pg',3),
	('nb_password_pg',4),
	('nb_password_pg',5),
	('nb_password_pg',6),
	('nb_password_pg',7),
	('nb_password_pg',8),
	('nb_password_pg',9),
	('nb_password_pg',10),
	('nb_password_pg',12),
	('nb_password_pg',13),
	('nb_password_pg',15),
	('nb_password_pg',16),
	('nb_password_pg',17),
	('nb_password_pg',19),
	('nb_password_pg',22),
	('nb_productos_pg',1),
	('nb_productos_pg',2),
	('nb_productos_pg',3),
	('nb_productos_pg',4),
	('nb_productos_pg',5),
	('nb_productos_pg',6),
	('nb_productos_pg',7),
	('nb_productos_pg',8),
	('nb_productos_pg',9),
	('nb_productos_pg',10),
	('nb_productos_pg',12),
	('nb_productos_pg',13),
	('nb_productos_pg',15),
	('nb_productos_pg',16),
	('nb_productos_pg',17),
	('nb_productos_pg',19),
	('nb_productos_pg',22),
	('nb_productos_v_pg',1),
	('nb_productos_v_pg',2),
	('nb_productos_v_pg',3),
	('nb_productos_v_pg',6),
	('nb_productos_v_pg',9),
	('nb_productos_v_pg',10),
	('nb_productos_v_pg',12),
	('nb_productos_v_pg',13),
	('nb_productos_v_pg',16),
	('nb_productos_v_pg',17),
	('nb_productos_v_pg',18),
	('nb_productos_v_pg',19),
	('nb_productos_v_pg',20),
	('nb_proveedores_pg',1),
	('nb_proveedores_pg',2),
	('nb_proveedores_pg',3),
	('nb_proveedores_pg',4),
	('nb_proveedores_pg',5),
	('nb_proveedores_pg',6),
	('nb_proveedores_pg',7),
	('nb_proveedores_pg',8),
	('nb_proveedores_pg',9),
	('nb_proveedores_pg',10),
	('nb_proveedores_pg',12),
	('nb_proveedores_pg',13),
	('nb_proveedores_pg',15),
	('nb_proveedores_pg',16),
	('nb_proveedores_pg',17),
	('nb_proveedores_pg',19),
	('nb_proveedores_pg',22),
	('nb_prueba_pg',1),
	('nb_prueba_pg',2),
	('nb_prueba_pg',3),
	('nb_prueba_pg',4),
	('nb_prueba_pg',5),
	('nb_prueba_pg',6),
	('nb_prueba_pg',7),
	('nb_prueba_pg',8),
	('nb_prueba_pg',9),
	('nb_prueba_pg',10),
	('nb_prueba_pg',12),
	('nb_prueba_pg',13),
	('nb_prueba_pg',14),
	('nb_prueba_pg',15),
	('nb_prueba_pg',16),
	('nb_prueba_pg',22),
	('nb_reporte_1_pg',1),
	('nb_reporte_1_pg',2),
	('nb_reporte_1_pg',3),
	('nb_reporte_1_pg',6),
	('nb_reporte_1_pg',9),
	('nb_reporte_1_pg',10),
	('nb_reporte_1_pg',12),
	('nb_reporte_1_pg',13),
	('nb_reporte_1_pg',16),
	('nb_reporte_1_pg',17),
	('nb_reporte_1_pg',18),
	('nb_reporte_1_pg',19),
	('nb_reporte_1_pg',20),
	('nb_reporte_2_pg',1),
	('nb_reporte_2_pg',2),
	('nb_reporte_2_pg',3),
	('nb_reporte_2_pg',6),
	('nb_reporte_2_pg',9),
	('nb_reporte_2_pg',10),
	('nb_reporte_2_pg',12),
	('nb_reporte_2_pg',13),
	('nb_reporte_2_pg',16),
	('nb_reporte_2_pg',17),
	('nb_reporte_2_pg',18),
	('nb_reporte_2_pg',19),
	('nb_reporte_2_pg',20),
	('nb_usersm_pg',1),
	('nb_usersm_pg',2),
	('nb_usersm_pg',3),
	('nb_usersm_pg',4),
	('nb_usersm_pg',5),
	('nb_usersm_pg',6),
	('nb_usersm_pg',7),
	('nb_usersm_pg',8),
	('nb_usersm_pg',9),
	('nb_usersm_pg',10),
	('nb_usersm_pg',12),
	('nb_usersm_pg',13),
	('nb_usersm_pg',15),
	('nb_usersm_pg',16),
	('nb_usersm_pg',17),
	('nb_usersm_pg',19),
	('nb_usersm_pg',22),
	('nb_users_pg',1),
	('nb_users_pg',2),
	('nb_users_pg',3),
	('nb_users_pg',4),
	('nb_users_pg',5),
	('nb_users_pg',6),
	('nb_users_pg',7),
	('nb_users_pg',8),
	('nb_users_pg',9),
	('nb_users_pg',10),
	('nb_users_pg',12),
	('nb_users_pg',13),
	('nb_users_pg',15),
	('nb_users_pg',16),
	('nb_users_pg',17),
	('nb_users_pg',19),
	('nb_users_pg',22),
	('nb_vendedores_pg',1),
	('nb_vendedores_pg',2),
	('nb_vendedores_pg',3),
	('nb_vendedores_pg',4),
	('nb_vendedores_pg',5),
	('nb_vendedores_pg',6),
	('nb_vendedores_pg',7),
	('nb_vendedores_pg',8),
	('nb_vendedores_pg',9),
	('nb_vendedores_pg',10),
	('nb_vendedores_pg',12),
	('nb_vendedores_pg',13),
	('nb_vendedores_pg',15),
	('nb_vendedores_pg',16),
	('nb_vendedores_pg',17),
	('nb_vendedores_pg',19),
	('nb_vendedores_pg',22);

/*!40000 ALTER TABLE `nb_pageattribute_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_pages_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_pages_tbl`;

CREATE TABLE `nb_pages_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_page_title_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_page_style_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_page_type_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_page_view_pa_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_page_data_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_page_trace_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT 'false',
  PRIMARY KEY (`nb_id_page_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_pages_tbl` WRITE;
/*!40000 ALTER TABLE `nb_pages_tbl` DISABLE KEYS */;

INSERT INTO `nb_pages_tbl` (`nb_id_page_fld`, `nb_page_title_fld`, `nb_page_style_fld`, `nb_page_type_fld`, `nb_page_view_pa_fld`, `nb_page_data_fld`, `nb_page_trace_fld`)
VALUES
	('home','Inicio Administradores',NULL,'alpaca','bootstrap-display',NULL,'false'),
	('nb_clientes_pg','Administracion de Clientes','forms','alpaca','bootstrap-create-horizontal',NULL,'false'),
	('nb_clientes_v_pg','Consulta de Clientes','dataGrids','datagrid',NULL,NULL,'false'),
	('nb_facturacion_pg','Facturacion','forms','alpaca','bootstrap-edit-horizontal',NULL,'false'),
	('nb_facturacion_v_pg','Facturacion','dataGrids','datagrid',NULL,NULL,'false'),
	('nb_inventario_pg','PRUEBA','forms','alpaca','bootstrap-create-horizontal','','false'),
	('nb_inventario_v_pg','Inventario','dataGrids','datagrid',NULL,NULL,'false'),
	('nb_loginv_pg','Usuarios del Sistema','dataGrids','datagrid',NULL,NULL,'false'),
	('nb_password_pg','Cambio de Contrase&#241;a','forms','alpaca','bootstrap-create-horizontal',NULL,'false'),
	('nb_productos_pg','PRUEBA','forms','alpaca','bootstrap-create-horizontal','','false'),
	('nb_productos_v_pg','Consulta Productos','dataGrids','datagrid',NULL,NULL,'false'),
	('nb_prueba_pg','PRUEBA','dataGrids','alpaca','bootstrap-create-horizontal',NULL,'false'),
	('nb_reporte_1_pg','Reporte','dataGrids','datagrid',NULL,NULL,'false'),
	('nb_reporte_2_pg','Reporte','dataGrids','datagrid',NULL,NULL,'false'),
	('nb_usersm_pg','Usuarios del Sistema','forms','alpaca','bootstrap-edit-horizontal',NULL,'false'),
	('nb_users_pg','Usuarios del Sistema','forms','alpaca','bootstrap-create-horizontal',NULL,'false'),
	('nb_vendedores_pg','PRUEBA','forms','alpaca','bootstrap-create-horizontal','','false'),
	('nb_proveedores_pg','PRUEBA','forms','alpaca','bootstrap-create-horizontal','','false');

/*!40000 ALTER TABLE `nb_pages_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_productos_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_productos_tbl`;

CREATE TABLE `nb_productos_tbl` (
  `nb_prod_1_fld` int(11) NOT NULL AUTO_INCREMENT,
  `nb_prod_2_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prod_3_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prod_4_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prod_5_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prod_6_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prod_7_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prod_8_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prod_9_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prod_10_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prod_11_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prod_12_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prod_13_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prod_14_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prod_15_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prod_16_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prod_17_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prod_18_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prod_19_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prod_20_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_prod_1_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;



# Dump of table nb_proveedores_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_proveedores_tbl`;

CREATE TABLE `nb_proveedores_tbl` (
  `nb_prov_1_fld` int(11) NOT NULL AUTO_INCREMENT,
  `nb_prov_2_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prov_3_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prov_4_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prov_5_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prov_6_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prov_7_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prov_8_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prov_9_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prov_10_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prov_11_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prov_12_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prov_13_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prov_14_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prov_15_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prov_16_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prov_17_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prov_18_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prov_19_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prov_20_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_prov_1_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;



# Dump of table nb_pruebadata_vw
# ------------------------------------------------------------

DROP VIEW IF EXISTS `nb_pruebadata_vw`;

CREATE TABLE `nb_pruebadata_vw` (
   `Columna_1` VARCHAR(4) NOT NULL DEFAULT '',
   `Columna_2` VARCHAR(4) NOT NULL DEFAULT '',
   `Columna_3` VARCHAR(4) NOT NULL DEFAULT '',
   `Columna_4` VARCHAR(4) NOT NULL DEFAULT '',
   `Columna_5` VARCHAR(4) NOT NULL DEFAULT '',
   `Columna_6` VARCHAR(4) NOT NULL DEFAULT '',
   `Columna_7` VARCHAR(4) NOT NULL DEFAULT '',
   `Columna_8` VARCHAR(4) NOT NULL DEFAULT ''
) ENGINE=MyISAM;



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
	(1,'ayuda'),
	(1,'home'),
	(1,'login'),
	(1,'nb_clientes_pg'),
	(1,'nb_clientes_v_pg'),
	(1,'nb_facturacion_pg'),
	(1,'nb_facturacion_v_pg'),
	(1,'nb_inventario_pg'),
	(1,'nb_inventario_v_pg'),
	(1,'nb_loginv_pg'),
	(1,'nb_password_pg'),
	(1,'nb_productos_pg'),
	(1,'nb_productos_v_pg'),
	(1,'nb_proveedores_pg'),
	(1,'nb_proveedores_v_pg'),
	(1,'nb_prueba_pg'),
	(1,'nb_reporte_1_pg'),
	(1,'nb_reporte_2_pg'),
	(1,'nb_usersm_pg'),
	(1,'nb_users_pg'),
	(1,'nb_vendedores_pg'),
	(1,'nb_vendedores_v_pg');

/*!40000 ALTER TABLE `nb_role_pag_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_role_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_role_tbl`;

CREATE TABLE `nb_role_tbl` (
  `nb_id_role_fld` int(11) NOT NULL AUTO_INCREMENT,
  `nb_desc_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_role_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_role_tbl` WRITE;
/*!40000 ALTER TABLE `nb_role_tbl` DISABLE KEYS */;

INSERT INTO `nb_role_tbl` (`nb_id_role_fld`, `nb_desc_fld`)
VALUES
	(1,'Administrador');

/*!40000 ALTER TABLE `nb_role_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_schema_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_schema_tbl`;

CREATE TABLE `nb_schema_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `nb_title_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_description_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_type_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_page_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_schema_tbl` WRITE;
/*!40000 ALTER TABLE `nb_schema_tbl` DISABLE KEYS */;

INSERT INTO `nb_schema_tbl` (`nb_id_page_fld`, `nb_title_fld`, `nb_description_fld`, `nb_type_fld`)
VALUES
	('home','',NULL,'object'),
	('nb_clientes_pg','Creacion Clientes',NULL,'object'),
	('nb_facturacion_pg','','','object'),
	('nb_inventario_pg','','','object'),
	('nb_password_pg',NULL,NULL,'object'),
	('nb_productos_pg','','','object'),
	('nb_prueba_pg',NULL,NULL,'array'),
	('nb_usersm_pg',NULL,NULL,'object'),
	('nb_users_pg',NULL,NULL,'object'),
	('nb_vendedores_pg','','','object'),
	('nb_proveedores_pg','','','object');

/*!40000 ALTER TABLE `nb_schema_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_table_fields_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_table_fields_tbl`;

CREATE TABLE `nb_table_fields_tbl` (
  `nb_id_table_fld` varchar(100) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `nb_id_fld` varchar(100) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_type_fld` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_long_fld` int(11) DEFAULT NULL,
  `nb_key_fld` varchar(1) COLLATE latin1_spanish_ci DEFAULT 'N',
  `nb_is_null_fld` varchar(1) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_description_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_fld`,`nb_id_table_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_table_fields_tbl` WRITE;
/*!40000 ALTER TABLE `nb_table_fields_tbl` DISABLE KEYS */;

INSERT INTO `nb_table_fields_tbl` (`nb_id_table_fld`, `nb_id_fld`, `nb_type_fld`, `nb_long_fld`, `nb_key_fld`, `nb_is_null_fld`, `nb_description_fld`)
VALUES
	('nbd_user_tbl','nbd_descr_fld','string',255,'N','',''),
	('nbd_user_tbl','nbd_email_fld','string',255,'Y','',''),
	('nbd_role_user_tbl','nbd_id_user_fld','number',11,'Y','',''),
	('nbd_user_tbl','nbd_id_user_fld','number',11,'Y','',''),
	('nbd_user_tbl','nbd_password_fld','string',255,'N','',''),
	('nb_clientes_tbl','nb_clie_10_fld','string',255,'N','N','NULL'),
	('nb_clientes_tbl','nb_clie_11_fld','string',255,'N','N','NULL'),
	('nb_clientes_tbl','nb_clie_12_fld','string',255,'N','N','NULL'),
	('nb_clientes_tbl','nb_clie_13_fld','string',255,'N','N','NULL'),
	('nb_clientes_tbl','nb_clie_14_fld','string',255,'N','N','NULL'),
	('nb_clientes_tbl','nb_clie_15_fld','string',255,'N','N','NULL'),
	('nb_clientes_tbl','nb_clie_16_fld','string',255,'N','N','NULL'),
	('nb_clientes_tbl','nb_clie_17_fld','string',255,'N','N','NULL'),
	('nb_clientes_tbl','nb_clie_18_fld','string',255,'N','N','NULL'),
	('nb_clientes_tbl','nb_clie_19_fld','string',255,'N','N','NULL'),
	('nb_clientes_tbl','nb_clie_1_fld','string',255,'N','N','NULL'),
	('nb_clientes_tbl','nb_clie_20_fld','string',255,'N','N','NULL'),
	('nb_clientes_tbl','nb_clie_2_fld','string',255,'N','N','NULL'),
	('nb_clientes_tbl','nb_clie_3_fld','string',255,'N','N','NULL'),
	('nb_clientes_tbl','nb_clie_4_fld','string',255,'N','N','NULL'),
	('nb_clientes_tbl','nb_clie_5_fld','string',255,'N','N','NULL'),
	('nb_clientes_tbl','nb_clie_6_fld','string',255,'N','N','NULL'),
	('nb_clientes_tbl','nb_clie_7_fld','string',255,'N','N','NULL'),
	('nb_clientes_tbl','nb_clie_8_fld','string',255,'N','N','NULL'),
	('nb_clientes_tbl','nb_clie_9_fld','string',255,'N','N','NULL'),
	('nbd_user_tbl','nb_estado_fld','number',2,'N','',''),
	('nb_facturacion_tbl','nb_fact_10_fld','string',255,'N','',''),
	('nb_facturacion_tbl','nb_fact_11_fld','string',255,'N','',''),
	('nb_facturacion_tbl','nb_fact_12_fld','string',255,'N','',''),
	('nb_facturacion_tbl','nb_fact_13_fld','string',255,'N','',''),
	('nb_facturacion_tbl','nb_fact_14_fld','string',255,'N','',''),
	('nb_facturacion_tbl','nb_fact_15_fld','string',255,'N','',''),
	('nb_facturacion_tbl','nb_fact_16_fld','string',255,'N','',''),
	('nb_facturacion_tbl','nb_fact_17_fld','string',255,'N','',''),
	('nb_facturacion_tbl','nb_fact_18_fld','string',255,'N','',''),
	('nb_facturacion_tbl','nb_fact_19_fld','string',255,'N','',''),
	('nb_facturacion_tbl','nb_fact_1_fld','string',255,'N','',''),
	('nb_facturacion_tbl','nb_fact_20_fld','string',255,'N','',''),
	('nb_facturacion_tbl','nb_fact_2_fld','string',255,'N','',''),
	('nb_facturacion_tbl','nb_fact_3_fld','string',255,'N','',''),
	('nb_facturacion_tbl','nb_fact_4_fld','string',255,'N','',''),
	('nb_facturacion_tbl','nb_fact_5_fld','string',255,'N','',''),
	('nb_facturacion_tbl','nb_fact_6_fld','string',255,'N','',''),
	('nb_facturacion_tbl','nb_fact_7_fld','string',255,'N','',''),
	('nb_facturacion_tbl','nb_fact_8_fld','string',255,'N','',''),
	('nb_facturacion_tbl','nb_fact_9_fld','string',255,'N','',''),
	('nbd_role_user_tbl','nb_id_role_fld','number',11,'N','',''),
	('nb_inventario_tbl','nb_inve_10_fld','string',255,'N','',''),
	('nb_inventario_tbl','nb_inve_11_fld','string',255,'N','',''),
	('nb_inventario_tbl','nb_inve_12_fld','string',255,'N','',''),
	('nb_inventario_tbl','nb_inve_13_fld','string',255,'N','',''),
	('nb_inventario_tbl','nb_inve_14_fld','string',255,'N','',''),
	('nb_inventario_tbl','nb_inve_15_fld','string',255,'N','',''),
	('nb_inventario_tbl','nb_inve_16_fld','string',255,'N','',''),
	('nb_inventario_tbl','nb_inve_17_fld','string',255,'N','',''),
	('nb_inventario_tbl','nb_inve_18_fld','string',255,'N','',''),
	('nb_inventario_tbl','nb_inve_19_fld','string',255,'N','',''),
	('nb_inventario_tbl','nb_inve_1_fld','string',255,'N','',''),
	('prueba','nb_inve_1_fld','string',255,'N','N','NULL'),
	('nb_inventario_tbl','nb_inve_20_fld','string',255,'N','',''),
	('nb_inventario_tbl','nb_inve_2_fld','string',255,'N','',''),
	('prueba','nb_inve_2_fld','string',255,'N','N','NULL'),
	('nb_inventario_tbl','nb_inve_3_fld','string',255,'N','',''),
	('prueba','nb_inve_3_fld','string',255,'N','N','NULL'),
	('nb_inventario_tbl','nb_inve_4_fld','string',255,'N','',''),
	('prueba','nb_inve_4_fld','string',255,'N','N','NULL'),
	('nb_inventario_tbl','nb_inve_5_fld','string',255,'N','',''),
	('nb_inventario_tbl','nb_inve_6_fld','string',255,'N','',''),
	('nb_inventario_tbl','nb_inve_7_fld','string',255,'N','',''),
	('nb_inventario_tbl','nb_inve_8_fld','string',255,'N','',''),
	('nb_inventario_tbl','nb_inve_9_fld','string',255,'N','',''),
	('nb_productos_tbl','nb_prod_10_fld','string',255,'N','',''),
	('nb_productos_tbl','nb_prod_11_fld','string',255,'N','',''),
	('nb_productos_tbl','nb_prod_12_fld','string',255,'N','',''),
	('nb_productos_tbl','nb_prod_13_fld','string',255,'N','',''),
	('nb_productos_tbl','nb_prod_14_fld','string',255,'N','',''),
	('nb_productos_tbl','nb_prod_15_fld','string',255,'N','',''),
	('nb_productos_tbl','nb_prod_16_fld','string',255,'N','',''),
	('nb_productos_tbl','nb_prod_17_fld','string',255,'N','',''),
	('nb_productos_tbl','nb_prod_18_fld','string',255,'N','',''),
	('nb_productos_tbl','nb_prod_19_fld','string',255,'N','',''),
	('nb_productos_tbl','nb_prod_1_fld','string',255,'N','',''),
	('nb_productos_tbl','nb_prod_20_fld','string',255,'N','',''),
	('nb_productos_tbl','nb_prod_2_fld','string',255,'N','',''),
	('nb_productos_tbl','nb_prod_3_fld','string',255,'N','',''),
	('nb_productos_tbl','nb_prod_4_fld','string',255,'N','',''),
	('nb_productos_tbl','nb_prod_5_fld','string',255,'N','',''),
	('nb_productos_tbl','nb_prod_6_fld','string',255,'N','',''),
	('nb_productos_tbl','nb_prod_7_fld','string',255,'N','',''),
	('nb_productos_tbl','nb_prod_8_fld','string',255,'N','',''),
	('nb_productos_tbl','nb_prod_9_fld','string',255,'N','',''),
	('nb_vendedores_tbl','nb_vend_1_fld','string',255,'N','',''),
	('nb_vendedores_tbl','nb_vend_2_fld','string',255,'N','',''),
	('nb_vendedores_tbl','nb_vend_3_fld','string',255,'N','',''),
	('nb_vendedores_tbl','nb_vend_4_fld','string',255,'N','',''),
	('nb_vendedores_tbl','nb_vend_5_fld','string',255,'N','',''),
	('nb_vendedores_tbl','nb_vend_6_fld','string',255,'N','',''),
	('nb_vendedores_tbl','nb_vend_7_fld','string',255,'N','',''),
	('nb_vendedores_tbl','nb_vend_8_fld','string',255,'N','',''),
	('nb_vendedores_tbl','nb_vend_9_fld','string',255,'N','',''),
	('nb_vendedores_tbl','nb_vend_10_fld','string',255,'N','',''),
	('nb_vendedores_tbl','nb_vend_11_fld','string',255,'N','',''),
	('nb_vendedores_tbl','nb_vend_12_fld','string',255,'N','',''),
	('nb_vendedores_tbl','nb_vend_13_fld','string',255,'N','',''),
	('nb_vendedores_tbl','nb_vend_14_fld','string',255,'N','',''),
	('nb_vendedores_tbl','nb_vend_15_fld','string',255,'N','',''),
	('nb_vendedores_tbl','nb_vend_16_fld','string',255,'N','',''),
	('nb_vendedores_tbl','nb_vend_17_fld','string',255,'N','',''),
	('nb_vendedores_tbl','nb_vend_18_fld','string',255,'N','',''),
	('nb_vendedores_tbl','nb_vend_19_fld','string',255,'N','',''),
	('nb_vendedores_tbl','nb_vend_20_fld','string',255,'N','',''),
	('nb_proveedores_tbl','nb_prov_1_fld','string',255,'N','',''),
	('nb_proveedores_tbl','nb_prov_2_fld','string',255,'N','',''),
	('nb_proveedores_tbl','nb_prov_3_fld','string',255,'N','',''),
	('nb_proveedores_tbl','nb_prov_4_fld','string',255,'N','',''),
	('nb_proveedores_tbl','nb_prov_5_fld','string',255,'N','',''),
	('nb_proveedores_tbl','nb_prov_6_fld','string',255,'N','',''),
	('nb_proveedores_tbl','nb_prov_7_fld','string',255,'N','',''),
	('nb_proveedores_tbl','nb_prov_8_fld','string',255,'N','',''),
	('nb_proveedores_tbl','nb_prov_9_fld','string',255,'N','',''),
	('nb_proveedores_tbl','nb_prov_10_fld','string',255,'N','',''),
	('nb_proveedores_tbl','nb_prov_11_fld','string',255,'N','',''),
	('nb_proveedores_tbl','nb_prov_12_fld','string',255,'N','',''),
	('nb_proveedores_tbl','nb_prov_13_fld','string',255,'N','',''),
	('nb_proveedores_tbl','nb_prov_14_fld','string',255,'N','',''),
	('nb_proveedores_tbl','nb_prov_15_fld','string',255,'N','',''),
	('nb_proveedores_tbl','nb_prov_16_fld','string',255,'N','',''),
	('nb_proveedores_tbl','nb_prov_17_fld','string',255,'N','',''),
	('nb_proveedores_tbl','nb_prov_18_fld','string',255,'N','',''),
	('nb_proveedores_tbl','nb_prov_19_fld','string',255,'N','',''),
	('nb_proveedores_tbl','nb_prov_20_fld','string',255,'N','','');

/*!40000 ALTER TABLE `nb_table_fields_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_tables_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_tables_tbl`;

CREATE TABLE `nb_tables_tbl` (
  `nb_id_fld` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `nb_description_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_tables_tbl` WRITE;
/*!40000 ALTER TABLE `nb_tables_tbl` DISABLE KEYS */;

INSERT INTO `nb_tables_tbl` (`nb_id_fld`, `nb_description_fld`)
VALUES
	('nbd_role_user_tbl','Tabla Roles del sistema'),
	('nbd_user_tbl','Tabla usuarios del sistema'),
	('nb_clientes_tbl','Clientes'),
	('nb_facturacion_tbl','facturacion'),
	('nb_inventario_tbl','inventario'),
	('nb_productos_tbl','productos'),
	('prueba','Inventario'),
	('nb_vendedores_tbl','vendedores'),
	('nb_proveedores_tbl','proveedores');

/*!40000 ALTER TABLE `nb_tables_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_value_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_value_tbl`;

CREATE TABLE `nb_value_tbl` (
  `nb_id_pr_schema_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_id_value_fld` varchar(11) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `nb_value_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_value_fld`,`nb_id_pr_schema_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_value_tbl` WRITE;
/*!40000 ALTER TABLE `nb_value_tbl` DISABLE KEYS */;

INSERT INTO `nb_value_tbl` (`nb_id_pr_schema_fld`, `nb_id_value_fld`, `nb_value_fld`)
VALUES
	('nb_estado_fld','0','Activo'),
	('nb_tipodoc_fld','0','Tarjeta Identidad'),
	('nb_umed_fld','0','Metro'),
	('nb_estado_fld','1','Inactivo'),
	('nb_tipodoc_fld','1','Cedula Ciudadania'),
	('nb_umed_fld','1','Metro 3'),
	('nb_tipodoc_fld','2','NIT'),
	('nb_umed_fld','2','Litro'),
	('nb_umed_fld','3','Kilogramo'),
	('nb_umed_fld','4','Gramo');

/*!40000 ALTER TABLE `nb_value_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_vendedores_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_vendedores_tbl`;

CREATE TABLE `nb_vendedores_tbl` (
  `nb_vend_1_fld` int(11) NOT NULL AUTO_INCREMENT,
  `nb_vend_2_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_vend_3_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_vend_4_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_vend_5_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_vend_6_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_vend_7_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_vend_8_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_vend_9_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_vend_10_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_vend_11_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_vend_12_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_vend_13_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_vend_14_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_vend_15_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_vend_16_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_vend_17_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_vend_18_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_vend_19_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_vend_20_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_vend_1_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;



# Dump of table nb_wizard_bind_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_wizard_bind_tbl`;

CREATE TABLE `nb_wizard_bind_tbl` (
  `nb_id_wizard_bind` int(11) NOT NULL,
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_id_pr_schema_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_id_wizard_step` int(11) DEFAULT NULL,
  `nb_id_wizard_step_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`nb_id_wizard_bind`,`nb_id_page_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_wizard_bind_tbl` WRITE;
/*!40000 ALTER TABLE `nb_wizard_bind_tbl` DISABLE KEYS */;

INSERT INTO `nb_wizard_bind_tbl` (`nb_id_wizard_bind`, `nb_id_page_fld`, `nb_id_pr_schema_fld`, `nb_id_wizard_step`, `nb_id_wizard_step_order`)
VALUES
	(1,'nb_clientes_pg','nb_clie_1_fld',1,1),
	(1,'nb_facturacion_pg','nb_fact_1_fld',1,1),
	(1,'nb_inventario_pg','nb_inve_1_fld',1,1),
	(1,'nb_password_pg','nbd_password_fld',1,2),
	(1,'nb_productos_pg','nb_prod_1_fld',1,1),
	(1,'nb_usersm_pg','nbd_id_user_fldx',1,1),
	(1,'nb_users_pg','nbd_id_user_fld',1,1),
	(2,'nb_clientes_pg','nb_clie_2_fld',1,2),
	(2,'nb_facturacion_pg','nb_fact_2_fld',1,2),
	(2,'nb_inventario_pg','nb_inve_2_fld',1,2),
	(2,'nb_password_pg','nbd_email_fld',1,1),
	(2,'nb_productos_pg','nb_prod_2_fld',1,2),
	(2,'nb_usersm_pg','nbd_email_fldx',1,2),
	(2,'nb_users_pg','nbd_email_fld',1,2),
	(2,'nb_usuariosm_pg','nb_numerodoc_fldx',1,2),
	(3,'nb_clientes_pg','nb_clie_3_fld',1,3),
	(3,'nb_facturacion_pg','nb_fact_3_fld',1,3),
	(3,'nb_inventario_pg','nb_inve_3_fld',1,3),
	(3,'nb_productos_pg','nb_prod_3_fld',1,3),
	(3,'nb_usersm_pg','nbd_descr_fld',1,3),
	(3,'nb_users_pg','nbd_descr_fld',1,3),
	(4,'nb_clientes_pg','nb_clie_4_fld',1,4),
	(4,'nb_facturacion_pg','nb_fact_4_fld',1,4),
	(4,'nb_inventario_pg','nb_inve_4_fld',2,1),
	(4,'nb_productos_pg','nb_prod_4_fld',1,4),
	(4,'nb_usersm_pg','nbd_password_fld',1,4),
	(4,'nb_users_pg','nbd_password_fld',1,4),
	(5,'nb_clientes_pg','nb_clie_5_fld',1,5),
	(5,'nb_facturacion_pg','nb_fact_5_fld',2,1),
	(5,'nb_inventario_pg','nb_inve_5_fld',2,2),
	(5,'nb_productos_pg','nb_prod_5_fld',1,5),
	(6,'nb_clientes_pg','nb_clie_6_fld',1,6),
	(6,'nb_facturacion_pg','nb_fact_6_fld',2,2),
	(6,'nb_inventario_pg','nb_inve_6_fld',2,3),
	(6,'nb_productos_pg','nb_prod_6_fld',2,1),
	(7,'nb_clientes_pg','nb_clie_7_fld',2,1),
	(7,'nb_facturacion_pg','nb_fact_7_fld',2,3),
	(7,'nb_inventario_pg','nb_inve_7_fld',2,4),
	(7,'nb_productos_pg','nb_prod_7_fld',2,2),
	(8,'nb_clientes_pg','nb_clie_8_fld',2,2),
	(8,'nb_facturacion_pg','nb_fact_8_fld',3,1),
	(8,'nb_inventario_pg','nb_inve_8_fld',2,5),
	(8,'nb_productos_pg','nb_prod_8_fld',2,3),
	(9,'nb_clientes_pg','nb_clie_9_fld',2,3),
	(9,'nb_facturacion_pg','nb_fact_9_fld',3,2),
	(9,'nb_inventario_pg','nb_inve_9_fld',2,6),
	(9,'nb_productos_pg','nb_prod_9_fld',2,4),
	(10,'nb_clientes_pg','nb_clie_10_fld',2,4),
	(10,'nb_facturacion_pg','nb_fact_10_fld',3,3),
	(10,'nb_inventario_pg','nb_inve_10_fld',2,7),
	(10,'nb_productos_pg','nb_prod_10_fld',2,5),
	(11,'nb_clientes_pg','nb_clie_11_fld',3,1),
	(11,'nb_facturacion_pg','nb_fact_11_fld',3,4),
	(11,'nb_inventario_pg','nb_inve_11_fld',3,1),
	(11,'nb_productos_pg','nb_prod_11_fld',3,1),
	(12,'nb_clientes_pg','nb_clie_12_fld',3,2),
	(12,'nb_facturacion_pg','nb_fact_12_fld',3,5),
	(12,'nb_inventario_pg','nb_inve_12_fld',3,2),
	(12,'nb_productos_pg','nb_prod_12_fld',3,2),
	(13,'nb_clientes_pg','nb_clie_13_fld',3,3),
	(13,'nb_facturacion_pg','nb_fact_13_fld',3,6),
	(13,'nb_inventario_pg','nb_inve_13_fld',3,3),
	(13,'nb_productos_pg','nb_prod_13_fld',3,3),
	(14,'nb_clientes_pg','nb_clie_14_fld',3,4),
	(14,'nb_facturacion_pg','nb_fact_14_fld',3,7),
	(14,'nb_inventario_pg','nb_inve_14_fld',3,4),
	(14,'nb_productos_pg','nb_prod_14_fld',3,4),
	(15,'nb_clientes_pg','nb_clie_15_fld',3,5),
	(15,'nb_facturacion_pg','nb_fact_15_fld',3,8),
	(15,'nb_inventario_pg','nb_inve_15_fld',3,5),
	(15,'nb_productos_pg','nb_prod_15_fld',3,5),
	(16,'nb_clientes_pg','nb_clie_16_fld',4,1),
	(16,'nb_facturacion_pg','nb_fact_16_fld',4,1),
	(16,'nb_inventario_pg','nb_inve_16_fld',4,1),
	(16,'nb_productos_pg','nb_prod_16_fld',4,1),
	(17,'nb_clientes_pg','nb_clie_17_fld',4,2),
	(17,'nb_facturacion_pg','nb_fact_17_fld',4,2),
	(17,'nb_inventario_pg','nb_inve_17_fld',4,2),
	(17,'nb_productos_pg','nb_prod_17_fld',4,2),
	(18,'nb_clientes_pg','nb_clie_18_fld',4,3),
	(18,'nb_facturacion_pg','nb_fact_18_fld',4,3),
	(18,'nb_inventario_pg','nb_inve_18_fld',4,3),
	(18,'nb_productos_pg','nb_prod_18_fld',4,3),
	(19,'nb_clientes_pg','nb_clie_19_fld',4,4),
	(19,'nb_facturacion_pg','nb_fact_19_fld',4,4),
	(19,'nb_inventario_pg','nb_inve_19_fld',4,4),
	(19,'nb_productos_pg','nb_prod_19_fld',4,4),
	(20,'nb_clientes_pg','nb_clie_20_fld',4,5),
	(20,'nb_facturacion_pg','nb_fact_20_fld',4,5),
	(20,'nb_inventario_pg','nb_inve_20_fld',4,5),
	(20,'nb_productos_pg','nb_prod_20_fld',4,5),
	(1,'nb_vendedores_pg','nb_vend_1_fld',1,1),
	(2,'nb_vendedores_pg','nb_vend_2_fld',1,2),
	(3,'nb_vendedores_pg','nb_vend_3_fld',1,3),
	(4,'nb_vendedores_pg','nb_vend_4_fld',1,4),
	(5,'nb_vendedores_pg','nb_vend_5_fld',1,5),
	(6,'nb_vendedores_pg','nb_vend_6_fld',2,1),
	(7,'nb_vendedores_pg','nb_vend_7_fld',2,2),
	(8,'nb_vendedores_pg','nb_vend_8_fld',2,3),
	(9,'nb_vendedores_pg','nb_vend_9_fld',2,4),
	(10,'nb_vendedores_pg','nb_vend_10_fld',2,5),
	(11,'nb_vendedores_pg','nb_vend_11_fld',3,1),
	(12,'nb_vendedores_pg','nb_vend_12_fld',3,2),
	(13,'nb_vendedores_pg','nb_vend_13_fld',3,3),
	(14,'nb_vendedores_pg','nb_vend_14_fld',3,4),
	(15,'nb_vendedores_pg','nb_vend_15_fld',3,5),
	(16,'nb_vendedores_pg','nb_vend_16_fld',4,1),
	(17,'nb_vendedores_pg','nb_vend_17_fld',4,2),
	(18,'nb_vendedores_pg','nb_vend_18_fld',4,3),
	(19,'nb_vendedores_pg','nb_vend_19_fld',4,4),
	(20,'nb_vendedores_pg','nb_vend_20_fld',4,5),
	(1,'nb_proveedores_pg','nb_prov_1_fld',1,1),
	(2,'nb_proveedores_pg','nb_prov_2_fld',1,2),
	(3,'nb_proveedores_pg','nb_prov_3_fld',1,3),
	(4,'nb_proveedores_pg','nb_prov_4_fld',1,4),
	(5,'nb_proveedores_pg','nb_prov_5_fld',1,5),
	(6,'nb_proveedores_pg','nb_prov_6_fld',2,1),
	(7,'nb_proveedores_pg','nb_prov_7_fld',2,2),
	(8,'nb_proveedores_pg','nb_prov_8_fld',2,3),
	(9,'nb_proveedores_pg','nb_prov_9_fld',2,4),
	(10,'nb_proveedores_pg','nb_prov_10_fld',2,5),
	(11,'nb_proveedores_pg','nb_prov_11_fld',3,1),
	(12,'nb_proveedores_pg','nb_prov_12_fld',3,2),
	(13,'nb_proveedores_pg','nb_prov_13_fld',3,3),
	(14,'nb_proveedores_pg','nb_prov_14_fld',3,4),
	(15,'nb_proveedores_pg','nb_prov_15_fld',3,5),
	(16,'nb_proveedores_pg','nb_prov_16_fld',4,1),
	(17,'nb_proveedores_pg','nb_prov_17_fld',4,2),
	(18,'nb_proveedores_pg','nb_prov_18_fld',4,3),
	(19,'nb_proveedores_pg','nb_prov_19_fld',4,4),
	(20,'nb_proveedores_pg','nb_prov_20_fld',4,5);

/*!40000 ALTER TABLE `nb_wizard_bind_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_wizard_buttons_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_wizard_buttons_tbl`;

CREATE TABLE `nb_wizard_buttons_tbl` (
  `nb_id_wizard_button` int(11) NOT NULL,
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_wizard_button_name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `nb_wizard_button_title` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_wizard_button_validate` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_wizard_button_click` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_wizard_button`,`nb_id_page_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_wizard_buttons_tbl` WRITE;
/*!40000 ALTER TABLE `nb_wizard_buttons_tbl` DISABLE KEYS */;

INSERT INTO `nb_wizard_buttons_tbl` (`nb_id_wizard_button`, `nb_id_page_fld`, `nb_wizard_button_name`, `nb_wizard_button_title`, `nb_wizard_button_validate`, `nb_wizard_button_click`)
VALUES
	(1,'nb_clientes_pg','submit','Guardar',NULL,NULL),
	(1,'nb_facturacion_pg','submit','Guardar','',''),
	(1,'nb_inventario_pg','submit','Guardar','',''),
	(1,'nb_password_pg','submit','Actualizar',NULL,NULL),
	(1,'nb_productos_pg','submit','Guardar','',''),
	(1,'nb_usersm_pg','submit','Actualizar',NULL,NULL),
	(1,'nb_users_pg','submit','Guardar',NULL,NULL),
	(2,'nb_clientes_pg','previous','Atras',NULL,NULL),
	(2,'nb_facturacion_pg','previous','Atras','',''),
	(2,'nb_inventario_pg','previous','Atras','',''),
	(2,'nb_productos_pg','previous','Atras','',''),
	(3,'nb_clientes_pg','next','Siguiente',NULL,NULL),
	(3,'nb_facturacion_pg','next','Siguiente','',''),
	(3,'nb_inventario_pg','next','Siguiente','',''),
	(3,'nb_productos_pg','next','Siguiente','',''),
	(1,'nb_vendedores_pg','submit','Guardar','',''),
	(2,'nb_vendedores_pg','previous','Atras','',''),
	(3,'nb_vendedores_pg','next','Siguiente','',''),
	(1,'nb_proveedores_pg','submit','Guardar','',''),
	(2,'nb_proveedores_pg','previous','Atras','',''),
	(3,'nb_proveedores_pg','next','Siguiente','','');

/*!40000 ALTER TABLE `nb_wizard_buttons_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_wizard_steps_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_wizard_steps_tbl`;

CREATE TABLE `nb_wizard_steps_tbl` (
  `nb_id_wizard_step` int(11) NOT NULL,
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_wizard_step_title` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_wizard_step_desc` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_wizard_step`,`nb_id_page_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_wizard_steps_tbl` WRITE;
/*!40000 ALTER TABLE `nb_wizard_steps_tbl` DISABLE KEYS */;

INSERT INTO `nb_wizard_steps_tbl` (`nb_id_wizard_step`, `nb_id_page_fld`, `nb_wizard_step_title`, `nb_wizard_step_desc`)
VALUES
	(1,'nb_clientes_pg','Datos Basicos','Identificacion'),
	(1,'nb_facturacion_pg','Cliente','Datos Basicos'),
	(1,'nb_inventario_pg','Productos','Ingreso Inventario'),
	(1,'nb_password_pg','Usuarios','Cambio de Contrase&#241;a'),
	(1,'nb_productos_pg','Producto','Detalle'),
	(1,'nb_usersm_pg','Usuarios','Actualizacion Usuarios del Sistemas'),
	(1,'nb_users_pg','Usuarios','Registros Usuarios del Sistemas'),
	(2,'nb_clientes_pg','Datos Contacto','Ubicacion'),
	(2,'nb_facturacion_pg','Cliente','Datos Contacto'),
	(2,'nb_productos_pg','Producto','Precio Venta'),
	(3,'nb_clientes_pg','Otros Datos','Observaciones'),
	(3,'nb_facturacion_pg','Factura','Detalle'),
	(1,'nb_vendedores_pg','Paso 1','Informacion 1'),
	(2,'nb_vendedores_pg','Paso 2','Informacion 2'),
	(3,'nb_vendedores_pg','Paso 3','Informacion 3'),
	(4,'nb_vendedores_pg','Paso 4','Informacion 4'),
	(1,'nb_proveedores_pg','Paso 1','Informacion 1'),
	(2,'nb_proveedores_pg','Paso 2','Informacion 2'),
	(3,'nb_proveedores_pg','Paso 3','Informacion 3'),
	(4,'nb_proveedores_pg','Paso 4','Informacion 4');

/*!40000 ALTER TABLE `nb_wizard_steps_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_wizard_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_wizard_tbl`;

CREATE TABLE `nb_wizard_tbl` (
  `nb_id_wizard` int(11) NOT NULL AUTO_INCREMENT,
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_wizard_title` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_wizard_desc` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_wizard_show_progress` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_wizard`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_wizard_tbl` WRITE;
/*!40000 ALTER TABLE `nb_wizard_tbl` DISABLE KEYS */;

INSERT INTO `nb_wizard_tbl` (`nb_id_wizard`, `nb_id_page_fld`, `nb_wizard_title`, `nb_wizard_desc`, `nb_wizard_show_progress`)
VALUES
	(1,'nb_users_pg','Usuarios',NULL,'true'),
	(2,'nb_usersm_pg','Usuarios',NULL,'true'),
	(3,'nb_password_pg',NULL,NULL,'true'),
	(4,'nb_productos_pg','Productos',NULL,'true'),
	(5,'nb_clientes_pg','Clientes',NULL,'true'),
	(6,'nb_inventario_pg','Inventario',NULL,'true'),
	(7,'nb_facturacion_pg','Facturacion',NULL,'true'),
	(8,'nb_vendedores_pg','','','true'),
	(9,'nb_proveedores_pg','','','true');

/*!40000 ALTER TABLE `nb_wizard_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nbd_role_user_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nbd_role_user_tbl`;

CREATE TABLE `nbd_role_user_tbl` (
  `nbd_id_user_fld` int(11) NOT NULL DEFAULT '0',
  `nb_id_role_fld` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`nb_id_role_fld`,`nbd_id_user_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nbd_role_user_tbl` WRITE;
/*!40000 ALTER TABLE `nbd_role_user_tbl` DISABLE KEYS */;

INSERT INTO `nbd_role_user_tbl` (`nbd_id_user_fld`, `nb_id_role_fld`)
VALUES
	(1,1);

/*!40000 ALTER TABLE `nbd_role_user_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nbd_user_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nbd_user_tbl`;

CREATE TABLE `nbd_user_tbl` (
  `nbd_id_user_fld` int(11) NOT NULL AUTO_INCREMENT,
  `nbd_email_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nbd_descr_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nbd_password_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_estado_fld` int(2) DEFAULT '0',
  PRIMARY KEY (`nbd_id_user_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nbd_user_tbl` WRITE;
/*!40000 ALTER TABLE `nbd_user_tbl` DISABLE KEYS */;

INSERT INTO `nbd_user_tbl` (`nbd_id_user_fld`, `nbd_email_fld`, `nbd_descr_fld`, `nbd_password_fld`, `nb_estado_fld`)
VALUES
	(1,'admin','Usuario Administrador','21232f297a57a5a743894a0e4a801fc3',0);

/*!40000 ALTER TABLE `nbd_user_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table prueba
# ------------------------------------------------------------

DROP TABLE IF EXISTS `prueba`;

CREATE TABLE `prueba` (
  `NB_INVE_1_FLD` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `NB_INVE_2_FLD` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `NB_INVE_3_FLD` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `NB_INVE_4_FLD` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`NB_INVE_1_FLD`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `prueba` WRITE;
/*!40000 ALTER TABLE `prueba` DISABLE KEYS */;

INSERT INTO `prueba` (`NB_INVE_1_FLD`, `NB_INVE_2_FLD`, `NB_INVE_3_FLD`, `NB_INVE_4_FLD`)
VALUES
	('pr1','1','2','3'),
	('pr2','2','4','5'),
	('pr3','5','6','8'),
	('prod','4','5','6'),
	('prod 1','1','2','3'),
	('prod 3','8','9','10'),
	('prod 6','89','89','89'),
	('prod 78','12','4','5');

/*!40000 ALTER TABLE `prueba` ENABLE KEYS */;
UNLOCK TABLES;




# Replace placeholder table for nb_pruebadata_vw with correct view syntax
# ------------------------------------------------------------

DROP TABLE `nb_pruebadata_vw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `nb_pruebadata_vw`
AS SELECT
   'Data' AS `Columna_1`,'Data' AS `Columna_2`,'Data' AS `Columna_3`,'Data' AS `Columna_4`,'Data' AS `Columna_5`,'Data' AS `Columna_6`,'Data' AS `Columna_7`,'Data' AS `Columna_8`
FROM `nb_config_frmwrk_tbl`;


# Replace placeholder table for nb_login_vw with correct view syntax
# ------------------------------------------------------------

DROP TABLE `nb_login_vw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `nb_login_vw`
AS SELECT
   `a`.`nbd_id_user_fld` AS `Id`,
   `a`.`nbd_descr_fld` AS `Usuario`,
   `a`.`nbd_email_fld` AS `Login`,ifnull(`c`.`nb_desc_fld`,'Asignar Role') AS `Role`,ifnull((select `nb_value_tbl`.`nb_value_fld`
FROM `nb_value_tbl` where ((`nb_value_tbl`.`nb_id_pr_schema_fld` = 'nb_estado_fld') and (`nb_value_tbl`.`nb_id_value_fld` = `a`.`nb_estado_fld`))),'Asignar Estado') AS `Estado` from ((`nbd_user_tbl` `a` left join `nbd_role_user_tbl` `b` on((`a`.`nbd_id_user_fld` = `b`.`nbd_id_user_fld`))) left join `nb_role_tbl` `c` on((`b`.`nb_id_role_fld` = `c`.`nb_id_role_fld`)));

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
