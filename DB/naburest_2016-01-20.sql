# ************************************************************
# Sequel Pro SQL dump
# Version 4499
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 10.1.9-MariaDB)
# Database: naburest
# Generation Time: 2016-01-20 20:20:12 +0000
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
	(61,'options','vertical','boolean',NULL);

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
	('NB_INVENTARIO_V_PG',40,'true'),
	('NB_INVENTARIO_V_PG',39,'44'),
	('NB_INVENTARIO_V_PG',38,'true'),
	('NB_INVENTARIO_V_PG',37,'Data'),
	('NB_REPORTE_2_PG',44,'nb_pruebaData_vw'),
	('NB_REPORTE_2_PG',43,'350'),
	('NB_REPORTE_2_PG',41,'true'),
	('NB_REPORTE_2_PG',40,'true'),
	('NB_REPORTE_2_PG',39,'44'),
	('NB_REPORTE_2_PG',38,'true'),
	('NB_REPORTE_2_PG',37,'Data'),
	('NB_REPORTE_1_PG',44,'nb_pruebaData_vw'),
	('NB_REPORTE_1_PG',43,'350'),
	('NB_REPORTE_1_PG',41,'true'),
	('NB_REPORTE_1_PG',40,'true'),
	('NB_REPORTE_1_PG',39,'44'),
	('NB_REPORTE_1_PG',38,'true'),
	('NB_REPORTE_1_PG',37,'Data'),
	('NB_FACTURACION_V_PG',44,'nb_pruebaData_vw'),
	('NB_FACTURACION_V_PG',43,'350'),
	('NB_FACTURACION_V_PG',41,'true'),
	('NB_FACTURACION_V_PG',40,'true'),
	('NB_FACTURACION_V_PG',39,'44'),
	('NB_FACTURACION_V_PG',38,'true'),
	('NB_FACTURACION_V_PG',37,'Data'),
	('NB_PRODUCTOS_V_PG',44,'nb_pruebaData_vw'),
	('NB_PRODUCTOS_V_PG',43,'350'),
	('NB_PRODUCTOS_V_PG',41,'true'),
	('NB_PRODUCTOS_V_PG',40,'true'),
	('NB_PRODUCTOS_V_PG',39,'44'),
	('NB_PRODUCTOS_V_PG',38,'true'),
	('NB_PRODUCTOS_V_PG',37,'Data'),
	('NB_CLIENTES_V_PG',44,'nb_pruebaData_vw'),
	('nb_loginv_pg',37,'Usuarios del Sistema'),
	('nb_loginv_pg',38,'true'),
	('nb_loginv_pg',39,'44'),
	('nb_loginv_pg',40,'true'),
	('nb_loginv_pg',41,'true'),
	('nb_loginv_pg',43,'350'),
	('nb_loginv_pg',44,'nb_login_vw'),
	('NB_CLIENTES_V_PG',43,'350'),
	('NB_CLIENTES_V_PG',41,'true'),
	('NB_CLIENTES_V_PG',40,'true'),
	('NB_CLIENTES_V_PG',39,'44'),
	('NB_CLIENTES_V_PG',38,'true'),
	('NB_CLIENTES_V_PG',37,'Data'),
	('NB_INVENTARIO_V_PG',41,'true'),
	('NB_INVENTARIO_V_PG',43,'350'),
	('NB_INVENTARIO_V_PG',44,'nb_pruebaData_vw');

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
	('nb_loginv_pg',2,45,'Usuario'),
	('nb_loginv_pg',2,46,'Usuario'),
	('nb_loginv_pg',2,47,'true'),
	('nb_loginv_pg',2,48,'true'),
	('nb_loginv_pg',2,54,'center'),
	('nb_loginv_pg',3,45,'Login'),
	('nb_loginv_pg',3,46,'Login'),
	('nb_loginv_pg',3,47,'true'),
	('nb_loginv_pg',3,48,'true'),
	('nb_loginv_pg',1,50,'nbd_id_user_fld={Id}&nbd_email_fld={Login}'),
	('nb_loginv_pg',3,54,'center'),
	('nb_loginv_pg',1,46,'Id'),
	('nb_loginv_pg',1,47,'true'),
	('nb_loginv_pg',1,48,'true'),
	('nb_loginv_pg',1,54,'center'),
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
	('NB_CLIENTES_PG','NB_CLIENTES_TBL','NB_CLIE_10_FLD','NB_CLIE_10_FLD'),
	('NB_CLIENTES_PG','NB_CLIENTES_TBL','NB_CLIE_11_FLD','NB_CLIE_11_FLD'),
	('NB_CLIENTES_PG','NB_CLIENTES_TBL','NB_CLIE_12_FLD','NB_CLIE_12_FLD'),
	('NB_CLIENTES_PG','NB_CLIENTES_TBL','NB_CLIE_13_FLD','NB_CLIE_13_FLD'),
	('NB_CLIENTES_PG','NB_CLIENTES_TBL','NB_CLIE_14_FLD','NB_CLIE_14_FLD'),
	('NB_CLIENTES_PG','NB_CLIENTES_TBL','NB_CLIE_15_FLD','NB_CLIE_15_FLD'),
	('NB_CLIENTES_PG','NB_CLIENTES_TBL','NB_CLIE_16_FLD','NB_CLIE_16_FLD'),
	('NB_CLIENTES_PG','NB_CLIENTES_TBL','NB_CLIE_17_FLD','NB_CLIE_17_FLD'),
	('NB_CLIENTES_PG','NB_CLIENTES_TBL','NB_CLIE_18_FLD','NB_CLIE_18_FLD'),
	('NB_CLIENTES_PG','NB_CLIENTES_TBL','NB_CLIE_19_FLD','NB_CLIE_19_FLD'),
	('NB_CLIENTES_PG','NB_CLIENTES_TBL','NB_CLIE_1_FLD','NB_CLIE_1_FLD'),
	('NB_CLIENTES_PG','NB_CLIENTES_TBL','NB_CLIE_20_FLD','NB_CLIE_20_FLD'),
	('NB_CLIENTES_PG','NB_CLIENTES_TBL','NB_CLIE_2_FLD','NB_CLIE_2_FLD'),
	('NB_CLIENTES_PG','NB_CLIENTES_TBL','NB_CLIE_3_FLD','NB_CLIE_3_FLD'),
	('NB_CLIENTES_PG','NB_CLIENTES_TBL','NB_CLIE_4_FLD','NB_CLIE_4_FLD'),
	('NB_CLIENTES_PG','NB_CLIENTES_TBL','NB_CLIE_5_FLD','NB_CLIE_5_FLD'),
	('NB_CLIENTES_PG','NB_CLIENTES_TBL','NB_CLIE_6_FLD','NB_CLIE_6_FLD'),
	('NB_CLIENTES_PG','NB_CLIENTES_TBL','NB_CLIE_7_FLD','NB_CLIE_7_FLD'),
	('NB_CLIENTES_PG','NB_CLIENTES_TBL','NB_CLIE_8_FLD','NB_CLIE_8_FLD'),
	('NB_CLIENTES_PG','NB_CLIENTES_TBL','NB_CLIE_9_FLD','NB_CLIE_9_FLD'),
	('NB_FACTURACION_PG','NB_FACTURACION_TBL','NB_FACT_10_FLD','NB_FACT_10_FLD'),
	('NB_FACTURACION_PG','NB_FACTURACION_TBL','NB_FACT_11_FLD','NB_FACT_11_FLD'),
	('NB_FACTURACION_PG','NB_FACTURACION_TBL','NB_FACT_12_FLD','NB_FACT_12_FLD'),
	('NB_FACTURACION_PG','NB_FACTURACION_TBL','NB_FACT_13_FLD','NB_FACT_13_FLD'),
	('NB_FACTURACION_PG','NB_FACTURACION_TBL','NB_FACT_14_FLD','NB_FACT_14_FLD'),
	('NB_FACTURACION_PG','NB_FACTURACION_TBL','NB_FACT_15_FLD','NB_FACT_15_FLD'),
	('NB_FACTURACION_PG','NB_FACTURACION_TBL','NB_FACT_16_FLD','NB_FACT_16_FLD'),
	('NB_FACTURACION_PG','NB_FACTURACION_TBL','NB_FACT_17_FLD','NB_FACT_17_FLD'),
	('NB_FACTURACION_PG','NB_FACTURACION_TBL','NB_FACT_18_FLD','NB_FACT_18_FLD'),
	('NB_FACTURACION_PG','NB_FACTURACION_TBL','NB_FACT_19_FLD','NB_FACT_19_FLD'),
	('NB_FACTURACION_PG','NB_FACTURACION_TBL','NB_FACT_1_FLD','NB_FACT_1_FLD'),
	('NB_FACTURACION_PG','NB_FACTURACION_TBL','NB_FACT_20_FLD','NB_FACT_20_FLD'),
	('NB_FACTURACION_PG','NB_FACTURACION_TBL','NB_FACT_2_FLD','NB_FACT_2_FLD'),
	('NB_FACTURACION_PG','NB_FACTURACION_TBL','NB_FACT_3_FLD','NB_FACT_3_FLD'),
	('NB_FACTURACION_PG','NB_FACTURACION_TBL','NB_FACT_4_FLD','NB_FACT_4_FLD'),
	('NB_FACTURACION_PG','NB_FACTURACION_TBL','NB_FACT_5_FLD','NB_FACT_5_FLD'),
	('NB_FACTURACION_PG','NB_FACTURACION_TBL','NB_FACT_6_FLD','NB_FACT_6_FLD'),
	('NB_FACTURACION_PG','NB_FACTURACION_TBL','NB_FACT_7_FLD','NB_FACT_7_FLD'),
	('NB_FACTURACION_PG','NB_FACTURACION_TBL','NB_FACT_8_FLD','NB_FACT_8_FLD'),
	('NB_FACTURACION_PG','NB_FACTURACION_TBL','NB_FACT_9_FLD','NB_FACT_9_FLD'),
	('NB_INVENTARIO_PG','NB_INVENTARIO_TBL','NB_INVE_10_FLD','NB_INVE_10_FLD'),
	('NB_INVENTARIO_PG','NB_INVENTARIO_TBL','NB_INVE_11_FLD','NB_INVE_11_FLD'),
	('NB_INVENTARIO_PG','NB_INVENTARIO_TBL','NB_INVE_12_FLD','NB_INVE_12_FLD'),
	('NB_INVENTARIO_PG','NB_INVENTARIO_TBL','NB_INVE_13_FLD','NB_INVE_13_FLD'),
	('NB_INVENTARIO_PG','NB_INVENTARIO_TBL','NB_INVE_14_FLD','NB_INVE_14_FLD'),
	('NB_INVENTARIO_PG','NB_INVENTARIO_TBL','NB_INVE_15_FLD','NB_INVE_15_FLD'),
	('NB_INVENTARIO_PG','NB_INVENTARIO_TBL','NB_INVE_16_FLD','NB_INVE_16_FLD'),
	('NB_INVENTARIO_PG','NB_INVENTARIO_TBL','NB_INVE_17_FLD','NB_INVE_17_FLD'),
	('NB_INVENTARIO_PG','NB_INVENTARIO_TBL','NB_INVE_18_FLD','NB_INVE_18_FLD'),
	('NB_INVENTARIO_PG','NB_INVENTARIO_TBL','NB_INVE_19_FLD','NB_INVE_19_FLD'),
	('NB_INVENTARIO_PG','NB_INVENTARIO_TBL','NB_INVE_1_FLD','NB_INVE_1_FLD'),
	('NB_INVENTARIO_PG','NB_INVENTARIO_TBL','NB_INVE_20_FLD','NB_INVE_20_FLD'),
	('NB_INVENTARIO_PG','NB_INVENTARIO_TBL','NB_INVE_2_FLD','NB_INVE_2_FLD'),
	('NB_INVENTARIO_PG','NB_INVENTARIO_TBL','NB_INVE_3_FLD','NB_INVE_3_FLD'),
	('NB_INVENTARIO_PG','NB_INVENTARIO_TBL','NB_INVE_4_FLD','NB_INVE_4_FLD'),
	('NB_INVENTARIO_PG','NB_INVENTARIO_TBL','NB_INVE_5_FLD','NB_INVE_5_FLD'),
	('NB_INVENTARIO_PG','NB_INVENTARIO_TBL','NB_INVE_6_FLD','NB_INVE_6_FLD'),
	('NB_INVENTARIO_PG','NB_INVENTARIO_TBL','NB_INVE_7_FLD','NB_INVE_7_FLD'),
	('NB_INVENTARIO_PG','NB_INVENTARIO_TBL','NB_INVE_8_FLD','NB_INVE_8_FLD'),
	('NB_INVENTARIO_PG','NB_INVENTARIO_TBL','NB_INVE_9_FLD','NB_INVE_9_FLD'),
	('nb_password_pg','NBD_ROLE_USER_TBL','nbd_id_user_fld','nbd_id_user_fld'),
	('nb_password_pg','NBD_ROLE_USER_TBL','nb_id_role_fld','nb_id_role_fld'),
	('nb_password_pg','NBD_USER_TBL','nbd_descr_fld','nbd_descr_fld'),
	('nb_password_pg','NBD_USER_TBL','nbd_email_fld','nbd_email_fld'),
	('nb_password_pg','NBD_USER_TBL','nbd_id_user_fld','nbd_id_user_fld'),
	('nb_password_pg','NBD_USER_TBL','nbd_password_fld','nbd_password_fld'),
	('nb_password_pg','NBD_USER_TBL','nb_estado_fld','nb_estado_fld'),
	('NB_PRODUCTOS_PG','NB_PRODUCTOS_TBL','NB_PROD_10_FLD','NB_PROD_10_FLD'),
	('NB_PRODUCTOS_PG','NB_PRODUCTOS_TBL','NB_PROD_11_FLD','NB_PROD_11_FLD'),
	('NB_PRODUCTOS_PG','NB_PRODUCTOS_TBL','NB_PROD_12_FLD','NB_PROD_12_FLD'),
	('NB_PRODUCTOS_PG','NB_PRODUCTOS_TBL','NB_PROD_13_FLD','NB_PROD_13_FLD'),
	('NB_PRODUCTOS_PG','NB_PRODUCTOS_TBL','NB_PROD_14_FLD','NB_PROD_14_FLD'),
	('NB_PRODUCTOS_PG','NB_PRODUCTOS_TBL','NB_PROD_15_FLD','NB_PROD_15_FLD'),
	('NB_PRODUCTOS_PG','NB_PRODUCTOS_TBL','NB_PROD_16_FLD','NB_PROD_16_FLD'),
	('NB_PRODUCTOS_PG','NB_PRODUCTOS_TBL','NB_PROD_17_FLD','NB_PROD_17_FLD'),
	('NB_PRODUCTOS_PG','NB_PRODUCTOS_TBL','NB_PROD_18_FLD','NB_PROD_18_FLD'),
	('NB_PRODUCTOS_PG','NB_PRODUCTOS_TBL','NB_PROD_19_FLD','NB_PROD_19_FLD'),
	('NB_PRODUCTOS_PG','NB_PRODUCTOS_TBL','NB_PROD_1_FLD','NB_PROD_1_FLD'),
	('NB_PRODUCTOS_PG','NB_PRODUCTOS_TBL','NB_PROD_20_FLD','NB_PROD_20_FLD'),
	('NB_PRODUCTOS_PG','NB_PRODUCTOS_TBL','NB_PROD_2_FLD','NB_PROD_2_FLD'),
	('NB_PRODUCTOS_PG','NB_PRODUCTOS_TBL','NB_PROD_3_FLD','NB_PROD_3_FLD'),
	('NB_PRODUCTOS_PG','NB_PRODUCTOS_TBL','NB_PROD_4_FLD','NB_PROD_4_FLD'),
	('NB_PRODUCTOS_PG','NB_PRODUCTOS_TBL','NB_PROD_5_FLD','NB_PROD_5_FLD'),
	('NB_PRODUCTOS_PG','NB_PRODUCTOS_TBL','NB_PROD_6_FLD','NB_PROD_6_FLD'),
	('NB_PRODUCTOS_PG','NB_PRODUCTOS_TBL','NB_PROD_7_FLD','NB_PROD_7_FLD'),
	('NB_PRODUCTOS_PG','NB_PRODUCTOS_TBL','NB_PROD_8_FLD','NB_PROD_8_FLD'),
	('NB_PRODUCTOS_PG','NB_PRODUCTOS_TBL','NB_PROD_9_FLD','NB_PROD_9_FLD'),
	('nb_product_pg','nb_productos_tbl','nb_desc_producto_fld','nb_desc_producto_fld'),
	('nb_product_pg','nb_productos_tbl','nb_id_producto_fld','nb_id_producto_fld'),
	('nb_product_pg','nb_productos_tbl','nb_marc_producto_fld','nb_marc_producto_fld'),
	('NB_PRUEBA_PG','PRUEBA','NB_INVE_1_FLD','NB_INVE_1_FLD'),
	('NB_PRUEBA_PG','PRUEBA','NB_INVE_2_FLD','NB_INVE_2_FLD'),
	('NB_PRUEBA_PG','PRUEBA','NB_INVE_3_FLD','NB_INVE_3_FLD'),
	('NB_PRUEBA_PG','PRUEBA','NB_INVE_4_FLD','NB_INVE_4_FLD'),
	('nb_usersm_pg','NBD_ROLE_USER_TBL','nbd_id_user_fld','nbd_id_user_fld'),
	('nb_usersm_pg','NBD_ROLE_USER_TBL','nb_id_role_fld','nb_id_role_fld'),
	('nb_usersm_pg','NBD_USER_TBL','nbd_descr_fld','nbd_descr_fld'),
	('nb_usersm_pg','NBD_USER_TBL','nbd_email_fld','nbd_email_fld'),
	('nb_usersm_pg','NBD_USER_TBL','nbd_id_user_fld','nbd_id_user_fld'),
	('nb_usersm_pg','NBD_USER_TBL','nbd_password_fld','nbd_password_fld'),
	('nb_usersm_pg','NBD_USER_TBL','nb_estado_fld','nb_estado_fld'),
	('nb_users_pg','NBD_ROLE_USER_TBL','nbd_id_user_fld','nbd_id_user_fld'),
	('nb_users_pg','NBD_ROLE_USER_TBL','nb_id_role_fld','nb_id_role_fld'),
	('nb_users_pg','NBD_USER_TBL','nbd_descr_fld','nbd_descr_fld'),
	('nb_users_pg','NBD_USER_TBL','nbd_email_fld','nbd_email_fld'),
	('nb_users_pg','NBD_USER_TBL','nbd_id_user_fld','nbd_id_user_fld'),
	('nb_users_pg','NBD_USER_TBL','nbd_password_fld','nbd_password_fld'),
	('nb_users_pg','NBD_USER_TBL','nb_estado_fld','nb_estado_fld');

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
	('nb_usersm_pg','nbd_id_user_fld',11,'true'),
	('nb_usersm_pg','nbd_email_fld',24,'Usuario'),
	('nb_usersm_pg','nbd_email_fld',11,'true'),
	('nb_usersm_pg','nbd_email_fld',13,'string'),
	('nb_usersm_pg','nbd_descr_fld',24,'Nombre'),
	('nb_usersm_pg','nbd_descr_fld',11,'true'),
	('nb_usersm_pg','nbd_descr_fld',13,'string'),
	('NB_CLIENTES_PG','NB_CLIE_16_FLD',11,'FALSE'),
	('NB_CLIENTES_PG','NB_CLIE_15_FLD',24,'Campo 15'),
	('NB_CLIENTES_PG','NB_CLIE_15_FLD',13,'string'),
	('NB_CLIENTES_PG','NB_CLIE_15_FLD',11,'FALSE'),
	('NB_CLIENTES_PG','NB_CLIE_14_FLD',24,'Campo 14'),
	('NB_CLIENTES_PG','NB_CLIE_14_FLD',13,'string'),
	('NB_CLIENTES_PG','NB_CLIE_12_FLD',13,'string'),
	('NB_CLIENTES_PG','NB_CLIE_12_FLD',24,'Campo 12'),
	('NB_CLIENTES_PG','NB_CLIE_13_FLD',11,'FALSE'),
	('NB_CLIENTES_PG','NB_CLIE_13_FLD',13,'string'),
	('NB_CLIENTES_PG','NB_CLIE_13_FLD',24,'Campo 13'),
	('NB_CLIENTES_PG','NB_CLIE_14_FLD',11,'FALSE'),
	('NB_FACTURACION_PG','NB_FACT_16_FLD',24,'Campo 16'),
	('NB_FACTURACION_PG','NB_FACT_16_FLD',13,'string'),
	('NB_FACTURACION_PG','NB_FACT_16_FLD',11,'FALSE'),
	('NB_FACTURACION_PG','NB_FACT_15_FLD',24,'Campo 15'),
	('NB_FACTURACION_PG','NB_FACT_15_FLD',13,'string'),
	('NB_FACTURACION_PG','NB_FACT_15_FLD',11,'FALSE'),
	('NB_FACTURACION_PG','NB_FACT_14_FLD',24,'Campo 14'),
	('NB_FACTURACION_PG','NB_FACT_14_FLD',13,'string'),
	('NB_FACTURACION_PG','NB_FACT_14_FLD',11,'FALSE'),
	('NB_FACTURACION_PG','NB_FACT_13_FLD',24,'Campo 13'),
	('NB_FACTURACION_PG','NB_FACT_13_FLD',13,'string'),
	('NB_FACTURACION_PG','NB_FACT_13_FLD',11,'FALSE'),
	('NB_FACTURACION_PG','NB_FACT_12_FLD',24,'Campo 12'),
	('NB_FACTURACION_PG','NB_FACT_12_FLD',11,'FALSE'),
	('NB_FACTURACION_PG','NB_FACT_12_FLD',13,'string'),
	('NB_FACTURACION_PG','NB_FACT_11_FLD',24,'Campo 11'),
	('NB_FACTURACION_PG','NB_FACT_11_FLD',13,'string'),
	('nb_users_pg','nbd_password_fld',11,'true'),
	('NB_FACTURACION_PG','NB_FACT_11_FLD',11,'FALSE'),
	('nb_users_pg','nbd_password_fld',24,'Contrase&#241;a'),
	('nb_users_pg','nbd_descr_fld',24,'Nombre'),
	('nb_users_pg','nbd_descr_fld',11,'true'),
	('nb_users_pg','nbd_password_fld',13,'string'),
	('NB_FACTURACION_PG','NB_FACT_10_FLD',24,'Campo 10'),
	('nb_users_pg','nbd_descr_fld',13,'string'),
	('nb_users_pg','nbd_id_user_fld',24,'Id'),
	('nb_users_pg','nbd_id_user_fld',11,'true'),
	('nb_users_pg','nbd_email_fld',13,'string'),
	('nb_users_pg','nbd_email_fld',24,'Usuario'),
	('nb_users_pg','nbd_email_fld',11,'true'),
	('nb_usersm_pg','nb_id_role_fld',59,'false'),
	('nb_usersm_pg','nb_id_role_fld',58,'Seleccione Role'),
	('nb_usersm_pg','nbd_password_fld',11,'true'),
	('nb_usersm_pg','nbd_password_fld',13,'string'),
	('nb_usersm_pg','nbd_password_fld',24,'Contrase&#241;a'),
	('nb_usersm_pg','nbd_id_user_fld',24,'Id'),
	('nb_usersm_pg','nbd_id_user_fld',13,'string'),
	('NB_FACTURACION_PG','NB_FACT_10_FLD',13,'string'),
	('NB_FACTURACION_PG','NB_FACT_10_FLD',11,'FALSE'),
	('nb_usersm_pg','nb_estado_fld',32,'select'),
	('nb_usersm_pg','nb_estado_fld',24,'Estado'),
	('nb_usersm_pg','nb_id_role_fld',55,'../Events/ValoresCampo.php?campo=role'),
	('nb_usersm_pg','nb_id_role_fld',32,'select'),
	('nb_usersm_pg','nb_id_role_fld',24,'Role'),
	('nb_usersm_pg','nb_id_role_fld',13,'string'),
	('nb_usersm_pg','nb_id_role_fld',11,'true'),
	('nb_usersm_pg','nb_estado_fld',59,'false'),
	('nb_usersm_pg','nb_estado_fld',58,'Seleccione Estado'),
	('nb_users_pg','nbd_id_user_fld',13,'string'),
	('nb_usersm_pg','nb_estado_fld',55,'../Events/ValoresCampo.php?campo=nb_estado_fld'),
	('NB_INVENTARIO_PG','NB_INVE_5_FLD',11,'FALSE'),
	('NB_INVENTARIO_PG','NB_INVE_4_FLD',24,'Campo 4'),
	('home','image',13,'string'),
	('home','image',32,'image'),
	('home','image',35,'bootstrap-display'),
	('NB_INVENTARIO_PG','NB_INVE_4_FLD',13,'string'),
	('NB_INVENTARIO_PG','NB_INVE_4_FLD',11,'FALSE'),
	('NB_INVENTARIO_PG','NB_INVE_3_FLD',24,'Campo 3'),
	('NB_INVENTARIO_PG','NB_INVE_3_FLD',13,'string'),
	('NB_FACTURACION_PG','NB_FACT_9_FLD',24,'Campo 9'),
	('NB_FACTURACION_PG','NB_FACT_9_FLD',11,'FALSE'),
	('NB_FACTURACION_PG','NB_FACT_9_FLD',13,'string'),
	('NB_FACTURACION_PG','NB_FACT_8_FLD',24,'Campo 8'),
	('NB_FACTURACION_PG','NB_FACT_8_FLD',13,'string'),
	('NB_FACTURACION_PG','NB_FACT_8_FLD',11,'FALSE'),
	('NB_FACTURACION_PG','NB_FACT_7_FLD',24,'Campo  7'),
	('NB_FACTURACION_PG','NB_FACT_7_FLD',13,'string'),
	('NB_FACTURACION_PG','NB_FACT_7_FLD',11,'FALSE'),
	('NB_FACTURACION_PG','NB_FACT_6_FLD',24,'Campo  6'),
	('NB_FACTURACION_PG','NB_FACT_6_FLD',11,'FALSE'),
	('NB_FACTURACION_PG','NB_FACT_6_FLD',13,'string'),
	('NB_FACTURACION_PG','NB_FACT_5_FLD',24,'Campo 5'),
	('NB_FACTURACION_PG','NB_FACT_5_FLD',13,'string'),
	('NB_FACTURACION_PG','NB_FACT_5_FLD',11,'FALSE'),
	('NB_FACTURACION_PG','NB_FACT_4_FLD',13,'string'),
	('NB_FACTURACION_PG','NB_FACT_4_FLD',24,'Campo 4'),
	('NB_FACTURACION_PG','NB_FACT_4_FLD',11,'FALSE'),
	('NB_FACTURACION_PG','NB_FACT_3_FLD',24,'Campo 3'),
	('NB_FACTURACION_PG','NB_FACT_3_FLD',13,'string'),
	('NB_FACTURACION_PG','NB_FACT_3_FLD',11,'FALSE'),
	('NB_FACTURACION_PG','NB_FACT_2_FLD',13,'string'),
	('NB_FACTURACION_PG','NB_FACT_2_FLD',24,'Campo 2'),
	('NB_FACTURACION_PG','NB_FACT_1_FLD',24,'Campo 1'),
	('NB_FACTURACION_PG','NB_FACT_2_FLD',11,'FALSE'),
	('NB_FACTURACION_PG','NB_FACT_1_FLD',13,'string'),
	('NB_FACTURACION_PG','NB_FACT_1_FLD',11,'FALSE'),
	('NB_CLIENTES_PG','NB_CLIE_20_FLD',24,'Campo 20'),
	('NB_CLIENTES_PG','NB_CLIE_20_FLD',13,'string'),
	('NB_CLIENTES_PG','NB_CLIE_20_FLD',11,'FALSE'),
	('NB_CLIENTES_PG','NB_CLIE_19_FLD',24,'Campo 19'),
	('NB_CLIENTES_PG','NB_CLIE_19_FLD',13,'string'),
	('NB_CLIENTES_PG','NB_CLIE_19_FLD',11,'FALSE'),
	('nb_users_pg','nb_id_role_fld',11,'true'),
	('nb_users_pg','nb_id_role_fld',58,'Seleccione Role'),
	('nb_users_pg','nb_id_role_fld',59,'false'),
	('nb_users_pg','nb_id_role_fld',13,'string'),
	('nb_users_pg','nb_id_role_fld',24,'Role'),
	('nb_users_pg','nb_id_role_fld',32,'select'),
	('nb_users_pg','nb_estado_fld',11,'true'),
	('nb_users_pg','nb_id_role_fld',55,'../Events/ValoresCampo.php?campo=role'),
	('nb_users_pg','nb_estado_fld',59,'false'),
	('nb_users_pg','nb_estado_fld',58,'Seleccione Estado'),
	('nb_users_pg','nb_estado_fld',13,'string'),
	('nb_users_pg','nb_estado_fld',32,'select'),
	('nb_users_pg','nb_estado_fld',24,'Estado'),
	('nb_users_pg','nb_estado_fld',55,'../Events/ValoresCampo.php?campo=nb_estado_fld'),
	('NB_CLIENTES_PG','NB_CLIE_12_FLD',11,'FALSE'),
	('NB_CLIENTES_PG','NB_CLIE_11_FLD',24,'Campo 11'),
	('NB_CLIENTES_PG','NB_CLIE_11_FLD',13,'string'),
	('NB_CLIENTES_PG','NB_CLIE_11_FLD',11,'FALSE'),
	('NB_CLIENTES_PG','NB_CLIE_10_FLD',24,'Campo 10'),
	('NB_CLIENTES_PG','NB_CLIE_10_FLD',13,'string'),
	('NB_CLIENTES_PG','NB_CLIE_10_FLD',11,'FALSE'),
	('NB_CLIENTES_PG','NB_CLIE_9_FLD',24,'Campo 9'),
	('NB_CLIENTES_PG','NB_CLIE_9_FLD',13,'string'),
	('NB_CLIENTES_PG','NB_CLIE_9_FLD',11,'FALSE'),
	('NB_CLIENTES_PG','NB_CLIE_8_FLD',24,'Campo 8'),
	('NB_CLIENTES_PG','NB_CLIE_8_FLD',13,'string'),
	('NB_CLIENTES_PG','NB_CLIE_8_FLD',11,'FALSE'),
	('NB_CLIENTES_PG','NB_CLIE_7_FLD',13,'string'),
	('NB_CLIENTES_PG','NB_CLIE_7_FLD',24,'Campo  7'),
	('NB_CLIENTES_PG','NB_CLIE_7_FLD',11,'FALSE'),
	('NB_CLIENTES_PG','NB_CLIE_6_FLD',24,'Campo  6'),
	('NB_CLIENTES_PG','NB_CLIE_6_FLD',13,'string'),
	('NB_CLIENTES_PG','NB_CLIE_6_FLD',11,'FALSE'),
	('NB_CLIENTES_PG','NB_CLIE_5_FLD',24,'Campo 5'),
	('NB_CLIENTES_PG','NB_CLIE_5_FLD',13,'string'),
	('NB_CLIENTES_PG','NB_CLIE_5_FLD',11,'FALSE'),
	('NB_CLIENTES_PG','NB_CLIE_4_FLD',13,'string'),
	('NB_CLIENTES_PG','NB_CLIE_4_FLD',24,'Campo 4'),
	('NB_INVENTARIO_PG','NB_INVE_3_FLD',11,'FALSE'),
	('NB_CLIENTES_PG','NB_CLIE_17_FLD',24,'Campo 17'),
	('NB_CLIENTES_PG','NB_CLIE_18_FLD',11,'FALSE'),
	('NB_CLIENTES_PG','NB_CLIE_18_FLD',13,'string'),
	('NB_CLIENTES_PG','NB_CLIE_18_FLD',24,'Campo 18'),
	('NB_INVENTARIO_PG','NB_INVE_2_FLD',24,'Campo 2'),
	('NB_INVENTARIO_PG','NB_INVE_2_FLD',13,'string'),
	('NB_INVENTARIO_PG','NB_INVE_2_FLD',11,'FALSE'),
	('NB_INVENTARIO_PG','NB_INVE_1_FLD',24,'Campo 1'),
	('NB_FACTURACION_PG','NB_FACT_18_FLD',11,'FALSE'),
	('NB_FACTURACION_PG','NB_FACT_17_FLD',24,'Campo 17'),
	('NB_FACTURACION_PG','NB_FACT_17_FLD',13,'string'),
	('NB_FACTURACION_PG','NB_FACT_17_FLD',11,'FALSE'),
	('nb_usersm_pg','nb_estado_fld',13,'string'),
	('NB_INVENTARIO_PG','NB_INVE_1_FLD',13,'string'),
	('nb_usersm_pg','nb_estado_fld',11,'true'),
	('NB_INVENTARIO_PG','NB_INVE_1_FLD',11,'FALSE'),
	('NB_FACTURACION_PG','NB_FACT_20_FLD',24,'Campo 20'),
	('NB_FACTURACION_PG','NB_FACT_20_FLD',13,'string'),
	('NB_FACTURACION_PG','NB_FACT_20_FLD',11,'FALSE'),
	('NB_FACTURACION_PG','NB_FACT_19_FLD',24,'Campo 19'),
	('NB_FACTURACION_PG','NB_FACT_19_FLD',13,'string'),
	('NB_FACTURACION_PG','NB_FACT_19_FLD',11,'FALSE'),
	('NB_FACTURACION_PG','NB_FACT_18_FLD',24,'Campo 18'),
	('NB_FACTURACION_PG','NB_FACT_18_FLD',13,'string'),
	('NB_CLIENTES_PG','NB_CLIE_17_FLD',13,'string'),
	('NB_CLIENTES_PG','NB_CLIE_17_FLD',11,'FALSE'),
	('NB_CLIENTES_PG','NB_CLIE_16_FLD',24,'Campo 16'),
	('NB_CLIENTES_PG','NB_CLIE_16_FLD',13,'string'),
	('NB_CLIENTES_PG','NB_CLIE_4_FLD',11,'FALSE'),
	('NB_CLIENTES_PG','NB_CLIE_3_FLD',11,'FALSE'),
	('NB_CLIENTES_PG','NB_CLIE_3_FLD',13,'string'),
	('NB_CLIENTES_PG','NB_CLIE_3_FLD',24,'Campo 3'),
	('NB_CLIENTES_PG','NB_CLIE_2_FLD',24,'Campo 2'),
	('NB_CLIENTES_PG','NB_CLIE_2_FLD',13,'string'),
	('NB_CLIENTES_PG','NB_CLIE_2_FLD',11,'FALSE'),
	('NB_CLIENTES_PG','NB_CLIE_1_FLD',24,'Campo 1'),
	('NB_CLIENTES_PG','NB_CLIE_1_FLD',13,'string'),
	('NB_CLIENTES_PG','NB_CLIE_1_FLD',11,'FALSE'),
	('NB_PRODUCTOS_PG','NB_PROD_20_FLD',24,'CAMPO64'),
	('NB_PRODUCTOS_PG','NB_PROD_20_FLD',13,'string'),
	('NB_PRODUCTOS_PG','NB_PROD_20_FLD',11,'FALSE'),
	('NB_PRODUCTOS_PG','NB_PROD_19_FLD',24,'CAMPO61'),
	('NB_PRODUCTOS_PG','NB_PROD_19_FLD',13,'string'),
	('NB_PRODUCTOS_PG','NB_PROD_17_FLD',24,'CAMPO55'),
	('NB_PRODUCTOS_PG','NB_PROD_18_FLD',11,'FALSE'),
	('NB_PRODUCTOS_PG','NB_PROD_18_FLD',13,'string'),
	('NB_PRODUCTOS_PG','NB_PROD_18_FLD',24,'CAMPO58'),
	('NB_PRODUCTOS_PG','NB_PROD_19_FLD',11,'FALSE'),
	('NB_PRODUCTOS_PG','NB_PROD_17_FLD',13,'string'),
	('NB_PRODUCTOS_PG','NB_PROD_17_FLD',11,'FALSE'),
	('NB_PRODUCTOS_PG','NB_PROD_16_FLD',24,'CAMPO52'),
	('NB_PRODUCTOS_PG','NB_PROD_16_FLD',13,'string'),
	('NB_PRODUCTOS_PG','NB_PROD_16_FLD',11,'FALSE'),
	('NB_PRODUCTOS_PG','NB_PROD_15_FLD',24,'CAMPO49'),
	('NB_PRODUCTOS_PG','NB_PROD_15_FLD',11,'FALSE'),
	('NB_PRODUCTOS_PG','NB_PROD_15_FLD',13,'string'),
	('NB_PRODUCTOS_PG','NB_PROD_14_FLD',24,'CAMPO46'),
	('NB_PRODUCTOS_PG','NB_PROD_14_FLD',13,'string'),
	('NB_PRODUCTOS_PG','NB_PROD_14_FLD',11,'FALSE'),
	('NB_PRODUCTOS_PG','NB_PROD_13_FLD',24,'CAMPO43'),
	('NB_PRODUCTOS_PG','NB_PROD_13_FLD',13,'string'),
	('NB_PRODUCTOS_PG','NB_PROD_13_FLD',11,'FALSE'),
	('NB_PRODUCTOS_PG','NB_PROD_12_FLD',24,'CAMPO40'),
	('NB_PRODUCTOS_PG','NB_PROD_12_FLD',13,'string'),
	('NB_PRODUCTOS_PG','NB_PROD_12_FLD',11,'FALSE'),
	('NB_PRODUCTOS_PG','NB_PROD_11_FLD',24,'CAMPO37'),
	('NB_PRODUCTOS_PG','NB_PROD_11_FLD',13,'string'),
	('NB_PRODUCTOS_PG','NB_PROD_11_FLD',11,'FALSE'),
	('NB_PRODUCTOS_PG','NB_PROD_10_FLD',24,'CAMPO34'),
	('NB_PRODUCTOS_PG','NB_PROD_10_FLD',13,'string'),
	('NB_PRODUCTOS_PG','NB_PROD_10_FLD',11,'FALSE'),
	('NB_PRODUCTOS_PG','NB_PROD_9_FLD',11,'FALSE'),
	('NB_PRODUCTOS_PG','NB_PROD_9_FLD',13,'string'),
	('NB_PRODUCTOS_PG','NB_PROD_9_FLD',24,'CAMPO31'),
	('NB_PRODUCTOS_PG','NB_PROD_8_FLD',24,'CAMPO28'),
	('NB_PRODUCTOS_PG','NB_PROD_8_FLD',13,'string'),
	('NB_PRODUCTOS_PG','NB_PROD_8_FLD',11,'FALSE'),
	('NB_PRODUCTOS_PG','NB_PROD_7_FLD',24,'CAMPO25'),
	('NB_PRODUCTOS_PG','NB_PROD_7_FLD',13,'string'),
	('NB_PRODUCTOS_PG','NB_PROD_7_FLD',11,'FALSE'),
	('NB_PRODUCTOS_PG','NB_PROD_6_FLD',24,'CAMPO22'),
	('NB_PRODUCTOS_PG','NB_PROD_6_FLD',13,'string'),
	('NB_PRODUCTOS_PG','NB_PROD_6_FLD',11,'FALSE'),
	('NB_PRODUCTOS_PG','NB_PROD_5_FLD',24,'CAMPO19'),
	('NB_PRODUCTOS_PG','NB_PROD_5_FLD',13,'string'),
	('NB_PRODUCTOS_PG','NB_PROD_5_FLD',11,'FALSE'),
	('NB_PRODUCTOS_PG','NB_PROD_4_FLD',24,'CAMPO16'),
	('NB_PRODUCTOS_PG','NB_PROD_4_FLD',13,'string'),
	('NB_PRODUCTOS_PG','NB_PROD_4_FLD',11,'FALSE'),
	('NB_PRODUCTOS_PG','NB_PROD_3_FLD',24,'CAMPO13'),
	('NB_PRODUCTOS_PG','NB_PROD_3_FLD',13,'string'),
	('NB_PRODUCTOS_PG','NB_PROD_3_FLD',11,'FALSE'),
	('NB_PRODUCTOS_PG','NB_PROD_2_FLD',24,'CAMPO10'),
	('NB_PRODUCTOS_PG','NB_PROD_2_FLD',13,'string'),
	('NB_PRODUCTOS_PG','NB_PROD_2_FLD',11,'FALSE'),
	('NB_PRODUCTOS_PG','NB_PROD_1_FLD',24,'CAMPO7'),
	('NB_PRODUCTOS_PG','NB_PROD_1_FLD',13,'string'),
	('NB_PRODUCTOS_PG','NB_PROD_1_FLD',11,'FALSE'),
	('nb_usersm_pg','nbd_id_user_fldX',11,'true'),
	('nb_usersm_pg','nbd_id_user_fldX',13,'string'),
	('nb_usersm_pg','nbd_id_user_fldX',24,'Id'),
	('nb_usersm_pg','nbd_email_fldX',11,'true'),
	('nb_usersm_pg','nbd_email_fldX',13,'string'),
	('nb_usersm_pg','nbd_email_fldX',24,'Usuario'),
	('nb_usersm_pg','nbd_id_user_fld',36,'true'),
	('nb_usersm_pg','nbd_email_fld',36,'true'),
	('nb_usersm_pg','nbd_id_user_fldX',29,'true'),
	('nb_usersm_pg','nbd_email_fldX',29,'true'),
	('nb_usersm_pg','nbd_password_fld',36,'true'),
	('nb_password_pg','nbd_email_fld',24,'Usuario'),
	('nb_password_pg','nbd_email_fld',11,'true'),
	('nb_password_pg','nbd_email_fld',13,'string'),
	('nb_password_pg','nbd_password_fld',11,'true'),
	('nb_password_pg','nbd_password_fld',24,'Contrase&#241;a'),
	('nb_password_pg','nbd_password_fld',13,'string'),
	('NB_INVENTARIO_PG','NB_INVE_5_FLD',13,'string'),
	('NB_INVENTARIO_PG','NB_INVE_5_FLD',24,'Campo 5'),
	('NB_INVENTARIO_PG','NB_INVE_6_FLD',11,'FALSE'),
	('NB_INVENTARIO_PG','NB_INVE_6_FLD',13,'string'),
	('NB_INVENTARIO_PG','NB_INVE_6_FLD',24,'Campo  6'),
	('NB_INVENTARIO_PG','NB_INVE_7_FLD',11,'FALSE'),
	('NB_INVENTARIO_PG','NB_INVE_7_FLD',13,'string'),
	('NB_INVENTARIO_PG','NB_INVE_7_FLD',24,'Campo  7'),
	('NB_INVENTARIO_PG','NB_INVE_8_FLD',11,'FALSE'),
	('NB_INVENTARIO_PG','NB_INVE_8_FLD',13,'string'),
	('NB_INVENTARIO_PG','NB_INVE_8_FLD',24,'Campo 8'),
	('NB_INVENTARIO_PG','NB_INVE_9_FLD',11,'FALSE'),
	('NB_INVENTARIO_PG','NB_INVE_9_FLD',13,'string'),
	('NB_INVENTARIO_PG','NB_INVE_9_FLD',24,'Campo 9'),
	('NB_INVENTARIO_PG','NB_INVE_10_FLD',11,'FALSE'),
	('NB_INVENTARIO_PG','NB_INVE_10_FLD',13,'string'),
	('NB_INVENTARIO_PG','NB_INVE_10_FLD',24,'Campo 10'),
	('NB_INVENTARIO_PG','NB_INVE_11_FLD',11,'FALSE'),
	('NB_INVENTARIO_PG','NB_INVE_11_FLD',13,'string'),
	('NB_INVENTARIO_PG','NB_INVE_11_FLD',24,'Campo 11'),
	('NB_INVENTARIO_PG','NB_INVE_12_FLD',11,'FALSE'),
	('NB_INVENTARIO_PG','NB_INVE_12_FLD',13,'string'),
	('NB_INVENTARIO_PG','NB_INVE_12_FLD',24,'Campo 12'),
	('NB_INVENTARIO_PG','NB_INVE_13_FLD',11,'FALSE'),
	('NB_INVENTARIO_PG','NB_INVE_13_FLD',13,'string'),
	('NB_INVENTARIO_PG','NB_INVE_13_FLD',24,'Campo 13'),
	('NB_INVENTARIO_PG','NB_INVE_14_FLD',11,'FALSE'),
	('NB_INVENTARIO_PG','NB_INVE_14_FLD',13,'string'),
	('NB_INVENTARIO_PG','NB_INVE_14_FLD',24,'Campo 14'),
	('NB_INVENTARIO_PG','NB_INVE_15_FLD',11,'FALSE'),
	('NB_INVENTARIO_PG','NB_INVE_15_FLD',13,'string'),
	('NB_INVENTARIO_PG','NB_INVE_15_FLD',24,'Campo 15'),
	('NB_INVENTARIO_PG','NB_INVE_16_FLD',11,'FALSE'),
	('NB_INVENTARIO_PG','NB_INVE_16_FLD',13,'string'),
	('NB_INVENTARIO_PG','NB_INVE_16_FLD',24,'Campo 16'),
	('NB_INVENTARIO_PG','NB_INVE_17_FLD',11,'FALSE'),
	('NB_INVENTARIO_PG','NB_INVE_17_FLD',13,'string'),
	('NB_INVENTARIO_PG','NB_INVE_17_FLD',24,'Campo 17'),
	('NB_INVENTARIO_PG','NB_INVE_18_FLD',11,'FALSE'),
	('NB_INVENTARIO_PG','NB_INVE_18_FLD',13,'string'),
	('NB_INVENTARIO_PG','NB_INVE_18_FLD',24,'Campo 18'),
	('NB_INVENTARIO_PG','NB_INVE_19_FLD',11,'FALSE'),
	('NB_INVENTARIO_PG','NB_INVE_19_FLD',13,'string'),
	('NB_INVENTARIO_PG','NB_INVE_19_FLD',24,'Campo 19'),
	('NB_INVENTARIO_PG','NB_INVE_20_FLD',11,'FALSE'),
	('NB_INVENTARIO_PG','NB_INVE_20_FLD',13,'string'),
	('NB_INVENTARIO_PG','NB_INVE_20_FLD',24,'Campo 20'),
	('NB_PRUEBA_PG','NB_INVE_1_FLD',11,'FALSE'),
	('NB_PRUEBA_PG','NB_INVE_1_FLD',13,'string'),
	('NB_PRUEBA_PG','NB_INVE_1_FLD',24,'Campo 1'),
	('NB_PRUEBA_PG','NB_INVE_2_FLD',11,'FALSE'),
	('NB_PRUEBA_PG','NB_INVE_2_FLD',13,'string'),
	('NB_PRUEBA_PG','NB_INVE_2_FLD',24,'Campo 2'),
	('NB_PRUEBA_PG','NB_INVE_3_FLD',11,'FALSE'),
	('NB_PRUEBA_PG','NB_INVE_3_FLD',13,'string'),
	('NB_PRUEBA_PG','NB_INVE_3_FLD',24,'Campo 3'),
	('NB_PRUEBA_PG','NB_INVE_4_FLD',11,'FALSE'),
	('NB_PRUEBA_PG','NB_INVE_4_FLD',13,'string'),
	('NB_PRUEBA_PG','NB_INVE_4_FLD',24,'Campo 4');

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
	(22,'script','../Framework/jquery-ui/jquery-ui.min.js','text/javascript',NULL,'jQuery UI Support');

