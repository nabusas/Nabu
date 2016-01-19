# ************************************************************
# Sequel Pro SQL dump
# Version 4499
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 10.1.9-MariaDB)
# Database: nabu
# Generation Time: 2016-01-19 21:50:24 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


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



# Dump of table nb_enterprise_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_enterprise_tbl`;

CREATE TABLE `nb_enterprise_tbl` (
  `nb_enterprise_id_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_host_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_db_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_user_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_pass_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_enterprise_id_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_enterprise_tbl` WRITE;
/*!40000 ALTER TABLE `nb_enterprise_tbl` DISABLE KEYS */;

INSERT INTO `nb_enterprise_tbl` (`nb_enterprise_id_fld`, `nb_host_fld`, `nb_db_fld`, `nb_user_fld`, `nb_pass_fld`)
VALUES
	('fccn','localhost','nabufccn','root',''),
	('rest','localhost','naburest','root','');

/*!40000 ALTER TABLE `nb_enterprise_tbl` ENABLE KEYS */;
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
	('login','Campo1',11,'true'),
	('login','Campo1',13,'string'),
	('login','Campo1',24,'Usuario'),
	('login','Campo2',6,'password'),
	('login','Campo2',9,'^[a-zA-Z0-9_]+$'),
	('login','Campo2',11,'true'),
	('login','Campo2',13,'string'),
	('login','Campo2',24,'Password'),
	('login','Campo0',13,'string'),
	('login','Campo0',11,'true'),
	('login','Campo0',24,'Empresa');

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
	('login','form','true','../Events/','ValidateUser','0','post',NULL);

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
	('login','reset','Limpiar','Limpiar',NULL),
	('login','submit','Aceptar','Aceptar',NULL);

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
	('login',1),
	('login',2),
	('login',3),
	('login',4),
	('login',5),
	('login',6),
	('login',7),
	('login',8),
	('login',9),
	('login',10),
	('login',11),
	('login',12),
	('login',13),
	('login',14),
	('login',15),
	('login',16),
	('login',17),
	('login',18),
	('login',19),
	('login',20),
	('login',21),
	('login',22);

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
	('login','Nabu','formsSimple','alpaca','bootstrap-create',NULL,'false');

/*!40000 ALTER TABLE `nb_pages_tbl` ENABLE KEYS */;
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
	('login','Bienvenidos',NULL,'object');

/*!40000 ALTER TABLE `nb_schema_tbl` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
