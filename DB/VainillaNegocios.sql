# ************************************************************
# Sequel Pro SQL dump
# Version 4499
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 10.1.9-MariaDB)
# Database: naburest
# Generation Time: 2016-01-17 22:28:43 +0000
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

CREATE TABLE `nb_chart_tbl` (
  `nb_id_page_fld` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `nb_source_fld` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '',
  PRIMARY KEY (`nb_id_page_fld`,`nb_source_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;



# Dump of table nb_config_frmwrk_tbl
# ------------------------------------------------------------

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
	('nb_loginv_pg',37,'Usuarios del Sistema'),
	('nb_loginv_pg',38,'true'),
	('nb_loginv_pg',39,'44'),
	('nb_loginv_pg',40,'true'),
	('nb_loginv_pg',41,'true'),
	('nb_loginv_pg',43,'350'),
	('nb_loginv_pg',44,'nb_login_vw');

/*!40000 ALTER TABLE `nb_datagrid_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_datagridcol_tbl
# ------------------------------------------------------------

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
	('nb_password_pg','NBD_ROLE_USER_TBL','nbd_id_user_fld','nbd_id_user_fld'),
	('nb_password_pg','NBD_ROLE_USER_TBL','nb_id_role_fld','nb_id_role_fld'),
	('nb_password_pg','NBD_USER_TBL','nbd_descr_fld','nbd_descr_fld'),
	('nb_password_pg','NBD_USER_TBL','nbd_email_fld','nbd_email_fld'),
	('nb_password_pg','NBD_USER_TBL','nbd_id_user_fld','nbd_id_user_fld'),
	('nb_password_pg','NBD_USER_TBL','nbd_password_fld','nbd_password_fld'),
	('nb_password_pg','NBD_USER_TBL','nb_estado_fld','nb_estado_fld'),
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
	('nb_users_pg','nbd_password_fld',11,'true'),
	('nb_users_pg','nbd_password_fld',24,'Contrase&#241;a'),
	('nb_users_pg','nbd_descr_fld',24,'Nombre'),
	('nb_users_pg','nbd_descr_fld',11,'true'),
	('nb_users_pg','nbd_password_fld',13,'string'),
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
	('home','image',13,'string'),
	('home','image',32,'image'),
	('home','image',35,'bootstrap-display'),
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
	('nb_usersm_pg','nb_estado_fld',13,'string'),
	('nb_usersm_pg','nb_estado_fld',11,'true'),
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
	('nb_password_pg','nbd_password_fld',13,'string');

/*!40000 ALTER TABLE `nb_forms_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_htmlattribute_tbl
# ------------------------------------------------------------

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

CREATE TABLE `nb_login_vw` (
   `Id` INT(11) NOT NULL DEFAULT '0',
   `Usuario` VARCHAR(255) NULL DEFAULT NULL,
   `Login` VARCHAR(255) NULL DEFAULT NULL,
   `Role` VARCHAR(255) NOT NULL DEFAULT '',
   `Estado` VARCHAR(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM;



# Dump of table nb_navigation_tbl
# ------------------------------------------------------------

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
	('home',2,0,2,'Usuarios Software','nb_users_pg','fa fa-users','N'),
	('home',5,0,3,'Configuracion','home','fa fa-cog','N'),
	('home',6,5,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),
	('home',1,0,1,'Home','home','fa fa-home','N'),
	('home',3,2,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),
	('home',4,2,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),
	('home',7,5,4,'Ayuda','ayuda','fa fa-life-buoy','N'),
	('home',8,0,5,'Cerrar sesion','login','fa fa-sign-out','N');

/*!40000 ALTER TABLE `nb_navigation_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_option_tbl
# ------------------------------------------------------------

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
	('home','image','false',NULL,NULL,NULL,NULL,NULL),
	('nb_users_pg','wizard','true','../Events/','nabuSave','0','post',NULL),
	('nb_usuariosm_pg','wizard','true','../Events/','nabuSave','1','post',NULL),
	('nb_password_pg','wizard','true','../Events/','nabuSave','1','post',NULL);

/*!40000 ALTER TABLE `nb_option_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_options_buttons_tbl
# ------------------------------------------------------------

CREATE TABLE `nb_options_buttons_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_id_opt_form_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_value_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_title_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_click_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_page_fld`,`nb_id_opt_form_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;



# Dump of table nb_pageattribute_tbl
# ------------------------------------------------------------

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
	('nb_loginv_pg','Usuarios del Sistema','dataGrids','datagrid',NULL,NULL,'false'),
	('nb_usersm_pg','Usuarios del Sistema','forms','alpaca','bootstrap-edit-horizontal',NULL,'false'),
	('nb_users_pg','Usuarios del Sistema','forms','alpaca','bootstrap-create-horizontal',NULL,'false'),
	('nb_password_pg','Cambio de Contrase&#241;a','forms','alpaca','bootstrap-create-horizontal',NULL,'false');

/*!40000 ALTER TABLE `nb_pages_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_role_pag_tbl
# ------------------------------------------------------------

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
	(1,'nb_loginv_pg'),
	(1,'nb_password_pg'),
	(1,'nb_usersm_pg'),
	(1,'nb_users_pg');

/*!40000 ALTER TABLE `nb_role_pag_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_role_tbl
# ------------------------------------------------------------

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
	('nb_usersm_pg',NULL,NULL,'object'),
	('nb_password_pg',NULL,NULL,'object');

/*!40000 ALTER TABLE `nb_schema_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_table_fields_tbl
# ------------------------------------------------------------

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
	('NBD_USER_TBL','nbd_password_fld','string',255,'N','',''),
	('NBD_USER_TBL','nbd_descr_fld','string',255,'N','',''),
	('NBD_USER_TBL','nbd_email_fld','string',255,'Y','',''),
	('NBD_USER_TBL','nbd_id_user_fld','number',11,'Y','',''),
	('NBD_USER_TBL','nb_estado_fld','number',2,'N','',''),
	('NBD_ROLE_USER_TBL','nbd_id_user_fld','number',11,'Y','',''),
	('NBD_ROLE_USER_TBL','nb_id_role_fld','number',11,'N','','');

/*!40000 ALTER TABLE `nb_table_fields_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_tables_tbl
# ------------------------------------------------------------

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
	('NBD_ROLE_USER_TBL','Tabla Roles del sistema');

/*!40000 ALTER TABLE `nb_tables_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_value_tbl
# ------------------------------------------------------------

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
	(2,'nb_usuariosm_pg','nb_numerodoc_fldX',1,2),
	(2,'nb_password_pg','nbd_email_fld',1,1),
	(1,'nb_usersm_pg','nbd_id_user_fldX',1,1),
	(3,'nb_usersm_pg','nbd_descr_fld',1,3),
	(4,'nb_users_pg','nbd_password_fld',1,4),
	(2,'nb_users_pg','nbd_email_fld',1,2),
	(3,'nb_users_pg','nbd_descr_fld',1,3),
	(1,'nb_users_pg','nbd_id_user_fld',1,1),
	(2,'nb_usersm_pg','nbd_email_fldX',1,2);

/*!40000 ALTER TABLE `nb_wizard_bind_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_wizard_buttons_tbl
# ------------------------------------------------------------

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
	(1,'nb_users_pg','submit','Guardar',NULL,NULL),
	(1,'nb_usersm_pg','submit','Actualizar',NULL,NULL),
	(1,'nb_password_pg','submit','Actualizar',NULL,NULL);

/*!40000 ALTER TABLE `nb_wizard_buttons_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_wizard_steps_tbl
# ------------------------------------------------------------

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
	(1,'nb_users_pg','Usuarios','Registros Usuarios del Sistemas'),
	(1,'nb_usersm_pg','Usuarios','Actualizacion Usuarios del Sistemas'),
	(1,'nb_password_pg','Usuarios','Cambio de Contrase&#241;a');

/*!40000 ALTER TABLE `nb_wizard_steps_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_wizard_tbl
# ------------------------------------------------------------

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
	(1,'nb_users_pg',NULL,NULL,'false'),
	(2,'nb_usersm_pg',NULL,NULL,'false'),
	(3,'nb_password_pg',NULL,NULL,'false');

/*!40000 ALTER TABLE `nb_wizard_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nbd_role_user_tbl
# ------------------------------------------------------------

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