/*!40000 ALTER TABLE `nb_htmlattribute_tbl` ENABLE KEYS */;
UNLOCK TABLES;


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
	('NB_FACTURACION_PG',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),
	('home',17,0,7,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('NB_CLIENTES_PG',15,14,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),
	('home',8,0,4,'Inventario','nb_inventario_pg','fa fa-archive','N'),
	('home',9,8,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),
	('home',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),
	('home',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),
	('home',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),
	('home',5,0,3,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),
	('home',6,5,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),
	('home',7,5,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),
	('home',10,8,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),
	('home',11,0,5,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),
	('home',12,11,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),
	('home',13,11,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),
	('home',14,0,6,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),
	('home',15,14,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),
	('home',16,14,2,'Facturacion Mensual','nb_reporte_2_pg','fa fa-bar-chart','N'),
	('home',20,0,8,'Configuracion','home','fa fa-cog','N'),
	('home',21,20,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('NB_REPORTE_1_PG',18,17,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('NB_REPORTE_1_PG',17,0,7,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('NB_FACTURACION_PG',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),
	('home',1,0,1,'Home','home','fa fa-home','N'),
	('NB_FACTURACION_PG',1,0,1,'Home','home','fa fa-home','N'),
	('NB_CLIENTES_PG',23,0,9,'Cerrar sesion','login','fa fa-sign-out','N'),
	('NB_CLIENTES_PG',22,20,2,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('NB_CLIENTES_PG',19,17,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('NB_CLIENTES_PG',20,0,8,'Configuracion','home','fa fa-cog','N'),
	('NB_CLIENTES_PG',21,20,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('NB_REPORTE_1_PG',16,14,2,'Facturacion Mensual','nb_reporte_2_pg','fa fa-bar-chart','N'),
	('home',18,17,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('home',19,17,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('home',22,20,2,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('home',23,0,9,'Cerrar sesion','login','fa fa-sign-out','N'),
	('NB_CLIENTES_PG',16,14,2,'Facturacion Mensual','nb_reporte_2_pg','fa fa-bar-chart','N'),
	('NB_CLIENTES_PG',17,0,7,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('NB_CLIENTES_PG',18,17,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('NB_REPORTE_1_PG',15,14,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),
	('NB_REPORTE_1_PG',14,0,6,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),
	('NB_REPORTE_1_PG',13,11,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),
	('NB_REPORTE_1_PG',12,11,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),
	('NB_REPORTE_1_PG',11,0,5,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),
	('NB_REPORTE_1_PG',10,8,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),
	('NB_REPORTE_1_PG',9,8,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),
	('NB_REPORTE_1_PG',8,0,4,'Inventario','nb_inventario_pg','fa fa-archive','N'),
	('NB_REPORTE_1_PG',7,5,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),
	('NB_REPORTE_1_PG',6,5,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),
	('NB_REPORTE_1_PG',5,0,3,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),
	('NB_REPORTE_1_PG',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),
	('NB_REPORTE_1_PG',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),
	('NB_REPORTE_1_PG',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),
	('NB_REPORTE_1_PG',1,0,1,'Home','home','fa fa-home','N'),
	('NB_FACTURACION_V_PG',23,0,9,'Cerrar sesion','login','fa fa-sign-out','N'),
	('NB_FACTURACION_V_PG',22,20,2,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('NB_FACTURACION_V_PG',21,20,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('NB_FACTURACION_V_PG',20,0,8,'Configuracion','home','fa fa-cog','N'),
	('NB_FACTURACION_V_PG',19,17,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('NB_FACTURACION_V_PG',18,17,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('NB_FACTURACION_V_PG',17,0,7,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('NB_FACTURACION_V_PG',16,14,2,'Facturacion Mensual','nb_reporte_2_pg','fa fa-bar-chart','N'),
	('NB_FACTURACION_V_PG',15,14,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),
	('NB_FACTURACION_V_PG',14,0,6,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),
	('NB_FACTURACION_V_PG',13,11,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),
	('NB_FACTURACION_V_PG',12,11,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),
	('NB_FACTURACION_V_PG',11,0,5,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),
	('NB_FACTURACION_V_PG',10,8,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),
	('NB_FACTURACION_V_PG',9,8,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),
	('NB_FACTURACION_V_PG',8,0,4,'Inventario','nb_inventario_pg','fa fa-archive','N'),
	('NB_FACTURACION_V_PG',7,5,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),
	('NB_FACTURACION_V_PG',6,5,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),
	('NB_FACTURACION_V_PG',5,0,3,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),
	('NB_FACTURACION_V_PG',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),
	('NB_CLIENTES_PG',1,0,1,'Home','home','fa fa-home','N'),
	('NB_CLIENTES_PG',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),
	('NB_CLIENTES_PG',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),
	('NB_CLIENTES_PG',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),
	('NB_CLIENTES_PG',5,0,3,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),
	('NB_CLIENTES_PG',6,5,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),
	('NB_CLIENTES_PG',7,5,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),
	('NB_CLIENTES_PG',8,0,4,'Inventario','nb_inventario_pg','fa fa-archive','N'),
	('NB_CLIENTES_PG',9,8,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),
	('NB_CLIENTES_PG',10,8,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),
	('NB_CLIENTES_PG',11,0,5,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),
	('NB_CLIENTES_PG',12,11,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),
	('NB_CLIENTES_PG',13,11,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),
	('NB_CLIENTES_PG',14,0,6,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),
	('NB_FACTURACION_V_PG',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),
	('NB_FACTURACION_V_PG',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),
	('NB_FACTURACION_V_PG',1,0,1,'Home','home','fa fa-home','N'),
	('NB_INVENTARIO_V_PG',23,0,9,'Cerrar sesion','login','fa fa-sign-out','N'),
	('NB_INVENTARIO_V_PG',22,20,2,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('NB_INVENTARIO_V_PG',21,20,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('NB_INVENTARIO_V_PG',6,5,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),
	('NB_INVENTARIO_V_PG',7,5,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),
	('NB_INVENTARIO_V_PG',8,0,4,'Inventario','nb_inventario_pg','fa fa-archive','N'),
	('NB_INVENTARIO_V_PG',9,8,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),
	('NB_INVENTARIO_V_PG',10,8,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),
	('NB_INVENTARIO_V_PG',11,0,5,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),
	('NB_INVENTARIO_V_PG',12,11,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),
	('NB_INVENTARIO_V_PG',13,11,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),
	('NB_INVENTARIO_V_PG',14,0,6,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),
	('NB_INVENTARIO_V_PG',15,14,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),
	('NB_INVENTARIO_V_PG',16,14,2,'Facturacion Mensual','nb_reporte_2_pg','fa fa-bar-chart','N'),
	('NB_INVENTARIO_V_PG',17,0,7,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('NB_INVENTARIO_V_PG',18,17,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('NB_INVENTARIO_V_PG',19,17,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('NB_INVENTARIO_V_PG',20,0,8,'Configuracion','home','fa fa-cog','N'),
	('NB_INVENTARIO_V_PG',5,0,3,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),
	('NB_INVENTARIO_V_PG',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),
	('NB_INVENTARIO_V_PG',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),
	('NB_INVENTARIO_V_PG',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),
	('NB_INVENTARIO_V_PG',1,0,1,'Home','home','fa fa-home','N'),
	('NB_PRODUCTOS_V_PG',23,0,9,'Cerrar sesion','login','fa fa-sign-out','N'),
	('NB_PRODUCTOS_V_PG',22,20,2,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('NB_PRODUCTOS_V_PG',21,20,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('NB_PRODUCTOS_V_PG',20,0,8,'Configuracion','home','fa fa-cog','N'),
	('NB_PRODUCTOS_V_PG',19,17,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('NB_PRODUCTOS_V_PG',18,17,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('NB_PRODUCTOS_V_PG',17,0,7,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('NB_PRODUCTOS_V_PG',16,14,2,'Facturacion Mensual','nb_reporte_2_pg','fa fa-bar-chart','N'),
	('NB_PRODUCTOS_V_PG',15,14,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),
	('NB_PRODUCTOS_V_PG',14,0,6,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),
	('NB_PRODUCTOS_V_PG',13,11,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),
	('NB_PRODUCTOS_V_PG',12,11,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),
	('NB_PRODUCTOS_V_PG',11,0,5,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),
	('NB_PRODUCTOS_V_PG',10,8,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),
	('NB_PRODUCTOS_V_PG',9,8,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),
	('NB_PRODUCTOS_V_PG',8,0,4,'Inventario','nb_inventario_pg','fa fa-archive','N'),
	('NB_PRODUCTOS_V_PG',7,5,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),
	('NB_PRODUCTOS_V_PG',6,5,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),
	('NB_PRODUCTOS_V_PG',5,0,3,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),
	('NB_PRODUCTOS_V_PG',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),
	('NB_PRODUCTOS_V_PG',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),
	('NB_PRODUCTOS_V_PG',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),
	('NB_PRODUCTOS_V_PG',1,0,1,'Home','home','fa fa-home','N'),
	('NB_CLIENTES_V_PG',23,0,9,'Cerrar sesion','login','fa fa-sign-out','N'),
	('NB_CLIENTES_V_PG',22,20,2,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('NB_CLIENTES_V_PG',21,20,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('NB_CLIENTES_V_PG',20,0,8,'Configuracion','home','fa fa-cog','N'),
	('NB_CLIENTES_V_PG',19,17,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('NB_CLIENTES_V_PG',18,17,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('NB_CLIENTES_V_PG',17,0,7,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('NB_CLIENTES_V_PG',16,14,2,'Facturacion Mensual','nb_reporte_2_pg','fa fa-bar-chart','N'),
	('NB_CLIENTES_V_PG',15,14,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),
	('NB_CLIENTES_V_PG',14,0,6,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),
	('NB_CLIENTES_V_PG',13,11,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),
	('NB_CLIENTES_V_PG',12,11,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),
	('NB_CLIENTES_V_PG',11,0,5,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),
	('NB_CLIENTES_V_PG',10,8,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),
	('NB_CLIENTES_V_PG',9,8,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),
	('NB_CLIENTES_V_PG',8,0,4,'Inventario','nb_inventario_pg','fa fa-archive','N'),
	('NB_CLIENTES_V_PG',7,5,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),
	('NB_CLIENTES_V_PG',6,5,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),
	('NB_CLIENTES_V_PG',5,0,3,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),
	('NB_CLIENTES_V_PG',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),
	('NB_CLIENTES_V_PG',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),
	('NB_CLIENTES_V_PG',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),
	('NB_CLIENTES_V_PG',1,0,1,'Home','home','fa fa-home','N'),
	('nb_usersm_pg',23,0,9,'Cerrar sesion','login','fa fa-sign-out','N'),
	('nb_usersm_pg',22,20,2,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('nb_usersm_pg',21,20,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('nb_usersm_pg',20,0,8,'Configuracion','home','fa fa-cog','N'),
	('nb_usersm_pg',19,17,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('nb_usersm_pg',18,17,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('nb_usersm_pg',17,0,7,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('nb_usersm_pg',16,14,2,'Facturacion Mensual','nb_reporte_2_pg','fa fa-bar-chart','N'),
	('nb_usersm_pg',15,14,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),
	('nb_usersm_pg',14,0,6,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),
	('nb_usersm_pg',13,11,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),
	('nb_usersm_pg',12,11,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),
	('nb_usersm_pg',11,0,5,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),
	('nb_usersm_pg',10,8,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),
	('nb_usersm_pg',9,8,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),
	('nb_usersm_pg',8,0,4,'Inventario','nb_inventario_pg','fa fa-archive','N'),
	('nb_usersm_pg',7,5,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),
	('nb_usersm_pg',6,5,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),
	('nb_usersm_pg',5,0,3,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),
	('nb_usersm_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),
	('nb_usersm_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),
	('nb_usersm_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),
	('nb_usersm_pg',1,0,1,'Home','home','fa fa-home','N'),
	('NB_PRODUCTOS_PG',23,0,9,'Cerrar sesion','login','fa fa-sign-out','N'),
	('NB_PRODUCTOS_PG',22,20,2,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('NB_PRODUCTOS_PG',21,20,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('NB_PRODUCTOS_PG',20,0,8,'Configuracion','home','fa fa-cog','N'),
	('NB_PRODUCTOS_PG',19,17,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('NB_PRODUCTOS_PG',18,17,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('NB_PRODUCTOS_PG',17,0,7,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('NB_PRODUCTOS_PG',16,14,2,'Facturacion Mensual','nb_reporte_2_pg','fa fa-bar-chart','N'),
	('NB_PRODUCTOS_PG',15,14,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),
	('NB_PRODUCTOS_PG',14,0,6,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),
	('NB_PRODUCTOS_PG',13,11,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),
	('NB_PRODUCTOS_PG',12,11,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),
	('NB_PRODUCTOS_PG',11,0,5,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),
	('NB_PRODUCTOS_PG',10,8,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),
	('NB_PRODUCTOS_PG',9,8,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),
	('NB_PRODUCTOS_PG',8,0,4,'Inventario','nb_inventario_pg','fa fa-archive','N'),
	('NB_PRODUCTOS_PG',7,5,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),
	('NB_PRODUCTOS_PG',6,5,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),
	('NB_PRODUCTOS_PG',5,0,3,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),
	('NB_PRODUCTOS_PG',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),
	('NB_PRODUCTOS_PG',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),
	('NB_PRODUCTOS_PG',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),
	('NB_PRODUCTOS_PG',1,0,1,'Home','home','fa fa-home','N'),
	('nb_password_pg',23,0,9,'Cerrar sesion','login','fa fa-sign-out','N'),
	('nb_password_pg',22,20,2,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('nb_password_pg',21,20,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('nb_password_pg',20,0,8,'Configuracion','home','fa fa-cog','N'),
	('nb_password_pg',19,17,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('nb_password_pg',18,17,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('nb_password_pg',17,0,7,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('nb_password_pg',16,14,2,'Facturacion Mensual','nb_reporte_2_pg','fa fa-bar-chart','N'),
	('nb_password_pg',15,14,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),
	('nb_password_pg',14,0,6,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),
	('nb_password_pg',13,11,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),
	('nb_password_pg',12,11,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),
	('nb_password_pg',11,0,5,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),
	('nb_password_pg',10,8,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),
	('nb_password_pg',9,8,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),
	('nb_password_pg',8,0,4,'Inventario','nb_inventario_pg','fa fa-archive','N'),
	('nb_password_pg',7,5,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),
	('nb_password_pg',6,5,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),
	('nb_password_pg',5,0,3,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),
	('nb_password_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),
	('nb_password_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),
	('nb_password_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),
	('nb_password_pg',1,0,1,'Home','home','fa fa-home','N'),
	('nb_loginv_pg',23,0,9,'Cerrar sesion','login','fa fa-sign-out','N'),
	('nb_loginv_pg',22,20,2,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('nb_loginv_pg',21,20,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('nb_loginv_pg',20,0,8,'Configuracion','home','fa fa-cog','N'),
	('nb_loginv_pg',19,17,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('nb_loginv_pg',18,17,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('nb_loginv_pg',17,0,7,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('nb_loginv_pg',16,14,2,'Facturacion Mensual','nb_reporte_2_pg','fa fa-bar-chart','N'),
	('nb_loginv_pg',15,14,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),
	('nb_loginv_pg',14,0,6,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),
	('nb_loginv_pg',13,11,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),
	('nb_loginv_pg',12,11,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),
	('nb_loginv_pg',11,0,5,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),
	('nb_loginv_pg',10,8,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),
	('nb_loginv_pg',9,8,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),
	('nb_loginv_pg',8,0,4,'Inventario','nb_inventario_pg','fa fa-archive','N'),
	('nb_loginv_pg',7,5,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),
	('nb_loginv_pg',6,5,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),
	('nb_loginv_pg',5,0,3,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),
	('nb_loginv_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),
	('nb_loginv_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),
	('nb_loginv_pg',1,0,1,'Home','home','fa fa-home','N'),
	('nb_loginv_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),
	('NB_INVENTARIO_PG',23,0,9,'Cerrar sesion','login','fa fa-sign-out','N'),
	('NB_INVENTARIO_PG',22,20,2,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('NB_INVENTARIO_PG',21,20,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('NB_INVENTARIO_PG',20,0,8,'Configuracion','home','fa fa-cog','N'),
	('NB_INVENTARIO_PG',19,17,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('NB_INVENTARIO_PG',18,17,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('NB_INVENTARIO_PG',17,0,7,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('NB_INVENTARIO_PG',16,14,2,'Facturacion Mensual','nb_reporte_2_pg','fa fa-bar-chart','N'),
	('NB_INVENTARIO_PG',15,14,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),
	('NB_INVENTARIO_PG',14,0,6,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),
	('NB_INVENTARIO_PG',13,11,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),
	('NB_INVENTARIO_PG',12,11,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),
	('NB_INVENTARIO_PG',11,0,5,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),
	('NB_INVENTARIO_PG',10,8,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),
	('NB_INVENTARIO_PG',9,8,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),
	('NB_INVENTARIO_PG',8,0,4,'Inventario','nb_inventario_pg','fa fa-archive','N'),
	('NB_INVENTARIO_PG',7,5,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),
	('NB_INVENTARIO_PG',6,5,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),
	('NB_INVENTARIO_PG',5,0,3,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),
	('NB_INVENTARIO_PG',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),
	('NB_INVENTARIO_PG',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),
	('NB_INVENTARIO_PG',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),
	('NB_INVENTARIO_PG',1,0,1,'Home','home','fa fa-home','N'),
	('NB_FACTURACION_PG',23,0,9,'Cerrar sesion','login','fa fa-sign-out','N'),
	('NB_FACTURACION_PG',22,20,2,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('NB_FACTURACION_PG',21,20,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('NB_FACTURACION_PG',20,0,8,'Configuracion','home','fa fa-cog','N'),
	('NB_FACTURACION_PG',19,17,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('NB_FACTURACION_PG',18,17,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('NB_FACTURACION_PG',17,0,7,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('NB_FACTURACION_PG',16,14,2,'Facturacion Mensual','nb_reporte_2_pg','fa fa-bar-chart','N'),
	('NB_FACTURACION_PG',15,14,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),
	('NB_FACTURACION_PG',14,0,6,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),
	('NB_FACTURACION_PG',13,11,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),
	('NB_FACTURACION_PG',12,11,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),
	('NB_FACTURACION_PG',11,0,5,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),
	('NB_FACTURACION_PG',10,8,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),
	('NB_FACTURACION_PG',9,8,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),
	('NB_FACTURACION_PG',8,0,4,'Inventario','nb_inventario_pg','fa fa-archive','N'),
	('NB_FACTURACION_PG',7,5,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),
	('NB_FACTURACION_PG',6,5,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),
	('NB_FACTURACION_PG',5,0,3,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),
	('NB_FACTURACION_PG',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),
	('NB_REPORTE_1_PG',19,17,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('NB_REPORTE_1_PG',20,0,8,'Configuracion','home','fa fa-cog','N'),
	('NB_REPORTE_1_PG',21,20,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('NB_REPORTE_1_PG',22,20,2,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('NB_REPORTE_1_PG',23,0,9,'Cerrar sesion','login','fa fa-sign-out','N'),
	('NB_REPORTE_2_PG',1,0,1,'Home','home','fa fa-home','N'),
	('NB_REPORTE_2_PG',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),
	('NB_REPORTE_2_PG',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),
	('NB_REPORTE_2_PG',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),
	('NB_REPORTE_2_PG',5,0,3,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),
	('NB_REPORTE_2_PG',6,5,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),
	('NB_REPORTE_2_PG',7,5,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),
	('NB_REPORTE_2_PG',8,0,4,'Inventario','nb_inventario_pg','fa fa-archive','N'),
	('NB_REPORTE_2_PG',9,8,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),
	('NB_REPORTE_2_PG',10,8,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),
	('NB_REPORTE_2_PG',11,0,5,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),
	('NB_REPORTE_2_PG',12,11,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),
	('NB_REPORTE_2_PG',13,11,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),
	('NB_REPORTE_2_PG',14,0,6,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),
	('NB_REPORTE_2_PG',15,14,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),
	('NB_REPORTE_2_PG',16,14,2,'Facturacion Mensual','nb_reporte_2_pg','fa fa-bar-chart','N'),
	('NB_REPORTE_2_PG',17,0,7,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('NB_REPORTE_2_PG',18,17,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('NB_REPORTE_2_PG',19,17,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('NB_REPORTE_2_PG',20,0,8,'Configuracion','home','fa fa-cog','N'),
	('NB_REPORTE_2_PG',21,20,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('NB_REPORTE_2_PG',22,20,2,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('NB_REPORTE_2_PG',23,0,9,'Cerrar sesion','login','fa fa-sign-out','N'),
	('home',24,0,10,'Prueba','nb_prueba_pg','fa fa-cog','N');

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
	('NB_PRUEBA_PG','table','true','../Events/','nabuSave','2','post',''),
	('nb_users_pg','wizard','true','../Events/','nabuSave','0','post',''),
	('NB_INVENTARIO_PG','wizard','true','../Events/','nabuSave','0','post',''),
	('NB_FACTURACION_PG','wizard','true','../Events/','nabuSave','0','post',''),
	('NB_CLIENTES_PG','wizard','true','../Events/','nabuSave','0','post',''),
	('NB_PRODUCTOS_PG','wizard','true','../Events/','nabuSave','0','post',''),
	('nb_usuariosm_pg','wizard','true','../Events/','nabuSave','1','post',''),
	('nb_password_pg','wizard','true','../Events/','nabuSave','1','post','');

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
	('NB_PRUEBA_PG','submit','Guardar',NULL,NULL);

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
	('NB_CLIENTES_PG',1),
	('NB_CLIENTES_PG',2),
	('NB_CLIENTES_PG',3),
	('NB_CLIENTES_PG',4),
	('NB_CLIENTES_PG',5),
	('NB_CLIENTES_PG',6),
	('NB_CLIENTES_PG',7),
	('NB_CLIENTES_PG',8),
	('NB_CLIENTES_PG',9),
	('NB_CLIENTES_PG',10),
	('NB_CLIENTES_PG',12),
	('NB_CLIENTES_PG',13),
	('NB_CLIENTES_PG',15),
	('NB_CLIENTES_PG',16),
	('NB_CLIENTES_PG',17),
	('NB_CLIENTES_PG',19),
	('NB_CLIENTES_PG',22),
	('NB_CLIENTES_V_PG',1),
	('NB_CLIENTES_V_PG',2),
	('NB_CLIENTES_V_PG',3),
	('NB_CLIENTES_V_PG',6),
	('NB_CLIENTES_V_PG',9),
	('NB_CLIENTES_V_PG',10),
	('NB_CLIENTES_V_PG',12),
	('NB_CLIENTES_V_PG',13),
	('NB_CLIENTES_V_PG',16),
	('NB_CLIENTES_V_PG',17),
	('NB_CLIENTES_V_PG',18),
	('NB_CLIENTES_V_PG',19),
	('NB_CLIENTES_V_PG',20),
	('NB_FACTURACION_PG',1),
	('NB_FACTURACION_PG',2),
	('NB_FACTURACION_PG',3),
	('NB_FACTURACION_PG',4),
	('NB_FACTURACION_PG',5),
	('NB_FACTURACION_PG',6),
	('NB_FACTURACION_PG',7),
	('NB_FACTURACION_PG',8),
	('NB_FACTURACION_PG',9),
	('NB_FACTURACION_PG',10),
	('NB_FACTURACION_PG',12),
	('NB_FACTURACION_PG',13),
	('NB_FACTURACION_PG',15),
	('NB_FACTURACION_PG',16),
	('NB_FACTURACION_PG',17),
	('NB_FACTURACION_PG',19),
	('NB_FACTURACION_PG',22),
	('NB_FACTURACION_V_PG',1),
	('NB_FACTURACION_V_PG',2),
	('NB_FACTURACION_V_PG',3),
	('NB_FACTURACION_V_PG',6),
	('NB_FACTURACION_V_PG',9),
	('NB_FACTURACION_V_PG',10),
	('NB_FACTURACION_V_PG',12),
	('NB_FACTURACION_V_PG',13),
	('NB_FACTURACION_V_PG',16),
	('NB_FACTURACION_V_PG',17),
	('NB_FACTURACION_V_PG',18),
	('NB_FACTURACION_V_PG',19),
	('NB_FACTURACION_V_PG',20),
	('NB_INVENTARIO_PG',1),
	('NB_INVENTARIO_PG',2),
	('NB_INVENTARIO_PG',3),
	('NB_INVENTARIO_PG',4),
	('NB_INVENTARIO_PG',5),
	('NB_INVENTARIO_PG',6),
	('NB_INVENTARIO_PG',7),
	('NB_INVENTARIO_PG',8),
	('NB_INVENTARIO_PG',9),
	('NB_INVENTARIO_PG',10),
	('NB_INVENTARIO_PG',12),
	('NB_INVENTARIO_PG',13),
	('NB_INVENTARIO_PG',15),
	('NB_INVENTARIO_PG',16),
	('NB_INVENTARIO_PG',17),
	('NB_INVENTARIO_PG',19),
	('NB_INVENTARIO_PG',22),
	('NB_INVENTARIO_V_PG',1),
	('NB_INVENTARIO_V_PG',2),
	('NB_INVENTARIO_V_PG',3),
	('NB_INVENTARIO_V_PG',6),
	('NB_INVENTARIO_V_PG',9),
	('NB_INVENTARIO_V_PG',10),
	('NB_INVENTARIO_V_PG',12),
	('NB_INVENTARIO_V_PG',13),
	('NB_INVENTARIO_V_PG',16),
	('NB_INVENTARIO_V_PG',17),
	('NB_INVENTARIO_V_PG',18),
	('NB_INVENTARIO_V_PG',19),
	('NB_INVENTARIO_V_PG',20),
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
	('NB_PRODUCTOS_PG',1),
	('NB_PRODUCTOS_PG',2),
	('NB_PRODUCTOS_PG',3),
	('NB_PRODUCTOS_PG',4),
	('NB_PRODUCTOS_PG',5),
	('NB_PRODUCTOS_PG',6),
	('NB_PRODUCTOS_PG',7),
	('NB_PRODUCTOS_PG',8),
	('NB_PRODUCTOS_PG',9),
	('NB_PRODUCTOS_PG',10),
	('NB_PRODUCTOS_PG',12),
	('NB_PRODUCTOS_PG',13),
	('NB_PRODUCTOS_PG',15),
	('NB_PRODUCTOS_PG',16),
	('NB_PRODUCTOS_PG',17),
	('NB_PRODUCTOS_PG',19),
	('NB_PRODUCTOS_PG',22),
	('NB_PRODUCTOS_V_PG',1),
	('NB_PRODUCTOS_V_PG',2),
	('NB_PRODUCTOS_V_PG',3),
	('NB_PRODUCTOS_V_PG',6),
	('NB_PRODUCTOS_V_PG',9),
	('NB_PRODUCTOS_V_PG',10),
	('NB_PRODUCTOS_V_PG',12),
	('NB_PRODUCTOS_V_PG',13),
	('NB_PRODUCTOS_V_PG',16),
	('NB_PRODUCTOS_V_PG',17),
	('NB_PRODUCTOS_V_PG',18),
	('NB_PRODUCTOS_V_PG',19),
	('NB_PRODUCTOS_V_PG',20),
	('NB_PRUEBA_PG',1),
	('NB_PRUEBA_PG',2),
	('NB_PRUEBA_PG',3),
	('NB_PRUEBA_PG',4),
	('NB_PRUEBA_PG',5),
	('NB_PRUEBA_PG',6),
	('NB_PRUEBA_PG',7),
	('NB_PRUEBA_PG',8),
	('NB_PRUEBA_PG',9),
	('NB_PRUEBA_PG',10),
	('NB_PRUEBA_PG',12),
	('NB_PRUEBA_PG',13),
	('NB_PRUEBA_PG',14),
	('NB_PRUEBA_PG',15),
	('NB_PRUEBA_PG',16),
	('NB_PRUEBA_PG',22),
	('NB_REPORTE_1_PG',1),
	('NB_REPORTE_1_PG',2),
	('NB_REPORTE_1_PG',3),
	('NB_REPORTE_1_PG',6),
	('NB_REPORTE_1_PG',9),
	('NB_REPORTE_1_PG',10),
	('NB_REPORTE_1_PG',12),
	('NB_REPORTE_1_PG',13),
	('NB_REPORTE_1_PG',16),
	('NB_REPORTE_1_PG',17),
	('NB_REPORTE_1_PG',18),
	('NB_REPORTE_1_PG',19),
	('NB_REPORTE_1_PG',20),
	('NB_REPORTE_2_PG',1),
	('NB_REPORTE_2_PG',2),
	('NB_REPORTE_2_PG',3),
	('NB_REPORTE_2_PG',6),
	('NB_REPORTE_2_PG',9),
	('NB_REPORTE_2_PG',10),
	('NB_REPORTE_2_PG',12),
	('NB_REPORTE_2_PG',13),
	('NB_REPORTE_2_PG',16),
	('NB_REPORTE_2_PG',17),
	('NB_REPORTE_2_PG',18),
	('NB_REPORTE_2_PG',19),
	('NB_REPORTE_2_PG',20),
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
	('nb_users_pg',22);

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
	('NB_REPORTE_2_PG','Reporte','dataGrids','datagrid',NULL,NULL,'false'),
	('NB_PRUEBA_PG','PRUEBA','dataGrids','alpaca','bootstrap-create-horizontal','','false'),
	('NB_FACTURACION_PG','Facturacion','forms','alpaca','bootstrap-create-horizontal',NULL,'false'),
	('NB_INVENTARIO_PG','Inventario','forms','alpaca','bootstrap-create-horizontal',NULL,'false'),
	('NB_CLIENTES_V_PG','Consulta de Clientes','dataGrids','datagrid',NULL,NULL,'false'),
	('NB_PRODUCTOS_V_PG','Consulta Productos','dataGrids','datagrid',NULL,NULL,'false'),
	('NB_FACTURACION_V_PG','Facturacion','dataGrids','datagrid',NULL,NULL,'false'),
	('NB_INVENTARIO_V_PG','Inventario','dataGrids','datagrid',NULL,NULL,'false'),
	('NB_REPORTE_1_PG','Reporte','dataGrids','datagrid',NULL,NULL,'false'),
	('nb_loginv_pg','Usuarios del Sistema','dataGrids','datagrid',NULL,NULL,'false'),
	('nb_usersm_pg','Usuarios del Sistema','forms','alpaca','bootstrap-edit-horizontal',NULL,'false'),
	('nb_users_pg','Usuarios del Sistema','forms','alpaca','bootstrap-create-horizontal',NULL,'false'),
	('nb_password_pg','Cambio de Contrase&#241;a','forms','alpaca','bootstrap-create-horizontal',NULL,'false'),
	('NB_PRODUCTOS_PG','Administracion de Productos','forms','alpaca','bootstrap-create-horizontal',NULL,'false'),
	('NB_CLIENTES_PG','Administracion de Clientes','forms','alpaca','bootstrap-create-horizontal','NULL','false');

/*!40000 ALTER TABLE `nb_pages_tbl` ENABLE KEYS */;
UNLOCK TABLES;


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
	(1,'nb_prueba_pg'),
	(1,'nb_reporte_1_pg'),
	(1,'nb_reporte_2_pg'),
	(1,'nb_usersm_pg'),
	(1,'nb_users_pg');

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
	('nb_users_pg',NULL,NULL,'object'),
	('home','',NULL,'object'),
	('NB_PRUEBA_PG','','','array'),
	('NB_INVENTARIO_PG','','','object'),
	('NB_PRODUCTOS_PG','','','object'),
	('nb_usersm_pg',NULL,NULL,'object'),
	('NB_FACTURACION_PG','','','object'),
	('NB_CLIENTES_PG','','','object'),
	('nb_password_pg',NULL,NULL,'object');

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
	('NB_CLIENTES_TBL','NB_CLIE_1_FLD','string',255,'N','N','NULL'),
	('NB_PRODUCTOS_TBL','NB_PROD_19_FLD','string',255,'N','N','NULL'),
	('NB_PRODUCTOS_TBL','NB_PROD_20_FLD','string',255,'N','N','NULL'),
	('NB_PRODUCTOS_TBL','NB_PROD_17_FLD','string',255,'N','N','NULL'),
	('NBD_USER_TBL','nbd_password_fld','string',255,'N','',''),
	('NBD_USER_TBL','nbd_descr_fld','string',255,'N','',''),
	('NBD_USER_TBL','nbd_email_fld','string',255,'Y','',''),
	('NBD_USER_TBL','nbd_id_user_fld','number',11,'Y','',''),
	('NB_PRODUCTOS_TBL','NB_PROD_18_FLD','string',255,'N','N','NULL'),
	('NB_PRODUCTOS_TBL','NB_PROD_15_FLD','string',255,'N','N','NULL'),
	('NB_PRODUCTOS_TBL','NB_PROD_16_FLD','string',255,'N','N','NULL'),
	('NB_PRODUCTOS_TBL','NB_PROD_12_FLD','string',255,'N','N','NULL'),
	('NB_PRODUCTOS_TBL','NB_PROD_13_FLD','string',255,'N','N','NULL'),
	('NBD_USER_TBL','nb_estado_fld','number',2,'N','',''),
	('NBD_ROLE_USER_TBL','nbd_id_user_fld','number',11,'Y','',''),
	('NBD_ROLE_USER_TBL','nb_id_role_fld','number',11,'N','',''),
	('NB_PRODUCTOS_TBL','NB_PROD_14_FLD','string',255,'N','N','NULL'),
	('NB_PRODUCTOS_TBL','NB_PROD_11_FLD','string',255,'N','N','NULL'),
	('NB_PRODUCTOS_TBL','NB_PROD_10_FLD','string',255,'N','N','NULL'),
	('NB_PRODUCTOS_TBL','NB_PROD_9_FLD','string',255,'N','N','NULL'),
	('NB_PRODUCTOS_TBL','NB_PROD_8_FLD','string',255,'N','N','NULL'),
	('NB_PRODUCTOS_TBL','NB_PROD_7_FLD','string',255,'N','N','NULL'),
	('NB_PRODUCTOS_TBL','NB_PROD_6_FLD','string',255,'N','N','NULL'),
	('NB_PRODUCTOS_TBL','NB_PROD_5_FLD','string',255,'N','N','NULL'),
	('NB_PRODUCTOS_TBL','NB_PROD_4_FLD','string',255,'N','N','NULL'),
	('NB_PRODUCTOS_TBL','NB_PROD_3_FLD','string',255,'N','N','NULL'),
	('NB_PRODUCTOS_TBL','NB_PROD_2_FLD','string',255,'N','N','NULL'),
	('NB_PRODUCTOS_TBL','NB_PROD_1_FLD','string',255,'N','N','NULL'),
	('NB_CLIENTES_TBL','NB_CLIE_2_FLD','string',255,'N','N','NULL'),
	('NB_CLIENTES_TBL','NB_CLIE_3_FLD','string',255,'N','N','NULL'),
	('NB_CLIENTES_TBL','NB_CLIE_4_FLD','string',255,'N','N','NULL'),
	('NB_CLIENTES_TBL','NB_CLIE_5_FLD','string',255,'N','N','NULL'),
	('NB_CLIENTES_TBL','NB_CLIE_6_FLD','string',255,'N','N','NULL'),
	('NB_CLIENTES_TBL','NB_CLIE_7_FLD','string',255,'N','N','NULL'),
	('NB_CLIENTES_TBL','NB_CLIE_8_FLD','string',255,'N','N','NULL'),
	('NB_CLIENTES_TBL','NB_CLIE_9_FLD','string',255,'N','N','NULL'),
	('NB_CLIENTES_TBL','NB_CLIE_10_FLD','string',255,'N','N','NULL'),
	('NB_CLIENTES_TBL','NB_CLIE_11_FLD','string',255,'N','N','NULL'),
	('NB_CLIENTES_TBL','NB_CLIE_12_FLD','string',255,'N','N','NULL'),
	('NB_CLIENTES_TBL','NB_CLIE_13_FLD','string',255,'N','N','NULL'),
	('NB_CLIENTES_TBL','NB_CLIE_14_FLD','string',255,'N','N','NULL'),
	('NB_CLIENTES_TBL','NB_CLIE_15_FLD','string',255,'N','N','NULL'),
	('NB_CLIENTES_TBL','NB_CLIE_16_FLD','string',255,'N','N','NULL'),
	('NB_CLIENTES_TBL','NB_CLIE_17_FLD','string',255,'N','N','NULL'),
	('NB_CLIENTES_TBL','NB_CLIE_18_FLD','string',255,'N','N','NULL'),
	('NB_CLIENTES_TBL','NB_CLIE_19_FLD','string',255,'N','N','NULL'),
	('NB_CLIENTES_TBL','NB_CLIE_20_FLD','string',255,'N','N','NULL'),
	('NB_FACTURACION_TBL','NB_FACT_1_FLD','string',255,'N','N','NULL'),
	('NB_FACTURACION_TBL','NB_FACT_2_FLD','string',255,'N','N','NULL'),
	('NB_FACTURACION_TBL','NB_FACT_3_FLD','string',255,'N','N','NULL'),
	('NB_FACTURACION_TBL','NB_FACT_4_FLD','string',255,'N','N','NULL'),
	('NB_FACTURACION_TBL','NB_FACT_5_FLD','string',255,'N','N','NULL'),
	('NB_FACTURACION_TBL','NB_FACT_6_FLD','string',255,'N','N','NULL'),
	('NB_FACTURACION_TBL','NB_FACT_7_FLD','string',255,'N','N','NULL'),
	('NB_FACTURACION_TBL','NB_FACT_8_FLD','string',255,'N','N','NULL'),
	('NB_FACTURACION_TBL','NB_FACT_9_FLD','string',255,'N','N','NULL'),
	('NB_FACTURACION_TBL','NB_FACT_10_FLD','string',255,'N','N','NULL'),
	('NB_FACTURACION_TBL','NB_FACT_11_FLD','string',255,'N','N','NULL'),
	('NB_FACTURACION_TBL','NB_FACT_12_FLD','string',255,'N','N','NULL'),
	('NB_FACTURACION_TBL','NB_FACT_13_FLD','string',255,'N','N','NULL'),
	('NB_FACTURACION_TBL','NB_FACT_14_FLD','string',255,'N','N','NULL'),
	('NB_FACTURACION_TBL','NB_FACT_15_FLD','string',255,'N','N','NULL'),
	('NB_FACTURACION_TBL','NB_FACT_16_FLD','string',255,'N','N','NULL'),
	('NB_FACTURACION_TBL','NB_FACT_17_FLD','string',255,'N','N','NULL'),
	('NB_FACTURACION_TBL','NB_FACT_18_FLD','string',255,'N','N','NULL'),
	('NB_FACTURACION_TBL','NB_FACT_19_FLD','string',255,'N','N','NULL'),
	('NB_FACTURACION_TBL','NB_FACT_20_FLD','string',255,'N','N','NULL'),
	('NB_INVENTARIO_TBL','NB_INVE_1_FLD','string',255,'N','N','NULL'),
	('NB_INVENTARIO_TBL','NB_INVE_2_FLD','string',255,'N','N','NULL'),
	('NB_INVENTARIO_TBL','NB_INVE_3_FLD','string',255,'N','N','NULL'),
	('NB_INVENTARIO_TBL','NB_INVE_4_FLD','string',255,'N','N','NULL'),
	('NB_INVENTARIO_TBL','NB_INVE_5_FLD','string',255,'N','N','NULL'),
	('NB_INVENTARIO_TBL','NB_INVE_6_FLD','string',255,'N','N','NULL'),
	('NB_INVENTARIO_TBL','NB_INVE_7_FLD','string',255,'N','N','NULL'),
	('NB_INVENTARIO_TBL','NB_INVE_8_FLD','string',255,'N','N','NULL'),
	('NB_INVENTARIO_TBL','NB_INVE_9_FLD','string',255,'N','N','NULL'),
	('NB_INVENTARIO_TBL','NB_INVE_10_FLD','string',255,'N','N','NULL'),
	('NB_INVENTARIO_TBL','NB_INVE_11_FLD','string',255,'N','N','NULL'),
	('NB_INVENTARIO_TBL','NB_INVE_12_FLD','string',255,'N','N','NULL'),
	('NB_INVENTARIO_TBL','NB_INVE_13_FLD','string',255,'N','N','NULL'),
	('NB_INVENTARIO_TBL','NB_INVE_14_FLD','string',255,'N','N','NULL'),
	('NB_INVENTARIO_TBL','NB_INVE_15_FLD','string',255,'N','N','NULL'),
	('NB_INVENTARIO_TBL','NB_INVE_16_FLD','string',255,'N','N','NULL'),
	('NB_INVENTARIO_TBL','NB_INVE_17_FLD','string',255,'N','N','NULL'),
	('NB_INVENTARIO_TBL','NB_INVE_18_FLD','string',255,'N','N','NULL'),
	('NB_INVENTARIO_TBL','NB_INVE_19_FLD','string',255,'N','N','NULL'),
	('NB_INVENTARIO_TBL','NB_INVE_20_FLD','string',255,'N','N','NULL'),
	('PRUEBA','NB_INVE_1_FLD','string',255,'N','N','NULL'),
	('PRUEBA','NB_INVE_2_FLD','string',255,'N','N','NULL'),
	('PRUEBA','NB_INVE_3_FLD','string',255,'N','N','NULL'),
	('PRUEBA','NB_INVE_4_FLD','string',255,'N','N','NULL');

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
	('NBD_USER_TBL','Tabla usuarios del sistema'),
	('NB_CLIENTES_TBL','Clientes'),
	('NB_PRODUCTOS_TBL','Productos'),
	('NBD_ROLE_USER_TBL','Tabla Roles del sistema'),
	('NB_FACTURACION_TBL','FACTURACION'),
	('NB_INVENTARIO_TBL','Inventario'),
	('PRUEBA','Inventario');

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
	('nb_estado_fld','1','Inactivo');

/*!40000 ALTER TABLE `nb_value_tbl` ENABLE KEYS */;
UNLOCK TABLES;


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
	(1,'nb_password_pg','nbd_password_fld',1,2),
	(4,'nb_usersm_pg','nbd_password_fld',1,4),
	(20,'NB_PRODUCTOS_PG','NB_PROD_20_FLD',4,5),
	(19,'NB_PRODUCTOS_PG','NB_PROD_19_FLD',4,4),
	(2,'nb_usuariosm_pg','nb_numerodoc_fldX',1,2),
	(18,'NB_PRODUCTOS_PG','NB_PROD_18_FLD',4,3),
	(17,'NB_PRODUCTOS_PG','NB_PROD_17_FLD',4,2),
	(16,'NB_PRODUCTOS_PG','NB_PROD_16_FLD',4,1),
	(15,'NB_PRODUCTOS_PG','NB_PROD_15_FLD',3,5),
	(14,'NB_PRODUCTOS_PG','NB_PROD_14_FLD',3,4),
	(2,'nb_password_pg','nbd_email_fld',1,1),
	(1,'nb_usersm_pg','nbd_id_user_fldX',1,1),
	(3,'nb_usersm_pg','nbd_descr_fld',1,3),
	(4,'nb_users_pg','nbd_password_fld',1,4),
	(2,'nb_users_pg','nbd_email_fld',1,2),
	(3,'nb_users_pg','nbd_descr_fld',1,3),
	(1,'nb_users_pg','nbd_id_user_fld',1,1),
	(13,'NB_PRODUCTOS_PG','NB_PROD_13_FLD',3,3),
	(12,'NB_PRODUCTOS_PG','NB_PROD_12_FLD',3,2),
	(11,'NB_PRODUCTOS_PG','NB_PROD_11_FLD',3,1),
	(10,'NB_PRODUCTOS_PG','NB_PROD_10_FLD',2,5),
	(9,'NB_PRODUCTOS_PG','NB_PROD_9_FLD',2,4),
	(8,'NB_PRODUCTOS_PG','NB_PROD_8_FLD',2,3),
	(7,'NB_PRODUCTOS_PG','NB_PROD_7_FLD',2,2),
	(6,'NB_PRODUCTOS_PG','NB_PROD_6_FLD',2,1),
	(2,'nb_usersm_pg','nbd_email_fldX',1,2),
	(5,'NB_PRODUCTOS_PG','NB_PROD_5_FLD',1,5),
	(4,'NB_PRODUCTOS_PG','NB_PROD_4_FLD',1,4),
	(3,'NB_PRODUCTOS_PG','NB_PROD_3_FLD',1,3),
	(2,'NB_PRODUCTOS_PG','NB_PROD_2_FLD',1,2),
	(1,'NB_PRODUCTOS_PG','NB_PROD_1_FLD',1,1),
	(1,'NB_CLIENTES_PG','NB_CLIE_1_FLD',1,1),
	(2,'NB_CLIENTES_PG','NB_CLIE_2_FLD',1,2),
	(3,'NB_CLIENTES_PG','NB_CLIE_3_FLD',1,3),
	(4,'NB_CLIENTES_PG','NB_CLIE_4_FLD',1,4),
	(5,'NB_CLIENTES_PG','NB_CLIE_5_FLD',1,5),
	(6,'NB_CLIENTES_PG','NB_CLIE_6_FLD',2,1),
	(7,'NB_CLIENTES_PG','NB_CLIE_7_FLD',2,2),
	(8,'NB_CLIENTES_PG','NB_CLIE_8_FLD',2,3),
	(9,'NB_CLIENTES_PG','NB_CLIE_9_FLD',2,4),
	(10,'NB_CLIENTES_PG','NB_CLIE_10_FLD',2,5),
	(11,'NB_CLIENTES_PG','NB_CLIE_11_FLD',3,1),
	(12,'NB_CLIENTES_PG','NB_CLIE_12_FLD',3,2),
	(13,'NB_CLIENTES_PG','NB_CLIE_13_FLD',3,3),
	(14,'NB_CLIENTES_PG','NB_CLIE_14_FLD',3,4),
	(15,'NB_CLIENTES_PG','NB_CLIE_15_FLD',3,5),
	(16,'NB_CLIENTES_PG','NB_CLIE_16_FLD',4,1),
	(17,'NB_CLIENTES_PG','NB_CLIE_17_FLD',4,2),
	(18,'NB_CLIENTES_PG','NB_CLIE_18_FLD',4,3),
	(19,'NB_CLIENTES_PG','NB_CLIE_19_FLD',4,4),
	(20,'NB_CLIENTES_PG','NB_CLIE_20_FLD',4,5),
	(1,'NB_FACTURACION_PG','NB_FACT_1_FLD',1,1),
	(2,'NB_FACTURACION_PG','NB_FACT_2_FLD',1,2),
	(3,'NB_FACTURACION_PG','NB_FACT_3_FLD',1,3),
	(4,'NB_FACTURACION_PG','NB_FACT_4_FLD',1,4),
	(5,'NB_FACTURACION_PG','NB_FACT_5_FLD',1,5),
	(6,'NB_FACTURACION_PG','NB_FACT_6_FLD',2,1),
	(7,'NB_FACTURACION_PG','NB_FACT_7_FLD',2,2),
	(8,'NB_FACTURACION_PG','NB_FACT_8_FLD',2,3),
	(9,'NB_FACTURACION_PG','NB_FACT_9_FLD',2,4),
	(10,'NB_FACTURACION_PG','NB_FACT_10_FLD',2,5),
	(11,'NB_FACTURACION_PG','NB_FACT_11_FLD',3,1),
	(12,'NB_FACTURACION_PG','NB_FACT_12_FLD',3,2),
	(13,'NB_FACTURACION_PG','NB_FACT_13_FLD',3,3),
	(14,'NB_FACTURACION_PG','NB_FACT_14_FLD',3,4),
	(15,'NB_FACTURACION_PG','NB_FACT_15_FLD',3,5),
	(16,'NB_FACTURACION_PG','NB_FACT_16_FLD',4,1),
	(17,'NB_FACTURACION_PG','NB_FACT_17_FLD',4,2),
	(18,'NB_FACTURACION_PG','NB_FACT_18_FLD',4,3),
	(19,'NB_FACTURACION_PG','NB_FACT_19_FLD',4,4),
	(20,'NB_FACTURACION_PG','NB_FACT_20_FLD',4,5),
	(1,'NB_INVENTARIO_PG','NB_INVE_1_FLD',1,1),
	(2,'NB_INVENTARIO_PG','NB_INVE_2_FLD',1,2),
	(3,'NB_INVENTARIO_PG','NB_INVE_3_FLD',1,3),
	(4,'NB_INVENTARIO_PG','NB_INVE_4_FLD',1,4),
	(5,'NB_INVENTARIO_PG','NB_INVE_5_FLD',1,5),
	(6,'NB_INVENTARIO_PG','NB_INVE_6_FLD',2,1),
	(7,'NB_INVENTARIO_PG','NB_INVE_7_FLD',2,2),
	(8,'NB_INVENTARIO_PG','NB_INVE_8_FLD',2,3),
	(9,'NB_INVENTARIO_PG','NB_INVE_9_FLD',2,4),
	(10,'NB_INVENTARIO_PG','NB_INVE_10_FLD',2,5),
	(11,'NB_INVENTARIO_PG','NB_INVE_11_FLD',3,1),
	(12,'NB_INVENTARIO_PG','NB_INVE_12_FLD',3,2),
	(13,'NB_INVENTARIO_PG','NB_INVE_13_FLD',3,3),
	(14,'NB_INVENTARIO_PG','NB_INVE_14_FLD',3,4),
	(15,'NB_INVENTARIO_PG','NB_INVE_15_FLD',3,5),
	(16,'NB_INVENTARIO_PG','NB_INVE_16_FLD',4,1),
	(17,'NB_INVENTARIO_PG','NB_INVE_17_FLD',4,2),
	(18,'NB_INVENTARIO_PG','NB_INVE_18_FLD',4,3),
	(19,'NB_INVENTARIO_PG','NB_INVE_19_FLD',4,4),
	(20,'NB_INVENTARIO_PG','NB_INVE_20_FLD',4,5);

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
	(1,'NB_FACTURACION_PG','submit','Guardar','',''),
	(1,'nb_users_pg','submit','Guardar',NULL,NULL),
	(2,'NB_FACTURACION_PG','previuos','Atras','',''),
	(3,'NB_CLIENTES_PG','next','Siguiente','',''),
	(2,'NB_CLIENTES_PG','previuos','Atras','',''),
	(1,'NB_CLIENTES_PG','submit','Guardar','',''),
	(3,'NB_PRODUCTOS_PG','next','Siguiente','',''),
	(2,'NB_PRODUCTOS_PG','previuos','Atras','',''),
	(1,'NB_PRODUCTOS_PG','submit','Guardar','',''),
	(1,'nb_usersm_pg','submit','Actualizar',NULL,NULL),
	(1,'nb_password_pg','submit','Actualizar',NULL,NULL),
	(3,'NB_FACTURACION_PG','next','Siguiente','',''),
	(1,'NB_INVENTARIO_PG','submit','Guardar','',''),
	(2,'NB_INVENTARIO_PG','previuos','Atras','',''),
	(3,'NB_INVENTARIO_PG','next','Siguiente','','');

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
	(2,'NB_CLIENTES_PG','Paso 2','Informacion 2'),
	(1,'nb_users_pg','Usuarios','Registros Usuarios del Sistemas'),
	(3,'NB_CLIENTES_PG','Paso 3','Informacion 3'),
	(1,'NB_PRODUCTOS_PG','Paso 1','Informacion 1'),
	(2,'NB_PRODUCTOS_PG','Paso 2','Informacion 2'),
	(1,'nb_usersm_pg','Usuarios','Actualizacion Usuarios del Sistemas'),
	(1,'NB_CLIENTES_PG','Paso 1','Informacion 1'),
	(4,'NB_PRODUCTOS_PG','Paso 4','Informacion 4'),
	(3,'NB_PRODUCTOS_PG','Paso 3','Informacion 3'),
	(1,'nb_password_pg','Usuarios','Cambio de Contrase&#241;a'),
	(4,'NB_CLIENTES_PG','Paso 4','Informacion 4'),
	(1,'NB_FACTURACION_PG','Paso 1','Informacion 1'),
	(2,'NB_FACTURACION_PG','Paso 2','Informacion 2'),
	(3,'NB_FACTURACION_PG','Paso 3','Informacion 3'),
	(4,'NB_FACTURACION_PG','Paso 4','Informacion 4'),
	(1,'NB_INVENTARIO_PG','Paso 1','Informacion 1'),
	(2,'NB_INVENTARIO_PG','Paso 2','Informacion 2'),
	(3,'NB_INVENTARIO_PG','Paso 3','Informacion 3'),
	(4,'NB_INVENTARIO_PG','Paso 4','Informacion 4');

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
	(1,'nb_users_pg','Usuarios',NULL,'FALSE'),
	(2,'nb_usersm_pg','Usuarios',NULL,'FALSE'),
	(3,'nb_password_pg',NULL,NULL,'FALSE'),
	(4,'NB_PRODUCTOS_PG','Productos',NULL,'FALSE'),
	(5,'NB_CLIENTES_PG','Clientes',NULL,'FALSE'),
	(6,'NB_FACTURACION_PG','Facturacion',NULL,'FALSE'),
	(7,'NB_INVENTARIO_PG','Inventario',NULL,'FALSE');

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


# Dump of table PRUEBA
# ------------------------------------------------------------

DROP TABLE IF EXISTS `PRUEBA`;

CREATE TABLE `PRUEBA` (
  `NB_INVE_1_FLD` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `NB_INVE_2_FLD` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `NB_INVE_3_FLD` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `NB_INVE_4_FLD` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`NB_INVE_1_FLD`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `PRUEBA` WRITE;
/*!40000 ALTER TABLE `PRUEBA` DISABLE KEYS */;

INSERT INTO `PRUEBA` (`NB_INVE_1_FLD`, `NB_INVE_2_FLD`, `NB_INVE_3_FLD`, `NB_INVE_4_FLD`)
VALUES
	('prod 3','8','9','10'),
	('prod','4','5','6'),
	('prod 1','1','2','3'),
	('prod 6','89','89','89'),
	('prod 78','12','4','5'),
	('pr1','1','2','3'),
	('pr2','2','4','5'),
	('pr3','5','6','8');

/*!40000 ALTER TABLE `PRUEBA` ENABLE KEYS */;
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
   `A`.`nbd_id_user_fld` AS `Id`,
   `A`.`nbd_descr_fld` AS `Usuario`,
   `A`.`nbd_email_fld` AS `Login`,ifnull(`C`.`nb_desc_fld`,'Asignar Role') AS `Role`,ifnull((select `nb_value_tbl`.`nb_value_fld`
FROM `nb_value_tbl` where ((`nb_value_tbl`.`nb_id_pr_schema_fld` = 'nb_estado_fld') and (`nb_value_tbl`.`nb_id_value_fld` = `A`.`nb_estado_fld`))),'Asignar Estado') AS `Estado` from ((`nbd_user_tbl` `A` left join `nbd_role_user_tbl` `B` on((`A`.`nbd_id_user_fld` = `B`.`nbd_id_user_fld`))) left join `nb_role_tbl` `C` on((`B`.`nb_id_role_fld` = `C`.`nb_id_role_fld`)));

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
