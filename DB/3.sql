use nabudemo;
# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 52.34.220.196 (MySQL 5.6.33-0ubuntu0.14.04.1)
# Database: nabudemo
# Generation Time: 2016-12-28 13:09:55 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


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
  `nb_clie_12_fld` blob,
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
	(1,'1','14800275','','','Carlos Alberto Garcia Cobo','','CALLE 21N NUMERO 9A-105 APTO 202','0301 265 7760','carlosgc4@gmail.com','0','','','','','','','','',''),
	(2,'1','1037594925','','','Lilian Patricia Alfonso Marin','','CALLE 21N NUMERO 9A-105 APTO 202','','','0','','','','','','','','',''),
	(3,'1','12345','','','Pepito Perez','','Calle 1 Cr 1 Cali','2234566','pepito@gmail.com','0','','','','','','','','',''),
	(4,'1','444444','','','Roger Federer','','Calle 56 Suiza','4567890','roger@tenis.com','0',X'4E696E67756E61','','','','','','','',''),
	(5,'1','99999','','','Andy Murray','','Calle 2','098654323','','0','','','','','','','','',''),
	(6,'1','12344321','','','Ana Lucia Mosquera','','calle 1','12121212','sdsd@ddsds.com','0','','','','','','','','','');

/*!40000 ALTER TABLE `nb_clientes_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_clientes_vw
# ------------------------------------------------------------

DROP VIEW IF EXISTS `nb_clientes_vw`;

CREATE TABLE `nb_clientes_vw` (
   `Id` INT(11) NOT NULL DEFAULT '0',
   `Tipo_Documento` VARCHAR(255) NULL DEFAULT NULL,
   `Documento` VARCHAR(255) NULL DEFAULT NULL,
   `Nombre` VARCHAR(255) NULL DEFAULT NULL,
   `Direccion` VARCHAR(255) NULL DEFAULT NULL,
   `Telefono` VARCHAR(255) NULL DEFAULT NULL,
   `Email` VARCHAR(255) NULL DEFAULT NULL,
   `Estado` VARCHAR(255) NULL DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table nb_cuadrediario_vw
# ------------------------------------------------------------

DROP VIEW IF EXISTS `nb_cuadrediario_vw`;

CREATE TABLE `nb_cuadrediario_vw` (
   `Tipo` VARCHAR(255) NOT NULL DEFAULT '',
   `Monto` VARCHAR(64) NOT NULL DEFAULT ''
) ENGINE=MyISAM;



# Dump of table nb_cuadretotal_vw
# ------------------------------------------------------------

DROP VIEW IF EXISTS `nb_cuadretotal_vw`;

CREATE TABLE `nb_cuadretotal_vw` (
   `Periodo` INT(6) NULL DEFAULT NULL,
   `Tipo` VARCHAR(255) NOT NULL DEFAULT '',
   `Monto` VARCHAR(64) NOT NULL DEFAULT ''
) ENGINE=MyISAM;



# Dump of table nb_detallef_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_detallef_tbl`;

CREATE TABLE `nb_detallef_tbl` (
  `Factura` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `Producto` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `Descripcion` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `UOM` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `Precio` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `Cantidad` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `Iva` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `Total` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`Factura`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_detallef_tbl` WRITE;
/*!40000 ALTER TABLE `nb_detallef_tbl` DISABLE KEYS */;

INSERT INTO `nb_detallef_tbl` (`Factura`, `Producto`, `Descripcion`, `UOM`, `Precio`, `Cantidad`, `Iva`, `Total`)
VALUES
	('1-01','1','Comida 1','Kilogramo','$12,400.00','12','16%','$172,608.00'),
	('1-02','2','Carro','Gramo','$12,450.00','1','16%','$14,442.00'),
	('1-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('1-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('1-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('1-06',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('1-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('1-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('1-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('1-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('1-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('1-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('1-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('1-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('1-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('1-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('1-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('1-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('1-19',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('1-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('2-01','1','Comida 1','Kilogramo','$12,400.00','10','16%','$143,840.00'),
	('2-02',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('2-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('2-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('2-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('2-06',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('2-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('2-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('2-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('2-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('2-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('2-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('2-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('2-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('2-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('2-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('2-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('2-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('2-19',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('2-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('3-01','1','Comida 1','Kilogramo','$12,400.00','1','16%','$14,384.00'),
	('3-02',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('3-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('3-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('3-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('3-06',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('3-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('3-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('3-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('3-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('3-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('3-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('3-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('3-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('3-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('3-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('3-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('3-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('3-19',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('3-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('4-01','1','Comida 1','Kilogramo','$12,400.00','10','16%','$143,840.00'),
	('4-02','2','Carro','Gramo','$12,450.00','4','16%','$57,768.00'),
	('4-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('4-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('4-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('4-06',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('4-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('4-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('4-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('4-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('4-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('4-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('4-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('4-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('4-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('4-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('4-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('4-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('4-19',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('4-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('5-01','3','Mango','Kilogramo','$2,500.00','700','0%','$1,750,000.00'),
	('5-02','3','Mango','Kilogramo','$2,500.00','700','0%','$1,750,000.00'),
	('5-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('5-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('5-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('5-06',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('5-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('5-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('5-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('5-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('5-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('5-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('5-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('5-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('5-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('5-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('5-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('5-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('5-19',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('5-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('6-01','1','Comida 1','Kilogramo','$12,400.00','34','16%','$489,056.00'),
	('6-02','4','Hierro','Metro','$232,323.00','12','0%','$2,787,876.00'),
	('6-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('6-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('6-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('6-06',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('6-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('6-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('6-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('6-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('6-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('6-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('6-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('6-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('6-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('6-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('6-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('6-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('6-19',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('6-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('7-01','1','Comida 1','Kilogramo','$12,400.00','10','16%','$143,840.00'),
	('7-02',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('7-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('7-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('7-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('7-06',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('7-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('7-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('7-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('7-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('7-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('7-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('7-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('7-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('7-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('7-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('7-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('7-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('7-19',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('7-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `nb_detallef_tbl` ENABLE KEYS */;
UNLOCK TABLES;

DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `Productos` BEFORE UPDATE ON `nb_detallef_tbl` FOR EACH ROW BEGIN

DECLARE descrProducto VARCHAR(255);
DECLARE vcUOM VARCHAR(255);
DECLARE vUOM VARCHAR(255);
DECLARE vPrecio VARCHAR(255);
DECLARE vIva VARCHAR(255);

SELECT  nb_prod_2_fld INTO descrProducto FROM NB_PRODUCTOS_TBL where nb_prod_1_fld= NEW.Producto;
SELECT  nb_prod_6_fld INTO vcUOM FROM NB_PRODUCTOS_TBL where nb_prod_1_fld= NEW.Producto;
SELECT  nb_prod_7_fld INTO vPrecio FROM NB_PRODUCTOS_TBL where nb_prod_1_fld= NEW.Producto;
SELECT  nb_prod_8_fld INTO vIva FROM NB_PRODUCTOS_TBL where nb_prod_1_fld= NEW.Producto;

SELECT NB_VALUE_FLD INTO vUOM from NB_VALUE_TBL where NB_ID_PR_SCHEMA_FLD='nb_umed_fld' and NB_ID_VALUE_FLD=vcUOM;

set NEW.Descripcion=descrProducto, NEW.UOM=vUOM, NEW.Precio=concat('$',format(ifnull(vPrecio,0),2)), NEW.Iva=concat(vIva,'%') ,NEW.Total = concat('$',format(ifnull(NEW.CANTIDAD * (vPrecio * ( 1+ (vIva/100) ) ),0),2));

End */;;
DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;


# Dump of table nb_factura_c_print_vw
# ------------------------------------------------------------

DROP VIEW IF EXISTS `nb_factura_c_print_vw`;

CREATE TABLE `nb_factura_c_print_vw` (
   `Id` VARCHAR(255) NOT NULL DEFAULT '',
   `Tipo_Documento` VARCHAR(255) NOT NULL DEFAULT '',
   `Documento` VARCHAR(255) NULL DEFAULT NULL,
   `Nombre` VARCHAR(255) NULL DEFAULT NULL,
   `Direccion` VARCHAR(255) NULL DEFAULT NULL,
   `Telefono` VARCHAR(255) NULL DEFAULT NULL,
   `Email` VARCHAR(255) NULL DEFAULT NULL,
   `Fecha_Factura` VARCHAR(40) NULL DEFAULT NULL,
   `Vencimiento` VARCHAR(40) NULL DEFAULT NULL,
   `Vendedor` VARCHAR(255) NULL DEFAULT NULL,
   `Tipo_Factura` VARCHAR(255) NULL DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table nb_factura_d_print_vw
# ------------------------------------------------------------

DROP VIEW IF EXISTS `nb_factura_d_print_vw`;

CREATE TABLE `nb_factura_d_print_vw` (
   `Id` VARCHAR(255) NOT NULL DEFAULT '',
   `Cantidad` VARCHAR(255) NULL DEFAULT NULL,
   `Producto` TEXT NULL DEFAULT NULL,
   `Precio` VARCHAR(255) NULL DEFAULT NULL,
   `Iva` VARCHAR(255) NULL DEFAULT NULL,
   `Total` VARCHAR(255) NULL DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table nb_factura_vw
# ------------------------------------------------------------

DROP VIEW IF EXISTS `nb_factura_vw`;

CREATE TABLE `nb_factura_vw` (
   `Factura` VARCHAR(255) NOT NULL DEFAULT '',
   `Tipo` VARCHAR(255) NOT NULL DEFAULT '',
   `Monto` VARCHAR(64) NOT NULL DEFAULT '',
   `Fecha_Factura` VARCHAR(255) NULL DEFAULT NULL,
   `Vencimiento` VARCHAR(255) NULL DEFAULT NULL,
   `Tipo_Documento` VARCHAR(255) NOT NULL DEFAULT '',
   `Documento` VARCHAR(255) NULL DEFAULT NULL,
   `Nombre` VARCHAR(255) NULL DEFAULT NULL,
   `Vendedor` VARCHAR(255) NULL DEFAULT NULL,
   `Imprimir` VARCHAR(16) NOT NULL DEFAULT ''
) ENGINE=MyISAM;



# Dump of table nb_facturacion_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_facturacion_tbl`;

CREATE TABLE `nb_facturacion_tbl` (
  `nb_fact_1_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
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

LOCK TABLES `nb_facturacion_tbl` WRITE;
/*!40000 ALTER TABLE `nb_facturacion_tbl` DISABLE KEYS */;

INSERT INTO `nb_facturacion_tbl` (`nb_fact_1_fld`, `nb_fact_2_fld`, `nb_fact_3_fld`, `nb_fact_4_fld`, `nb_fact_5_fld`, `nb_fact_6_fld`, `nb_fact_7_fld`, `nb_fact_8_fld`, `nb_fact_9_fld`, `nb_fact_10_fld`, `nb_fact_11_fld`, `nb_fact_12_fld`, `nb_fact_13_fld`, `nb_fact_14_fld`, `nb_fact_15_fld`, `nb_fact_16_fld`, `nb_fact_17_fld`, `nb_fact_18_fld`, `nb_fact_19_fld`, `nb_fact_20_fld`)
VALUES
	('2','','14800275','Carlos Alberto Garcia Cobo','CALLE 21N NUMERO 9A-105 APTO 202','0301 265 7760','carlosgc4@gmail.com','02/03/2016','02/03/2016','1','1','','','','','','','','',''),
	('1','','14800275','Carlos Alberto Garcia Cobo','CALLE 21N NUMERO 9A-105 APTO 202','0301 265 7760','carlosgc4@gmail.com','02/03/2016','12/03/2016','1','0','','','','','','','','',''),
	('3','','44444','Carlos','calle 1','2234566','','02/04/2016','08/03/2016','1','0','','','','','','','','',''),
	('4','','14800275','Carlos Alberto Garcia Cobo','CALLE 21N NUMERO 9A-105 APTO 202','0301 265 7760','carlosgc4@gmail.com','02/23/2016','02/23/2016','1','0','','','','','','','','',''),
	('5','','14800275','Carlos Alberto Garcia Cobo','CALLE 21N NUMERO 9A-105 APTO 202','0301 265 7760','carlosgc4@gmail.com','09/02/2016 00:00','09/13/2016 00:00','1','0','Gran Buda','','','','','','','',''),
	('6','','12344321','Ana Lucia Mosquera','calle 1','12121212','sdsd@ddsds.com','09/02/2016 00:00','','1','0','','','','','','','','',''),
	('7','','14800275','Carlos Alberto Garcia Cobo','CALLE 21N NUMERO 9A-105 APTO 202','0301 265 7760','carlosgc4@gmail.com','09/15/2016 00:00','','1','0','','','','','','','','','');

/*!40000 ALTER TABLE `nb_facturacion_tbl` ENABLE KEYS */;
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

LOCK TABLES `nb_inventario_tbl` WRITE;
/*!40000 ALTER TABLE `nb_inventario_tbl` DISABLE KEYS */;

INSERT INTO `nb_inventario_tbl` (`nb_inve_1_fld`, `nb_inve_2_fld`, `nb_inve_3_fld`, `nb_inve_4_fld`, `nb_inve_5_fld`, `nb_inve_6_fld`, `nb_inve_7_fld`, `nb_inve_8_fld`, `nb_inve_9_fld`, `nb_inve_10_fld`, `nb_inve_11_fld`, `nb_inve_12_fld`, `nb_inve_13_fld`, `nb_inve_14_fld`, `nb_inve_15_fld`, `nb_inve_16_fld`, `nb_inve_17_fld`, `nb_inve_18_fld`, `nb_inve_19_fld`, `nb_inve_20_fld`)
VALUES
	(1,'1','250','01/13/2016','','','','','','','','','','','','','','','',''),
	(2,'8','9','01/27/2016','','','','','','','','','','','','','','','',''),
	(3,'1','150','01/13/2016','','','','','','','','','','','','','','','',''),
	(4,'3','500','09/02/2016 00:00','','','','','','','','','','','','','','','',''),
	(5,'3','600','09/01/2016 00:00','','','','','','','','','','','','','','','','');

/*!40000 ALTER TABLE `nb_inventario_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_inventario_vw
# ------------------------------------------------------------

DROP VIEW IF EXISTS `nb_inventario_vw`;

CREATE TABLE `nb_inventario_vw` (
   `Id` INT(11) NOT NULL DEFAULT '0',
   `Producto` VARCHAR(255) NULL DEFAULT NULL,
   `Cantidad` VARCHAR(255) NULL DEFAULT NULL,
   `Fecha` VARCHAR(255) NULL DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table nb_productos_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_productos_tbl`;

CREATE TABLE `nb_productos_tbl` (
  `nb_prod_1_fld` int(11) NOT NULL AUTO_INCREMENT,
  `nb_prod_2_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prod_3_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prod_4_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_prod_5_fld` blob,
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

LOCK TABLES `nb_productos_tbl` WRITE;
/*!40000 ALTER TABLE `nb_productos_tbl` DISABLE KEYS */;

INSERT INTO `nb_productos_tbl` (`nb_prod_1_fld`, `nb_prod_2_fld`, `nb_prod_3_fld`, `nb_prod_4_fld`, `nb_prod_5_fld`, `nb_prod_6_fld`, `nb_prod_7_fld`, `nb_prod_8_fld`, `nb_prod_9_fld`, `nb_prod_10_fld`, `nb_prod_11_fld`, `nb_prod_12_fld`, `nb_prod_13_fld`, `nb_prod_14_fld`, `nb_prod_15_fld`, `nb_prod_16_fld`, `nb_prod_17_fld`, `nb_prod_18_fld`, `nb_prod_19_fld`, `nb_prod_20_fld`)
VALUES
	(1,'Comida 1','1','2','','3','12400','16','','','','','','','','','','','',''),
	(2,'Carro','Chevrolet','2015',X'4E496E67756E61','4','12450','16','','','','','','','','','','','',''),
	(3,'Mango','','','','3','2500','0','','','','','','','','','','','',''),
	(4,'Hierro','','','','0','232323','0','','','','','','','','','','','','');

/*!40000 ALTER TABLE `nb_productos_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_productos_vw
# ------------------------------------------------------------

DROP VIEW IF EXISTS `nb_productos_vw`;

CREATE TABLE `nb_productos_vw` (
   `Id` INT(11) NOT NULL DEFAULT '0',
   `Descripcion` VARCHAR(255) NULL DEFAULT NULL,
   `Marca` VARCHAR(255) NULL DEFAULT NULL,
   `Modelo` VARCHAR(255) NULL DEFAULT NULL,
   `UOM` VARCHAR(255) NULL DEFAULT NULL,
   `Precio` VARCHAR(255) NULL DEFAULT NULL,
   `Iva` VARCHAR(255) NULL DEFAULT NULL
) ENGINE=MyISAM;



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
  `nb_prov_9_fld` blob,
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

LOCK TABLES `nb_proveedores_tbl` WRITE;
/*!40000 ALTER TABLE `nb_proveedores_tbl` DISABLE KEYS */;

INSERT INTO `nb_proveedores_tbl` (`nb_prov_1_fld`, `nb_prov_2_fld`, `nb_prov_3_fld`, `nb_prov_4_fld`, `nb_prov_5_fld`, `nb_prov_6_fld`, `nb_prov_7_fld`, `nb_prov_8_fld`, `nb_prov_9_fld`, `nb_prov_10_fld`, `nb_prov_11_fld`, `nb_prov_12_fld`, `nb_prov_13_fld`, `nb_prov_14_fld`, `nb_prov_15_fld`, `nb_prov_16_fld`, `nb_prov_17_fld`, `nb_prov_18_fld`, `nb_prov_19_fld`, `nb_prov_20_fld`)
VALUES
	(1,'1','9897766','Maria Sharapova','calle 67','9876543','sharapova@gmail.com','1',X'4461746F73','','','','','','','','','','','');

/*!40000 ALTER TABLE `nb_proveedores_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_proveedores_vw
# ------------------------------------------------------------

DROP VIEW IF EXISTS `nb_proveedores_vw`;

CREATE TABLE `nb_proveedores_vw` (
   `Id` INT(11) NOT NULL DEFAULT '0',
   `Tipo_Documento` VARCHAR(255) NULL DEFAULT NULL,
   `Documento` VARCHAR(255) NULL DEFAULT NULL,
   `Nombre` VARCHAR(255) NULL DEFAULT NULL,
   `Direccion` VARCHAR(255) NULL DEFAULT NULL,
   `Telefono` VARCHAR(255) NULL DEFAULT NULL,
   `Email` VARCHAR(255) NULL DEFAULT NULL,
   `Estado` VARCHAR(255) NULL DEFAULT NULL
) ENGINE=MyISAM;



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
  `nb_vend_9_fld` blob,
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

LOCK TABLES `nb_vendedores_tbl` WRITE;
/*!40000 ALTER TABLE `nb_vendedores_tbl` DISABLE KEYS */;

INSERT INTO `nb_vendedores_tbl` (`nb_vend_1_fld`, `nb_vend_2_fld`, `nb_vend_3_fld`, `nb_vend_4_fld`, `nb_vend_5_fld`, `nb_vend_6_fld`, `nb_vend_7_fld`, `nb_vend_8_fld`, `nb_vend_9_fld`, `nb_vend_10_fld`, `nb_vend_11_fld`, `nb_vend_12_fld`, `nb_vend_13_fld`, `nb_vend_14_fld`, `nb_vend_15_fld`, `nb_vend_16_fld`, `nb_vend_17_fld`, `nb_vend_18_fld`, `nb_vend_19_fld`, `nb_vend_20_fld`)
VALUES
	(1,'1','4','Pablo Garcia','','','','0','','','','','','','','','','','',''),
	(2,'1','123456','Nicolas Almagro','Calle 5','3345677','nico@gmail.com','0',X'707275656261','','','','','','','','','','','');

/*!40000 ALTER TABLE `nb_vendedores_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_vendedores_vw
# ------------------------------------------------------------

DROP VIEW IF EXISTS `nb_vendedores_vw`;

CREATE TABLE `nb_vendedores_vw` (
   `Id` INT(11) NOT NULL DEFAULT '0',
   `Tipo_Documento` VARCHAR(255) NULL DEFAULT NULL,
   `Documento` VARCHAR(255) NULL DEFAULT NULL,
   `Nombre` VARCHAR(255) NULL DEFAULT NULL,
   `Direccion` VARCHAR(255) NULL DEFAULT NULL,
   `Telefono` VARCHAR(255) NULL DEFAULT NULL,
   `Email` VARCHAR(255) NULL DEFAULT NULL,
   `Estado` VARCHAR(255) NULL DEFAULT NULL
) ENGINE=MyISAM;





# Replace placeholder table for nb_productos_vw with correct view syntax
# ------------------------------------------------------------

DROP TABLE `nb_productos_vw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `nb_productos_vw`
AS SELECT
   `a`.`nb_prod_1_fld` AS `Id`,
   `a`.`nb_prod_2_fld` AS `Descripcion`,
   `a`.`nb_prod_3_fld` AS `Marca`,
   `a`.`nb_prod_4_fld` AS `Modelo`,
   `b`.`nb_value_fld` AS `UOM`,
   `a`.`nb_prod_7_fld` AS `Precio`,
   `a`.`nb_prod_8_fld` AS `Iva`
FROM (`nabudemo`.`nb_productos_tbl` `a` left join `nabu`.`nb_value_tbl` `b` on(((`b`.`nb_id_pr_schema_fld` = 'nb_umed_fld') and (`b`.`nb_enterprise_id_fld` = 'demo') and (`a`.`nb_prod_6_fld` = `b`.`nb_id_value_fld`))));


# Replace placeholder table for nb_vendedores_vw with correct view syntax
# ------------------------------------------------------------

DROP TABLE `nb_vendedores_vw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `nb_vendedores_vw`
AS SELECT
   `a`.`nb_vend_1_fld` AS `Id`,
   `b`.`nb_value_fld` AS `Tipo_Documento`,
   `a`.`nb_vend_3_fld` AS `Documento`,
   `a`.`nb_vend_4_fld` AS `Nombre`,
   `a`.`nb_vend_5_fld` AS `Direccion`,
   `a`.`nb_vend_6_fld` AS `Telefono`,
   `a`.`nb_vend_7_fld` AS `Email`,
   `c`.`nb_value_fld` AS `Estado`
FROM ((`nabudemo`.`nb_vendedores_tbl` `a` join `nabu`.`nb_value_tbl` `b`) join `nabu`.`nb_value_tbl` `c`) where ((`b`.`nb_id_pr_schema_fld` = 'nb_tipodoc_fld') and (`b`.`nb_enterprise_id_fld` = 'demo') and (`a`.`nb_vend_2_fld` = `b`.`nb_id_value_fld`) and (`c`.`nb_id_pr_schema_fld` = 'nb_estado_fld') and (`c`.`nb_enterprise_id_fld` = 'demo') and (`a`.`nb_vend_8_fld` = `c`.`nb_id_value_fld`));


# Replace placeholder table for nb_inventario_vw with correct view syntax
# ------------------------------------------------------------

DROP TABLE `nb_inventario_vw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `nb_inventario_vw`
AS SELECT
   `nb_inventario_tbl`.`nb_inve_1_fld` AS `Id`,
   `nb_inventario_tbl`.`nb_inve_2_fld` AS `Producto`,
   `nb_inventario_tbl`.`nb_inve_3_fld` AS `Cantidad`,
   `nb_inventario_tbl`.`nb_inve_4_fld` AS `Fecha`
FROM `nb_inventario_tbl`;


# Replace placeholder table for nb_factura_d_print_vw with correct view syntax
# ------------------------------------------------------------

DROP TABLE `nb_factura_d_print_vw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `nb_factura_d_print_vw`
AS SELECT
   substr(`nb_detallef_tbl`.`Factura`,1,(locate('-',`nb_detallef_tbl`.`Factura`) - 1)) AS `Id`,
   `nb_detallef_tbl`.`Cantidad` AS `Cantidad`,concat(`nb_detallef_tbl`.`Producto`,'-',`nb_detallef_tbl`.`Descripcion`,'-',`nb_detallef_tbl`.`UOM`) AS `Producto`,
   `nb_detallef_tbl`.`Precio` AS `Precio`,
   `nb_detallef_tbl`.`Iva` AS `Iva`,
   `nb_detallef_tbl`.`Total` AS `Total`
FROM `nb_detallef_tbl` where (`nb_detallef_tbl`.`Producto` is not null);


# Replace placeholder table for nb_cuadrediario_vw with correct view syntax
# ------------------------------------------------------------

DROP TABLE `nb_cuadrediario_vw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `nb_cuadrediario_vw`
AS SELECT
   `nb_factura_vw`.`Tipo` AS `Tipo`,concat('$',format(ifnull(sum(replace(replace(`nb_factura_vw`.`Monto`,',',''),'$','')),0),2)) AS `Monto`
FROM `nabudemo`.`nb_factura_vw` where ((1 = 1) and (str_to_date(`nb_factura_vw`.`Fecha_Factura`,'%m/%d/%Y') > (curdate() - interval 1 day))) group by `nb_factura_vw`.`Tipo`;


# Replace placeholder table for nb_clientes_vw with correct view syntax
# ------------------------------------------------------------

DROP TABLE `nb_clientes_vw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `nb_clientes_vw`
AS SELECT
   `a`.`nb_clie_1_fld` AS `Id`,
   `b`.`nb_value_fld` AS `Tipo_Documento`,
   `a`.`nb_clie_3_fld` AS `Documento`,
   `a`.`nb_clie_6_fld` AS `Nombre`,
   `a`.`nb_clie_8_fld` AS `Direccion`,
   `a`.`nb_clie_9_fld` AS `Telefono`,
   `a`.`nb_clie_10_fld` AS `Email`,
   `c`.`nb_value_fld` AS `Estado`
FROM ((`nabudemo`.`nb_clientes_tbl` `a` join `nabu`.`nb_value_tbl` `b`) join `nabu`.`nb_value_tbl` `c`) where ((`b`.`nb_enterprise_id_fld` = 'demo') and (`b`.`nb_id_pr_schema_fld` = 'nb_tipodoc_fld') and (`a`.`nb_clie_2_fld` = `b`.`nb_id_value_fld`) and (`c`.`nb_enterprise_id_fld` = 'demo') and (`c`.`nb_id_pr_schema_fld` = 'nb_estado_fld') and (`a`.`nb_clie_11_fld` = `c`.`nb_id_value_fld`));


# Replace placeholder table for nb_factura_vw with correct view syntax
# ------------------------------------------------------------

DROP TABLE `nb_factura_vw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `nb_factura_vw`
AS SELECT
   `a`.`nb_fact_1_fld` AS `Factura`,ifnull(`d`.`nb_value_fld`,'Factura') AS `Tipo`,concat('$',format(ifnull(sum(replace(replace(`f`.`Total`,',',''),'$','')),0),2)) AS `Monto`,
   `a`.`nb_fact_8_fld` AS `Fecha_Factura`,
   `a`.`nb_fact_9_fld` AS `Vencimiento`,ucase(ifnull(`c`.`nb_value_fld`,'Cedula Ciudadania')) AS `Tipo_Documento`,
   `a`.`nb_fact_3_fld` AS `Documento`,ucase(`a`.`nb_fact_4_fld`) AS `Nombre`,ucase(ifnull(`e`.`nb_vend_4_fld`,
   `a`.`nb_fact_10_fld`)) AS `Vendedor`,'Imprimir Factura' AS `Imprimir`
FROM (((((`nabudemo`.`nb_facturacion_tbl` `a` join `nabudemo`.`nb_clientes_tbl` `b`) join `nabu`.`nb_value_tbl` `c`) join `nabu`.`nb_value_tbl` `d`) join `nabudemo`.`nb_vendedores_tbl` `e`) join `nabudemo`.`nb_detallef_tbl` `f`) where ((`a`.`nb_fact_3_fld` = `b`.`nb_clie_3_fld`) and (`c`.`nb_id_value_fld` = `b`.`nb_clie_2_fld`) and (`c`.`nb_id_pr_schema_fld` = 'nb_tipodoc_fld') and (`c`.`nb_enterprise_id_fld` = 'demo') and (`d`.`nb_id_value_fld` = `a`.`nb_fact_11_fld`) and (`d`.`nb_id_pr_schema_fld` = 'nb_tipofact_fld') and (`a`.`nb_fact_10_fld` = `e`.`nb_vend_1_fld`) and (concat(`a`.`nb_fact_1_fld`,'-') like substr(`f`.`Factura`,1,locate('-',`f`.`Factura`)))) group by `a`.`nb_fact_1_fld`,ifnull(`d`.`nb_value_fld`,'Factura'),`a`.`nb_fact_8_fld`,`a`.`nb_fact_9_fld`,ucase(ifnull(`c`.`nb_value_fld`,'Cedula Ciudadania')),`a`.`nb_fact_3_fld`,ucase(`a`.`nb_fact_4_fld`),ucase(ifnull(`e`.`nb_vend_4_fld`,`a`.`nb_fact_10_fld`));


# Replace placeholder table for nb_cuadretotal_vw with correct view syntax
# ------------------------------------------------------------

DROP TABLE `nb_cuadretotal_vw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `nb_cuadretotal_vw`
AS SELECT
   extract(year_month
FROM str_to_date(`nb_factura_vw`.`Fecha_Factura`,'%m/%d/%Y')) AS `Periodo`,`nb_factura_vw`.`Tipo` AS `Tipo`,concat('$',format(ifnull(sum(replace(replace(`nb_factura_vw`.`Monto`,',',''),'$','')),0),2)) AS `Monto` from `nabudemo`.`nb_factura_vw` group by extract(year_month from str_to_date(`nb_factura_vw`.`Fecha_Factura`,'%m/%d/%Y')),`nb_factura_vw`.`Tipo` order by extract(year_month from str_to_date(`nb_factura_vw`.`Fecha_Factura`,'%m/%d/%Y')) desc;


# Replace placeholder table for nb_factura_c_print_vw with correct view syntax
# ------------------------------------------------------------

DROP TABLE `nb_factura_c_print_vw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `nb_factura_c_print_vw`
AS SELECT
   `a`.`nb_fact_1_fld` AS `Id`,ifnull((select `c`.`nb_value_fld`
FROM (`nabudemo`.`nb_clientes_tbl` `b` join `nabu`.`nb_value_tbl` `c`) where ((`a`.`nb_fact_3_fld` = `b`.`nb_clie_3_fld`) and (`c`.`nb_enterprise_id_fld` = 'demo') and (`b`.`nb_clie_2_fld` = `c`.`nb_id_value_fld`) and (`c`.`nb_id_pr_schema_fld` = 'nb_tipodoc_fld'))),'Cedula Ciudadania') AS `Tipo_Documento`,`a`.`nb_fact_3_fld` AS `Documento`,`a`.`nb_fact_4_fld` AS `Nombre`,`a`.`nb_fact_5_fld` AS `Direccion`,`a`.`nb_fact_6_fld` AS `Telefono`,`a`.`nb_fact_7_fld` AS `Email`,ucase(date_format(str_to_date(`a`.`nb_fact_8_fld`,'%m/%d/%Y'),'%d-%b-%Y')) AS `Fecha_Factura`,ucase(date_format(str_to_date(`a`.`nb_fact_9_fld`,'%m/%d/%Y'),'%d-%b-%Y')) AS `Vencimiento`,(select `e`.`nb_vend_4_fld` from `nabudemo`.`nb_vendedores_tbl` `e` where (`e`.`nb_vend_1_fld` = `a`.`nb_fact_10_fld`)) AS `Vendedor`,(select `d`.`nb_value_fld` from `nabu`.`nb_value_tbl` `d` where ((`a`.`nb_fact_11_fld` = `d`.`nb_id_value_fld`) and (`d`.`nb_enterprise_id_fld` = 'demo') and (`d`.`nb_id_pr_schema_fld` = 'nb_tipofact_fld'))) AS `Tipo_Factura` from `nabudemo`.`nb_facturacion_tbl` `a`;


# Replace placeholder table for nb_proveedores_vw with correct view syntax
# ------------------------------------------------------------

DROP TABLE `nb_proveedores_vw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `nb_proveedores_vw`
AS SELECT
   `a`.`nb_prov_1_fld` AS `Id`,
   `b`.`nb_value_fld` AS `Tipo_Documento`,
   `a`.`nb_prov_3_fld` AS `Documento`,
   `a`.`nb_prov_4_fld` AS `Nombre`,
   `a`.`nb_prov_5_fld` AS `Direccion`,
   `a`.`nb_prov_6_fld` AS `Telefono`,
   `a`.`nb_prov_7_fld` AS `Email`,
   `c`.`nb_value_fld` AS `Estado`
FROM ((`nabudemo`.`nb_proveedores_tbl` `a` join `nabu`.`nb_value_tbl` `b`) join `nabu`.`nb_value_tbl` `c`) where ((`b`.`nb_id_pr_schema_fld` = 'nb_tipodoc_fld') and (`b`.`nb_enterprise_id_fld` = 'demo') and (`a`.`nb_prov_2_fld` = `b`.`nb_id_value_fld`) and (`c`.`nb_id_pr_schema_fld` = 'nb_estado_fld') and (`c`.`nb_enterprise_id_fld` = 'demo') and (`a`.`nb_prov_8_fld` = `c`.`nb_id_value_fld`));

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
