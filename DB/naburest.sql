-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: localhost    Database: naburest
-- ------------------------------------------------------
-- Server version	5.6.28-0ubuntu0.14.04.1

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

--
-- Table structure for table `nb_chart_data_tbl`
--

DROP TABLE IF EXISTS `nb_chart_data_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nb_chart_data_tbl` (
  `nb_id_page_fld` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `nb_type_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_value_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_pos_fld` int(2) DEFAULT NULL,
  `nb_color_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_page_fld`,`nb_type_fld`,`nb_value_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nb_chart_data_tbl`
--

LOCK TABLES `nb_chart_data_tbl` WRITE;
/*!40000 ALTER TABLE `nb_chart_data_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `nb_chart_data_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nb_chart_tbl`
--

DROP TABLE IF EXISTS `nb_chart_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nb_chart_tbl` (
  `nb_id_page_fld` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `nb_source_fld` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '',
  PRIMARY KEY (`nb_id_page_fld`,`nb_source_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nb_chart_tbl`
--

LOCK TABLES `nb_chart_tbl` WRITE;
/*!40000 ALTER TABLE `nb_chart_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `nb_chart_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nb_clientes_tbl`
--

DROP TABLE IF EXISTS `nb_clientes_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nb_clientes_tbl`
--

LOCK TABLES `nb_clientes_tbl` WRITE;
/*!40000 ALTER TABLE `nb_clientes_tbl` DISABLE KEYS */;
INSERT INTO `nb_clientes_tbl` VALUES (1,'1','14800275','','','Carlos Alberto Garcia Cobo','','CALLE 21N NUMERO 9A-105 APTO 202','0301 265 7760','carlosgc4@gmail.com','0','','','','','','','','',''),(2,'1','1037594925','','','Lilian Patricia Alfonso Marin','','CALLE 21N NUMERO 9A-105 APTO 202','','','0','','','','','','','','',''),(3,'1','12345','','','Pepito Perez','','Calle 1 Cr 1 Cali','2234566','pepito@gmail.com','0','','','','','','','','',''),(4,'1','444444','','','Roger Federer','','Calle 56 Suiza','4567890','roger@tenis.com','0','Ninguna','','','','','','','',''),(5,'1','99999','','','Andy Murray','','Calle 2','098654323','','0','','','','','','','','',''),(6,'1','22222222','','','humberg','','3e3e','ewd','dfdff@hotmail.com','0','','','','','','','','',''),(7,'1','157890765','','','Karen Plazas','','calle 1','23232323','','0','','','','','','','','','');
/*!40000 ALTER TABLE `nb_clientes_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `nb_clientes_vw`
--

DROP TABLE IF EXISTS `nb_clientes_vw`;
/*!50001 DROP VIEW IF EXISTS `nb_clientes_vw`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `nb_clientes_vw` AS SELECT 
 1 AS `Id`,
 1 AS `Tipo_Documento`,
 1 AS `Documento`,
 1 AS `Nombre`,
 1 AS `Direccion`,
 1 AS `Telefono`,
 1 AS `Email`,
 1 AS `Estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `nb_cuadrediario_vw`
--

DROP TABLE IF EXISTS `nb_cuadrediario_vw`;
/*!50001 DROP VIEW IF EXISTS `nb_cuadrediario_vw`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `nb_cuadrediario_vw` AS SELECT 
 1 AS `Tipo`,
 1 AS `Monto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `nb_cuadretotal_vw`
--

DROP TABLE IF EXISTS `nb_cuadretotal_vw`;
/*!50001 DROP VIEW IF EXISTS `nb_cuadretotal_vw`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `nb_cuadretotal_vw` AS SELECT 
 1 AS `Periodo`,
 1 AS `Tipo`,
 1 AS `Monto`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `nb_data_tbl`
--

DROP TABLE IF EXISTS `nb_data_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nb_data_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_id_pr_schema_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_value_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_page_fld`,`nb_id_pr_schema_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nb_data_tbl`
--

LOCK TABLES `nb_data_tbl` WRITE;
/*!40000 ALTER TABLE `nb_data_tbl` DISABLE KEYS */;
INSERT INTO `nb_data_tbl` VALUES ('home','image','../Images/imagenHome2.png');
/*!40000 ALTER TABLE `nb_data_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nb_datagrid_tbl`
--

DROP TABLE IF EXISTS `nb_datagrid_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nb_datagrid_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_config_frmwrk_id_fld` int(11) NOT NULL DEFAULT '0',
  `nb_value_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_page_fld`,`nb_config_frmwrk_id_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nb_datagrid_tbl`
--

LOCK TABLES `nb_datagrid_tbl` WRITE;
/*!40000 ALTER TABLE `nb_datagrid_tbl` DISABLE KEYS */;
INSERT INTO `nb_datagrid_tbl` VALUES ('nb_clientes_v_pg',37,'Informacion Clientes'),('nb_clientes_v_pg',38,'true'),('nb_clientes_v_pg',39,'44'),('nb_clientes_v_pg',40,'true'),('nb_clientes_v_pg',41,'true'),('nb_clientes_v_pg',43,'350'),('nb_clientes_v_pg',44,'nb_clientes_vw'),('nb_facturacion_v_pg',37,'Facturacion'),('nb_facturacion_v_pg',38,'true'),('nb_facturacion_v_pg',39,'44'),('nb_facturacion_v_pg',40,'true'),('nb_facturacion_v_pg',41,'true'),('nb_facturacion_v_pg',43,'350'),('nb_facturacion_v_pg',44,'nb_factura_vw'),('nb_inventario_v_pg',37,'Inventario'),('nb_inventario_v_pg',38,'true'),('nb_inventario_v_pg',39,'44'),('nb_inventario_v_pg',40,'true'),('nb_inventario_v_pg',41,'true'),('nb_inventario_v_pg',43,'350'),('nb_inventario_v_pg',44,'nb_inventario_vw'),('nb_loginv_pg',37,'Usuarios del Sistema'),('nb_loginv_pg',38,'true'),('nb_loginv_pg',39,'44'),('nb_loginv_pg',40,'true'),('nb_loginv_pg',41,'true'),('nb_loginv_pg',43,'350'),('nb_loginv_pg',44,'nb_login_vw'),('nb_productos_v_pg',37,'Productos'),('nb_productos_v_pg',38,'true'),('nb_productos_v_pg',39,'44'),('nb_productos_v_pg',40,'true'),('nb_productos_v_pg',41,'true'),('nb_productos_v_pg',43,'350'),('nb_productos_v_pg',44,'nb_productos_vw'),('nb_reporte_1_pg',37,'Reporte Diario'),('nb_reporte_1_pg',38,'true'),('nb_reporte_1_pg',39,'44'),('nb_reporte_1_pg',40,'true'),('nb_reporte_1_pg',41,'true'),('nb_reporte_1_pg',43,'350'),('nb_reporte_1_pg',44,'nb_cuadrediario_vw'),('nb_reporte_2_pg',37,'Reporte Total'),('nb_reporte_2_pg',38,'true'),('nb_reporte_2_pg',39,'44'),('nb_reporte_2_pg',40,'true'),('nb_reporte_2_pg',41,'true'),('nb_reporte_2_pg',43,'350'),('nb_reporte_2_pg',44,'nb_cuadretotal_vw'),('nb_vendedores_v_pg',37,'Informacion Vendedores'),('nb_vendedores_v_pg',38,'true'),('nb_vendedores_v_pg',39,'44'),('nb_vendedores_v_pg',40,'true'),('nb_vendedores_v_pg',41,'true'),('nb_vendedores_v_pg',43,'350'),('nb_vendedores_v_pg',44,'nb_vendedores_vw'),('nb_proveedores_v_pg',37,'Informacion Proveedores'),('nb_proveedores_v_pg',38,'true'),('nb_proveedores_v_pg',39,'20'),('nb_proveedores_v_pg',40,'true'),('nb_proveedores_v_pg',41,'true'),('nb_proveedores_v_pg',43,'350'),('nb_proveedores_v_pg',44,'nb_proveedores_vw'),('nb_factura_de_pg',37,'Detalle Factura'),('nb_factura_de_pg',38,'true'),('nb_factura_de_pg',39,'44'),('nb_factura_de_pg',40,'true'),('nb_factura_de_pg',41,'true'),('nb_factura_de_pg',43,'350'),('nb_factura_de_pg',44,'nb_detallef_tbl');
/*!40000 ALTER TABLE `nb_datagrid_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nb_datagridcol_tbl`
--

DROP TABLE IF EXISTS `nb_datagridcol_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nb_datagridcol_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_column_fld` int(2) NOT NULL DEFAULT '0',
  `nb_config_frmwrk_id_fld` int(11) NOT NULL DEFAULT '0',
  `nb_value_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_page_fld`,`nb_column_fld`,`nb_config_frmwrk_id_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nb_datagridcol_tbl`
--

LOCK TABLES `nb_datagridcol_tbl` WRITE;
/*!40000 ALTER TABLE `nb_datagridcol_tbl` DISABLE KEYS */;
INSERT INTO `nb_datagridcol_tbl` VALUES ('nb_loginv_pg',1,45,'Id'),('nb_loginv_pg',1,46,'Id'),('nb_loginv_pg',1,47,'true'),('nb_loginv_pg',1,48,'true'),('nb_loginv_pg',1,50,'nbd_id_user_fld={Id}&nbd_email_fld={Login}'),('nb_loginv_pg',1,54,'center'),('nb_loginv_pg',2,45,'Usuario'),('nb_loginv_pg',2,46,'Usuario'),('nb_loginv_pg',2,47,'true'),('nb_loginv_pg',2,48,'true'),('nb_loginv_pg',2,54,'center'),('nb_loginv_pg',3,45,'Login'),('nb_loginv_pg',3,46,'Login'),('nb_loginv_pg',3,47,'true'),('nb_loginv_pg',3,48,'true'),('nb_loginv_pg',3,54,'center'),('nb_loginv_pg',4,45,'Role'),('nb_loginv_pg',4,46,'Role'),('nb_loginv_pg',4,47,'true'),('nb_loginv_pg',4,48,'true'),('nb_loginv_pg',4,54,'center'),('nb_loginv_pg',5,45,'Estado'),('nb_loginv_pg',5,46,'Estado'),('nb_loginv_pg',5,47,'true'),('nb_loginv_pg',5,48,'true'),('nb_loginv_pg',5,54,'center'),('nb_clientes_v_pg',1,45,'Id'),('nb_clientes_v_pg',1,46,'Id'),('nb_clientes_v_pg',1,47,'true'),('nb_clientes_v_pg',1,48,'true'),('nb_clientes_v_pg',1,50,'nb_clie_1_fld={Id}'),('nb_clientes_v_pg',1,54,'center'),('nb_vendedores_v_pg',1,50,'nb_vend_1_fld={Id}'),('nb_vendedores_v_pg',1,48,'true'),('nb_vendedores_v_pg',1,47,'true'),('nb_vendedores_v_pg',1,46,'Id'),('nb_vendedores_v_pg',1,45,'Id'),('nb_proveedores_v_pg',1,50,'nb_prov_1_fld={Id}'),('nb_proveedores_v_pg',1,48,'true'),('nb_proveedores_v_pg',1,47,'true'),('nb_proveedores_v_pg',1,46,'Id'),('nb_proveedores_v_pg',1,45,'Id'),('nb_productos_v_pg',1,50,'nb_prod_1_fld={Id}'),('nb_productos_v_pg',1,48,'true'),('nb_productos_v_pg',1,47,'true'),('nb_productos_v_pg',1,46,'Id'),('nb_productos_v_pg',1,45,'Id'),('nb_facturacion_v_pg',5,48,'true'),('nb_facturacion_v_pg',5,47,'true'),('nb_facturacion_v_pg',5,46,'Tipo_Documento'),('nb_facturacion_v_pg',5,45,'Tipo Documento'),('nb_facturacion_v_pg',4,54,'center'),('nb_facturacion_v_pg',4,50,'nb_fact_1_fld={Factura}'),('nb_facturacion_v_pg',4,48,'true'),('nb_facturacion_v_pg',4,47,'true'),('nb_facturacion_v_pg',4,46,'Vencimiento'),('nb_facturacion_v_pg',4,45,'Vencimiento'),('nb_facturacion_v_pg',3,54,'center'),('nb_inventario_v_pg',4,54,'center'),('nb_inventario_v_pg',4,50,'nb_inve_1_fld={Id}'),('nb_inventario_v_pg',4,48,'true'),('nb_inventario_v_pg',4,47,'true'),('nb_inventario_v_pg',4,46,'Fecha'),('nb_inventario_v_pg',4,45,'Fecha'),('nb_inventario_v_pg',3,54,'center'),('nb_inventario_v_pg',3,50,'nb_inve_1_fld={Id}'),('nb_inventario_v_pg',3,48,'true'),('nb_inventario_v_pg',3,47,'true'),('nb_inventario_v_pg',3,46,'Cantidad'),('nb_inventario_v_pg',3,45,'Cantidad'),('nb_inventario_v_pg',2,54,'center'),('nb_inventario_v_pg',2,50,'nb_inve_1_fld={Id}'),('nb_inventario_v_pg',2,48,'true'),('nb_inventario_v_pg',2,47,'true'),('nb_inventario_v_pg',2,46,'Producto'),('nb_inventario_v_pg',2,45,'Producto'),('nb_inventario_v_pg',1,54,'center'),('nb_inventario_v_pg',1,50,'nb_inve_1_fld={Id}'),('nb_inventario_v_pg',1,48,'true'),('nb_inventario_v_pg',1,47,'true'),('nb_inventario_v_pg',1,46,'Id'),('nb_inventario_v_pg',1,45,'Id'),('nb_clientes_v_pg',2,45,'Tipo Documento'),('nb_clientes_v_pg',2,46,'Tipo_Documento'),('nb_clientes_v_pg',2,47,'true'),('nb_clientes_v_pg',2,48,'true'),('nb_clientes_v_pg',2,50,'nb_clie_1_fld={Id}'),('nb_clientes_v_pg',2,54,'center'),('nb_clientes_v_pg',3,45,'Documento'),('nb_clientes_v_pg',3,46,'Documento'),('nb_clientes_v_pg',3,47,'true'),('nb_clientes_v_pg',3,48,'true'),('nb_clientes_v_pg',3,50,'nb_clie_1_fld={Id}'),('nb_clientes_v_pg',3,54,'center'),('nb_clientes_v_pg',4,45,'Nombre/Razon Social'),('nb_clientes_v_pg',4,46,'Nombre'),('nb_clientes_v_pg',4,47,'true'),('nb_clientes_v_pg',4,48,'true'),('nb_clientes_v_pg',4,50,'nb_clie_1_fld={Id}'),('nb_clientes_v_pg',4,54,'center'),('nb_clientes_v_pg',5,45,'Direccion'),('nb_clientes_v_pg',5,46,'Direccion'),('nb_clientes_v_pg',5,47,'true'),('nb_clientes_v_pg',5,48,'true'),('nb_clientes_v_pg',5,50,'nb_clie_1_fld={Id}'),('nb_clientes_v_pg',5,54,'center'),('nb_clientes_v_pg',6,45,'Telefono'),('nb_clientes_v_pg',6,46,'Telefono'),('nb_clientes_v_pg',6,47,'true'),('nb_clientes_v_pg',6,48,'true'),('nb_clientes_v_pg',6,50,'nb_clie_1_fld={Id}'),('nb_clientes_v_pg',6,54,'center'),('nb_clientes_v_pg',7,45,'Email'),('nb_clientes_v_pg',7,46,'Email'),('nb_clientes_v_pg',7,47,'true'),('nb_clientes_v_pg',7,48,'true'),('nb_clientes_v_pg',7,50,'nb_clie_1_fld={Id}'),('nb_clientes_v_pg',7,54,'center'),('nb_clientes_v_pg',8,45,'Estado'),('nb_clientes_v_pg',8,46,'Estado'),('nb_clientes_v_pg',8,47,'true'),('nb_clientes_v_pg',8,48,'true'),('nb_clientes_v_pg',8,50,'nb_clie_1_fld={Id}'),('nb_clientes_v_pg',8,54,'center'),('nb_vendedores_v_pg',1,54,'center'),('nb_vendedores_v_pg',2,45,'Tipo Documento'),('nb_vendedores_v_pg',2,46,'Tipo_Documento'),('nb_vendedores_v_pg',2,47,'true'),('nb_vendedores_v_pg',2,48,'true'),('nb_vendedores_v_pg',2,50,'nb_vend_1_fld={Id}'),('nb_vendedores_v_pg',2,54,'center'),('nb_vendedores_v_pg',3,45,'Documento'),('nb_vendedores_v_pg',3,46,'Documento'),('nb_vendedores_v_pg',3,47,'true'),('nb_vendedores_v_pg',3,48,'true'),('nb_vendedores_v_pg',3,50,'nb_vend_1_fld={Id}'),('nb_vendedores_v_pg',3,54,'center'),('nb_vendedores_v_pg',4,45,'Nombre/Razon Social'),('nb_vendedores_v_pg',4,46,'Nombre'),('nb_vendedores_v_pg',4,47,'true'),('nb_vendedores_v_pg',4,48,'true'),('nb_vendedores_v_pg',4,50,'nb_vend_1_fld={Id}'),('nb_vendedores_v_pg',4,54,'center'),('nb_vendedores_v_pg',5,45,'Direccion'),('nb_vendedores_v_pg',5,46,'Direccion'),('nb_vendedores_v_pg',5,47,'true'),('nb_vendedores_v_pg',5,48,'true'),('nb_vendedores_v_pg',5,50,'nb_vend_1_fld={Id}'),('nb_vendedores_v_pg',5,54,'center'),('nb_vendedores_v_pg',6,45,'Telefono'),('nb_vendedores_v_pg',6,46,'Telefono'),('nb_vendedores_v_pg',6,47,'true'),('nb_vendedores_v_pg',6,48,'true'),('nb_vendedores_v_pg',6,50,'nb_vend_1_fld={Id}'),('nb_vendedores_v_pg',6,54,'center'),('nb_vendedores_v_pg',7,45,'Email'),('nb_vendedores_v_pg',7,46,'Email'),('nb_vendedores_v_pg',7,47,'true'),('nb_vendedores_v_pg',7,48,'true'),('nb_vendedores_v_pg',7,50,'nb_vend_1_fld={Id}'),('nb_vendedores_v_pg',7,54,'center'),('nb_vendedores_v_pg',8,45,'Estado'),('nb_vendedores_v_pg',8,46,'Estado'),('nb_vendedores_v_pg',8,47,'true'),('nb_vendedores_v_pg',8,48,'true'),('nb_vendedores_v_pg',8,50,'nb_vend_1_fld={Id}'),('nb_vendedores_v_pg',8,54,'center'),('nb_proveedores_v_pg',1,54,'center'),('nb_proveedores_v_pg',2,45,'Tipo Documento'),('nb_proveedores_v_pg',2,46,'Tipo_Documento'),('nb_proveedores_v_pg',2,47,'true'),('nb_proveedores_v_pg',2,48,'true'),('nb_proveedores_v_pg',2,50,'nb_prov_1_fld={Id}'),('nb_proveedores_v_pg',2,54,'center'),('nb_proveedores_v_pg',3,45,'Documento'),('nb_proveedores_v_pg',3,46,'Documento'),('nb_proveedores_v_pg',3,47,'true'),('nb_proveedores_v_pg',3,48,'true'),('nb_proveedores_v_pg',3,50,'nb_prov_1_fld={Id}'),('nb_proveedores_v_pg',3,54,'center'),('nb_proveedores_v_pg',4,45,'Nombre/Razon Social'),('nb_proveedores_v_pg',4,46,'Nombre'),('nb_proveedores_v_pg',4,47,'true'),('nb_proveedores_v_pg',4,48,'true'),('nb_proveedores_v_pg',4,50,'nb_prov_1_fld={Id}'),('nb_proveedores_v_pg',4,54,'center'),('nb_proveedores_v_pg',5,45,'Direccion'),('nb_proveedores_v_pg',5,46,'Direccion'),('nb_proveedores_v_pg',5,47,'true'),('nb_proveedores_v_pg',5,48,'true'),('nb_proveedores_v_pg',5,50,'nb_prov_1_fld={Id}'),('nb_proveedores_v_pg',5,54,'center'),('nb_proveedores_v_pg',6,45,'Telefono'),('nb_proveedores_v_pg',6,46,'Telefono'),('nb_proveedores_v_pg',6,47,'true'),('nb_proveedores_v_pg',6,48,'true'),('nb_proveedores_v_pg',6,50,'nb_prov_1_fld={Id}'),('nb_proveedores_v_pg',6,54,'center'),('nb_proveedores_v_pg',7,45,'Email'),('nb_proveedores_v_pg',7,46,'Email'),('nb_proveedores_v_pg',7,47,'true'),('nb_proveedores_v_pg',7,48,'true'),('nb_proveedores_v_pg',7,50,'nb_prov_1_fld={Id}'),('nb_proveedores_v_pg',7,54,'center'),('nb_proveedores_v_pg',8,45,'Estado'),('nb_proveedores_v_pg',8,46,'Estado'),('nb_proveedores_v_pg',8,47,'true'),('nb_proveedores_v_pg',8,48,'true'),('nb_proveedores_v_pg',8,50,'nb_prov_1_fld={Id}'),('nb_proveedores_v_pg',8,54,'center'),('nb_productos_v_pg',1,54,'center'),('nb_productos_v_pg',2,45,'Descripcion'),('nb_productos_v_pg',2,46,'Descripcion'),('nb_productos_v_pg',2,47,'true'),('nb_productos_v_pg',2,48,'true'),('nb_productos_v_pg',2,50,'nb_prod_1_fld={Id}'),('nb_productos_v_pg',2,54,'center'),('nb_productos_v_pg',3,45,'Marca'),('nb_productos_v_pg',3,46,'Marca'),('nb_productos_v_pg',3,47,'true'),('nb_productos_v_pg',3,48,'true'),('nb_productos_v_pg',3,50,'nb_prod_1_fld={Id}'),('nb_productos_v_pg',3,54,'center'),('nb_productos_v_pg',4,45,'Modelo'),('nb_productos_v_pg',4,46,'Modelo'),('nb_productos_v_pg',4,47,'true'),('nb_productos_v_pg',4,48,'true'),('nb_productos_v_pg',4,50,'nb_prod_1_fld={Id}'),('nb_productos_v_pg',4,54,'center'),('nb_productos_v_pg',5,45,'UOM'),('nb_productos_v_pg',5,46,'UOM'),('nb_productos_v_pg',5,47,'true'),('nb_productos_v_pg',5,48,'true'),('nb_productos_v_pg',5,50,'nb_prod_1_fld={Id}'),('nb_productos_v_pg',5,54,'center'),('nb_productos_v_pg',6,45,'Precio'),('nb_productos_v_pg',6,46,'Precio'),('nb_productos_v_pg',6,47,'true'),('nb_productos_v_pg',6,48,'true'),('nb_productos_v_pg',6,50,'nb_prod_1_fld={Id}'),('nb_productos_v_pg',6,54,'center'),('nb_productos_v_pg',7,45,'IVA'),('nb_productos_v_pg',7,46,'Iva'),('nb_productos_v_pg',7,47,'true'),('nb_productos_v_pg',7,48,'true'),('nb_productos_v_pg',7,50,'nb_prod_1_fld={Id}'),('nb_productos_v_pg',7,54,'center'),('nb_facturacion_v_pg',7,46,'Nombre'),('nb_facturacion_v_pg',7,45,'Nombre'),('nb_facturacion_v_pg',6,54,'center'),('nb_facturacion_v_pg',5,50,'nb_fact_1_fld={Factura}'),('nb_facturacion_v_pg',5,54,'center'),('nb_facturacion_v_pg',6,45,'Documento'),('nb_facturacion_v_pg',6,46,'Documento'),('nb_facturacion_v_pg',6,47,'true'),('nb_facturacion_v_pg',6,48,'true'),('nb_facturacion_v_pg',6,50,'nb_fact_1_fld={Factura}'),('nb_facturacion_v_pg',3,50,'nb_fact_1_fld={Factura}'),('nb_facturacion_v_pg',3,48,'true'),('nb_facturacion_v_pg',3,47,'true'),('nb_facturacion_v_pg',3,46,'Fecha_Factura'),('nb_facturacion_v_pg',3,45,'Fecha Factura'),('nb_facturacion_v_pg',2,54,'center'),('nb_facturacion_v_pg',2,50,'nb_fact_1_fld={Factura}'),('nb_facturacion_v_pg',1,45,'Factura'),('nb_facturacion_v_pg',1,46,'Factura'),('nb_facturacion_v_pg',1,47,'true'),('nb_facturacion_v_pg',1,48,'true'),('nb_facturacion_v_pg',1,50,'nb_fact_1_fld={Factura}'),('nb_facturacion_v_pg',1,54,'center'),('nb_facturacion_v_pg',2,45,'Tipo'),('nb_facturacion_v_pg',2,46,'Tipo'),('nb_facturacion_v_pg',2,47,'true'),('nb_facturacion_v_pg',2,48,'true'),('nb_facturacion_v_pg',7,47,'true'),('nb_facturacion_v_pg',7,48,'true'),('nb_facturacion_v_pg',7,50,'nb_fact_1_fld={Factura}'),('nb_facturacion_v_pg',7,54,'center'),('nb_facturacion_v_pg',10,51,'target=\'_blank\''),('nb_facturacion_v_pg',10,45,'Imprimir'),('nb_facturacion_v_pg',10,46,'Imprimir'),('nb_facturacion_v_pg',10,47,'true'),('nb_facturacion_v_pg',10,48,'true'),('nb_facturacion_v_pg',10,64,'../Reports/report.php?tipo=fact&id={Factura}'),('nb_facturacion_v_pg',10,54,'center'),('nb_facturacion_v_pg',8,45,'Vendedor'),('nb_facturacion_v_pg',8,46,'Vendedor'),('nb_facturacion_v_pg',8,47,'true'),('nb_facturacion_v_pg',8,48,'true'),('nb_facturacion_v_pg',8,50,'nb_fact_1_fld={Factura}'),('nb_facturacion_v_pg',8,54,'center'),('nb_facturacion_v_pg',9,50,'nb_fact_1_fld={Factura}'),('nb_facturacion_v_pg',9,48,'true'),('nb_facturacion_v_pg',9,47,'true'),('nb_facturacion_v_pg',9,46,'Monto'),('nb_facturacion_v_pg',9,45,'Monto'),('nb_facturacion_v_pg',9,54,'center');
/*!40000 ALTER TABLE `nb_datagridcol_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nb_detallef_tbl`
--

DROP TABLE IF EXISTS `nb_detallef_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nb_detallef_tbl`
--

LOCK TABLES `nb_detallef_tbl` WRITE;
/*!40000 ALTER TABLE `nb_detallef_tbl` DISABLE KEYS */;
INSERT INTO `nb_detallef_tbl` VALUES ('1-01','1','Comida 1','Kilogramo','$12,400.00','12','16%','$172,608.00'),('1-02','2','Carro','Gramo','$12,450.00','1','16%','$14,442.00'),('1-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('1-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('1-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('1-06',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('1-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('1-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('1-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('1-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('1-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('1-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('1-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('1-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('1-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('1-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('1-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('1-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('1-19',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('1-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2-01','1','Comida 1','Kilogramo','$12,400.00','10','16%','$143,840.00'),('2-02',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2-06',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2-19',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('3-01','1','Comida 1','Kilogramo','$12,400.00','1','16%','$14,384.00'),('3-02',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('3-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('3-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('3-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('3-06',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('3-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('3-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('3-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('3-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('3-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('3-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('3-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('3-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('3-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('3-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('3-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('3-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('3-19',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('3-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4-02',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4-06',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4-19',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5-01','1','Comida 1','Kilogramo','$12,400.00','5','16%','$71,920.00'),('5-02',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5-06',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5-19',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('6-01','1','Comida 1','Kilogramo','$12,400.00','23','16%','$330,832.00'),('6-02','2','Carro','Gramo','$12,450.00','12','16%','$173,304.00'),('6-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('6-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('6-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('6-06',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('6-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('6-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('6-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('6-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('6-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('6-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('6-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('6-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('6-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('6-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('6-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('6-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('6-19',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('6-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `nb_detallef_tbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Productos` BEFORE UPDATE ON `nb_detallef_tbl` FOR EACH ROW BEGIN

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
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `nb_event_tbl`
--

DROP TABLE IF EXISTS `nb_event_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nb_event_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_id_field_1_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `nb_id_field_2_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `nb_id_table_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_id_field_3_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_id_field_4_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_page_fld`,`nb_id_field_1_fld`,`nb_id_field_2_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nb_event_tbl`
--

LOCK TABLES `nb_event_tbl` WRITE;
/*!40000 ALTER TABLE `nb_event_tbl` DISABLE KEYS */;
INSERT INTO `nb_event_tbl` VALUES ('nb_facturacion_pg','nb_fact_3_fld','nb_fact_4_fld','nb_clientes_tbl','nb_clie_3_fld','nb_clie_6_fld'),('nb_facturacion_pg','nb_fact_3_fld','nb_fact_5_fld','nb_clientes_tbl','nb_clie_3_fld','nb_clie_8_fld'),('nb_facturacion_pg','nb_fact_3_fld','nb_fact_6_fld','nb_clientes_tbl','nb_clie_3_fld','nb_clie_9_fld'),('nb_facturacion_pg','nb_fact_3_fld','nb_fact_7_fld','nb_clientes_tbl','nb_clie_3_fld','nb_clie_10_fld');
/*!40000 ALTER TABLE `nb_event_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `nb_factura_c_print_vw`
--

DROP TABLE IF EXISTS `nb_factura_c_print_vw`;
/*!50001 DROP VIEW IF EXISTS `nb_factura_c_print_vw`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `nb_factura_c_print_vw` AS SELECT 
 1 AS `Id`,
 1 AS `Tipo_Documento`,
 1 AS `Documento`,
 1 AS `Nombre`,
 1 AS `Direccion`,
 1 AS `Telefono`,
 1 AS `Email`,
 1 AS `Fecha_Factura`,
 1 AS `Vencimiento`,
 1 AS `Vendedor`,
 1 AS `Tipo_Factura`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `nb_factura_d_print_vw`
--

DROP TABLE IF EXISTS `nb_factura_d_print_vw`;
/*!50001 DROP VIEW IF EXISTS `nb_factura_d_print_vw`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `nb_factura_d_print_vw` AS SELECT 
 1 AS `Id`,
 1 AS `Cantidad`,
 1 AS `Producto`,
 1 AS `Precio`,
 1 AS `Iva`,
 1 AS `Total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `nb_factura_vw`
--

DROP TABLE IF EXISTS `nb_factura_vw`;
/*!50001 DROP VIEW IF EXISTS `nb_factura_vw`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `nb_factura_vw` AS SELECT 
 1 AS `Factura`,
 1 AS `Tipo`,
 1 AS `Monto`,
 1 AS `Fecha_Factura`,
 1 AS `Vencimiento`,
 1 AS `Tipo_Documento`,
 1 AS `Documento`,
 1 AS `Nombre`,
 1 AS `Vendedor`,
 1 AS `Imprimir`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `nb_facturacion_tbl`
--

DROP TABLE IF EXISTS `nb_facturacion_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nb_facturacion_tbl`
--

LOCK TABLES `nb_facturacion_tbl` WRITE;
/*!40000 ALTER TABLE `nb_facturacion_tbl` DISABLE KEYS */;
INSERT INTO `nb_facturacion_tbl` VALUES ('2','','14800275','Carlos Alberto Garcia Cobo','CALLE 21N NUMERO 9A-105 APTO 202','0301 265 7760','carlosgc4@gmail.com','02/03/2016','02/03/2016','1','1','','','','','','','','',''),('1','','14800275','Carlos Alberto Garcia Cobo','CALLE 21N NUMERO 9A-105 APTO 202','0301 265 7760','carlosgc4@gmail.com','02/03/2016','12/03/2016','1','0','','','','','','','','',''),('3','','44444','Carlos','calle 1','2234566','','02/04/2016','08/03/2016','1','0','','','','','','','','',''),('4','','14800275','Carlos Alberto Garcia Cobo','CALLE 21N NUMERO 9A-105 APTO 202','0301 265 7760','carlosgc4@gmail.com','02/23/2016','02/23/2016','1','0','','','','','','','','',''),('5','','14800275','Carlos Alberto Garcia Cobo','CALLE 21N NUMERO 9A-105 APTO 202','0301 265 7760','carlosgc4@gmail.com','03/13/2016','','1','0','','','','','','','','',''),('6','','157890765','Karen Plazas','calle 1','23232323','','05/24/2016 00:00','05/02/2016 00:00','1','0','','','','','','','','','');
/*!40000 ALTER TABLE `nb_facturacion_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nb_form_tables_tbl`
--

DROP TABLE IF EXISTS `nb_form_tables_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nb_form_tables_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `nb_id_table_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `nb_id_page_field_fld` varchar(100) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_id_table_field_fld` varchar(100) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`nb_id_page_fld`,`nb_id_table_fld`,`nb_id_page_field_fld`,`nb_id_table_field_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nb_form_tables_tbl`
--

LOCK TABLES `nb_form_tables_tbl` WRITE;
/*!40000 ALTER TABLE `nb_form_tables_tbl` DISABLE KEYS */;
INSERT INTO `nb_form_tables_tbl` VALUES ('nb_clientes_m_pg','nb_clientes_tbl','nb_clie_10_fld','nb_clie_10_fld'),('nb_clientes_m_pg','nb_clientes_tbl','nb_clie_11_fld','nb_clie_11_fld'),('nb_clientes_m_pg','nb_clientes_tbl','nb_clie_12_fld','nb_clie_12_fld'),('nb_clientes_m_pg','nb_clientes_tbl','nb_clie_13_fld','nb_clie_13_fld'),('nb_clientes_m_pg','nb_clientes_tbl','nb_clie_14_fld','nb_clie_14_fld'),('nb_clientes_m_pg','nb_clientes_tbl','nb_clie_15_fld','nb_clie_15_fld'),('nb_clientes_m_pg','nb_clientes_tbl','nb_clie_16_fld','nb_clie_16_fld'),('nb_clientes_m_pg','nb_clientes_tbl','nb_clie_17_fld','nb_clie_17_fld'),('nb_clientes_m_pg','nb_clientes_tbl','nb_clie_18_fld','nb_clie_18_fld'),('nb_clientes_m_pg','nb_clientes_tbl','nb_clie_19_fld','nb_clie_19_fld'),('nb_clientes_m_pg','nb_clientes_tbl','nb_clie_1_fld','nb_clie_1_fld'),('nb_clientes_m_pg','nb_clientes_tbl','nb_clie_20_fld','nb_clie_20_fld'),('nb_clientes_m_pg','nb_clientes_tbl','nb_clie_2_fld','nb_clie_2_fld'),('nb_clientes_m_pg','nb_clientes_tbl','nb_clie_3_fld','nb_clie_3_fld'),('nb_clientes_m_pg','nb_clientes_tbl','nb_clie_4_fld','nb_clie_4_fld'),('nb_clientes_m_pg','nb_clientes_tbl','nb_clie_5_fld','nb_clie_5_fld'),('nb_clientes_m_pg','nb_clientes_tbl','nb_clie_6_fld','nb_clie_6_fld'),('nb_clientes_m_pg','nb_clientes_tbl','nb_clie_7_fld','nb_clie_7_fld'),('nb_clientes_m_pg','nb_clientes_tbl','nb_clie_8_fld','nb_clie_8_fld'),('nb_clientes_m_pg','nb_clientes_tbl','nb_clie_9_fld','nb_clie_9_fld'),('nb_clientes_pg','nb_clientes_tbl','nb_clie_10_fld','nb_clie_10_fld'),('nb_clientes_pg','nb_clientes_tbl','nb_clie_11_fld','nb_clie_11_fld'),('nb_clientes_pg','nb_clientes_tbl','nb_clie_12_fld','nb_clie_12_fld'),('nb_clientes_pg','nb_clientes_tbl','nb_clie_13_fld','nb_clie_13_fld'),('nb_clientes_pg','nb_clientes_tbl','nb_clie_14_fld','nb_clie_14_fld'),('nb_clientes_pg','nb_clientes_tbl','nb_clie_15_fld','nb_clie_15_fld'),('nb_clientes_pg','nb_clientes_tbl','nb_clie_16_fld','nb_clie_16_fld'),('nb_clientes_pg','nb_clientes_tbl','nb_clie_17_fld','nb_clie_17_fld'),('nb_clientes_pg','nb_clientes_tbl','nb_clie_18_fld','nb_clie_18_fld'),('nb_clientes_pg','nb_clientes_tbl','nb_clie_19_fld','nb_clie_19_fld'),('nb_clientes_pg','nb_clientes_tbl','nb_clie_1_fld','nb_clie_1_fld'),('nb_clientes_pg','nb_clientes_tbl','nb_clie_20_fld','nb_clie_20_fld'),('nb_clientes_pg','nb_clientes_tbl','nb_clie_2_fld','nb_clie_2_fld'),('nb_clientes_pg','nb_clientes_tbl','nb_clie_3_fld','nb_clie_3_fld'),('nb_clientes_pg','nb_clientes_tbl','nb_clie_4_fld','nb_clie_4_fld'),('nb_clientes_pg','nb_clientes_tbl','nb_clie_5_fld','nb_clie_5_fld'),('nb_clientes_pg','nb_clientes_tbl','nb_clie_6_fld','nb_clie_6_fld'),('nb_clientes_pg','nb_clientes_tbl','nb_clie_7_fld','nb_clie_7_fld'),('nb_clientes_pg','nb_clientes_tbl','nb_clie_8_fld','nb_clie_8_fld'),('nb_clientes_pg','nb_clientes_tbl','nb_clie_9_fld','nb_clie_9_fld'),('nb_detallef_pg','nb_detallef_tbl','nb_detaf_1_fld','nb_detaf_1_fld'),('nb_detallef_pg','nb_detallef_tbl','nb_detaf_2_fld','nb_detaf_2_fld'),('nb_detallef_pg','nb_detallef_tbl','nb_detaf_3_fld','nb_detaf_3_fld'),('nb_detallef_pg','nb_detallef_tbl','nb_detaf_4_fld','nb_detaf_4_fld'),('nb_detallef_pg','nb_detallef_tbl','nb_detaf_5_fld','nb_detaf_5_fld'),('nb_detallef_pg','nb_detallef_tbl','nb_detaf_6_fld','nb_detaf_6_fld'),('nb_detallef_pg','nb_detallef_tbl','nb_detaf_7_fld','nb_detaf_7_fld'),('nb_detallef_pg','nb_detallef_tbl','nb_detaf_8_fld','nb_detaf_8_fld'),('nb_detallef_pg','nb_detallef_tbl','nb_detaf_9_fld','nb_detaf_9_fld'),('nb_facturacion_m_pg','nb_facturacion_tbl','nb_fact_10_fld','nb_fact_10_fld'),('nb_facturacion_m_pg','nb_facturacion_tbl','nb_fact_11_fld','nb_fact_11_fld'),('nb_facturacion_m_pg','nb_facturacion_tbl','nb_fact_12_fld','nb_fact_12_fld'),('nb_facturacion_m_pg','nb_facturacion_tbl','nb_fact_13_fld','nb_fact_13_fld'),('nb_facturacion_m_pg','nb_facturacion_tbl','nb_fact_14_fld','nb_fact_14_fld'),('nb_facturacion_m_pg','nb_facturacion_tbl','nb_fact_15_fld','nb_fact_15_fld'),('nb_facturacion_m_pg','nb_facturacion_tbl','nb_fact_16_fld','nb_fact_16_fld'),('nb_facturacion_m_pg','nb_facturacion_tbl','nb_fact_17_fld','nb_fact_17_fld'),('nb_facturacion_m_pg','nb_facturacion_tbl','nb_fact_18_fld','nb_fact_18_fld'),('nb_facturacion_m_pg','nb_facturacion_tbl','nb_fact_19_fld','nb_fact_19_fld'),('nb_facturacion_m_pg','nb_facturacion_tbl','nb_fact_1_fld','nb_fact_1_fld'),('nb_facturacion_m_pg','nb_facturacion_tbl','nb_fact_20_fld','nb_fact_20_fld'),('nb_facturacion_m_pg','nb_facturacion_tbl','nb_fact_2_fld','nb_fact_2_fld'),('nb_facturacion_m_pg','nb_facturacion_tbl','nb_fact_3_fld','nb_fact_3_fld'),('nb_facturacion_m_pg','nb_facturacion_tbl','nb_fact_4_fld','nb_fact_4_fld'),('nb_facturacion_m_pg','nb_facturacion_tbl','nb_fact_5_fld','nb_fact_5_fld'),('nb_facturacion_m_pg','nb_facturacion_tbl','nb_fact_6_fld','nb_fact_6_fld'),('nb_facturacion_m_pg','nb_facturacion_tbl','nb_fact_7_fld','nb_fact_7_fld'),('nb_facturacion_m_pg','nb_facturacion_tbl','nb_fact_8_fld','nb_fact_8_fld'),('nb_facturacion_m_pg','nb_facturacion_tbl','nb_fact_9_fld','nb_fact_9_fld'),('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_10_fld','nb_fact_10_fld'),('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_11_fld','nb_fact_11_fld'),('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_12_fld','nb_fact_12_fld'),('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_13_fld','nb_fact_13_fld'),('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_14_fld','nb_fact_14_fld'),('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_15_fld','nb_fact_15_fld'),('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_16_fld','nb_fact_16_fld'),('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_17_fld','nb_fact_17_fld'),('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_18_fld','nb_fact_18_fld'),('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_19_fld','nb_fact_19_fld'),('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_1_fld','nb_fact_1_fld'),('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_20_fld','nb_fact_20_fld'),('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_2_fld','nb_fact_2_fld'),('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_3_fld','nb_fact_3_fld'),('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_4_fld','nb_fact_4_fld'),('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_5_fld','nb_fact_5_fld'),('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_6_fld','nb_fact_6_fld'),('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_7_fld','nb_fact_7_fld'),('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_8_fld','nb_fact_8_fld'),('nb_facturacion_pg','nb_facturacion_tbl','nb_fact_9_fld','nb_fact_9_fld'),('nb_inventario_m_pg','nb_inventario_tbl','nb_inve_10_fld','nb_inve_10_fld'),('nb_inventario_m_pg','nb_inventario_tbl','nb_inve_11_fld','nb_inve_11_fld'),('nb_inventario_m_pg','nb_inventario_tbl','nb_inve_12_fld','nb_inve_12_fld'),('nb_inventario_m_pg','nb_inventario_tbl','nb_inve_13_fld','nb_inve_13_fld'),('nb_inventario_m_pg','nb_inventario_tbl','nb_inve_14_fld','nb_inve_14_fld'),('nb_inventario_m_pg','nb_inventario_tbl','nb_inve_15_fld','nb_inve_15_fld'),('nb_inventario_m_pg','nb_inventario_tbl','nb_inve_16_fld','nb_inve_16_fld'),('nb_inventario_m_pg','nb_inventario_tbl','nb_inve_17_fld','nb_inve_17_fld'),('nb_inventario_m_pg','nb_inventario_tbl','nb_inve_18_fld','nb_inve_18_fld'),('nb_inventario_m_pg','nb_inventario_tbl','nb_inve_19_fld','nb_inve_19_fld'),('nb_inventario_m_pg','nb_inventario_tbl','nb_inve_1_fld','nb_inve_1_fld'),('nb_inventario_m_pg','nb_inventario_tbl','nb_inve_20_fld','nb_inve_20_fld'),('nb_inventario_m_pg','nb_inventario_tbl','nb_inve_2_fld','nb_inve_2_fld'),('nb_inventario_m_pg','nb_inventario_tbl','nb_inve_3_fld','nb_inve_3_fld'),('nb_inventario_m_pg','nb_inventario_tbl','nb_inve_4_fld','nb_inve_4_fld'),('nb_inventario_m_pg','nb_inventario_tbl','nb_inve_5_fld','nb_inve_5_fld'),('nb_inventario_m_pg','nb_inventario_tbl','nb_inve_6_fld','nb_inve_6_fld'),('nb_inventario_m_pg','nb_inventario_tbl','nb_inve_7_fld','nb_inve_7_fld'),('nb_inventario_m_pg','nb_inventario_tbl','nb_inve_8_fld','nb_inve_8_fld'),('nb_inventario_m_pg','nb_inventario_tbl','nb_inve_9_fld','nb_inve_9_fld'),('nb_inventario_pg','nb_inventario_tbl','nb_inve_10_fld','nb_inve_10_fld'),('nb_inventario_pg','nb_inventario_tbl','nb_inve_11_fld','nb_inve_11_fld'),('nb_inventario_pg','nb_inventario_tbl','nb_inve_12_fld','nb_inve_12_fld'),('nb_inventario_pg','nb_inventario_tbl','nb_inve_13_fld','nb_inve_13_fld'),('nb_inventario_pg','nb_inventario_tbl','nb_inve_14_fld','nb_inve_14_fld'),('nb_inventario_pg','nb_inventario_tbl','nb_inve_15_fld','nb_inve_15_fld'),('nb_inventario_pg','nb_inventario_tbl','nb_inve_16_fld','nb_inve_16_fld'),('nb_inventario_pg','nb_inventario_tbl','nb_inve_17_fld','nb_inve_17_fld'),('nb_inventario_pg','nb_inventario_tbl','nb_inve_18_fld','nb_inve_18_fld'),('nb_inventario_pg','nb_inventario_tbl','nb_inve_19_fld','nb_inve_19_fld'),('nb_inventario_pg','nb_inventario_tbl','nb_inve_1_fld','nb_inve_1_fld'),('nb_inventario_pg','nb_inventario_tbl','nb_inve_20_fld','nb_inve_20_fld'),('nb_inventario_pg','nb_inventario_tbl','nb_inve_2_fld','nb_inve_2_fld'),('nb_inventario_pg','nb_inventario_tbl','nb_inve_3_fld','nb_inve_3_fld'),('nb_inventario_pg','nb_inventario_tbl','nb_inve_4_fld','nb_inve_4_fld'),('nb_inventario_pg','nb_inventario_tbl','nb_inve_5_fld','nb_inve_5_fld'),('nb_inventario_pg','nb_inventario_tbl','nb_inve_6_fld','nb_inve_6_fld'),('nb_inventario_pg','nb_inventario_tbl','nb_inve_7_fld','nb_inve_7_fld'),('nb_inventario_pg','nb_inventario_tbl','nb_inve_8_fld','nb_inve_8_fld'),('nb_inventario_pg','nb_inventario_tbl','nb_inve_9_fld','nb_inve_9_fld'),('nb_password_pg','nbd_role_user_tbl','nbd_id_user_fld','nbd_id_user_fld'),('nb_password_pg','nbd_role_user_tbl','nb_id_role_fld','nb_id_role_fld'),('nb_password_pg','nbd_user_tbl','nbd_descr_fld','nbd_descr_fld'),('nb_password_pg','nbd_user_tbl','nbd_email_fld','nbd_email_fld'),('nb_password_pg','nbd_user_tbl','nbd_id_user_fld','nbd_id_user_fld'),('nb_password_pg','nbd_user_tbl','nbd_password_fld','nbd_password_fld'),('nb_password_pg','nbd_user_tbl','nb_estado_fld','nb_estado_fld'),('nb_productos_m_pg','nb_productos_tbl','nb_prod_10_fld','nb_prod_10_fld'),('nb_productos_m_pg','nb_productos_tbl','nb_prod_11_fld','nb_prod_11_fld'),('nb_productos_m_pg','nb_productos_tbl','nb_prod_12_fld','nb_prod_12_fld'),('nb_productos_m_pg','nb_productos_tbl','nb_prod_13_fld','nb_prod_13_fld'),('nb_productos_m_pg','nb_productos_tbl','nb_prod_14_fld','nb_prod_14_fld'),('nb_productos_m_pg','nb_productos_tbl','nb_prod_15_fld','nb_prod_15_fld'),('nb_productos_m_pg','nb_productos_tbl','nb_prod_16_fld','nb_prod_16_fld'),('nb_productos_m_pg','nb_productos_tbl','nb_prod_17_fld','nb_prod_17_fld'),('nb_productos_m_pg','nb_productos_tbl','nb_prod_18_fld','nb_prod_18_fld'),('nb_productos_m_pg','nb_productos_tbl','nb_prod_19_fld','nb_prod_19_fld'),('nb_productos_m_pg','nb_productos_tbl','nb_prod_1_fld','nb_prod_1_fld'),('nb_productos_m_pg','nb_productos_tbl','nb_prod_20_fld','nb_prod_20_fld'),('nb_productos_m_pg','nb_productos_tbl','nb_prod_2_fld','nb_prod_2_fld'),('nb_productos_m_pg','nb_productos_tbl','nb_prod_3_fld','nb_prod_3_fld'),('nb_productos_m_pg','nb_productos_tbl','nb_prod_4_fld','nb_prod_4_fld'),('nb_productos_m_pg','nb_productos_tbl','nb_prod_5_fld','nb_prod_5_fld'),('nb_productos_m_pg','nb_productos_tbl','nb_prod_6_fld','nb_prod_6_fld'),('nb_productos_m_pg','nb_productos_tbl','nb_prod_7_fld','nb_prod_7_fld'),('nb_productos_m_pg','nb_productos_tbl','nb_prod_8_fld','nb_prod_8_fld'),('nb_productos_m_pg','nb_productos_tbl','nb_prod_9_fld','nb_prod_9_fld'),('nb_productos_pg','nb_productos_tbl','nb_prod_10_fld','nb_prod_10_fld'),('nb_productos_pg','nb_productos_tbl','nb_prod_11_fld','nb_prod_11_fld'),('nb_productos_pg','nb_productos_tbl','nb_prod_12_fld','nb_prod_12_fld'),('nb_productos_pg','nb_productos_tbl','nb_prod_13_fld','nb_prod_13_fld'),('nb_productos_pg','nb_productos_tbl','nb_prod_14_fld','nb_prod_14_fld'),('nb_productos_pg','nb_productos_tbl','nb_prod_15_fld','nb_prod_15_fld'),('nb_productos_pg','nb_productos_tbl','nb_prod_16_fld','nb_prod_16_fld'),('nb_productos_pg','nb_productos_tbl','nb_prod_17_fld','nb_prod_17_fld'),('nb_productos_pg','nb_productos_tbl','nb_prod_18_fld','nb_prod_18_fld'),('nb_productos_pg','nb_productos_tbl','nb_prod_19_fld','nb_prod_19_fld'),('nb_productos_pg','nb_productos_tbl','nb_prod_1_fld','nb_prod_1_fld'),('nb_productos_pg','nb_productos_tbl','nb_prod_20_fld','nb_prod_20_fld'),('nb_productos_pg','nb_productos_tbl','nb_prod_2_fld','nb_prod_2_fld'),('nb_productos_pg','nb_productos_tbl','nb_prod_3_fld','nb_prod_3_fld'),('nb_productos_pg','nb_productos_tbl','nb_prod_4_fld','nb_prod_4_fld'),('nb_productos_pg','nb_productos_tbl','nb_prod_5_fld','nb_prod_5_fld'),('nb_productos_pg','nb_productos_tbl','nb_prod_6_fld','nb_prod_6_fld'),('nb_productos_pg','nb_productos_tbl','nb_prod_7_fld','nb_prod_7_fld'),('nb_productos_pg','nb_productos_tbl','nb_prod_8_fld','nb_prod_8_fld'),('nb_productos_pg','nb_productos_tbl','nb_prod_9_fld','nb_prod_9_fld'),('nb_product_pg','nb_productos_tbl','nb_desc_producto_fld','nb_desc_producto_fld'),('nb_product_pg','nb_productos_tbl','nb_id_producto_fld','nb_id_producto_fld'),('nb_product_pg','nb_productos_tbl','nb_marc_producto_fld','nb_marc_producto_fld'),('nb_proveedores_m_pg','nb_proveedores_tbl','nb_prov_10_fld','nb_prov_10_fld'),('nb_proveedores_m_pg','nb_proveedores_tbl','nb_prov_11_fld','nb_prov_11_fld'),('nb_proveedores_m_pg','nb_proveedores_tbl','nb_prov_12_fld','nb_prov_12_fld'),('nb_proveedores_m_pg','nb_proveedores_tbl','nb_prov_13_fld','nb_prov_13_fld'),('nb_proveedores_m_pg','nb_proveedores_tbl','nb_prov_14_fld','nb_prov_14_fld'),('nb_proveedores_m_pg','nb_proveedores_tbl','nb_prov_15_fld','nb_prov_15_fld'),('nb_proveedores_m_pg','nb_proveedores_tbl','nb_prov_16_fld','nb_prov_16_fld'),('nb_proveedores_m_pg','nb_proveedores_tbl','nb_prov_17_fld','nb_prov_17_fld'),('nb_proveedores_m_pg','nb_proveedores_tbl','nb_prov_18_fld','nb_prov_18_fld'),('nb_proveedores_m_pg','nb_proveedores_tbl','nb_prov_19_fld','nb_prov_19_fld'),('nb_proveedores_m_pg','nb_proveedores_tbl','nb_prov_1_fld','nb_prov_1_fld'),('nb_proveedores_m_pg','nb_proveedores_tbl','nb_prov_20_fld','nb_prov_20_fld'),('nb_proveedores_m_pg','nb_proveedores_tbl','nb_prov_2_fld','nb_prov_2_fld'),('nb_proveedores_m_pg','nb_proveedores_tbl','nb_prov_3_fld','nb_prov_3_fld'),('nb_proveedores_m_pg','nb_proveedores_tbl','nb_prov_4_fld','nb_prov_4_fld'),('nb_proveedores_m_pg','nb_proveedores_tbl','nb_prov_5_fld','nb_prov_5_fld'),('nb_proveedores_m_pg','nb_proveedores_tbl','nb_prov_6_fld','nb_prov_6_fld'),('nb_proveedores_m_pg','nb_proveedores_tbl','nb_prov_7_fld','nb_prov_7_fld'),('nb_proveedores_m_pg','nb_proveedores_tbl','nb_prov_8_fld','nb_prov_8_fld'),('nb_proveedores_m_pg','nb_proveedores_tbl','nb_prov_9_fld','nb_prov_9_fld'),('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_10_fld','nb_prov_10_fld'),('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_11_fld','nb_prov_11_fld'),('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_12_fld','nb_prov_12_fld'),('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_13_fld','nb_prov_13_fld'),('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_14_fld','nb_prov_14_fld'),('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_15_fld','nb_prov_15_fld'),('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_16_fld','nb_prov_16_fld'),('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_17_fld','nb_prov_17_fld'),('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_18_fld','nb_prov_18_fld'),('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_19_fld','nb_prov_19_fld'),('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_1_fld','nb_prov_1_fld'),('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_20_fld','nb_prov_20_fld'),('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_2_fld','nb_prov_2_fld'),('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_3_fld','nb_prov_3_fld'),('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_4_fld','nb_prov_4_fld'),('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_5_fld','nb_prov_5_fld'),('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_6_fld','nb_prov_6_fld'),('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_7_fld','nb_prov_7_fld'),('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_8_fld','nb_prov_8_fld'),('nb_proveedores_pg','nb_proveedores_tbl','nb_prov_9_fld','nb_prov_9_fld'),('nb_usersm_pg','nbd_role_user_tbl','nbd_id_user_fld','nbd_id_user_fld'),('nb_usersm_pg','nbd_role_user_tbl','nb_id_role_fld','nb_id_role_fld'),('nb_usersm_pg','nbd_user_tbl','nbd_descr_fld','nbd_descr_fld'),('nb_usersm_pg','nbd_user_tbl','nbd_email_fld','nbd_email_fld'),('nb_usersm_pg','nbd_user_tbl','nbd_id_user_fld','nbd_id_user_fld'),('nb_usersm_pg','nbd_user_tbl','nbd_password_fld','nbd_password_fld'),('nb_usersm_pg','nbd_user_tbl','nb_estado_fld','nb_estado_fld'),('nb_users_pg','nbd_role_user_tbl','nbd_id_user_fld','nbd_id_user_fld'),('nb_users_pg','nbd_role_user_tbl','nb_id_role_fld','nb_id_role_fld'),('nb_users_pg','nbd_user_tbl','nbd_descr_fld','nbd_descr_fld'),('nb_users_pg','nbd_user_tbl','nbd_email_fld','nbd_email_fld'),('nb_users_pg','nbd_user_tbl','nbd_id_user_fld','nbd_id_user_fld'),('nb_users_pg','nbd_user_tbl','nbd_password_fld','nbd_password_fld'),('nb_users_pg','nbd_user_tbl','nb_estado_fld','nb_estado_fld'),('nb_vendedores_m_pg','nb_vendedores_tbl','nb_vend_10_fld','nb_vend_10_fld'),('nb_vendedores_m_pg','nb_vendedores_tbl','nb_vend_11_fld','nb_vend_11_fld'),('nb_vendedores_m_pg','nb_vendedores_tbl','nb_vend_12_fld','nb_vend_12_fld'),('nb_vendedores_m_pg','nb_vendedores_tbl','nb_vend_13_fld','nb_vend_13_fld'),('nb_vendedores_m_pg','nb_vendedores_tbl','nb_vend_14_fld','nb_vend_14_fld'),('nb_vendedores_m_pg','nb_vendedores_tbl','nb_vend_15_fld','nb_vend_15_fld'),('nb_vendedores_m_pg','nb_vendedores_tbl','nb_vend_16_fld','nb_vend_16_fld'),('nb_vendedores_m_pg','nb_vendedores_tbl','nb_vend_17_fld','nb_vend_17_fld'),('nb_vendedores_m_pg','nb_vendedores_tbl','nb_vend_18_fld','nb_vend_18_fld'),('nb_vendedores_m_pg','nb_vendedores_tbl','nb_vend_19_fld','nb_vend_19_fld'),('nb_vendedores_m_pg','nb_vendedores_tbl','nb_vend_1_fld','nb_vend_1_fld'),('nb_vendedores_m_pg','nb_vendedores_tbl','nb_vend_20_fld','nb_vend_20_fld'),('nb_vendedores_m_pg','nb_vendedores_tbl','nb_vend_2_fld','nb_vend_2_fld'),('nb_vendedores_m_pg','nb_vendedores_tbl','nb_vend_3_fld','nb_vend_3_fld'),('nb_vendedores_m_pg','nb_vendedores_tbl','nb_vend_4_fld','nb_vend_4_fld'),('nb_vendedores_m_pg','nb_vendedores_tbl','nb_vend_5_fld','nb_vend_5_fld'),('nb_vendedores_m_pg','nb_vendedores_tbl','nb_vend_6_fld','nb_vend_6_fld'),('nb_vendedores_m_pg','nb_vendedores_tbl','nb_vend_7_fld','nb_vend_7_fld'),('nb_vendedores_m_pg','nb_vendedores_tbl','nb_vend_8_fld','nb_vend_8_fld'),('nb_vendedores_m_pg','nb_vendedores_tbl','nb_vend_9_fld','nb_vend_9_fld'),('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_10_fld','nb_vend_10_fld'),('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_11_fld','nb_vend_11_fld'),('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_12_fld','nb_vend_12_fld'),('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_13_fld','nb_vend_13_fld'),('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_14_fld','nb_vend_14_fld'),('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_15_fld','nb_vend_15_fld'),('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_16_fld','nb_vend_16_fld'),('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_17_fld','nb_vend_17_fld'),('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_18_fld','nb_vend_18_fld'),('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_19_fld','nb_vend_19_fld'),('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_1_fld','nb_vend_1_fld'),('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_20_fld','nb_vend_20_fld'),('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_2_fld','nb_vend_2_fld'),('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_3_fld','nb_vend_3_fld'),('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_4_fld','nb_vend_4_fld'),('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_5_fld','nb_vend_5_fld'),('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_6_fld','nb_vend_6_fld'),('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_7_fld','nb_vend_7_fld'),('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_8_fld','nb_vend_8_fld'),('nb_vendedores_pg','nb_vendedores_tbl','nb_vend_9_fld','nb_vend_9_fld');
/*!40000 ALTER TABLE `nb_form_tables_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nb_forms_tbl`
--

DROP TABLE IF EXISTS `nb_forms_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nb_forms_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `nb_id_pr_schema_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `nb_config_frmwrk_id_fld` int(11) NOT NULL DEFAULT '0',
  `nb_schem_value_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_page_fld`,`nb_id_pr_schema_fld`,`nb_config_frmwrk_id_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nb_forms_tbl`
--

LOCK TABLES `nb_forms_tbl` WRITE;
/*!40000 ALTER TABLE `nb_forms_tbl` DISABLE KEYS */;
INSERT INTO `nb_forms_tbl` VALUES ('nb_facturacion_m_pg','nb_fact_10_fld',11,'true'),('home','image',13,'string'),('home','image',32,'image'),('home','image',35,'bootstrap-display'),('nb_clientes_pg','nb_clie_10_fld',6,'email'),('nb_clientes_pg','nb_clie_10_fld',11,'false'),('nb_clientes_pg','nb_clie_10_fld',13,'string'),('nb_clientes_pg','nb_clie_10_fld',24,'Email'),('nb_clientes_pg','nb_clie_10_fld',36,'false'),('nb_clientes_pg','nb_clie_11_fld',11,'true'),('nb_clientes_pg','nb_clie_11_fld',13,'string'),('nb_clientes_pg','nb_clie_11_fld',24,'Estado'),('nb_clientes_pg','nb_clie_11_fld',32,'select'),('nb_clientes_pg','nb_clie_11_fld',36,'false'),('nb_clientes_pg','nb_clie_11_fld',55,'../Events/ValoresCampo.php?campo=nb_estado_fld'),('nb_clientes_pg','nb_clie_11_fld',58,'Seleccione Estado Cliente'),('nb_clientes_pg','nb_clie_11_fld',59,'false'),('nb_clientes_pg','nb_clie_12_fld',11,'false'),('nb_clientes_pg','nb_clie_12_fld',13,'string'),('nb_clientes_pg','nb_clie_12_fld',24,'Observaciones'),('nb_clientes_pg','nb_clie_12_fld',32,'textarea'),('nb_clientes_pg','nb_clie_12_fld',36,'false'),('nb_clientes_pg','nb_clie_13_fld',11,'false'),('nb_clientes_pg','nb_clie_13_fld',13,'string'),('nb_clientes_pg','nb_clie_13_fld',24,'Campo 13'),('nb_clientes_pg','nb_clie_13_fld',36,'true'),('nb_clientes_pg','nb_clie_14_fld',11,'false'),('nb_clientes_pg','nb_clie_14_fld',13,'string'),('nb_clientes_pg','nb_clie_14_fld',24,'Campo 14'),('nb_clientes_pg','nb_clie_14_fld',36,'true'),('nb_clientes_pg','nb_clie_15_fld',11,'false'),('nb_clientes_pg','nb_clie_15_fld',13,'string'),('nb_clientes_pg','nb_clie_15_fld',24,'Campo 15'),('nb_clientes_pg','nb_clie_15_fld',36,'true'),('nb_clientes_pg','nb_clie_16_fld',11,'false'),('nb_clientes_pg','nb_clie_16_fld',13,'string'),('nb_clientes_pg','nb_clie_16_fld',24,'Campo 16'),('nb_clientes_pg','nb_clie_16_fld',36,'true'),('nb_clientes_pg','nb_clie_17_fld',11,'false'),('nb_clientes_pg','nb_clie_17_fld',13,'string'),('nb_clientes_pg','nb_clie_17_fld',24,'Campo 17'),('nb_clientes_pg','nb_clie_17_fld',36,'true'),('nb_clientes_pg','nb_clie_18_fld',11,'false'),('nb_clientes_pg','nb_clie_18_fld',13,'string'),('nb_clientes_pg','nb_clie_18_fld',24,'Campo 18'),('nb_clientes_pg','nb_clie_18_fld',36,'true'),('nb_clientes_pg','nb_clie_19_fld',11,'false'),('nb_clientes_pg','nb_clie_19_fld',13,'string'),('nb_clientes_pg','nb_clie_19_fld',24,'Campo 19'),('nb_clientes_pg','nb_clie_19_fld',36,'true'),('nb_clientes_pg','nb_clie_1_fld',11,'false'),('nb_clientes_pg','nb_clie_1_fld',13,'string'),('nb_clientes_pg','nb_clie_1_fld',24,'Id Cliente'),('nb_clientes_pg','nb_clie_1_fld',36,'true'),('nb_clientes_pg','nb_clie_20_fld',11,'false'),('nb_clientes_pg','nb_clie_20_fld',13,'string'),('nb_clientes_pg','nb_clie_20_fld',24,'Campo 20'),('nb_clientes_pg','nb_clie_20_fld',36,'true'),('nb_clientes_pg','nb_clie_2_fld',11,'true'),('nb_clientes_pg','nb_clie_2_fld',13,'string'),('nb_clientes_pg','nb_clie_2_fld',24,'Tipo Documento'),('nb_clientes_pg','nb_clie_2_fld',32,'select'),('nb_clientes_pg','nb_clie_2_fld',36,'false'),('nb_clientes_pg','nb_clie_2_fld',55,'../Events/ValoresCampo.php?campo=nb_tipodoc_fld'),('nb_clientes_pg','nb_clie_2_fld',58,'Seleccione Tipo Documento'),('nb_clientes_pg','nb_clie_2_fld',59,'false'),('nb_clientes_pg','nb_clie_3_fld',11,'true'),('nb_clientes_pg','nb_clie_3_fld',13,'string'),('nb_clientes_pg','nb_clie_3_fld',24,'# Documento'),('nb_clientes_pg','nb_clie_3_fld',32,'number'),('nb_clientes_pg','nb_clie_3_fld',36,'false'),('nb_clientes_pg','nb_clie_4_fld',11,'false'),('nb_clientes_pg','nb_clie_4_fld',13,'string'),('nb_clientes_pg','nb_clie_4_fld',24,'Nombre'),('nb_clientes_pg','nb_clie_4_fld',36,'true'),('nb_clientes_pg','nb_clie_5_fld',11,'false'),('nb_clientes_pg','nb_clie_5_fld',13,'string'),('nb_clientes_pg','nb_clie_5_fld',24,'Apellido'),('nb_clientes_pg','nb_clie_5_fld',36,'true'),('nb_clientes_pg','nb_clie_6_fld',11,'true'),('nb_clientes_pg','nb_clie_6_fld',13,'string'),('nb_clientes_pg','nb_clie_6_fld',24,'Nombre o Razon Social'),('nb_clientes_pg','nb_clie_6_fld',36,'false'),('nb_clientes_pg','nb_clie_7_fld',11,'false'),('nb_clientes_pg','nb_clie_7_fld',13,'string'),('nb_clientes_pg','nb_clie_7_fld',24,'Ciudad'),('nb_clientes_pg','nb_clie_7_fld',36,'true'),('nb_clientes_pg','nb_clie_8_fld',11,'false'),('nb_clientes_pg','nb_clie_8_fld',13,'string'),('nb_clientes_pg','nb_clie_8_fld',24,'Direccion'),('nb_clientes_pg','nb_clie_8_fld',36,'false'),('nb_clientes_pg','nb_clie_9_fld',11,'false'),('nb_clientes_pg','nb_clie_9_fld',13,'string'),('nb_clientes_pg','nb_clie_9_fld',24,'Telefono'),('nb_clientes_pg','nb_clie_9_fld',36,'false'),('nb_detallef_pg','nb_detaf_1_fld',11,'false'),('nb_detallef_pg','nb_detaf_1_fld',13,'string'),('nb_detallef_pg','nb_detaf_1_fld',24,'No Factura'),('nb_detallef_pg','nb_detaf_2_fld',11,'false'),('nb_detallef_pg','nb_detaf_2_fld',13,'string'),('nb_detallef_pg','nb_detaf_2_fld',24,'No Linea'),('nb_detallef_pg','nb_detaf_3_fld',11,'false'),('nb_detallef_pg','nb_detaf_3_fld',13,'string'),('nb_detallef_pg','nb_detaf_3_fld',24,'Codigo Producto'),('nb_detallef_pg','nb_detaf_4_fld',11,'false'),('nb_detallef_pg','nb_detaf_4_fld',13,'string'),('nb_detallef_pg','nb_detaf_4_fld',24,'Descr Producto'),('nb_detallef_pg','nb_detaf_5_fld',11,'false'),('nb_detallef_pg','nb_detaf_5_fld',13,'string'),('nb_detallef_pg','nb_detaf_5_fld',24,'Cantidad'),('nb_detallef_pg','nb_detaf_6_fld',11,'false'),('nb_detallef_pg','nb_detaf_6_fld',13,'string'),('nb_detallef_pg','nb_detaf_6_fld',24,'Unidad'),('nb_detallef_pg','nb_detaf_7_fld',11,'false'),('nb_detallef_pg','nb_detaf_7_fld',13,'string'),('nb_detallef_pg','nb_detaf_7_fld',24,'Iva'),('nb_detallef_pg','nb_detaf_8_fld',11,'false'),('nb_detallef_pg','nb_detaf_8_fld',13,'string'),('nb_detallef_pg','nb_detaf_8_fld',24,'Valor Unitario'),('nb_detallef_pg','nb_detaf_9_fld',11,'false'),('nb_detallef_pg','nb_detaf_9_fld',13,'string'),('nb_detallef_pg','nb_detaf_9_fld',24,'Valor Total'),('nb_facturacion_pg','nb_fact_10_fld',11,'true'),('nb_facturacion_pg','nb_fact_10_fld',13,'string'),('nb_facturacion_pg','nb_fact_10_fld',24,'Codigo Vendedor'),('nb_facturacion_pg','nb_fact_10_fld',36,'false'),('nb_facturacion_pg','nb_fact_11_fld',11,'true'),('nb_facturacion_pg','nb_fact_11_fld',13,'string'),('nb_facturacion_pg','nb_fact_11_fld',24,'Tipo Factura'),('nb_facturacion_pg','nb_fact_11_fld',32,'select'),('nb_facturacion_pg','nb_fact_11_fld',36,'false'),('nb_facturacion_pg','nb_fact_11_fld',55,'../Events/ValoresCampo.php?campo=nb_tipofact_fld'),('nb_facturacion_pg','nb_fact_11_fld',58,'Seleccione Tipo'),('nb_facturacion_pg','nb_fact_11_fld',59,'false'),('nb_facturacion_pg','nb_fact_12_fld',11,'false'),('nb_facturacion_pg','nb_fact_12_fld',13,'string'),('nb_facturacion_pg','nb_fact_12_fld',24,'Observacion'),('nb_facturacion_pg','nb_fact_12_fld',32,'textarea'),('nb_facturacion_pg','nb_fact_12_fld',36,'false'),('nb_facturacion_pg','nb_fact_13_fld',11,'false'),('nb_facturacion_pg','nb_fact_13_fld',13,'string'),('nb_facturacion_pg','nb_fact_13_fld',24,'campo'),('nb_facturacion_pg','nb_fact_13_fld',36,'true'),('nb_facturacion_pg','nb_fact_14_fld',11,'false'),('nb_facturacion_pg','nb_fact_14_fld',13,'string'),('nb_facturacion_pg','nb_fact_14_fld',24,'campo'),('nb_facturacion_pg','nb_fact_14_fld',36,'true'),('nb_facturacion_pg','nb_fact_15_fld',11,'false'),('nb_facturacion_pg','nb_fact_15_fld',13,'string'),('nb_facturacion_pg','nb_fact_15_fld',24,'campo'),('nb_facturacion_pg','nb_fact_15_fld',36,'true'),('nb_facturacion_pg','nb_fact_16_fld',11,'false'),('nb_facturacion_pg','nb_fact_16_fld',13,'string'),('nb_facturacion_pg','nb_fact_16_fld',24,'campo'),('nb_facturacion_pg','nb_fact_16_fld',36,'true'),('nb_facturacion_pg','nb_fact_17_fld',11,'false'),('nb_facturacion_pg','nb_fact_17_fld',13,'string'),('nb_facturacion_pg','nb_fact_17_fld',24,'campo'),('nb_facturacion_pg','nb_fact_17_fld',36,'true'),('nb_facturacion_pg','nb_fact_18_fld',11,'false'),('nb_facturacion_pg','nb_fact_18_fld',13,'string'),('nb_facturacion_pg','nb_fact_18_fld',24,'campo'),('nb_facturacion_pg','nb_fact_18_fld',36,'true'),('nb_facturacion_pg','nb_fact_19_fld',11,'false'),('nb_facturacion_pg','nb_fact_19_fld',13,'string'),('nb_facturacion_pg','nb_fact_19_fld',24,'campo'),('nb_facturacion_pg','nb_fact_19_fld',36,'true'),('nb_facturacion_pg','nb_fact_1_fld',11,'false'),('nb_facturacion_pg','nb_fact_1_fld',13,'string'),('nb_facturacion_pg','nb_fact_1_fld',24,'# Factura'),('nb_facturacion_pg','nb_fact_1_fld',36,'true'),('nb_facturacion_pg','nb_fact_20_fld',11,'campo 18'),('nb_facturacion_pg','nb_fact_20_fld',13,'string'),('nb_facturacion_pg','nb_fact_20_fld',24,'campo'),('nb_facturacion_pg','nb_fact_20_fld',36,'true'),('nb_facturacion_pg','nb_fact_2_fld',11,'false'),('nb_facturacion_pg','nb_fact_2_fld',13,'string'),('nb_facturacion_pg','nb_fact_2_fld',24,'Campo'),('nb_facturacion_pg','nb_fact_2_fld',36,'true'),('nb_facturacion_pg','nb_fact_3_fld',11,'true'),('nb_facturacion_pg','nb_fact_3_fld',13,'string'),('nb_facturacion_pg','nb_fact_3_fld',24,'# Documento'),('nb_facturacion_pg','nb_fact_3_fld',32,'number'),('nb_facturacion_pg','nb_fact_3_fld',36,'false'),('nb_facturacion_pg','nb_fact_3_fld',62,'function(e) {buscarCliente(this.getValue());}'),('nb_facturacion_pg','nb_fact_4_fld',11,'true'),('nb_facturacion_pg','nb_fact_4_fld',13,'string'),('nb_facturacion_pg','nb_fact_4_fld',24,'Nombre o Razon Social'),('nb_facturacion_pg','nb_fact_4_fld',36,'false'),('nb_facturacion_pg','nb_fact_5_fld',11,'true'),('nb_facturacion_pg','nb_fact_5_fld',13,'string'),('nb_facturacion_pg','nb_fact_5_fld',24,'Direccion'),('nb_facturacion_pg','nb_fact_5_fld',36,'false'),('nb_facturacion_pg','nb_fact_6_fld',11,'true'),('nb_facturacion_pg','nb_fact_6_fld',13,'string'),('nb_facturacion_pg','nb_fact_6_fld',24,'Telefono'),('nb_facturacion_pg','nb_fact_6_fld',36,'false'),('nb_facturacion_pg','nb_fact_7_fld',6,'email'),('nb_facturacion_pg','nb_fact_7_fld',11,'false'),('nb_facturacion_pg','nb_fact_7_fld',13,'string'),('nb_facturacion_pg','nb_fact_7_fld',24,'Email'),('nb_facturacion_pg','nb_fact_7_fld',36,'false'),('nb_facturacion_pg','nb_fact_8_fld',6,'date'),('nb_facturacion_pg','nb_fact_8_fld',11,'true'),('nb_facturacion_pg','nb_fact_8_fld',13,'string'),('nb_facturacion_pg','nb_fact_8_fld',24,'Fecha Factura'),('nb_facturacion_pg','nb_fact_8_fld',36,'false'),('nb_facturacion_pg','nb_fact_8_fld',56,'DD/MM/YYYY'),('nb_facturacion_pg','nb_fact_9_fld',6,'date'),('nb_facturacion_pg','nb_fact_9_fld',11,'false'),('nb_facturacion_pg','nb_fact_9_fld',13,'string'),('nb_facturacion_pg','nb_fact_9_fld',24,'Fecha Vencimiento'),('nb_facturacion_pg','nb_fact_9_fld',36,'false'),('nb_inventario_pg','nb_inve_10_fld',11,'false'),('nb_inventario_pg','nb_inve_10_fld',13,'string'),('nb_inventario_pg','nb_inve_10_fld',24,'campo'),('nb_inventario_pg','nb_inve_10_fld',36,'true'),('nb_inventario_pg','nb_inve_11_fld',11,'false'),('nb_inventario_pg','nb_inve_11_fld',13,'string'),('nb_inventario_pg','nb_inve_11_fld',24,'campo'),('nb_inventario_pg','nb_inve_11_fld',36,'true'),('nb_inventario_pg','nb_inve_12_fld',11,'false'),('nb_inventario_pg','nb_inve_12_fld',13,'string'),('nb_inventario_pg','nb_inve_12_fld',24,'campo'),('nb_inventario_pg','nb_inve_12_fld',36,'true'),('nb_inventario_pg','nb_inve_13_fld',11,'false'),('nb_inventario_pg','nb_inve_13_fld',13,'string'),('nb_inventario_pg','nb_inve_13_fld',24,'campo'),('nb_inventario_pg','nb_inve_13_fld',36,'true'),('nb_inventario_pg','nb_inve_14_fld',11,'false'),('nb_inventario_pg','nb_inve_14_fld',13,'string'),('nb_inventario_pg','nb_inve_14_fld',24,'campo'),('nb_inventario_pg','nb_inve_14_fld',36,'true'),('nb_inventario_pg','nb_inve_15_fld',11,'false'),('nb_inventario_pg','nb_inve_15_fld',13,'string'),('nb_inventario_pg','nb_inve_15_fld',24,'campo'),('nb_inventario_pg','nb_inve_15_fld',36,'true'),('nb_inventario_pg','nb_inve_16_fld',11,'false'),('nb_inventario_pg','nb_inve_16_fld',13,'string'),('nb_inventario_pg','nb_inve_16_fld',24,'campo'),('nb_inventario_pg','nb_inve_16_fld',36,'true'),('nb_inventario_pg','nb_inve_17_fld',11,'false'),('nb_inventario_pg','nb_inve_17_fld',13,'string'),('nb_inventario_pg','nb_inve_17_fld',24,'campo'),('nb_inventario_pg','nb_inve_17_fld',36,'true'),('nb_inventario_pg','nb_inve_18_fld',11,'false'),('nb_inventario_pg','nb_inve_18_fld',13,'string'),('nb_inventario_pg','nb_inve_18_fld',24,'campo'),('nb_inventario_pg','nb_inve_18_fld',36,'true'),('nb_inventario_pg','nb_inve_19_fld',11,'false'),('nb_inventario_pg','nb_inve_19_fld',13,'string'),('nb_inventario_pg','nb_inve_19_fld',24,'campo'),('nb_inventario_pg','nb_inve_19_fld',36,'true'),('nb_inventario_pg','nb_inve_1_fld',11,'false'),('nb_inventario_pg','nb_inve_1_fld',13,'string'),('nb_inventario_pg','nb_inve_1_fld',24,'Cod Inventario'),('nb_inventario_pg','nb_inve_1_fld',32,'number'),('nb_inventario_pg','nb_inve_1_fld',36,'true'),('nb_inventario_pg','nb_inve_20_fld',11,'campo 18'),('nb_inventario_pg','nb_inve_20_fld',13,'string'),('nb_inventario_pg','nb_inve_20_fld',24,'campo'),('nb_inventario_pg','nb_inve_20_fld',36,'true'),('nb_inventario_pg','nb_inve_2_fld',11,'true'),('nb_inventario_pg','nb_inve_2_fld',13,'string'),('nb_inventario_pg','nb_inve_2_fld',24,'Id Producto'),('nb_inventario_pg','nb_inve_2_fld',32,'number'),('nb_inventario_pg','nb_inve_2_fld',36,'false'),('nb_inventario_pg','nb_inve_3_fld',11,'true'),('nb_inventario_pg','nb_inve_3_fld',13,'string'),('nb_inventario_pg','nb_inve_3_fld',24,'Cantidad'),('nb_inventario_pg','nb_inve_3_fld',32,'number'),('nb_inventario_pg','nb_inve_3_fld',36,'false'),('nb_inventario_pg','nb_inve_4_fld',6,'date'),('nb_inventario_pg','nb_inve_4_fld',11,'true'),('nb_inventario_pg','nb_inve_4_fld',13,'string'),('nb_inventario_pg','nb_inve_4_fld',24,'Fecha Ingreso '),('nb_inventario_pg','nb_inve_4_fld',36,'false'),('nb_inventario_pg','nb_inve_5_fld',11,'false'),('nb_inventario_pg','nb_inve_5_fld',13,'string'),('nb_inventario_pg','nb_inve_5_fld',24,'campo'),('nb_inventario_pg','nb_inve_5_fld',36,'true'),('nb_inventario_pg','nb_inve_6_fld',11,'false'),('nb_inventario_pg','nb_inve_6_fld',13,'string'),('nb_inventario_pg','nb_inve_6_fld',24,'campo'),('nb_inventario_pg','nb_inve_6_fld',36,'true'),('nb_inventario_pg','nb_inve_7_fld',11,'false'),('nb_inventario_pg','nb_inve_7_fld',13,'string'),('nb_inventario_pg','nb_inve_7_fld',24,'campo'),('nb_inventario_pg','nb_inve_7_fld',36,'true'),('nb_inventario_pg','nb_inve_8_fld',11,'false'),('nb_inventario_pg','nb_inve_8_fld',13,'string'),('nb_inventario_pg','nb_inve_8_fld',24,'campo'),('nb_inventario_pg','nb_inve_8_fld',36,'true'),('nb_inventario_pg','nb_inve_9_fld',11,'false'),('nb_inventario_pg','nb_inve_9_fld',13,'string'),('nb_inventario_pg','nb_inve_9_fld',24,'campo'),('nb_inventario_pg','nb_inve_9_fld',36,'true'),('nb_password_pg','nbd_email_fld',11,'true'),('nb_password_pg','nbd_email_fld',13,'string'),('nb_password_pg','nbd_email_fld',24,'Usuario'),('nb_password_pg','nbd_password_fld',11,'true'),('nb_password_pg','nbd_password_fld',13,'string'),('nb_password_pg','nbd_password_fld',24,'Contrase&#241;a'),('nb_productos_pg','nb_prod_10_fld',11,'false'),('nb_productos_pg','nb_prod_10_fld',13,'string'),('nb_productos_pg','nb_prod_10_fld',24,'campo'),('nb_productos_pg','nb_prod_10_fld',36,'true'),('nb_productos_pg','nb_prod_11_fld',11,'false'),('nb_productos_pg','nb_prod_11_fld',13,'string'),('nb_productos_pg','nb_prod_11_fld',24,'campo'),('nb_productos_pg','nb_prod_11_fld',36,'true'),('nb_productos_pg','nb_prod_12_fld',11,'false'),('nb_productos_pg','nb_prod_12_fld',13,'string'),('nb_productos_pg','nb_prod_12_fld',24,'campo'),('nb_productos_pg','nb_prod_12_fld',36,'true'),('nb_productos_pg','nb_prod_13_fld',11,'false'),('nb_productos_pg','nb_prod_13_fld',13,'string'),('nb_productos_pg','nb_prod_13_fld',24,'campo'),('nb_productos_pg','nb_prod_13_fld',36,'true'),('nb_productos_pg','nb_prod_14_fld',11,'false'),('nb_productos_pg','nb_prod_14_fld',13,'string'),('nb_productos_pg','nb_prod_14_fld',24,'campo'),('nb_productos_pg','nb_prod_14_fld',36,'true'),('nb_productos_pg','nb_prod_15_fld',11,'false'),('nb_productos_pg','nb_prod_15_fld',13,'string'),('nb_productos_pg','nb_prod_15_fld',24,'campo'),('nb_productos_pg','nb_prod_15_fld',36,'true'),('nb_productos_pg','nb_prod_16_fld',11,'false'),('nb_productos_pg','nb_prod_16_fld',13,'string'),('nb_productos_pg','nb_prod_16_fld',24,'campo'),('nb_productos_pg','nb_prod_16_fld',36,'true'),('nb_productos_pg','nb_prod_17_fld',11,'false'),('nb_productos_pg','nb_prod_17_fld',13,'string'),('nb_productos_pg','nb_prod_17_fld',24,'campo'),('nb_productos_pg','nb_prod_17_fld',36,'true'),('nb_productos_pg','nb_prod_18_fld',11,'false'),('nb_productos_pg','nb_prod_18_fld',13,'string'),('nb_productos_pg','nb_prod_18_fld',24,'campo'),('nb_productos_pg','nb_prod_18_fld',36,'true'),('nb_productos_pg','nb_prod_19_fld',11,'false'),('nb_productos_pg','nb_prod_19_fld',13,'string'),('nb_productos_pg','nb_prod_19_fld',24,'campo'),('nb_productos_pg','nb_prod_19_fld',36,'true'),('nb_productos_pg','nb_prod_1_fld',11,'false'),('nb_productos_pg','nb_prod_1_fld',13,'string'),('nb_productos_pg','nb_prod_1_fld',24,'Id Producto'),('nb_productos_pg','nb_prod_1_fld',32,'number'),('nb_productos_pg','nb_prod_1_fld',36,'true'),('nb_productos_pg','nb_prod_20_fld',11,'campo 18'),('nb_productos_pg','nb_prod_20_fld',13,'string'),('nb_productos_pg','nb_prod_20_fld',24,'campo'),('nb_productos_pg','nb_prod_20_fld',36,'true'),('nb_productos_pg','nb_prod_2_fld',11,'true'),('nb_productos_pg','nb_prod_2_fld',13,'string'),('nb_productos_pg','nb_prod_2_fld',24,'Descripcion'),('nb_productos_pg','nb_prod_2_fld',36,'false'),('nb_productos_pg','nb_prod_3_fld',11,'false'),('nb_productos_pg','nb_prod_3_fld',13,'string'),('nb_productos_pg','nb_prod_3_fld',24,'Marca'),('nb_productos_pg','nb_prod_3_fld',36,'false'),('nb_productos_pg','nb_prod_4_fld',11,'false'),('nb_productos_pg','nb_prod_4_fld',13,'string'),('nb_productos_pg','nb_prod_4_fld',24,'Modelo'),('nb_productos_pg','nb_prod_4_fld',36,'false'),('nb_productos_pg','nb_prod_5_fld',11,'false'),('nb_productos_pg','nb_prod_5_fld',13,'string'),('nb_productos_pg','nb_prod_5_fld',24,'Observaciones'),('nb_productos_pg','nb_prod_5_fld',32,'textarea'),('nb_productos_pg','nb_prod_5_fld',36,'false'),('nb_productos_pg','nb_prod_6_fld',11,'false'),('nb_productos_pg','nb_prod_6_fld',13,'string'),('nb_productos_pg','nb_prod_6_fld',24,'Unidad Medida'),('nb_productos_pg','nb_prod_6_fld',32,'select'),('nb_productos_pg','nb_prod_6_fld',36,'false'),('nb_productos_pg','nb_prod_6_fld',55,'../Events/ValoresCampo.php?campo=nb_umed_fld'),('nb_productos_pg','nb_prod_6_fld',58,'Seleccione Tipo Medida'),('nb_productos_pg','nb_prod_6_fld',59,'false'),('nb_productos_pg','nb_prod_7_fld',11,'true'),('nb_productos_pg','nb_prod_7_fld',13,'string'),('nb_productos_pg','nb_prod_7_fld',24,'Precio'),('nb_productos_pg','nb_prod_7_fld',32,'number'),('nb_productos_pg','nb_prod_7_fld',36,'false'),('nb_productos_pg','nb_prod_8_fld',11,'true'),('nb_productos_pg','nb_prod_8_fld',13,'string'),('nb_productos_pg','nb_prod_8_fld',24,'Iva'),('nb_productos_pg','nb_prod_8_fld',32,'number'),('nb_productos_pg','nb_prod_8_fld',36,'false'),('nb_productos_pg','nb_prod_9_fld',11,'false'),('nb_productos_pg','nb_prod_9_fld',13,'string'),('nb_productos_pg','nb_prod_9_fld',24,'campo'),('nb_productos_pg','nb_prod_9_fld',36,'true'),('nb_proveedores_pg','nb_prov_10_fld',11,'false'),('nb_proveedores_pg','nb_prov_10_fld',13,'string'),('nb_proveedores_pg','nb_prov_10_fld',24,'campo'),('nb_proveedores_pg','nb_prov_10_fld',36,'false'),('nb_proveedores_pg','nb_prov_11_fld',11,'false'),('nb_proveedores_pg','nb_prov_11_fld',13,'string'),('nb_proveedores_pg','nb_prov_11_fld',24,'campo'),('nb_proveedores_pg','nb_prov_11_fld',36,'false'),('nb_proveedores_pg','nb_prov_12_fld',11,'false'),('nb_proveedores_pg','nb_prov_12_fld',13,'string'),('nb_proveedores_pg','nb_prov_12_fld',24,'campo'),('nb_proveedores_pg','nb_prov_12_fld',36,'false'),('nb_proveedores_pg','nb_prov_13_fld',11,'false'),('nb_proveedores_pg','nb_prov_13_fld',13,'string'),('nb_proveedores_pg','nb_prov_13_fld',24,'campo'),('nb_proveedores_pg','nb_prov_13_fld',36,'false'),('nb_proveedores_pg','nb_prov_14_fld',11,'false'),('nb_proveedores_pg','nb_prov_14_fld',13,'string'),('nb_proveedores_pg','nb_prov_14_fld',24,'campo'),('nb_proveedores_pg','nb_prov_14_fld',36,'false'),('nb_proveedores_pg','nb_prov_15_fld',11,'false'),('nb_proveedores_pg','nb_prov_15_fld',13,'string'),('nb_proveedores_pg','nb_prov_15_fld',24,'campo'),('nb_proveedores_pg','nb_prov_15_fld',36,'false'),('nb_proveedores_pg','nb_prov_16_fld',11,'false'),('nb_proveedores_pg','nb_prov_16_fld',13,'string'),('nb_proveedores_pg','nb_prov_16_fld',24,'campo'),('nb_proveedores_pg','nb_prov_16_fld',36,'false'),('nb_proveedores_pg','nb_prov_17_fld',11,'false'),('nb_proveedores_pg','nb_prov_17_fld',13,'string'),('nb_proveedores_pg','nb_prov_17_fld',24,'campo'),('nb_proveedores_pg','nb_prov_17_fld',36,'false'),('nb_proveedores_pg','nb_prov_18_fld',11,'false'),('nb_proveedores_pg','nb_prov_18_fld',13,'string'),('nb_proveedores_pg','nb_prov_18_fld',24,'campo'),('nb_proveedores_pg','nb_prov_18_fld',36,'false'),('nb_proveedores_pg','nb_prov_19_fld',11,'false'),('nb_proveedores_pg','nb_prov_19_fld',13,'string'),('nb_proveedores_pg','nb_prov_19_fld',24,'campo'),('nb_proveedores_pg','nb_prov_19_fld',36,'false'),('nb_proveedores_pg','nb_prov_1_fld',11,'false'),('nb_proveedores_pg','nb_prov_1_fld',13,'string'),('nb_proveedores_pg','nb_prov_1_fld',24,'Id proveedor'),('nb_proveedores_pg','nb_prov_1_fld',36,'true'),('nb_proveedores_pg','nb_prov_20_fld',11,'campo 18'),('nb_proveedores_pg','nb_prov_20_fld',13,'string'),('nb_proveedores_pg','nb_prov_20_fld',24,'campo'),('nb_proveedores_pg','nb_prov_20_fld',36,'false'),('nb_proveedores_pg','nb_prov_2_fld',11,'true'),('nb_proveedores_pg','nb_prov_2_fld',13,'string'),('nb_proveedores_pg','nb_prov_2_fld',24,'Tipo Documento'),('nb_proveedores_pg','nb_prov_2_fld',32,'select'),('nb_proveedores_pg','nb_prov_2_fld',36,'false'),('nb_proveedores_pg','nb_prov_2_fld',55,'../Events/ValoresCampo.php?campo=nb_tipodoc_fld'),('nb_proveedores_pg','nb_prov_2_fld',58,'Seleccione Tipo Documento'),('nb_proveedores_pg','nb_prov_2_fld',59,'false'),('nb_proveedores_pg','nb_prov_3_fld',11,'true'),('nb_proveedores_pg','nb_prov_3_fld',13,'string'),('nb_proveedores_pg','nb_prov_3_fld',24,'# Documento'),('nb_proveedores_pg','nb_prov_3_fld',32,'number'),('nb_proveedores_pg','nb_prov_3_fld',36,'false'),('nb_proveedores_pg','nb_prov_4_fld',11,'true'),('nb_proveedores_pg','nb_prov_4_fld',13,'string'),('nb_proveedores_pg','nb_prov_4_fld',24,'Nombre o Razon Social'),('nb_proveedores_pg','nb_prov_4_fld',36,'false'),('nb_proveedores_pg','nb_prov_5_fld',11,'false'),('nb_proveedores_pg','nb_prov_5_fld',13,'string'),('nb_proveedores_pg','nb_prov_5_fld',24,'Direccion'),('nb_proveedores_pg','nb_prov_5_fld',36,'false'),('nb_proveedores_pg','nb_prov_6_fld',11,'false'),('nb_proveedores_pg','nb_prov_6_fld',13,'string'),('nb_proveedores_pg','nb_prov_6_fld',24,'Telefono'),('nb_proveedores_pg','nb_prov_6_fld',36,'false'),('nb_proveedores_pg','nb_prov_7_fld',11,'false'),('nb_proveedores_pg','nb_prov_7_fld',13,'string'),('nb_proveedores_pg','nb_prov_7_fld',24,'Email'),('nb_proveedores_pg','nb_prov_7_fld',32,'email'),('nb_proveedores_pg','nb_prov_7_fld',36,'false'),('nb_proveedores_pg','nb_prov_8_fld',11,'false'),('nb_proveedores_pg','nb_prov_8_fld',13,'string'),('nb_proveedores_pg','nb_prov_8_fld',24,'Estado'),('nb_proveedores_pg','nb_prov_8_fld',32,'select'),('nb_proveedores_pg','nb_prov_8_fld',36,'false'),('nb_proveedores_pg','nb_prov_8_fld',55,'../Events/ValoresCampo.php?campo=nb_estado_fld'),('nb_proveedores_pg','nb_prov_8_fld',58,'Seleccione Estado'),('nb_proveedores_pg','nb_prov_8_fld',59,'false'),('nb_proveedores_pg','nb_prov_9_fld',11,'false'),('nb_proveedores_pg','nb_prov_9_fld',13,'string'),('nb_proveedores_pg','nb_prov_9_fld',24,'Observaciones'),('nb_proveedores_pg','nb_prov_9_fld',32,'textarea'),('nb_proveedores_pg','nb_prov_9_fld',36,'false'),('nb_usersm_pg','nbd_descr_fld',11,'true'),('nb_usersm_pg','nbd_descr_fld',13,'string'),('nb_usersm_pg','nbd_descr_fld',24,'Nombre'),('nb_usersm_pg','nbd_email_fld',11,'true'),('nb_usersm_pg','nbd_email_fld',13,'string'),('nb_usersm_pg','nbd_email_fld',24,'Usuario'),('nb_usersm_pg','nbd_email_fld',36,'true'),('nb_usersm_pg','nbd_email_fldX',11,'true'),('nb_usersm_pg','nbd_email_fldX',13,'string'),('nb_usersm_pg','nbd_email_fldX',24,'Usuario'),('nb_usersm_pg','nbd_email_fldX',29,'true'),('nb_usersm_pg','nbd_id_user_fld',11,'true'),('nb_usersm_pg','nbd_id_user_fld',13,'string'),('nb_usersm_pg','nbd_id_user_fld',24,'Id'),('nb_usersm_pg','nbd_id_user_fld',36,'true'),('nb_usersm_pg','nbd_id_user_fldX',11,'true'),('nb_usersm_pg','nbd_id_user_fldX',13,'string'),('nb_usersm_pg','nbd_id_user_fldX',24,'Id'),('nb_usersm_pg','nbd_id_user_fldX',29,'true'),('nb_usersm_pg','nbd_password_fld',11,'true'),('nb_usersm_pg','nbd_password_fld',13,'string'),('nb_usersm_pg','nbd_password_fld',24,'Contrase&#241;a'),('nb_usersm_pg','nbd_password_fld',36,'true'),('nb_usersm_pg','nb_estado_fld',11,'true'),('nb_usersm_pg','nb_estado_fld',13,'string'),('nb_usersm_pg','nb_estado_fld',24,'Estado'),('nb_usersm_pg','nb_estado_fld',32,'select'),('nb_usersm_pg','nb_estado_fld',55,'../Events/ValoresCampo.php?campo=nb_estado_fld'),('nb_usersm_pg','nb_estado_fld',58,'Seleccione Estado'),('nb_usersm_pg','nb_estado_fld',59,'false'),('nb_usersm_pg','nb_id_role_fld',11,'true'),('nb_usersm_pg','nb_id_role_fld',13,'string'),('nb_usersm_pg','nb_id_role_fld',24,'Role'),('nb_usersm_pg','nb_id_role_fld',32,'select'),('nb_usersm_pg','nb_id_role_fld',55,'../Events/ValoresCampo.php?campo=role'),('nb_usersm_pg','nb_id_role_fld',58,'Seleccione Role'),('nb_usersm_pg','nb_id_role_fld',59,'false'),('nb_users_pg','nbd_descr_fld',11,'true'),('nb_users_pg','nbd_descr_fld',13,'string'),('nb_users_pg','nbd_descr_fld',24,'Nombre'),('nb_users_pg','nbd_email_fld',11,'true'),('nb_users_pg','nbd_email_fld',13,'string'),('nb_users_pg','nbd_email_fld',24,'Usuario'),('nb_users_pg','nbd_id_user_fld',11,'true'),('nb_users_pg','nbd_id_user_fld',13,'string'),('nb_users_pg','nbd_id_user_fld',24,'Id'),('nb_users_pg','nbd_password_fld',11,'true'),('nb_users_pg','nbd_password_fld',13,'string'),('nb_users_pg','nbd_password_fld',24,'Contrase&#241;a'),('nb_users_pg','nb_estado_fld',11,'true'),('nb_users_pg','nb_estado_fld',13,'string'),('nb_users_pg','nb_estado_fld',24,'Estado'),('nb_users_pg','nb_estado_fld',32,'select'),('nb_users_pg','nb_estado_fld',55,'../Events/ValoresCampo.php?campo=nb_estado_fld'),('nb_users_pg','nb_estado_fld',58,'Seleccione Estado'),('nb_users_pg','nb_estado_fld',59,'false'),('nb_users_pg','nb_id_role_fld',11,'true'),('nb_users_pg','nb_id_role_fld',13,'string'),('nb_users_pg','nb_id_role_fld',24,'Role'),('nb_users_pg','nb_id_role_fld',32,'select'),('nb_users_pg','nb_id_role_fld',55,'../Events/ValoresCampo.php?campo=role'),('nb_users_pg','nb_id_role_fld',58,'Seleccione Role'),('nb_users_pg','nb_id_role_fld',59,'false'),('nb_vendedores_pg','nb_vend_10_fld',11,'false'),('nb_vendedores_pg','nb_vend_10_fld',13,'string'),('nb_vendedores_pg','nb_vend_10_fld',24,'campo'),('nb_vendedores_pg','nb_vend_10_fld',36,'false'),('nb_vendedores_pg','nb_vend_11_fld',11,'false'),('nb_vendedores_pg','nb_vend_11_fld',13,'string'),('nb_vendedores_pg','nb_vend_11_fld',24,'campo'),('nb_vendedores_pg','nb_vend_11_fld',36,'false'),('nb_vendedores_pg','nb_vend_12_fld',11,'false'),('nb_vendedores_pg','nb_vend_12_fld',13,'string'),('nb_vendedores_pg','nb_vend_12_fld',24,'campo'),('nb_vendedores_pg','nb_vend_12_fld',36,'false'),('nb_vendedores_pg','nb_vend_13_fld',11,'false'),('nb_vendedores_pg','nb_vend_13_fld',13,'string'),('nb_vendedores_pg','nb_vend_13_fld',24,'campo'),('nb_vendedores_pg','nb_vend_13_fld',36,'false'),('nb_vendedores_pg','nb_vend_14_fld',11,'false'),('nb_vendedores_pg','nb_vend_14_fld',13,'string'),('nb_vendedores_pg','nb_vend_14_fld',24,'campo'),('nb_vendedores_pg','nb_vend_14_fld',36,'false'),('nb_vendedores_pg','nb_vend_15_fld',11,'false'),('nb_vendedores_pg','nb_vend_15_fld',13,'string'),('nb_vendedores_pg','nb_vend_15_fld',24,'campo'),('nb_vendedores_pg','nb_vend_15_fld',36,'false'),('nb_vendedores_pg','nb_vend_16_fld',11,'false'),('nb_vendedores_pg','nb_vend_16_fld',13,'string'),('nb_vendedores_pg','nb_vend_16_fld',24,'campo'),('nb_vendedores_pg','nb_vend_16_fld',36,'false'),('nb_vendedores_pg','nb_vend_17_fld',11,'false'),('nb_vendedores_pg','nb_vend_17_fld',13,'string'),('nb_vendedores_pg','nb_vend_17_fld',24,'campo'),('nb_vendedores_pg','nb_vend_17_fld',36,'false'),('nb_vendedores_pg','nb_vend_18_fld',11,'false'),('nb_vendedores_pg','nb_vend_18_fld',13,'string'),('nb_vendedores_pg','nb_vend_18_fld',24,'campo'),('nb_vendedores_pg','nb_vend_18_fld',36,'false'),('nb_vendedores_pg','nb_vend_19_fld',11,'false'),('nb_vendedores_pg','nb_vend_19_fld',13,'string'),('nb_vendedores_pg','nb_vend_19_fld',24,'campo'),('nb_vendedores_pg','nb_vend_19_fld',36,'false'),('nb_vendedores_pg','nb_vend_1_fld',11,'false'),('nb_vendedores_pg','nb_vend_1_fld',13,'string'),('nb_vendedores_pg','nb_vend_1_fld',24,'Id Vendedor'),('nb_vendedores_pg','nb_vend_1_fld',32,'number'),('nb_vendedores_pg','nb_vend_1_fld',36,'true'),('nb_vendedores_pg','nb_vend_20_fld',11,'campo 18'),('nb_vendedores_pg','nb_vend_20_fld',13,'string'),('nb_vendedores_pg','nb_vend_20_fld',24,'campo'),('nb_vendedores_pg','nb_vend_20_fld',36,'false'),('nb_vendedores_pg','nb_vend_2_fld',11,'true'),('nb_vendedores_pg','nb_vend_2_fld',13,'string'),('nb_vendedores_pg','nb_vend_2_fld',24,'Tipo Documento'),('nb_vendedores_pg','nb_vend_2_fld',32,'select'),('nb_vendedores_pg','nb_vend_2_fld',36,'false'),('nb_vendedores_pg','nb_vend_2_fld',55,'../Events/ValoresCampo.php?campo=nb_tipodoc_fld'),('nb_vendedores_pg','nb_vend_2_fld',58,'Seleccione Tipo Documento'),('nb_vendedores_pg','nb_vend_2_fld',59,'false'),('nb_vendedores_pg','nb_vend_3_fld',11,'true'),('nb_vendedores_pg','nb_vend_3_fld',13,'string'),('nb_vendedores_pg','nb_vend_3_fld',24,'# Documento'),('nb_vendedores_pg','nb_vend_3_fld',32,'number'),('nb_vendedores_pg','nb_vend_3_fld',36,'false'),('nb_vendedores_pg','nb_vend_4_fld',11,'true'),('nb_vendedores_pg','nb_vend_4_fld',13,'string'),('nb_vendedores_pg','nb_vend_4_fld',24,'Nombre y Apellido'),('nb_vendedores_pg','nb_vend_4_fld',36,'false'),('nb_vendedores_pg','nb_vend_5_fld',11,'false'),('nb_vendedores_pg','nb_vend_5_fld',13,'string'),('nb_vendedores_pg','nb_vend_5_fld',24,'Direccion'),('nb_vendedores_pg','nb_vend_5_fld',36,'false'),('nb_vendedores_pg','nb_vend_6_fld',11,'false'),('nb_vendedores_pg','nb_vend_6_fld',13,'string'),('nb_vendedores_pg','nb_vend_6_fld',24,'Telefono'),('nb_vendedores_pg','nb_vend_6_fld',36,'false'),('nb_vendedores_pg','nb_vend_7_fld',11,'false'),('nb_vendedores_pg','nb_vend_7_fld',13,'string'),('nb_vendedores_pg','nb_vend_7_fld',24,'Email'),('nb_vendedores_pg','nb_vend_7_fld',32,'email'),('nb_vendedores_pg','nb_vend_7_fld',36,'false'),('nb_vendedores_pg','nb_vend_8_fld',11,'false'),('nb_vendedores_pg','nb_vend_8_fld',13,'string'),('nb_vendedores_pg','nb_vend_8_fld',24,'Estado'),('nb_vendedores_pg','nb_vend_8_fld',32,'select'),('nb_vendedores_pg','nb_vend_8_fld',36,'false'),('nb_vendedores_pg','nb_vend_8_fld',55,'../Events/ValoresCampo.php?campo=nb_estado_fld'),('nb_vendedores_pg','nb_vend_8_fld',58,'Seleccione estado'),('nb_vendedores_pg','nb_vend_8_fld',59,'false'),('nb_vendedores_pg','nb_vend_9_fld',11,'false'),('nb_vendedores_pg','nb_vend_9_fld',13,'string'),('nb_vendedores_pg','nb_vend_9_fld',24,'Observaciones'),('nb_vendedores_pg','nb_vend_9_fld',32,'textarea'),('nb_vendedores_pg','nb_vend_9_fld',36,'false'),('nb_clientes_m_pg','nb_clie_10_fld',6,'email'),('nb_clientes_m_pg','nb_clie_10_fld',11,'false'),('nb_clientes_m_pg','nb_clie_10_fld',13,'string'),('nb_clientes_m_pg','nb_clie_10_fld',24,'Email'),('nb_clientes_m_pg','nb_clie_10_fld',36,'false'),('nb_clientes_m_pg','nb_clie_11_fld',11,'true'),('nb_clientes_m_pg','nb_clie_11_fld',13,'string'),('nb_clientes_m_pg','nb_clie_11_fld',24,'Estado'),('nb_clientes_m_pg','nb_clie_11_fld',32,'select'),('nb_clientes_m_pg','nb_clie_11_fld',36,'false'),('nb_clientes_m_pg','nb_clie_11_fld',55,'../Events/ValoresCampo.php?campo=nb_estado_fld'),('nb_clientes_m_pg','nb_clie_11_fld',58,'Seleccione Estado Cliente'),('nb_clientes_m_pg','nb_clie_11_fld',59,'false'),('nb_clientes_m_pg','nb_clie_12_fld',11,'false'),('nb_clientes_m_pg','nb_clie_12_fld',13,'string'),('nb_clientes_m_pg','nb_clie_12_fld',24,'Observaciones'),('nb_clientes_m_pg','nb_clie_12_fld',32,'textarea'),('nb_clientes_m_pg','nb_clie_12_fld',36,'false'),('nb_clientes_m_pg','nb_clie_13_fld',11,'false'),('nb_clientes_m_pg','nb_clie_13_fld',13,'string'),('nb_clientes_m_pg','nb_clie_13_fld',24,'Campo 13'),('nb_clientes_m_pg','nb_clie_13_fld',36,'true'),('nb_clientes_m_pg','nb_clie_14_fld',11,'false'),('nb_clientes_m_pg','nb_clie_14_fld',13,'string'),('nb_clientes_m_pg','nb_clie_14_fld',24,'Campo 14'),('nb_clientes_m_pg','nb_clie_14_fld',36,'true'),('nb_clientes_m_pg','nb_clie_15_fld',11,'false'),('nb_clientes_m_pg','nb_clie_15_fld',13,'string'),('nb_clientes_m_pg','nb_clie_15_fld',24,'Campo 15'),('nb_clientes_m_pg','nb_clie_15_fld',36,'true'),('nb_clientes_m_pg','nb_clie_16_fld',11,'false'),('nb_clientes_m_pg','nb_clie_16_fld',13,'string'),('nb_clientes_m_pg','nb_clie_16_fld',24,'Campo 16'),('nb_clientes_m_pg','nb_clie_16_fld',36,'true'),('nb_clientes_m_pg','nb_clie_17_fld',11,'false'),('nb_clientes_m_pg','nb_clie_17_fld',13,'string'),('nb_clientes_m_pg','nb_clie_17_fld',24,'Campo 17'),('nb_clientes_m_pg','nb_clie_17_fld',36,'true'),('nb_clientes_m_pg','nb_clie_18_fld',11,'false'),('nb_clientes_m_pg','nb_clie_18_fld',13,'string'),('nb_clientes_m_pg','nb_clie_18_fld',24,'Campo 18'),('nb_clientes_m_pg','nb_clie_18_fld',36,'true'),('nb_clientes_m_pg','nb_clie_19_fld',11,'false'),('nb_clientes_m_pg','nb_clie_19_fld',13,'string'),('nb_clientes_m_pg','nb_clie_19_fld',24,'Campo 19'),('nb_clientes_m_pg','nb_clie_19_fld',36,'true'),('nb_clientes_m_pg','nb_clie_1_fld',11,'false'),('nb_clientes_m_pg','nb_clie_1_fld',13,'string'),('nb_clientes_m_pg','nb_clie_1_fld',24,'Id Cliente'),('nb_clientes_m_pg','nb_clie_1_fld',36,'true'),('nb_clientes_m_pg','nb_clie_20_fld',11,'false'),('nb_clientes_m_pg','nb_clie_20_fld',13,'string'),('nb_clientes_m_pg','nb_clie_20_fld',24,'Campo 20'),('nb_clientes_m_pg','nb_clie_20_fld',36,'true'),('nb_clientes_m_pg','nb_clie_2_fld',11,'true'),('nb_clientes_m_pg','nb_clie_2_fld',13,'string'),('nb_clientes_m_pg','nb_clie_2_fld',24,'Tipo Documento'),('nb_clientes_m_pg','nb_clie_2_fld',32,'select'),('nb_clientes_m_pg','nb_clie_2_fld',36,'false'),('nb_clientes_m_pg','nb_clie_2_fld',55,'../Events/ValoresCampo.php?campo=nb_tipodoc_fld'),('nb_clientes_m_pg','nb_clie_2_fld',58,'Seleccione Tipo Documento'),('nb_clientes_m_pg','nb_clie_2_fld',59,'false'),('nb_clientes_m_pg','nb_clie_3_fld',11,'true'),('nb_clientes_m_pg','nb_clie_3_fld',13,'string'),('nb_clientes_m_pg','nb_clie_3_fld',24,'# Documento'),('nb_clientes_m_pg','nb_clie_3_fld',32,'number'),('nb_clientes_m_pg','nb_clie_3_fld',36,'false'),('nb_clientes_m_pg','nb_clie_4_fld',11,'false'),('nb_clientes_m_pg','nb_clie_4_fld',13,'string'),('nb_clientes_m_pg','nb_clie_4_fld',24,'Nombre'),('nb_clientes_m_pg','nb_clie_4_fld',36,'true'),('nb_clientes_m_pg','nb_clie_5_fld',11,'false'),('nb_clientes_m_pg','nb_clie_5_fld',13,'string'),('nb_clientes_m_pg','nb_clie_5_fld',24,'Apellido'),('nb_clientes_m_pg','nb_clie_5_fld',36,'true'),('nb_clientes_m_pg','nb_clie_6_fld',11,'true'),('nb_clientes_m_pg','nb_clie_6_fld',13,'string'),('nb_clientes_m_pg','nb_clie_6_fld',24,'Nombre o Razon Social'),('nb_clientes_m_pg','nb_clie_6_fld',36,'false'),('nb_clientes_m_pg','nb_clie_7_fld',11,'false'),('nb_clientes_m_pg','nb_clie_7_fld',13,'string'),('nb_clientes_m_pg','nb_clie_7_fld',24,'Ciudad'),('nb_clientes_m_pg','nb_clie_7_fld',36,'true'),('nb_clientes_m_pg','nb_clie_8_fld',11,'false'),('nb_clientes_m_pg','nb_clie_8_fld',13,'string'),('nb_clientes_m_pg','nb_clie_8_fld',24,'Direccion'),('nb_clientes_m_pg','nb_clie_8_fld',36,'false'),('nb_clientes_m_pg','nb_clie_9_fld',11,'false'),('nb_clientes_m_pg','nb_clie_9_fld',13,'string'),('nb_clientes_m_pg','nb_clie_9_fld',24,'Telefono'),('nb_clientes_m_pg','nb_clie_9_fld',36,'false'),('nb_vendedores_m_pg','nb_vend_10_fld',11,'false'),('nb_vendedores_m_pg','nb_vend_10_fld',13,'string'),('nb_vendedores_m_pg','nb_vend_10_fld',24,'campo'),('nb_vendedores_m_pg','nb_vend_10_fld',36,'false'),('nb_vendedores_m_pg','nb_vend_11_fld',11,'false'),('nb_vendedores_m_pg','nb_vend_11_fld',13,'string'),('nb_vendedores_m_pg','nb_vend_11_fld',24,'campo'),('nb_vendedores_m_pg','nb_vend_11_fld',36,'false'),('nb_vendedores_m_pg','nb_vend_12_fld',11,'false'),('nb_vendedores_m_pg','nb_vend_12_fld',13,'string'),('nb_vendedores_m_pg','nb_vend_12_fld',24,'campo'),('nb_vendedores_m_pg','nb_vend_12_fld',36,'false'),('nb_vendedores_m_pg','nb_vend_13_fld',11,'false'),('nb_vendedores_m_pg','nb_vend_13_fld',13,'string'),('nb_vendedores_m_pg','nb_vend_13_fld',24,'campo'),('nb_vendedores_m_pg','nb_vend_13_fld',36,'false'),('nb_vendedores_m_pg','nb_vend_14_fld',11,'false'),('nb_vendedores_m_pg','nb_vend_14_fld',13,'string'),('nb_vendedores_m_pg','nb_vend_14_fld',24,'campo'),('nb_vendedores_m_pg','nb_vend_14_fld',36,'false'),('nb_vendedores_m_pg','nb_vend_15_fld',11,'false'),('nb_vendedores_m_pg','nb_vend_15_fld',13,'string'),('nb_vendedores_m_pg','nb_vend_15_fld',24,'campo'),('nb_vendedores_m_pg','nb_vend_15_fld',36,'false'),('nb_vendedores_m_pg','nb_vend_16_fld',11,'false'),('nb_vendedores_m_pg','nb_vend_16_fld',13,'string'),('nb_vendedores_m_pg','nb_vend_16_fld',24,'campo'),('nb_vendedores_m_pg','nb_vend_16_fld',36,'false'),('nb_vendedores_m_pg','nb_vend_17_fld',11,'false'),('nb_vendedores_m_pg','nb_vend_17_fld',13,'string'),('nb_vendedores_m_pg','nb_vend_17_fld',24,'campo'),('nb_vendedores_m_pg','nb_vend_17_fld',36,'false'),('nb_vendedores_m_pg','nb_vend_18_fld',11,'false'),('nb_vendedores_m_pg','nb_vend_18_fld',13,'string'),('nb_vendedores_m_pg','nb_vend_18_fld',24,'campo'),('nb_vendedores_m_pg','nb_vend_18_fld',36,'false'),('nb_vendedores_m_pg','nb_vend_19_fld',11,'false'),('nb_vendedores_m_pg','nb_vend_19_fld',13,'string'),('nb_vendedores_m_pg','nb_vend_19_fld',24,'campo'),('nb_vendedores_m_pg','nb_vend_19_fld',36,'false'),('nb_vendedores_m_pg','nb_vend_1_fld',11,'false'),('nb_vendedores_m_pg','nb_vend_1_fld',13,'string'),('nb_vendedores_m_pg','nb_vend_1_fld',24,'Id Vendedor'),('nb_vendedores_m_pg','nb_vend_1_fld',32,'number'),('nb_vendedores_m_pg','nb_vend_1_fld',36,'true'),('nb_vendedores_m_pg','nb_vend_20_fld',11,'campo 18'),('nb_vendedores_m_pg','nb_vend_20_fld',13,'string'),('nb_vendedores_m_pg','nb_vend_20_fld',24,'campo'),('nb_vendedores_m_pg','nb_vend_20_fld',36,'false'),('nb_vendedores_m_pg','nb_vend_2_fld',11,'true'),('nb_vendedores_m_pg','nb_vend_2_fld',13,'string'),('nb_vendedores_m_pg','nb_vend_2_fld',24,'Tipo Documento'),('nb_vendedores_m_pg','nb_vend_2_fld',32,'select'),('nb_vendedores_m_pg','nb_vend_2_fld',36,'false'),('nb_vendedores_m_pg','nb_vend_2_fld',55,'../Events/ValoresCampo.php?campo=nb_tipodoc_fld'),('nb_vendedores_m_pg','nb_vend_2_fld',58,'Seleccione Tipo Documento'),('nb_vendedores_m_pg','nb_vend_2_fld',59,'false'),('nb_vendedores_m_pg','nb_vend_3_fld',11,'true'),('nb_vendedores_m_pg','nb_vend_3_fld',13,'string'),('nb_vendedores_m_pg','nb_vend_3_fld',24,'# Documento'),('nb_vendedores_m_pg','nb_vend_3_fld',32,'number'),('nb_vendedores_m_pg','nb_vend_3_fld',36,'false'),('nb_vendedores_m_pg','nb_vend_4_fld',11,'true'),('nb_vendedores_m_pg','nb_vend_4_fld',13,'string'),('nb_vendedores_m_pg','nb_vend_4_fld',24,'Nombre y Apellido'),('nb_vendedores_m_pg','nb_vend_4_fld',36,'false'),('nb_vendedores_m_pg','nb_vend_5_fld',11,'false'),('nb_vendedores_m_pg','nb_vend_5_fld',13,'string'),('nb_vendedores_m_pg','nb_vend_5_fld',24,'Direccion'),('nb_vendedores_m_pg','nb_vend_5_fld',36,'false'),('nb_vendedores_m_pg','nb_vend_6_fld',11,'false'),('nb_vendedores_m_pg','nb_vend_6_fld',13,'string'),('nb_vendedores_m_pg','nb_vend_6_fld',24,'Telefono'),('nb_vendedores_m_pg','nb_vend_6_fld',36,'false'),('nb_vendedores_m_pg','nb_vend_7_fld',11,'false'),('nb_vendedores_m_pg','nb_vend_7_fld',13,'string'),('nb_vendedores_m_pg','nb_vend_7_fld',24,'Email'),('nb_vendedores_m_pg','nb_vend_7_fld',32,'email'),('nb_vendedores_m_pg','nb_vend_7_fld',36,'false'),('nb_vendedores_m_pg','nb_vend_8_fld',11,'false'),('nb_vendedores_m_pg','nb_vend_8_fld',13,'string'),('nb_vendedores_m_pg','nb_vend_8_fld',24,'Estado'),('nb_vendedores_m_pg','nb_vend_8_fld',32,'select'),('nb_vendedores_m_pg','nb_vend_8_fld',36,'false'),('nb_vendedores_m_pg','nb_vend_8_fld',55,'../Events/ValoresCampo.php?campo=nb_estado_fld'),('nb_vendedores_m_pg','nb_vend_8_fld',58,'Seleccione estado'),('nb_vendedores_m_pg','nb_vend_8_fld',59,'false'),('nb_vendedores_m_pg','nb_vend_9_fld',11,'false'),('nb_vendedores_m_pg','nb_vend_9_fld',13,'string'),('nb_vendedores_m_pg','nb_vend_9_fld',24,'Observaciones'),('nb_vendedores_m_pg','nb_vend_9_fld',32,'textarea'),('nb_vendedores_m_pg','nb_vend_9_fld',36,'false'),('nb_proveedores_m_pg','nb_prov_10_fld',11,'false'),('nb_proveedores_m_pg','nb_prov_10_fld',13,'string'),('nb_proveedores_m_pg','nb_prov_10_fld',24,'campo'),('nb_proveedores_m_pg','nb_prov_10_fld',36,'false'),('nb_proveedores_m_pg','nb_prov_11_fld',11,'false'),('nb_proveedores_m_pg','nb_prov_11_fld',13,'string'),('nb_proveedores_m_pg','nb_prov_11_fld',24,'campo'),('nb_proveedores_m_pg','nb_prov_11_fld',36,'false'),('nb_proveedores_m_pg','nb_prov_12_fld',11,'false'),('nb_proveedores_m_pg','nb_prov_12_fld',13,'string'),('nb_proveedores_m_pg','nb_prov_12_fld',24,'campo'),('nb_proveedores_m_pg','nb_prov_12_fld',36,'false'),('nb_proveedores_m_pg','nb_prov_13_fld',11,'false'),('nb_proveedores_m_pg','nb_prov_13_fld',13,'string'),('nb_proveedores_m_pg','nb_prov_13_fld',24,'campo'),('nb_proveedores_m_pg','nb_prov_13_fld',36,'false'),('nb_proveedores_m_pg','nb_prov_14_fld',11,'false'),('nb_proveedores_m_pg','nb_prov_14_fld',13,'string'),('nb_proveedores_m_pg','nb_prov_14_fld',24,'campo'),('nb_proveedores_m_pg','nb_prov_14_fld',36,'false'),('nb_proveedores_m_pg','nb_prov_15_fld',11,'false'),('nb_proveedores_m_pg','nb_prov_15_fld',13,'string'),('nb_proveedores_m_pg','nb_prov_15_fld',24,'campo'),('nb_proveedores_m_pg','nb_prov_15_fld',36,'false'),('nb_proveedores_m_pg','nb_prov_16_fld',11,'false'),('nb_proveedores_m_pg','nb_prov_16_fld',13,'string'),('nb_proveedores_m_pg','nb_prov_16_fld',24,'campo'),('nb_proveedores_m_pg','nb_prov_16_fld',36,'false'),('nb_proveedores_m_pg','nb_prov_17_fld',11,'false'),('nb_proveedores_m_pg','nb_prov_17_fld',13,'string'),('nb_proveedores_m_pg','nb_prov_17_fld',24,'campo'),('nb_proveedores_m_pg','nb_prov_17_fld',36,'false'),('nb_proveedores_m_pg','nb_prov_18_fld',11,'false'),('nb_proveedores_m_pg','nb_prov_18_fld',13,'string'),('nb_proveedores_m_pg','nb_prov_18_fld',24,'campo'),('nb_proveedores_m_pg','nb_prov_18_fld',36,'false'),('nb_proveedores_m_pg','nb_prov_19_fld',11,'false'),('nb_proveedores_m_pg','nb_prov_19_fld',13,'string'),('nb_proveedores_m_pg','nb_prov_19_fld',24,'campo'),('nb_proveedores_m_pg','nb_prov_19_fld',36,'false'),('nb_proveedores_m_pg','nb_prov_1_fld',11,'false'),('nb_proveedores_m_pg','nb_prov_1_fld',13,'string'),('nb_proveedores_m_pg','nb_prov_1_fld',24,'Id proveedor'),('nb_proveedores_m_pg','nb_prov_1_fld',36,'true'),('nb_proveedores_m_pg','nb_prov_20_fld',11,'campo 18'),('nb_proveedores_m_pg','nb_prov_20_fld',13,'string'),('nb_proveedores_m_pg','nb_prov_20_fld',24,'campo'),('nb_proveedores_m_pg','nb_prov_20_fld',36,'false'),('nb_proveedores_m_pg','nb_prov_2_fld',11,'true'),('nb_proveedores_m_pg','nb_prov_2_fld',13,'string'),('nb_proveedores_m_pg','nb_prov_2_fld',24,'Tipo Documento'),('nb_proveedores_m_pg','nb_prov_2_fld',32,'select'),('nb_proveedores_m_pg','nb_prov_2_fld',36,'false'),('nb_proveedores_m_pg','nb_prov_2_fld',55,'../Events/ValoresCampo.php?campo=nb_tipodoc_fld'),('nb_proveedores_m_pg','nb_prov_2_fld',58,'Seleccione Tipo Documento'),('nb_proveedores_m_pg','nb_prov_2_fld',59,'false'),('nb_proveedores_m_pg','nb_prov_3_fld',11,'true'),('nb_proveedores_m_pg','nb_prov_3_fld',13,'string'),('nb_proveedores_m_pg','nb_prov_3_fld',24,'# Documento'),('nb_proveedores_m_pg','nb_prov_3_fld',32,'number'),('nb_proveedores_m_pg','nb_prov_3_fld',36,'false'),('nb_proveedores_m_pg','nb_prov_4_fld',11,'true'),('nb_proveedores_m_pg','nb_prov_4_fld',13,'string'),('nb_proveedores_m_pg','nb_prov_4_fld',24,'Nombre o Razon Social'),('nb_proveedores_m_pg','nb_prov_4_fld',36,'false'),('nb_proveedores_m_pg','nb_prov_5_fld',11,'false'),('nb_proveedores_m_pg','nb_prov_5_fld',13,'string'),('nb_proveedores_m_pg','nb_prov_5_fld',24,'Direccion'),('nb_proveedores_m_pg','nb_prov_5_fld',36,'false'),('nb_proveedores_m_pg','nb_prov_6_fld',11,'false'),('nb_proveedores_m_pg','nb_prov_6_fld',13,'string'),('nb_proveedores_m_pg','nb_prov_6_fld',24,'Telefono'),('nb_proveedores_m_pg','nb_prov_6_fld',36,'false'),('nb_proveedores_m_pg','nb_prov_7_fld',11,'false'),('nb_proveedores_m_pg','nb_prov_7_fld',13,'string'),('nb_proveedores_m_pg','nb_prov_7_fld',24,'Email'),('nb_proveedores_m_pg','nb_prov_7_fld',32,'email'),('nb_proveedores_m_pg','nb_prov_7_fld',36,'false'),('nb_proveedores_m_pg','nb_prov_8_fld',11,'false'),('nb_proveedores_m_pg','nb_prov_8_fld',13,'string'),('nb_proveedores_m_pg','nb_prov_8_fld',24,'Estado'),('nb_proveedores_m_pg','nb_prov_8_fld',32,'select'),('nb_proveedores_m_pg','nb_prov_8_fld',36,'false'),('nb_proveedores_m_pg','nb_prov_8_fld',55,'../Events/ValoresCampo.php?campo=nb_estado_fld'),('nb_proveedores_m_pg','nb_prov_8_fld',58,'Seleccione Estado'),('nb_proveedores_m_pg','nb_prov_8_fld',59,'false'),('nb_proveedores_m_pg','nb_prov_9_fld',11,'false'),('nb_proveedores_m_pg','nb_prov_9_fld',13,'string'),('nb_proveedores_m_pg','nb_prov_9_fld',24,'Observaciones'),('nb_proveedores_m_pg','nb_prov_9_fld',32,'textarea'),('nb_proveedores_m_pg','nb_prov_9_fld',36,'false'),('nb_productos_m_pg','nb_prod_10_fld',11,'false'),('nb_productos_m_pg','nb_prod_10_fld',13,'string'),('nb_productos_m_pg','nb_prod_10_fld',24,'campo'),('nb_productos_m_pg','nb_prod_10_fld',36,'true'),('nb_productos_m_pg','nb_prod_11_fld',11,'false'),('nb_productos_m_pg','nb_prod_11_fld',13,'string'),('nb_productos_m_pg','nb_prod_11_fld',24,'campo'),('nb_productos_m_pg','nb_prod_11_fld',36,'true'),('nb_productos_m_pg','nb_prod_12_fld',11,'false'),('nb_productos_m_pg','nb_prod_12_fld',13,'string'),('nb_productos_m_pg','nb_prod_12_fld',24,'campo'),('nb_productos_m_pg','nb_prod_12_fld',36,'true'),('nb_productos_m_pg','nb_prod_13_fld',11,'false'),('nb_productos_m_pg','nb_prod_13_fld',13,'string'),('nb_productos_m_pg','nb_prod_13_fld',24,'campo'),('nb_productos_m_pg','nb_prod_13_fld',36,'true'),('nb_productos_m_pg','nb_prod_14_fld',11,'false'),('nb_productos_m_pg','nb_prod_14_fld',13,'string'),('nb_productos_m_pg','nb_prod_14_fld',24,'campo'),('nb_productos_m_pg','nb_prod_14_fld',36,'true'),('nb_productos_m_pg','nb_prod_15_fld',11,'false'),('nb_productos_m_pg','nb_prod_15_fld',13,'string'),('nb_productos_m_pg','nb_prod_15_fld',24,'campo'),('nb_productos_m_pg','nb_prod_15_fld',36,'true'),('nb_productos_m_pg','nb_prod_16_fld',11,'false'),('nb_productos_m_pg','nb_prod_16_fld',13,'string'),('nb_productos_m_pg','nb_prod_16_fld',24,'campo'),('nb_productos_m_pg','nb_prod_16_fld',36,'true'),('nb_productos_m_pg','nb_prod_17_fld',11,'false'),('nb_productos_m_pg','nb_prod_17_fld',13,'string'),('nb_productos_m_pg','nb_prod_17_fld',24,'campo'),('nb_productos_m_pg','nb_prod_17_fld',36,'true'),('nb_productos_m_pg','nb_prod_18_fld',11,'false'),('nb_productos_m_pg','nb_prod_18_fld',13,'string'),('nb_productos_m_pg','nb_prod_18_fld',24,'campo'),('nb_productos_m_pg','nb_prod_18_fld',36,'true'),('nb_productos_m_pg','nb_prod_19_fld',11,'false'),('nb_productos_m_pg','nb_prod_19_fld',13,'string'),('nb_productos_m_pg','nb_prod_19_fld',24,'campo'),('nb_productos_m_pg','nb_prod_19_fld',36,'true'),('nb_productos_m_pg','nb_prod_1_fld',11,'false'),('nb_productos_m_pg','nb_prod_1_fld',13,'string'),('nb_productos_m_pg','nb_prod_1_fld',24,'Id Producto'),('nb_productos_m_pg','nb_prod_1_fld',32,'number'),('nb_productos_m_pg','nb_prod_1_fld',36,'true'),('nb_productos_m_pg','nb_prod_20_fld',11,'campo 18'),('nb_productos_m_pg','nb_prod_20_fld',13,'string'),('nb_productos_m_pg','nb_prod_20_fld',24,'campo'),('nb_productos_m_pg','nb_prod_20_fld',36,'true'),('nb_productos_m_pg','nb_prod_2_fld',11,'true'),('nb_productos_m_pg','nb_prod_2_fld',13,'string'),('nb_productos_m_pg','nb_prod_2_fld',24,'Descripcion'),('nb_productos_m_pg','nb_prod_2_fld',36,'false'),('nb_productos_m_pg','nb_prod_3_fld',11,'false'),('nb_productos_m_pg','nb_prod_3_fld',13,'string'),('nb_productos_m_pg','nb_prod_3_fld',24,'Marca'),('nb_productos_m_pg','nb_prod_3_fld',36,'false'),('nb_productos_m_pg','nb_prod_4_fld',11,'false'),('nb_productos_m_pg','nb_prod_4_fld',13,'string'),('nb_productos_m_pg','nb_prod_4_fld',24,'Modelo'),('nb_productos_m_pg','nb_prod_4_fld',36,'false'),('nb_productos_m_pg','nb_prod_5_fld',11,'false'),('nb_productos_m_pg','nb_prod_5_fld',13,'string'),('nb_productos_m_pg','nb_prod_5_fld',24,'Observaciones'),('nb_productos_m_pg','nb_prod_5_fld',32,'textarea'),('nb_productos_m_pg','nb_prod_5_fld',36,'false'),('nb_productos_m_pg','nb_prod_6_fld',11,'false'),('nb_productos_m_pg','nb_prod_6_fld',13,'string'),('nb_productos_m_pg','nb_prod_6_fld',24,'Unidad Medida'),('nb_productos_m_pg','nb_prod_6_fld',32,'select'),('nb_productos_m_pg','nb_prod_6_fld',36,'false'),('nb_productos_m_pg','nb_prod_6_fld',55,'../Events/ValoresCampo.php?campo=nb_umed_fld'),('nb_productos_m_pg','nb_prod_6_fld',58,'Seleccione Tipo Medida'),('nb_productos_m_pg','nb_prod_6_fld',59,'false'),('nb_productos_m_pg','nb_prod_7_fld',11,'true'),('nb_productos_m_pg','nb_prod_7_fld',13,'string'),('nb_productos_m_pg','nb_prod_7_fld',24,'Precio'),('nb_productos_m_pg','nb_prod_7_fld',32,'number'),('nb_productos_m_pg','nb_prod_7_fld',36,'false'),('nb_productos_m_pg','nb_prod_8_fld',11,'true'),('nb_productos_m_pg','nb_prod_8_fld',13,'string'),('nb_productos_m_pg','nb_prod_8_fld',24,'Iva'),('nb_productos_m_pg','nb_prod_8_fld',32,'number'),('nb_productos_m_pg','nb_prod_8_fld',36,'false'),('nb_productos_m_pg','nb_prod_9_fld',11,'false'),('nb_productos_m_pg','nb_prod_9_fld',13,'string'),('nb_productos_m_pg','nb_prod_9_fld',24,'campo'),('nb_productos_m_pg','nb_prod_9_fld',36,'true'),('nb_inventario_m_pg','nb_inve_10_fld',11,'false'),('nb_inventario_m_pg','nb_inve_10_fld',13,'string'),('nb_inventario_m_pg','nb_inve_10_fld',24,'campo'),('nb_inventario_m_pg','nb_inve_10_fld',36,'true'),('nb_inventario_m_pg','nb_inve_11_fld',11,'false'),('nb_inventario_m_pg','nb_inve_11_fld',13,'string'),('nb_inventario_m_pg','nb_inve_11_fld',24,'campo'),('nb_inventario_m_pg','nb_inve_11_fld',36,'true'),('nb_inventario_m_pg','nb_inve_12_fld',11,'false'),('nb_inventario_m_pg','nb_inve_12_fld',13,'string'),('nb_inventario_m_pg','nb_inve_12_fld',24,'campo'),('nb_inventario_m_pg','nb_inve_12_fld',36,'true'),('nb_inventario_m_pg','nb_inve_13_fld',11,'false'),('nb_inventario_m_pg','nb_inve_13_fld',13,'string'),('nb_inventario_m_pg','nb_inve_13_fld',24,'campo'),('nb_inventario_m_pg','nb_inve_13_fld',36,'true'),('nb_inventario_m_pg','nb_inve_14_fld',11,'false'),('nb_inventario_m_pg','nb_inve_14_fld',13,'string'),('nb_inventario_m_pg','nb_inve_14_fld',24,'campo'),('nb_inventario_m_pg','nb_inve_14_fld',36,'true'),('nb_inventario_m_pg','nb_inve_15_fld',11,'false'),('nb_inventario_m_pg','nb_inve_15_fld',13,'string'),('nb_inventario_m_pg','nb_inve_15_fld',24,'campo'),('nb_inventario_m_pg','nb_inve_15_fld',36,'true'),('nb_inventario_m_pg','nb_inve_16_fld',11,'false'),('nb_inventario_m_pg','nb_inve_16_fld',13,'string'),('nb_inventario_m_pg','nb_inve_16_fld',24,'campo'),('nb_inventario_m_pg','nb_inve_16_fld',36,'true'),('nb_inventario_m_pg','nb_inve_17_fld',11,'false'),('nb_inventario_m_pg','nb_inve_17_fld',13,'string'),('nb_inventario_m_pg','nb_inve_17_fld',24,'campo'),('nb_inventario_m_pg','nb_inve_17_fld',36,'true'),('nb_inventario_m_pg','nb_inve_18_fld',11,'false'),('nb_inventario_m_pg','nb_inve_18_fld',13,'string'),('nb_inventario_m_pg','nb_inve_18_fld',24,'campo'),('nb_inventario_m_pg','nb_inve_18_fld',36,'true'),('nb_inventario_m_pg','nb_inve_19_fld',11,'false'),('nb_inventario_m_pg','nb_inve_19_fld',13,'string'),('nb_inventario_m_pg','nb_inve_19_fld',24,'campo'),('nb_inventario_m_pg','nb_inve_19_fld',36,'true'),('nb_inventario_m_pg','nb_inve_1_fld',11,'false'),('nb_inventario_m_pg','nb_inve_1_fld',13,'string'),('nb_inventario_m_pg','nb_inve_1_fld',24,'Cod Inventario'),('nb_inventario_m_pg','nb_inve_1_fld',32,'number'),('nb_inventario_m_pg','nb_inve_1_fld',36,'true'),('nb_inventario_m_pg','nb_inve_20_fld',11,'campo 18'),('nb_inventario_m_pg','nb_inve_20_fld',13,'string'),('nb_inventario_m_pg','nb_inve_20_fld',24,'campo'),('nb_inventario_m_pg','nb_inve_20_fld',36,'true'),('nb_inventario_m_pg','nb_inve_2_fld',11,'true'),('nb_inventario_m_pg','nb_inve_2_fld',13,'string'),('nb_inventario_m_pg','nb_inve_2_fld',24,'Id Producto'),('nb_inventario_m_pg','nb_inve_2_fld',32,'number'),('nb_inventario_m_pg','nb_inve_2_fld',36,'false'),('nb_inventario_m_pg','nb_inve_3_fld',11,'true'),('nb_inventario_m_pg','nb_inve_3_fld',13,'string'),('nb_inventario_m_pg','nb_inve_3_fld',24,'Cantidad'),('nb_inventario_m_pg','nb_inve_3_fld',32,'number'),('nb_inventario_m_pg','nb_inve_3_fld',36,'false'),('nb_inventario_m_pg','nb_inve_4_fld',6,'string'),('nb_inventario_m_pg','nb_inve_4_fld',11,'true'),('nb_inventario_m_pg','nb_inve_4_fld',13,'string'),('nb_inventario_m_pg','nb_inve_4_fld',24,'Fecha Ingreso '),('nb_inventario_m_pg','nb_inve_4_fld',36,'false'),('nb_inventario_m_pg','nb_inve_5_fld',11,'false'),('nb_inventario_m_pg','nb_inve_5_fld',13,'string'),('nb_inventario_m_pg','nb_inve_5_fld',24,'campo'),('nb_inventario_m_pg','nb_inve_5_fld',36,'true'),('nb_inventario_m_pg','nb_inve_6_fld',11,'false'),('nb_inventario_m_pg','nb_inve_6_fld',13,'string'),('nb_inventario_m_pg','nb_inve_6_fld',24,'campo'),('nb_inventario_m_pg','nb_inve_6_fld',36,'true'),('nb_inventario_m_pg','nb_inve_7_fld',11,'false'),('nb_inventario_m_pg','nb_inve_7_fld',13,'string'),('nb_inventario_m_pg','nb_inve_7_fld',24,'campo'),('nb_inventario_m_pg','nb_inve_7_fld',36,'true'),('nb_inventario_m_pg','nb_inve_8_fld',11,'false'),('nb_inventario_m_pg','nb_inve_8_fld',13,'string'),('nb_inventario_m_pg','nb_inve_8_fld',24,'campo'),('nb_inventario_m_pg','nb_inve_8_fld',36,'true'),('nb_inventario_m_pg','nb_inve_9_fld',11,'false'),('nb_inventario_m_pg','nb_inve_9_fld',13,'string'),('nb_inventario_m_pg','nb_inve_9_fld',24,'campo'),('nb_inventario_m_pg','nb_inve_9_fld',36,'true'),('nb_clientes_m_pg','nb_clie_1_fldX',11,'false'),('nb_clientes_m_pg','nb_clie_1_fldX',13,'string'),('nb_clientes_m_pg','nb_clie_1_fldX',24,'Id Cliente'),('nb_clientes_m_pg','nb_clie_1_fldX',29,'true'),('nb_vendedores_m_pg','nb_vend_1_fldX',11,'false'),('nb_vendedores_m_pg','nb_vend_1_fldX',13,'string'),('nb_vendedores_m_pg','nb_vend_1_fldX',24,'Id Vendedor'),('nb_vendedores_m_pg','nb_vend_1_fldX',32,'number'),('nb_facturacion_m_pg','nb_fact_10_fld',24,'Codigo Vendedor'),('nb_vendedores_m_pg','nb_vend_1_fldX',29,'true'),('nb_proveedores_m_pg','nb_prov_1_fldX',11,'false'),('nb_proveedores_m_pg','nb_prov_1_fldX',13,'string'),('nb_proveedores_m_pg','nb_prov_1_fldX',24,'Id proveedor'),('nb_proveedores_m_pg','nb_prov_1_fldX',29,'true'),('nb_productos_m_pg','nb_prod_1_fldX',11,'false'),('nb_productos_m_pg','nb_prod_1_fldX',13,'string'),('nb_productos_m_pg','nb_prod_1_fldX',24,'Id Producto'),('nb_productos_m_pg','nb_prod_1_fldX',32,'number'),('nb_facturacion_m_pg','nb_fact_10_fld',13,'string'),('nb_productos_m_pg','nb_prod_1_fldX',29,'true'),('nb_inventario_m_pg','nb_inve_1_fldX',11,'false'),('nb_inventario_m_pg','nb_inve_1_fldX',13,'string'),('nb_inventario_m_pg','nb_inve_1_fldX',24,'Cod Inventario'),('nb_inventario_m_pg','nb_inve_1_fldX',32,'number'),('nb_inventario_m_pg','nb_inve_1_fldX',29,'true'),('nb_facturacion_m_pg','nb_fact_10_fld',36,'false'),('nb_facturacion_m_pg','nb_fact_11_fld',11,'true'),('nb_facturacion_m_pg','nb_fact_11_fld',13,'string'),('nb_facturacion_m_pg','nb_fact_11_fld',24,'Tipo Factura'),('nb_facturacion_m_pg','nb_fact_11_fld',32,'select'),('nb_facturacion_m_pg','nb_fact_11_fld',36,'false'),('nb_facturacion_m_pg','nb_fact_11_fld',55,'../Events/ValoresCampo.php?campo=nb_tipofact_fld'),('nb_facturacion_m_pg','nb_fact_11_fld',58,'Seleccione Tipo'),('nb_facturacion_m_pg','nb_fact_11_fld',59,'false'),('nb_facturacion_m_pg','nb_fact_12_fld',11,'false'),('nb_facturacion_m_pg','nb_fact_12_fld',13,'string'),('nb_facturacion_m_pg','nb_fact_12_fld',24,'Observacion'),('nb_facturacion_m_pg','nb_fact_12_fld',32,'textarea'),('nb_facturacion_m_pg','nb_fact_12_fld',36,'false'),('nb_facturacion_m_pg','nb_fact_13_fld',11,'false'),('nb_facturacion_m_pg','nb_fact_13_fld',13,'string'),('nb_facturacion_m_pg','nb_fact_13_fld',24,'campo'),('nb_facturacion_m_pg','nb_fact_13_fld',36,'true'),('nb_facturacion_m_pg','nb_fact_14_fld',11,'false'),('nb_facturacion_m_pg','nb_fact_14_fld',13,'string'),('nb_facturacion_m_pg','nb_fact_14_fld',24,'campo'),('nb_facturacion_m_pg','nb_fact_14_fld',36,'true'),('nb_facturacion_m_pg','nb_fact_15_fld',11,'false'),('nb_facturacion_m_pg','nb_fact_15_fld',13,'string'),('nb_facturacion_m_pg','nb_fact_15_fld',24,'campo'),('nb_facturacion_m_pg','nb_fact_15_fld',36,'true'),('nb_facturacion_m_pg','nb_fact_16_fld',11,'false'),('nb_facturacion_m_pg','nb_fact_16_fld',13,'string'),('nb_facturacion_m_pg','nb_fact_16_fld',24,'campo'),('nb_facturacion_m_pg','nb_fact_16_fld',36,'true'),('nb_facturacion_m_pg','nb_fact_17_fld',11,'false'),('nb_facturacion_m_pg','nb_fact_17_fld',13,'string'),('nb_facturacion_m_pg','nb_fact_17_fld',24,'campo'),('nb_facturacion_m_pg','nb_fact_17_fld',36,'true'),('nb_facturacion_m_pg','nb_fact_18_fld',11,'false'),('nb_facturacion_m_pg','nb_fact_18_fld',13,'string'),('nb_facturacion_m_pg','nb_fact_18_fld',24,'campo'),('nb_facturacion_m_pg','nb_fact_18_fld',36,'true'),('nb_facturacion_m_pg','nb_fact_19_fld',11,'false'),('nb_facturacion_m_pg','nb_fact_19_fld',13,'string'),('nb_facturacion_m_pg','nb_fact_19_fld',24,'campo'),('nb_facturacion_m_pg','nb_fact_19_fld',36,'true'),('nb_facturacion_m_pg','nb_fact_1_fld',11,'false'),('nb_facturacion_m_pg','nb_fact_1_fld',13,'string'),('nb_facturacion_m_pg','nb_fact_1_fld',24,'# Factura'),('nb_facturacion_m_pg','nb_fact_1_fld',36,'true'),('nb_facturacion_m_pg','nb_fact_20_fld',11,'campo 18'),('nb_facturacion_m_pg','nb_fact_20_fld',13,'string'),('nb_facturacion_m_pg','nb_fact_20_fld',24,'campo'),('nb_facturacion_m_pg','nb_fact_20_fld',36,'true'),('nb_facturacion_m_pg','nb_fact_2_fld',11,'false'),('nb_facturacion_m_pg','nb_fact_2_fld',13,'string'),('nb_facturacion_m_pg','nb_fact_2_fld',24,'Campo'),('nb_facturacion_m_pg','nb_fact_2_fld',36,'true'),('nb_facturacion_m_pg','nb_fact_3_fld',11,'true'),('nb_facturacion_m_pg','nb_fact_3_fld',13,'string'),('nb_facturacion_m_pg','nb_fact_3_fld',24,'# Documento'),('nb_facturacion_m_pg','nb_fact_3_fld',32,'number'),('nb_facturacion_m_pg','nb_fact_3_fld',36,'false'),('nb_facturacion_m_pg','nb_fact_3_fld',62,'function(e) {buscarCliente(this.getValue());}'),('nb_facturacion_m_pg','nb_fact_4_fld',11,'true'),('nb_facturacion_m_pg','nb_fact_4_fld',13,'string'),('nb_facturacion_m_pg','nb_fact_4_fld',24,'Nombre o Razon Social'),('nb_facturacion_m_pg','nb_fact_4_fld',36,'false'),('nb_facturacion_m_pg','nb_fact_5_fld',11,'true'),('nb_facturacion_m_pg','nb_fact_5_fld',13,'string'),('nb_facturacion_m_pg','nb_fact_5_fld',24,'Direccion'),('nb_facturacion_m_pg','nb_fact_5_fld',36,'false'),('nb_facturacion_m_pg','nb_fact_6_fld',11,'true'),('nb_facturacion_m_pg','nb_fact_6_fld',13,'string'),('nb_facturacion_m_pg','nb_fact_6_fld',24,'Telefono'),('nb_facturacion_m_pg','nb_fact_6_fld',36,'false'),('nb_facturacion_m_pg','nb_fact_7_fld',6,'email'),('nb_facturacion_m_pg','nb_fact_7_fld',11,'false'),('nb_facturacion_m_pg','nb_fact_7_fld',13,'string'),('nb_facturacion_m_pg','nb_fact_7_fld',24,'Email'),('nb_facturacion_m_pg','nb_fact_7_fld',36,'false'),('nb_facturacion_m_pg','nb_fact_8_fld',6,'string'),('nb_facturacion_m_pg','nb_fact_8_fld',11,'true'),('nb_facturacion_m_pg','nb_fact_8_fld',13,'string'),('nb_facturacion_m_pg','nb_fact_8_fld',24,'Fecha Factura'),('nb_facturacion_m_pg','nb_fact_8_fld',36,'false'),('nb_facturacion_m_pg','nb_fact_8_fld',56,'DD/MM/YYYY'),('nb_facturacion_m_pg','nb_fact_9_fld',6,'string'),('nb_facturacion_m_pg','nb_fact_9_fld',11,'false'),('nb_facturacion_m_pg','nb_fact_9_fld',13,'string'),('nb_facturacion_m_pg','nb_fact_9_fld',24,'Fecha Vencimiento'),('nb_facturacion_m_pg','nb_fact_9_fld',36,'false'),('nb_facturacion_m_pg','nb_fact_1_fldX',11,'false'),('nb_facturacion_m_pg','nb_fact_1_fldX',13,'string'),('nb_facturacion_m_pg','nb_fact_1_fldX',24,'# Factura'),('nb_facturacion_m_pg','nb_fact_1_fldX',29,'true');
/*!40000 ALTER TABLE `nb_forms_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nb_inventario_tbl`
--

DROP TABLE IF EXISTS `nb_inventario_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nb_inventario_tbl`
--

LOCK TABLES `nb_inventario_tbl` WRITE;
/*!40000 ALTER TABLE `nb_inventario_tbl` DISABLE KEYS */;
INSERT INTO `nb_inventario_tbl` VALUES (1,'1','250','01/13/2016','','','','','','','','','','','','','','','',''),(2,'8','9','01/27/2016','','','','','','','','','','','','','','','',''),(3,'1','150','01/13/2016','','','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `nb_inventario_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `nb_inventario_vw`
--

DROP TABLE IF EXISTS `nb_inventario_vw`;
/*!50001 DROP VIEW IF EXISTS `nb_inventario_vw`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `nb_inventario_vw` AS SELECT 
 1 AS `Id`,
 1 AS `Producto`,
 1 AS `Cantidad`,
 1 AS `Fecha`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `nb_link_tbl`
--

DROP TABLE IF EXISTS `nb_link_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nb_link_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_id2_page_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_page_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nb_link_tbl`
--

LOCK TABLES `nb_link_tbl` WRITE;
/*!40000 ALTER TABLE `nb_link_tbl` DISABLE KEYS */;
INSERT INTO `nb_link_tbl` VALUES ('nb_loginv_pg','nb_usersm_pg'),('nb_clientes_v_pg','nb_clientes_m_pg'),('nb_vendedores_v_pg','nb_vendedores_m_pg'),('nb_proveedores_v_pg','nb_proveedores_m_pg'),('nb_productos_v_pg','nb_productos_m_pg'),('nb_inventario_v_pg','nb_inventario_m_pg'),('nb_facturacion_v_pg','nb_facturacion_m_pg');
/*!40000 ALTER TABLE `nb_link_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `nb_login_vw`
--

DROP TABLE IF EXISTS `nb_login_vw`;
/*!50001 DROP VIEW IF EXISTS `nb_login_vw`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `nb_login_vw` AS SELECT 
 1 AS `Id`,
 1 AS `Usuario`,
 1 AS `Login`,
 1 AS `Role`,
 1 AS `Estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `nb_navigation_tbl`
--

DROP TABLE IF EXISTS `nb_navigation_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nb_navigation_tbl`
--

LOCK TABLES `nb_navigation_tbl` WRITE;
/*!40000 ALTER TABLE `nb_navigation_tbl` DISABLE KEYS */;
INSERT INTO `nb_navigation_tbl` VALUES ('home',1,0,1,'Home','home','fa fa-home','N'),('home',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),('home',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),('home',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),('home',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),('home',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),('home',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),('home',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),('home',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),('home',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),('home',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),('home',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),('home',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),('home',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),('home',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),('home',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),('home',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),('home',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),('home',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),('home',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),('home',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),('home',22,20,2,'Facturacion Total','nb_reporte_2_pg','fa fa-bar-chart','N'),('home',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),('home',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),('home',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),('home',26,0,10,'Configuracion','home','fa fa-cog','N'),('home',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),('home',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),('home',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),('nb_clientes_pg',1,0,1,'Home','home','fa fa-home','N'),('nb_clientes_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),('nb_clientes_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),('nb_clientes_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),('nb_clientes_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),('nb_clientes_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),('nb_clientes_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),('nb_clientes_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),('nb_clientes_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),('nb_clientes_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),('nb_clientes_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),('nb_clientes_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),('nb_clientes_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),('nb_clientes_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),('nb_clientes_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),('nb_clientes_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),('nb_clientes_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),('nb_clientes_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),('nb_clientes_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),('nb_clientes_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),('nb_clientes_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),('nb_clientes_pg',22,20,2,'Facturacion Total','nb_reporte_2_pg','fa fa-bar-chart','N'),('nb_clientes_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),('nb_clientes_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),('nb_clientes_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),('nb_clientes_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),('nb_clientes_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),('nb_clientes_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),('nb_clientes_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),('nb_clientes_v_pg',1,0,1,'Home','home','fa fa-home','N'),('nb_clientes_v_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),('nb_clientes_v_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),('nb_clientes_v_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),('nb_clientes_v_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),('nb_clientes_v_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),('nb_clientes_v_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),('nb_clientes_v_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),('nb_clientes_v_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),('nb_clientes_v_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),('nb_clientes_v_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),('nb_clientes_v_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),('nb_clientes_v_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),('nb_clientes_v_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),('nb_clientes_v_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),('nb_clientes_v_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),('nb_clientes_v_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),('nb_clientes_v_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),('nb_clientes_v_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),('nb_clientes_v_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),('nb_clientes_v_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),('nb_clientes_v_pg',22,20,2,'Facturacion Total','nb_reporte_2_pg','fa fa-bar-chart','N'),('nb_clientes_v_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),('nb_clientes_v_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),('nb_clientes_v_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),('nb_clientes_v_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),('nb_clientes_v_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),('nb_clientes_v_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),('nb_clientes_v_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),('nb_detallef_pg',1,0,1,'Home','home','fa fa-home','N'),('nb_detallef_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),('nb_detallef_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),('nb_detallef_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),('nb_detallef_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),('nb_detallef_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),('nb_detallef_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),('nb_detallef_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),('nb_detallef_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),('nb_detallef_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),('nb_detallef_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),('nb_detallef_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),('nb_detallef_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),('nb_detallef_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),('nb_detallef_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),('nb_detallef_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),('nb_detallef_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),('nb_detallef_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),('nb_detallef_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),('nb_detallef_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),('nb_detallef_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),('nb_detallef_pg',22,20,2,'Facturacion Total','nb_reporte_2_pg','fa fa-bar-chart','N'),('nb_detallef_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),('nb_detallef_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),('nb_detallef_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),('nb_detallef_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),('nb_detallef_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),('nb_detallef_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),('nb_detallef_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),('nb_facturacion_pg',1,0,1,'Home','home','fa fa-home','N'),('nb_facturacion_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),('nb_facturacion_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),('nb_facturacion_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),('nb_facturacion_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),('nb_facturacion_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),('nb_facturacion_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),('nb_facturacion_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),('nb_facturacion_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),('nb_facturacion_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),('nb_facturacion_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),('nb_facturacion_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),('nb_facturacion_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),('nb_facturacion_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),('nb_facturacion_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),('nb_facturacion_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),('nb_facturacion_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),('nb_facturacion_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),('nb_facturacion_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),('nb_facturacion_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),('nb_facturacion_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),('nb_facturacion_pg',22,20,2,'Facturacion Total','nb_reporte_2_pg','fa fa-bar-chart','N'),('nb_facturacion_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),('nb_facturacion_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),('nb_facturacion_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),('nb_facturacion_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),('nb_facturacion_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),('nb_facturacion_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),('nb_facturacion_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),('nb_facturacion_v_pg',1,0,1,'Home','home','fa fa-home','N'),('nb_facturacion_v_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),('nb_facturacion_v_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),('nb_facturacion_v_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),('nb_facturacion_v_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),('nb_facturacion_v_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),('nb_facturacion_v_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),('nb_facturacion_v_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),('nb_facturacion_v_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),('nb_facturacion_v_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),('nb_facturacion_v_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),('nb_facturacion_v_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),('nb_facturacion_v_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),('nb_facturacion_v_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),('nb_facturacion_v_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),('nb_facturacion_v_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),('nb_facturacion_v_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),('nb_facturacion_v_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),('nb_facturacion_v_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),('nb_facturacion_v_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),('nb_facturacion_v_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),('nb_facturacion_v_pg',22,20,2,'Facturacion Total','nb_reporte_2_pg','fa fa-bar-chart','N'),('nb_facturacion_v_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),('nb_facturacion_v_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),('nb_facturacion_v_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),('nb_facturacion_v_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),('nb_facturacion_v_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),('nb_facturacion_v_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),('nb_facturacion_v_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),('nb_inventario_pg',1,0,1,'Home','home','fa fa-home','N'),('nb_inventario_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),('nb_inventario_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),('nb_inventario_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),('nb_inventario_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),('nb_inventario_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),('nb_inventario_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),('nb_inventario_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),('nb_inventario_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),('nb_inventario_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),('nb_inventario_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),('nb_inventario_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),('nb_inventario_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),('nb_inventario_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),('nb_inventario_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),('nb_inventario_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),('nb_inventario_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),('nb_inventario_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),('nb_inventario_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),('nb_inventario_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),('nb_inventario_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),('nb_inventario_pg',22,20,2,'Facturacion Total','nb_reporte_2_pg','fa fa-bar-chart','N'),('nb_inventario_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),('nb_inventario_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),('nb_inventario_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),('nb_inventario_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),('nb_inventario_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),('nb_inventario_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),('nb_inventario_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),('nb_inventario_v_pg',1,0,1,'Home','home','fa fa-home','N'),('nb_inventario_v_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),('nb_inventario_v_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),('nb_inventario_v_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),('nb_inventario_v_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),('nb_inventario_v_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),('nb_inventario_v_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),('nb_inventario_v_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),('nb_inventario_v_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),('nb_inventario_v_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),('nb_inventario_v_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),('nb_inventario_v_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),('nb_inventario_v_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),('nb_inventario_v_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),('nb_inventario_v_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),('nb_inventario_v_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),('nb_inventario_v_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),('nb_inventario_v_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),('nb_inventario_v_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),('nb_inventario_v_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),('nb_inventario_v_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),('nb_inventario_v_pg',22,20,2,'Facturacion Total','nb_reporte_2_pg','fa fa-bar-chart','N'),('nb_inventario_v_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),('nb_inventario_v_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),('nb_inventario_v_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),('nb_inventario_v_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),('nb_inventario_v_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),('nb_inventario_v_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),('nb_inventario_v_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),('nb_loginv_pg',1,0,1,'Home','home','fa fa-home','N'),('nb_loginv_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),('nb_loginv_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),('nb_loginv_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),('nb_loginv_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),('nb_loginv_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),('nb_loginv_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),('nb_loginv_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),('nb_loginv_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),('nb_loginv_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),('nb_loginv_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),('nb_loginv_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),('nb_loginv_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),('nb_loginv_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),('nb_loginv_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),('nb_loginv_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),('nb_loginv_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),('nb_loginv_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),('nb_loginv_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),('nb_loginv_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),('nb_loginv_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),('nb_loginv_pg',22,20,2,'Facturacion Total','nb_reporte_2_pg','fa fa-bar-chart','N'),('nb_loginv_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),('nb_loginv_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),('nb_loginv_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),('nb_loginv_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),('nb_loginv_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),('nb_loginv_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),('nb_loginv_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),('nb_password_pg',1,0,1,'Home','home','fa fa-home','N'),('nb_password_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),('nb_password_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),('nb_password_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),('nb_password_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),('nb_password_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),('nb_password_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),('nb_password_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),('nb_password_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),('nb_password_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),('nb_password_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),('nb_password_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),('nb_password_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),('nb_password_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),('nb_password_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),('nb_password_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),('nb_password_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),('nb_password_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),('nb_password_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),('nb_password_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),('nb_password_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),('nb_password_pg',22,20,2,'Facturacion Total','nb_reporte_2_pg','fa fa-bar-chart','N'),('nb_password_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),('nb_password_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),('nb_password_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),('nb_password_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),('nb_password_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),('nb_password_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),('nb_password_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),('nb_productos_pg',1,0,1,'Home','home','fa fa-home','N'),('nb_productos_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),('nb_productos_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),('nb_productos_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),('nb_productos_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),('nb_productos_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),('nb_productos_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),('nb_productos_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),('nb_productos_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),('nb_productos_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),('nb_productos_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),('nb_productos_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),('nb_productos_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),('nb_productos_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),('nb_productos_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),('nb_productos_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),('nb_productos_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),('nb_productos_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),('nb_productos_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),('nb_productos_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),('nb_productos_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),('nb_productos_pg',22,20,2,'Facturacion Total','nb_reporte_2_pg','fa fa-bar-chart','N'),('nb_productos_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),('nb_productos_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),('nb_productos_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),('nb_productos_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),('nb_productos_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),('nb_productos_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),('nb_productos_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),('nb_productos_v_pg',1,0,1,'Home','home','fa fa-home','N'),('nb_productos_v_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),('nb_productos_v_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),('nb_productos_v_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),('nb_productos_v_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),('nb_productos_v_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),('nb_productos_v_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),('nb_productos_v_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),('nb_productos_v_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),('nb_productos_v_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),('nb_productos_v_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),('nb_productos_v_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),('nb_productos_v_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),('nb_productos_v_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),('nb_productos_v_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),('nb_productos_v_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),('nb_productos_v_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),('nb_productos_v_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),('nb_productos_v_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),('nb_productos_v_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),('nb_productos_v_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),('nb_productos_v_pg',22,20,2,'Facturacion Total','nb_reporte_2_pg','fa fa-bar-chart','N'),('nb_productos_v_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),('nb_productos_v_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),('nb_productos_v_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),('nb_productos_v_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),('nb_productos_v_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),('nb_productos_v_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),('nb_productos_v_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),('nb_proveedores_pg',1,0,1,'Home','home','fa fa-home','N'),('nb_proveedores_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),('nb_proveedores_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),('nb_proveedores_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),('nb_proveedores_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),('nb_proveedores_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),('nb_proveedores_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),('nb_proveedores_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),('nb_proveedores_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),('nb_proveedores_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),('nb_proveedores_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),('nb_proveedores_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),('nb_proveedores_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),('nb_proveedores_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),('nb_proveedores_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),('nb_proveedores_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),('nb_proveedores_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),('nb_proveedores_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),('nb_proveedores_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),('nb_proveedores_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),('nb_proveedores_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),('nb_proveedores_pg',22,20,2,'Facturacion Total','nb_reporte_2_pg','fa fa-bar-chart','N'),('nb_proveedores_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),('nb_proveedores_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),('nb_proveedores_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),('nb_proveedores_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),('nb_proveedores_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),('nb_proveedores_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),('nb_proveedores_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),('nb_proveedores_pg',30,0,12,'Prueba','nb_prueba_pg','fa fa-cog','N'),('nb_proveedores_v_pg',1,0,1,'Home','home','fa fa-home','N'),('nb_proveedores_v_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),('nb_proveedores_v_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),('nb_proveedores_v_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),('nb_proveedores_v_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),('nb_proveedores_v_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),('nb_proveedores_v_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),('nb_proveedores_v_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),('nb_proveedores_v_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),('nb_proveedores_v_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),('nb_proveedores_v_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),('nb_proveedores_v_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),('nb_proveedores_v_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),('nb_proveedores_v_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),('nb_proveedores_v_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),('nb_proveedores_v_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),('nb_proveedores_v_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),('nb_proveedores_v_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),('nb_proveedores_v_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),('nb_proveedores_v_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),('nb_proveedores_v_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),('nb_proveedores_v_pg',22,20,2,'Facturacion Total','nb_reporte_2_pg','fa fa-bar-chart','N'),('nb_proveedores_v_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),('nb_proveedores_v_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),('nb_proveedores_v_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),('nb_proveedores_v_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),('nb_proveedores_v_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),('nb_proveedores_v_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),('nb_proveedores_v_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),('nb_proveedores_v_pg',30,0,12,'Prueba','nb_prueba_pg','fa fa-cog','N'),('nb_prueba_pg',1,0,1,'Home','home','fa fa-home','N'),('nb_prueba_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),('nb_prueba_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),('nb_prueba_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),('nb_prueba_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),('nb_prueba_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),('nb_prueba_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),('nb_prueba_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),('nb_prueba_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),('nb_prueba_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),('nb_prueba_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),('nb_prueba_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),('nb_prueba_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),('nb_prueba_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),('nb_prueba_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),('nb_prueba_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),('nb_prueba_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),('nb_prueba_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),('nb_prueba_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),('nb_prueba_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),('nb_prueba_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),('nb_prueba_pg',22,20,2,'Facturacion Total','nb_reporte_2_pg','fa fa-bar-chart','N'),('nb_prueba_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),('nb_prueba_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),('nb_prueba_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),('nb_prueba_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),('nb_prueba_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),('nb_prueba_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),('nb_prueba_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),('nb_reporte_1_pg',1,0,1,'Home','home','fa fa-home','N'),('nb_reporte_1_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),('nb_reporte_1_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),('nb_reporte_1_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),('nb_reporte_1_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),('nb_reporte_1_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),('nb_reporte_1_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),('nb_reporte_1_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),('nb_reporte_1_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),('nb_reporte_1_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),('nb_reporte_1_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),('nb_reporte_1_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),('nb_reporte_1_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),('nb_reporte_1_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),('nb_reporte_1_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),('nb_reporte_1_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),('nb_reporte_1_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),('nb_reporte_1_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),('nb_reporte_1_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),('nb_reporte_1_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),('nb_reporte_1_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),('nb_reporte_1_pg',22,20,2,'Facturacion Total','nb_reporte_2_pg','fa fa-bar-chart','N'),('nb_reporte_1_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),('nb_reporte_1_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),('nb_reporte_1_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),('nb_reporte_1_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),('nb_reporte_1_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),('nb_reporte_1_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),('nb_reporte_1_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),('nb_reporte_2_pg',1,0,1,'Home','home','fa fa-home','N'),('nb_reporte_2_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),('nb_reporte_2_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),('nb_reporte_2_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),('nb_reporte_2_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),('nb_reporte_2_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),('nb_reporte_2_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),('nb_reporte_2_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),('nb_reporte_2_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),('nb_reporte_2_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),('nb_reporte_2_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),('nb_reporte_2_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),('nb_reporte_2_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),('nb_reporte_2_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),('nb_reporte_2_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),('nb_reporte_2_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),('nb_reporte_2_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),('nb_reporte_2_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),('nb_reporte_2_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),('nb_reporte_2_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),('nb_reporte_2_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),('nb_reporte_2_pg',22,20,2,'Facturacion Total','nb_reporte_2_pg','fa fa-bar-chart','N'),('nb_reporte_2_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),('nb_reporte_2_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),('nb_reporte_2_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),('nb_reporte_2_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),('nb_reporte_2_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),('nb_reporte_2_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),('nb_reporte_2_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),('nb_usersm_pg',1,0,1,'Home','home','fa fa-home','N'),('nb_usersm_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),('nb_usersm_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),('nb_usersm_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),('nb_usersm_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),('nb_usersm_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),('nb_usersm_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),('nb_usersm_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),('nb_usersm_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),('nb_usersm_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),('nb_usersm_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),('nb_usersm_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),('nb_usersm_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),('nb_usersm_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),('nb_usersm_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),('nb_usersm_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),('nb_usersm_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),('nb_usersm_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),('nb_usersm_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),('nb_usersm_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),('nb_usersm_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),('nb_usersm_pg',22,20,2,'Facturacion Total','nb_reporte_2_pg','fa fa-bar-chart','N'),('nb_usersm_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),('nb_usersm_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),('nb_usersm_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),('nb_usersm_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),('nb_usersm_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),('nb_usersm_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),('nb_usersm_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),('nb_users_pg',1,0,1,'Home','home','fa fa-home','N'),('nb_users_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),('nb_users_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),('nb_users_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),('nb_users_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),('nb_users_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),('nb_users_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),('nb_users_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),('nb_users_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),('nb_users_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),('nb_users_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),('nb_users_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),('nb_users_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),('nb_users_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),('nb_users_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),('nb_users_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),('nb_users_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),('nb_users_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),('nb_users_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),('nb_users_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),('nb_users_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),('nb_users_pg',22,20,2,'Facturacion Total','nb_reporte_2_pg','fa fa-bar-chart','N'),('nb_users_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),('nb_users_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),('nb_users_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),('nb_users_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),('nb_users_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),('nb_users_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),('nb_users_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),('nb_vendedores_pg',1,0,1,'Home','home','fa fa-home','N'),('nb_vendedores_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),('nb_vendedores_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),('nb_vendedores_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),('nb_vendedores_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),('nb_vendedores_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),('nb_vendedores_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),('nb_vendedores_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),('nb_vendedores_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),('nb_vendedores_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),('nb_vendedores_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),('nb_vendedores_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),('nb_vendedores_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),('nb_vendedores_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),('nb_vendedores_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),('nb_vendedores_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),('nb_vendedores_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),('nb_vendedores_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),('nb_vendedores_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),('nb_vendedores_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),('nb_vendedores_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),('nb_vendedores_pg',22,20,2,'Facturacion Total','nb_reporte_2_pg','fa fa-bar-chart','N'),('nb_vendedores_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),('nb_vendedores_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),('nb_vendedores_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),('nb_vendedores_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),('nb_vendedores_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),('nb_vendedores_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),('nb_vendedores_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),('nb_vendedores_pg',30,0,12,'Prueba','nb_prueba_pg','fa fa-cog','N'),('nb_vendedores_v_pg',1,0,1,'Home','home','fa fa-home','N'),('nb_vendedores_v_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),('nb_vendedores_v_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),('nb_vendedores_v_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),('nb_vendedores_v_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),('nb_vendedores_v_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),('nb_vendedores_v_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),('nb_vendedores_v_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),('nb_vendedores_v_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),('nb_vendedores_v_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),('nb_vendedores_v_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),('nb_vendedores_v_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),('nb_vendedores_v_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),('nb_vendedores_v_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),('nb_vendedores_v_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),('nb_vendedores_v_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),('nb_vendedores_v_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),('nb_vendedores_v_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),('nb_vendedores_v_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),('nb_vendedores_v_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),('nb_vendedores_v_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),('nb_vendedores_v_pg',22,20,2,'Facturacion Total','nb_reporte_2_pg','fa fa-bar-chart','N'),('nb_vendedores_v_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),('nb_vendedores_v_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),('nb_vendedores_v_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),('nb_vendedores_v_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),('nb_vendedores_v_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),('nb_vendedores_v_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),('nb_vendedores_v_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),('nb_vendedores_v_pg',30,0,12,'Prueba','nb_prueba_pg','fa fa-cog','N'),('nb_clientes_m_pg',1,0,1,'Home','home','fa fa-home','N'),('nb_clientes_m_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),('nb_clientes_m_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),('nb_clientes_m_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),('nb_clientes_m_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),('nb_clientes_m_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),('nb_clientes_m_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),('nb_clientes_m_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),('nb_clientes_m_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),('nb_clientes_m_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),('nb_clientes_m_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),('nb_clientes_m_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),('nb_clientes_m_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),('nb_clientes_m_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),('nb_clientes_m_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),('nb_clientes_m_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),('nb_clientes_m_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),('nb_clientes_m_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),('nb_clientes_m_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),('nb_clientes_m_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),('nb_clientes_m_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),('nb_clientes_m_pg',22,20,2,'Facturacion Total','nb_reporte_2_pg','fa fa-bar-chart','N'),('nb_clientes_m_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),('nb_clientes_m_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),('nb_clientes_m_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),('nb_clientes_m_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),('nb_clientes_m_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),('nb_clientes_m_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),('nb_clientes_m_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),('nb_vendedores_m_pg',1,0,1,'Home','home','fa fa-home','N'),('nb_vendedores_m_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),('nb_vendedores_m_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),('nb_vendedores_m_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),('nb_vendedores_m_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),('nb_vendedores_m_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),('nb_vendedores_m_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),('nb_vendedores_m_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),('nb_vendedores_m_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),('nb_vendedores_m_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),('nb_vendedores_m_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),('nb_vendedores_m_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),('nb_vendedores_m_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),('nb_vendedores_m_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),('nb_vendedores_m_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),('nb_vendedores_m_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),('nb_vendedores_m_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),('nb_vendedores_m_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),('nb_vendedores_m_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),('nb_vendedores_m_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),('nb_vendedores_m_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),('nb_vendedores_m_pg',22,20,2,'Facturacion Total','nb_reporte_2_pg','fa fa-bar-chart','N'),('nb_vendedores_m_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),('nb_vendedores_m_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),('nb_vendedores_m_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),('nb_vendedores_m_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),('nb_vendedores_m_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),('nb_vendedores_m_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),('nb_vendedores_m_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),('nb_vendedores_m_pg',30,0,12,'Prueba','nb_prueba_pg','fa fa-cog','N'),('nb_proveedores_m_pg',1,0,1,'Home','home','fa fa-home','N'),('nb_proveedores_m_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),('nb_proveedores_m_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),('nb_proveedores_m_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),('nb_proveedores_m_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),('nb_proveedores_m_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),('nb_proveedores_m_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),('nb_proveedores_m_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),('nb_proveedores_m_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),('nb_proveedores_m_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),('nb_proveedores_m_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),('nb_proveedores_m_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),('nb_proveedores_m_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),('nb_proveedores_m_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),('nb_proveedores_m_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),('nb_proveedores_m_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),('nb_proveedores_m_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),('nb_proveedores_m_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),('nb_proveedores_m_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),('nb_proveedores_m_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),('nb_proveedores_m_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),('nb_proveedores_m_pg',22,20,2,'Facturacion Total','nb_reporte_2_pg','fa fa-bar-chart','N'),('nb_proveedores_m_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),('nb_proveedores_m_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),('nb_proveedores_m_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),('nb_proveedores_m_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),('nb_proveedores_m_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),('nb_proveedores_m_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),('nb_proveedores_m_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),('nb_proveedores_m_pg',30,0,12,'Prueba','nb_prueba_pg','fa fa-cog','N'),('nb_productos_m_pg',1,0,1,'Home','home','fa fa-home','N'),('nb_productos_m_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),('nb_productos_m_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),('nb_productos_m_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),('nb_productos_m_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),('nb_productos_m_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),('nb_productos_m_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),('nb_productos_m_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),('nb_productos_m_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),('nb_productos_m_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),('nb_productos_m_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),('nb_productos_m_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),('nb_productos_m_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),('nb_productos_m_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),('nb_productos_m_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),('nb_productos_m_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),('nb_productos_m_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),('nb_productos_m_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),('nb_productos_m_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),('nb_productos_m_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),('nb_productos_m_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),('nb_productos_m_pg',22,20,2,'Facturacion Total','nb_reporte_2_pg','fa fa-bar-chart','N'),('nb_productos_m_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),('nb_productos_m_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),('nb_productos_m_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),('nb_productos_m_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),('nb_productos_m_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),('nb_productos_m_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),('nb_productos_m_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),('nb_inventario_m_pg',1,0,1,'Home','home','fa fa-home','N'),('nb_inventario_m_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),('nb_inventario_m_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),('nb_inventario_m_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),('nb_inventario_m_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),('nb_inventario_m_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),('nb_inventario_m_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),('nb_inventario_m_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),('nb_inventario_m_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),('nb_inventario_m_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),('nb_inventario_m_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),('nb_inventario_m_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),('nb_inventario_m_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),('nb_inventario_m_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),('nb_inventario_m_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),('nb_inventario_m_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),('nb_inventario_m_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),('nb_inventario_m_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),('nb_inventario_m_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),('nb_inventario_m_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),('nb_inventario_m_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),('nb_inventario_m_pg',22,20,2,'Facturacion Total','nb_reporte_2_pg','fa fa-bar-chart','N'),('nb_inventario_m_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),('nb_inventario_m_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),('nb_inventario_m_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),('nb_inventario_m_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),('nb_inventario_m_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),('nb_inventario_m_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),('nb_inventario_m_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),('nb_factura_de_pg',1,0,1,'Home','home','fa fa-home','N'),('nb_factura_de_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),('nb_factura_de_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),('nb_factura_de_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),('nb_factura_de_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),('nb_factura_de_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),('nb_factura_de_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),('nb_factura_de_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),('nb_factura_de_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),('nb_factura_de_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),('nb_factura_de_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),('nb_factura_de_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),('nb_factura_de_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),('nb_factura_de_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),('nb_factura_de_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),('nb_factura_de_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),('nb_factura_de_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),('nb_factura_de_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),('nb_factura_de_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),('nb_factura_de_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),('nb_factura_de_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),('nb_factura_de_pg',22,20,2,'Facturacion Total','nb_reporte_2_pg','fa fa-bar-chart','N'),('nb_factura_de_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),('nb_factura_de_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),('nb_factura_de_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),('nb_factura_de_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),('nb_factura_de_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),('nb_factura_de_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),('nb_factura_de_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N'),('nb_facturacion_m_pg',1,0,1,'Home','home','fa fa-home','N'),('nb_facturacion_m_pg',2,0,2,'Clientes','nb_clientes_pg','fa fa-user','N'),('nb_facturacion_m_pg',3,2,1,'Ingreso Clientes','nb_clientes_pg','fa fa-plus','N'),('nb_facturacion_m_pg',4,2,2,'Consulta Clientes','nb_clientes_v_pg','fa fa-search','N'),('nb_facturacion_m_pg',5,0,3,'Vendedores','nb_vendedores_pg','fa fa-user','N'),('nb_facturacion_m_pg',6,5,1,'Ingreso Vendedores','nb_vendedores_pg','fa fa-plus','N'),('nb_facturacion_m_pg',7,5,2,'Consulta Vendedores','nb_vendedores_v_pg','fa fa-search','N'),('nb_facturacion_m_pg',8,0,4,'Proveedores','nb_proveedores_pg','fa fa-user','N'),('nb_facturacion_m_pg',9,8,1,'Ingreso Proveedores','nb_proveedores_pg','fa fa-plus','N'),('nb_facturacion_m_pg',10,8,2,'Consulta Proveedores','nb_proveedores_v_pg','fa fa-search','N'),('nb_facturacion_m_pg',11,0,5,'Productos','nb_productos_pg','fa fa-dot-circle-o','N'),('nb_facturacion_m_pg',12,11,1,'Ingreso Productos','nb_productos_pg','fa fa-plus','N'),('nb_facturacion_m_pg',13,11,2,'Consulta de Productos','nb_productos_v_pg','fa fa-search','N'),('nb_facturacion_m_pg',14,0,6,'Inventario','nb_inventario_pg','fa fa-archive','N'),('nb_facturacion_m_pg',15,14,1,'Ingreso Inventario','nb_inventario_pg','fa fa-plus','N'),('nb_facturacion_m_pg',16,14,2,'Consulta Inventario','nb_inventario_v_pg','fa fa-search','N'),('nb_facturacion_m_pg',17,0,7,'Facturacion','nb_facturacion_pg','fa fa-dollar','N'),('nb_facturacion_m_pg',18,17,1,'Ingreso factura','nb_facturacion_pg','fa fa-plus','N'),('nb_facturacion_m_pg',19,17,2,'Consulta Factura','nb_facturacion_v_pg','fa fa-search','N'),('nb_facturacion_m_pg',20,0,8,'Reportes','nb_reporte_1_pg','fa fa-line-chart','N'),('nb_facturacion_m_pg',21,20,1,'Facturacion Diaria','nb_reporte_1_pg','fa fa-area-chart','N'),('nb_facturacion_m_pg',22,20,2,'Facturacion Total','nb_reporte_2_pg','fa fa-bar-chart','N'),('nb_facturacion_m_pg',23,0,9,'Usuarios Software','nb_users_pg','fa fa-users','N'),('nb_facturacion_m_pg',24,23,1,'Ingreso Usuarios','nb_users_pg','fa fa-plus','N'),('nb_facturacion_m_pg',25,23,2,'Consulta Usuarios','nb_loginv_pg','fa fa-search','N'),('nb_facturacion_m_pg',26,0,10,'Configuracion','home','fa fa-cog','N'),('nb_facturacion_m_pg',27,26,1,'Cambio de Contrase&#241;a','nb_password_pg','fa fa-key','N'),('nb_facturacion_m_pg',28,26,2,'Ayuda','ayuda','fa fa-life-buoy','N'),('nb_facturacion_m_pg',29,0,11,'Cerrar sesion','login','fa fa-sign-out','N');
/*!40000 ALTER TABLE `nb_navigation_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nb_option_tbl`
--

DROP TABLE IF EXISTS `nb_option_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nb_option_tbl`
--

LOCK TABLES `nb_option_tbl` WRITE;
/*!40000 ALTER TABLE `nb_option_tbl` DISABLE KEYS */;
INSERT INTO `nb_option_tbl` VALUES ('home','image','false','','','','',''),('nb_detallef_pg','table','true','../Events/','nabuSave','2','post',''),('nb_clientes_pg','wizard','true','../Events/','nabuSave','0','post',''),('nb_facturacion_pg','wizard','true','../Events/','nabuFactura','0','post',''),('nb_inventario_pg','wizard','true','../Events/','nabuSave','0','post',''),('nb_password_pg','wizard','true','../Events/','nabuSave','1','post',''),('nb_productos_pg','wizard','true','../Events/','nabuSave','0','post',''),('nb_proveedores_pg','wizard','true','../Events/','nabuSave','0','post',''),('nb_users_pg','wizard','true','../Events/','nabuSave','0','post',''),('nb_usuariosm_pg','wizard','true','../Events/','nabuSave','1','post',''),('nb_vendedores_pg','wizard','true','../Events/','nabuSave','0','post',''),('nb_clientes_m_pg','wizard','true','../Events/','nabuSave','1','post',''),('nb_vendedores_m_pg','wizard','true','../Events/','nabuSave','1','post',''),('nb_proveedores_m_pg','wizard','true','../Events/','nabuSave','1','post',''),('nb_productos_m_pg','wizard','true','../Events/','nabuSave','1','post',''),('nb_inventario_m_pg','wizard','true','../Events/','nabuSave','1','post',''),('nb_facturacion_m_pg','wizard','true','../Events/','nabuFactura','0','post','');
/*!40000 ALTER TABLE `nb_option_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nb_options_buttons_tbl`
--

DROP TABLE IF EXISTS `nb_options_buttons_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nb_options_buttons_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_id_opt_form_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_value_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_title_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_click_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_page_fld`,`nb_id_opt_form_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nb_options_buttons_tbl`
--

LOCK TABLES `nb_options_buttons_tbl` WRITE;
/*!40000 ALTER TABLE `nb_options_buttons_tbl` DISABLE KEYS */;
INSERT INTO `nb_options_buttons_tbl` VALUES ('nb_detallef_pg','submit','Guardar',NULL,NULL);
/*!40000 ALTER TABLE `nb_options_buttons_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nb_pageattribute_tbl`
--

DROP TABLE IF EXISTS `nb_pageattribute_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nb_pageattribute_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_id_attribute_fld` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`nb_id_page_fld`,`nb_id_attribute_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nb_pageattribute_tbl`
--

LOCK TABLES `nb_pageattribute_tbl` WRITE;
/*!40000 ALTER TABLE `nb_pageattribute_tbl` DISABLE KEYS */;
INSERT INTO `nb_pageattribute_tbl` VALUES ('home',1),('home',2),('home',3),('home',4),('home',5),('home',6),('home',8),('home',9),('home',10),('home',12),('home',13),('home',22),('nb_clientes_m_pg',1),('nb_clientes_m_pg',2),('nb_clientes_m_pg',3),('nb_clientes_m_pg',4),('nb_clientes_m_pg',5),('nb_clientes_m_pg',6),('nb_clientes_m_pg',7),('nb_clientes_m_pg',8),('nb_clientes_m_pg',9),('nb_clientes_m_pg',10),('nb_clientes_m_pg',12),('nb_clientes_m_pg',13),('nb_clientes_m_pg',15),('nb_clientes_m_pg',16),('nb_clientes_m_pg',17),('nb_clientes_m_pg',19),('nb_clientes_m_pg',22),('nb_clientes_pg',1),('nb_clientes_pg',2),('nb_clientes_pg',3),('nb_clientes_pg',4),('nb_clientes_pg',5),('nb_clientes_pg',6),('nb_clientes_pg',7),('nb_clientes_pg',8),('nb_clientes_pg',9),('nb_clientes_pg',10),('nb_clientes_pg',12),('nb_clientes_pg',13),('nb_clientes_pg',15),('nb_clientes_pg',16),('nb_clientes_pg',17),('nb_clientes_pg',19),('nb_clientes_pg',22),('nb_clientes_v_pg',1),('nb_clientes_v_pg',2),('nb_clientes_v_pg',3),('nb_clientes_v_pg',6),('nb_clientes_v_pg',9),('nb_clientes_v_pg',10),('nb_clientes_v_pg',12),('nb_clientes_v_pg',13),('nb_clientes_v_pg',16),('nb_clientes_v_pg',17),('nb_clientes_v_pg',18),('nb_clientes_v_pg',19),('nb_clientes_v_pg',20),('nb_detallef_pg',1),('nb_detallef_pg',2),('nb_detallef_pg',3),('nb_detallef_pg',4),('nb_detallef_pg',5),('nb_detallef_pg',6),('nb_detallef_pg',7),('nb_detallef_pg',8),('nb_detallef_pg',9),('nb_detallef_pg',10),('nb_detallef_pg',12),('nb_detallef_pg',13),('nb_detallef_pg',14),('nb_detallef_pg',15),('nb_detallef_pg',16),('nb_detallef_pg',22),('nb_facturacion_m_pg',1),('nb_facturacion_m_pg',2),('nb_facturacion_m_pg',3),('nb_facturacion_m_pg',4),('nb_facturacion_m_pg',5),('nb_facturacion_m_pg',6),('nb_facturacion_m_pg',7),('nb_facturacion_m_pg',8),('nb_facturacion_m_pg',9),('nb_facturacion_m_pg',10),('nb_facturacion_m_pg',12),('nb_facturacion_m_pg',13),('nb_facturacion_m_pg',15),('nb_facturacion_m_pg',16),('nb_facturacion_m_pg',17),('nb_facturacion_m_pg',19),('nb_facturacion_m_pg',22),('nb_facturacion_m_pg',23),('nb_facturacion_pg',1),('nb_facturacion_pg',2),('nb_facturacion_pg',3),('nb_facturacion_pg',4),('nb_facturacion_pg',5),('nb_facturacion_pg',6),('nb_facturacion_pg',7),('nb_facturacion_pg',8),('nb_facturacion_pg',9),('nb_facturacion_pg',10),('nb_facturacion_pg',12),('nb_facturacion_pg',13),('nb_facturacion_pg',15),('nb_facturacion_pg',16),('nb_facturacion_pg',17),('nb_facturacion_pg',19),('nb_facturacion_pg',22),('nb_facturacion_pg',23),('nb_facturacion_v_pg',1),('nb_facturacion_v_pg',2),('nb_facturacion_v_pg',3),('nb_facturacion_v_pg',6),('nb_facturacion_v_pg',9),('nb_facturacion_v_pg',10),('nb_facturacion_v_pg',12),('nb_facturacion_v_pg',13),('nb_facturacion_v_pg',16),('nb_facturacion_v_pg',17),('nb_facturacion_v_pg',18),('nb_facturacion_v_pg',19),('nb_facturacion_v_pg',20),('nb_factura_de_pg',1),('nb_factura_de_pg',2),('nb_factura_de_pg',3),('nb_factura_de_pg',6),('nb_factura_de_pg',9),('nb_factura_de_pg',10),('nb_factura_de_pg',12),('nb_factura_de_pg',13),('nb_factura_de_pg',16),('nb_factura_de_pg',17),('nb_factura_de_pg',18),('nb_factura_de_pg',19),('nb_factura_de_pg',20),('nb_inventario_m_pg',1),('nb_inventario_m_pg',2),('nb_inventario_m_pg',3),('nb_inventario_m_pg',4),('nb_inventario_m_pg',5),('nb_inventario_m_pg',6),('nb_inventario_m_pg',7),('nb_inventario_m_pg',8),('nb_inventario_m_pg',9),('nb_inventario_m_pg',10),('nb_inventario_m_pg',12),('nb_inventario_m_pg',13),('nb_inventario_m_pg',15),('nb_inventario_m_pg',16),('nb_inventario_m_pg',17),('nb_inventario_m_pg',19),('nb_inventario_m_pg',22),('nb_inventario_pg',1),('nb_inventario_pg',2),('nb_inventario_pg',3),('nb_inventario_pg',4),('nb_inventario_pg',5),('nb_inventario_pg',6),('nb_inventario_pg',7),('nb_inventario_pg',8),('nb_inventario_pg',9),('nb_inventario_pg',10),('nb_inventario_pg',12),('nb_inventario_pg',13),('nb_inventario_pg',15),('nb_inventario_pg',16),('nb_inventario_pg',17),('nb_inventario_pg',19),('nb_inventario_pg',22),('nb_inventario_v_pg',1),('nb_inventario_v_pg',2),('nb_inventario_v_pg',3),('nb_inventario_v_pg',6),('nb_inventario_v_pg',9),('nb_inventario_v_pg',10),('nb_inventario_v_pg',12),('nb_inventario_v_pg',13),('nb_inventario_v_pg',16),('nb_inventario_v_pg',17),('nb_inventario_v_pg',18),('nb_inventario_v_pg',19),('nb_inventario_v_pg',20),('nb_loginv_pg',1),('nb_loginv_pg',2),('nb_loginv_pg',3),('nb_loginv_pg',6),('nb_loginv_pg',9),('nb_loginv_pg',10),('nb_loginv_pg',12),('nb_loginv_pg',13),('nb_loginv_pg',16),('nb_loginv_pg',17),('nb_loginv_pg',18),('nb_loginv_pg',19),('nb_loginv_pg',20),('nb_password_pg',1),('nb_password_pg',2),('nb_password_pg',3),('nb_password_pg',4),('nb_password_pg',5),('nb_password_pg',6),('nb_password_pg',7),('nb_password_pg',8),('nb_password_pg',9),('nb_password_pg',10),('nb_password_pg',12),('nb_password_pg',13),('nb_password_pg',15),('nb_password_pg',16),('nb_password_pg',17),('nb_password_pg',19),('nb_password_pg',22),('nb_productos_m_pg',1),('nb_productos_m_pg',2),('nb_productos_m_pg',3),('nb_productos_m_pg',4),('nb_productos_m_pg',5),('nb_productos_m_pg',6),('nb_productos_m_pg',7),('nb_productos_m_pg',8),('nb_productos_m_pg',9),('nb_productos_m_pg',10),('nb_productos_m_pg',12),('nb_productos_m_pg',13),('nb_productos_m_pg',15),('nb_productos_m_pg',16),('nb_productos_m_pg',17),('nb_productos_m_pg',19),('nb_productos_m_pg',22),('nb_productos_pg',1),('nb_productos_pg',2),('nb_productos_pg',3),('nb_productos_pg',4),('nb_productos_pg',5),('nb_productos_pg',6),('nb_productos_pg',7),('nb_productos_pg',8),('nb_productos_pg',9),('nb_productos_pg',10),('nb_productos_pg',12),('nb_productos_pg',13),('nb_productos_pg',15),('nb_productos_pg',16),('nb_productos_pg',17),('nb_productos_pg',19),('nb_productos_pg',22),('nb_productos_v_pg',1),('nb_productos_v_pg',2),('nb_productos_v_pg',3),('nb_productos_v_pg',6),('nb_productos_v_pg',9),('nb_productos_v_pg',10),('nb_productos_v_pg',12),('nb_productos_v_pg',13),('nb_productos_v_pg',16),('nb_productos_v_pg',17),('nb_productos_v_pg',18),('nb_productos_v_pg',19),('nb_productos_v_pg',20),('nb_proveedores_m_pg',1),('nb_proveedores_m_pg',2),('nb_proveedores_m_pg',3),('nb_proveedores_m_pg',4),('nb_proveedores_m_pg',5),('nb_proveedores_m_pg',6),('nb_proveedores_m_pg',7),('nb_proveedores_m_pg',8),('nb_proveedores_m_pg',9),('nb_proveedores_m_pg',10),('nb_proveedores_m_pg',12),('nb_proveedores_m_pg',13),('nb_proveedores_m_pg',15),('nb_proveedores_m_pg',16),('nb_proveedores_m_pg',17),('nb_proveedores_m_pg',19),('nb_proveedores_m_pg',22),('nb_proveedores_pg',1),('nb_proveedores_pg',2),('nb_proveedores_pg',3),('nb_proveedores_pg',4),('nb_proveedores_pg',5),('nb_proveedores_pg',6),('nb_proveedores_pg',7),('nb_proveedores_pg',8),('nb_proveedores_pg',9),('nb_proveedores_pg',10),('nb_proveedores_pg',12),('nb_proveedores_pg',13),('nb_proveedores_pg',15),('nb_proveedores_pg',16),('nb_proveedores_pg',17),('nb_proveedores_pg',19),('nb_proveedores_pg',22),('nb_proveedores_v_pg',1),('nb_proveedores_v_pg',2),('nb_proveedores_v_pg',3),('nb_proveedores_v_pg',6),('nb_proveedores_v_pg',9),('nb_proveedores_v_pg',10),('nb_proveedores_v_pg',12),('nb_proveedores_v_pg',13),('nb_proveedores_v_pg',16),('nb_proveedores_v_pg',17),('nb_proveedores_v_pg',18),('nb_proveedores_v_pg',19),('nb_proveedores_v_pg',20),('nb_reporte_1_pg',1),('nb_reporte_1_pg',2),('nb_reporte_1_pg',3),('nb_reporte_1_pg',6),('nb_reporte_1_pg',9),('nb_reporte_1_pg',10),('nb_reporte_1_pg',12),('nb_reporte_1_pg',13),('nb_reporte_1_pg',16),('nb_reporte_1_pg',17),('nb_reporte_1_pg',18),('nb_reporte_1_pg',19),('nb_reporte_1_pg',20),('nb_reporte_2_pg',1),('nb_reporte_2_pg',2),('nb_reporte_2_pg',3),('nb_reporte_2_pg',6),('nb_reporte_2_pg',9),('nb_reporte_2_pg',10),('nb_reporte_2_pg',12),('nb_reporte_2_pg',13),('nb_reporte_2_pg',16),('nb_reporte_2_pg',17),('nb_reporte_2_pg',18),('nb_reporte_2_pg',19),('nb_reporte_2_pg',20),('nb_usersm_pg',1),('nb_usersm_pg',2),('nb_usersm_pg',3),('nb_usersm_pg',4),('nb_usersm_pg',5),('nb_usersm_pg',6),('nb_usersm_pg',7),('nb_usersm_pg',8),('nb_usersm_pg',9),('nb_usersm_pg',10),('nb_usersm_pg',12),('nb_usersm_pg',13),('nb_usersm_pg',15),('nb_usersm_pg',16),('nb_usersm_pg',17),('nb_usersm_pg',19),('nb_usersm_pg',22),('nb_users_pg',1),('nb_users_pg',2),('nb_users_pg',3),('nb_users_pg',4),('nb_users_pg',5),('nb_users_pg',6),('nb_users_pg',7),('nb_users_pg',8),('nb_users_pg',9),('nb_users_pg',10),('nb_users_pg',12),('nb_users_pg',13),('nb_users_pg',15),('nb_users_pg',16),('nb_users_pg',17),('nb_users_pg',19),('nb_users_pg',22),('nb_vendedores_m_pg',1),('nb_vendedores_m_pg',2),('nb_vendedores_m_pg',3),('nb_vendedores_m_pg',4),('nb_vendedores_m_pg',5),('nb_vendedores_m_pg',6),('nb_vendedores_m_pg',7),('nb_vendedores_m_pg',8),('nb_vendedores_m_pg',9),('nb_vendedores_m_pg',10),('nb_vendedores_m_pg',12),('nb_vendedores_m_pg',13),('nb_vendedores_m_pg',15),('nb_vendedores_m_pg',16),('nb_vendedores_m_pg',17),('nb_vendedores_m_pg',19),('nb_vendedores_m_pg',22),('nb_vendedores_pg',1),('nb_vendedores_pg',2),('nb_vendedores_pg',3),('nb_vendedores_pg',4),('nb_vendedores_pg',5),('nb_vendedores_pg',6),('nb_vendedores_pg',7),('nb_vendedores_pg',8),('nb_vendedores_pg',9),('nb_vendedores_pg',10),('nb_vendedores_pg',12),('nb_vendedores_pg',13),('nb_vendedores_pg',15),('nb_vendedores_pg',16),('nb_vendedores_pg',17),('nb_vendedores_pg',19),('nb_vendedores_pg',22),('nb_vendedores_v_pg',1),('nb_vendedores_v_pg',2),('nb_vendedores_v_pg',3),('nb_vendedores_v_pg',6),('nb_vendedores_v_pg',9),('nb_vendedores_v_pg',10),('nb_vendedores_v_pg',12),('nb_vendedores_v_pg',13),('nb_vendedores_v_pg',16),('nb_vendedores_v_pg',17),('nb_vendedores_v_pg',18),('nb_vendedores_v_pg',19),('nb_vendedores_v_pg',20);
/*!40000 ALTER TABLE `nb_pageattribute_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nb_pages_tbl`
--

DROP TABLE IF EXISTS `nb_pages_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nb_pages_tbl`
--

LOCK TABLES `nb_pages_tbl` WRITE;
/*!40000 ALTER TABLE `nb_pages_tbl` DISABLE KEYS */;
INSERT INTO `nb_pages_tbl` VALUES ('home','Inicio Administradores',NULL,'alpaca','bootstrap-display',NULL,'false'),('nb_clientes_pg','Administracion de Clientes','forms','alpaca','bootstrap-create-horizontal',NULL,'false'),('nb_clientes_v_pg','Consulta de Clientes','dataGrids','datagrid',NULL,NULL,'false'),('nb_detallef_pg','Detalle Factura','dataGrids','alpaca','bootstrap-edit-horizontal',NULL,'false'),('nb_facturacion_pg','Facturacion','forms','alpaca','bootstrap-edit-horizontal',NULL,'false'),('nb_facturacion_v_pg','Facturacion','dataGrids','datagrid',NULL,NULL,'false'),('nb_inventario_pg','Ingreso Inventario','forms','alpaca','bootstrap-create-horizontal',NULL,'false'),('nb_inventario_v_pg','Inventario','dataGrids','datagrid',NULL,NULL,'false'),('nb_loginv_pg','Usuarios del Sistema','dataGrids','datagrid',NULL,NULL,'false'),('nb_password_pg','Cambio de Contrase&#241;a','forms','alpaca','bootstrap-create-horizontal',NULL,'false'),('nb_productos_pg','Ingreso Productos','forms','alpaca','bootstrap-create-horizontal',NULL,'false'),('nb_productos_v_pg','Consulta Productos','dataGrids','datagrid',NULL,NULL,'false'),('nb_proveedores_pg','Ingreso Proveedores','forms','alpaca','bootstrap-create-horizontal',NULL,'false'),('nb_reporte_1_pg','Reporte','dataGrids','datagrid',NULL,NULL,'false'),('nb_reporte_2_pg','Reporte','dataGrids','datagrid',NULL,NULL,'false'),('nb_usersm_pg','Usuarios del Sistema','forms','alpaca','bootstrap-edit-horizontal',NULL,'false'),('nb_users_pg','Usuarios del Sistema','forms','alpaca','bootstrap-create-horizontal',NULL,'false'),('nb_vendedores_pg','Ingreso Vendedores','forms','alpaca','bootstrap-create-horizontal',NULL,'false'),('nb_vendedores_v_pg','Consulta Vendedores','dataGrids','datagrid',NULL,NULL,'false'),('nb_proveedores_v_pg','Consulta Proveedores','dataGrids','datagrid',NULL,NULL,'false'),('nb_clientes_m_pg','Administracion de Clientes','forms','alpaca','bootstrap-edit-horizontal',NULL,'false'),('nb_vendedores_m_pg','Ingreso Vendedores','forms','alpaca','bootstrap-edit-horizontal',NULL,'false'),('nb_proveedores_m_pg','Ingreso Proveedores','forms','alpaca','bootstrap-edit-horizontal',NULL,'false'),('nb_productos_m_pg','Ingreso Productos','forms','alpaca','bootstrap-edit-horizontal',NULL,'false'),('nb_inventario_m_pg','Ingreso Inventario','forms','alpaca','bootstrap-edit-horizontal',NULL,'false'),('nb_factura_de_pg','Detalle Factura','dataGrids','datagrid',NULL,NULL,'false'),('nb_facturacion_m_pg','Facturacion','forms','alpaca','bootstrap-edit-horizontal',NULL,'false');
/*!40000 ALTER TABLE `nb_pages_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nb_productos_tbl`
--

DROP TABLE IF EXISTS `nb_productos_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nb_productos_tbl`
--

LOCK TABLES `nb_productos_tbl` WRITE;
/*!40000 ALTER TABLE `nb_productos_tbl` DISABLE KEYS */;
INSERT INTO `nb_productos_tbl` VALUES (1,'Comida 1','1','2','','3','12400','16','','','','','','','','','','','',''),(2,'Carro','Chevrolet','2015','NInguna','4','12450','16','','','','','','','','','','','','');
/*!40000 ALTER TABLE `nb_productos_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `nb_productos_vw`
--

DROP TABLE IF EXISTS `nb_productos_vw`;
/*!50001 DROP VIEW IF EXISTS `nb_productos_vw`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `nb_productos_vw` AS SELECT 
 1 AS `Id`,
 1 AS `Descripcion`,
 1 AS `Marca`,
 1 AS `Modelo`,
 1 AS `UOM`,
 1 AS `Precio`,
 1 AS `Iva`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `nb_proveedores_tbl`
--

DROP TABLE IF EXISTS `nb_proveedores_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nb_proveedores_tbl`
--

LOCK TABLES `nb_proveedores_tbl` WRITE;
/*!40000 ALTER TABLE `nb_proveedores_tbl` DISABLE KEYS */;
INSERT INTO `nb_proveedores_tbl` VALUES (1,'1','9897766','Maria Sharapova','calle 67','9876543','sharapova@gmail.com','1','Datos','','','','','','','','','','','');
/*!40000 ALTER TABLE `nb_proveedores_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `nb_proveedores_vw`
--

DROP TABLE IF EXISTS `nb_proveedores_vw`;
/*!50001 DROP VIEW IF EXISTS `nb_proveedores_vw`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `nb_proveedores_vw` AS SELECT 
 1 AS `Id`,
 1 AS `Tipo_Documento`,
 1 AS `Documento`,
 1 AS `Nombre`,
 1 AS `Direccion`,
 1 AS `Telefono`,
 1 AS `Email`,
 1 AS `Estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `nb_role_pag_tbl`
--

DROP TABLE IF EXISTS `nb_role_pag_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nb_role_pag_tbl` (
  `nb_id_role_fld` int(11) NOT NULL AUTO_INCREMENT,
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`nb_id_role_fld`,`nb_id_page_fld`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nb_role_pag_tbl`
--

LOCK TABLES `nb_role_pag_tbl` WRITE;
/*!40000 ALTER TABLE `nb_role_pag_tbl` DISABLE KEYS */;
INSERT INTO `nb_role_pag_tbl` VALUES (1,'ayuda'),(1,'home'),(1,'login'),(1,'nb_clientes_m_pg'),(1,'nb_clientes_pg'),(1,'nb_clientes_v_pg'),(1,'nb_detallef_pg'),(1,'nb_facturacion_m_pg'),(1,'nb_facturacion_pg'),(1,'nb_facturacion_v_pg'),(1,'nb_factura_de_pg'),(1,'nb_inventario_m_pg'),(1,'nb_inventario_pg'),(1,'nb_inventario_v_pg'),(1,'nb_loginv_pg'),(1,'nb_password_pg'),(1,'nb_productos_m_pg'),(1,'nb_productos_pg'),(1,'nb_productos_v_pg'),(1,'nb_proveedores_m_pg'),(1,'nb_proveedores_pg'),(1,'nb_proveedores_v_pg'),(1,'nb_reporte_1_pg'),(1,'nb_reporte_2_pg'),(1,'nb_usersm_pg'),(1,'nb_users_pg'),(1,'nb_vendedores_m_pg'),(1,'nb_vendedores_pg'),(1,'nb_vendedores_v_pg');
/*!40000 ALTER TABLE `nb_role_pag_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nb_role_tbl`
--

DROP TABLE IF EXISTS `nb_role_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nb_role_tbl` (
  `nb_id_role_fld` int(11) NOT NULL AUTO_INCREMENT,
  `nb_desc_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_role_fld`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nb_role_tbl`
--

LOCK TABLES `nb_role_tbl` WRITE;
/*!40000 ALTER TABLE `nb_role_tbl` DISABLE KEYS */;
INSERT INTO `nb_role_tbl` VALUES (1,'Administrador');
/*!40000 ALTER TABLE `nb_role_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nb_schema_tbl`
--

DROP TABLE IF EXISTS `nb_schema_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nb_schema_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `nb_title_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_description_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_type_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_page_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nb_schema_tbl`
--

LOCK TABLES `nb_schema_tbl` WRITE;
/*!40000 ALTER TABLE `nb_schema_tbl` DISABLE KEYS */;
INSERT INTO `nb_schema_tbl` VALUES ('home',NULL,NULL,'object'),('nb_clientes_pg','Clientes',NULL,'object'),('nb_detallef_pg','Detalle Factura',NULL,'array'),('nb_facturacion_pg','Facturacion',NULL,'object'),('nb_inventario_pg','Inventario',NULL,'object'),('nb_password_pg','Cambio Password',NULL,'object'),('nb_productos_pg','Productos',NULL,'object'),('nb_proveedores_pg','Proveedores',NULL,'object'),('nb_usersm_pg','Usuarios del Sistema',NULL,'object'),('nb_users_pg','Usuarios del Sistema',NULL,'object'),('nb_vendedores_pg','Vendedores',NULL,'object'),('nb_clientes_m_pg','Clientes',NULL,'object'),('nb_vendedores_m_pg','Vendedores',NULL,'object'),('nb_proveedores_m_pg','Proveedores',NULL,'object'),('nb_productos_m_pg','Productos',NULL,'object'),('nb_inventario_m_pg','Inventario',NULL,'object'),('nb_facturacion_m_pg','Facturacion',NULL,'object');
/*!40000 ALTER TABLE `nb_schema_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nb_table_fields_tbl`
--

DROP TABLE IF EXISTS `nb_table_fields_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nb_table_fields_tbl` (
  `nb_id_table_fld` varchar(100) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `nb_id_fld` varchar(100) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_type_fld` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_long_fld` int(11) DEFAULT NULL,
  `nb_key_fld` varchar(1) COLLATE latin1_spanish_ci DEFAULT 'N',
  `nb_is_null_fld` varchar(1) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_crypted_fld` varchar(1) COLLATE latin1_spanish_ci DEFAULT 'N',
  `nb_description_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_fld`,`nb_id_table_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nb_table_fields_tbl`
--

LOCK TABLES `nb_table_fields_tbl` WRITE;
/*!40000 ALTER TABLE `nb_table_fields_tbl` DISABLE KEYS */;
INSERT INTO `nb_table_fields_tbl` VALUES ('nbd_user_tbl','nbd_descr_fld','string',255,'N','N','N',NULL),('nbd_user_tbl','nbd_email_fld','string',255,'Y','N','N',NULL),('nbd_role_user_tbl','nbd_id_user_fld','number',11,'Y','N','N',NULL),('nbd_user_tbl','nbd_id_user_fld','number',11,'Y','N','N',NULL),('nbd_user_tbl','nbd_password_fld','string',255,'N','N','N',NULL),('nb_clientes_tbl','nb_clie_10_fld','string',255,'N','N','N',NULL),('nb_clientes_tbl','nb_clie_11_fld','string',255,'N','N','N',NULL),('nb_clientes_tbl','nb_clie_12_fld','string',255,'N','N','N',NULL),('nb_clientes_tbl','nb_clie_13_fld','string',255,'N','N','N',NULL),('nb_clientes_tbl','nb_clie_14_fld','string',255,'N','N','N',NULL),('nb_clientes_tbl','nb_clie_15_fld','string',255,'N','N','N',NULL),('nb_clientes_tbl','nb_clie_16_fld','string',255,'N','N','N',NULL),('nb_clientes_tbl','nb_clie_17_fld','string',255,'N','N','N',NULL),('nb_clientes_tbl','nb_clie_18_fld','string',255,'N','N','N',NULL),('nb_clientes_tbl','nb_clie_19_fld','string',255,'N','N','N',NULL),('nb_clientes_tbl','nb_clie_1_fld','string',255,'Y','N','N',NULL),('nb_clientes_tbl','nb_clie_20_fld','string',255,'N','N','N',NULL),('nb_clientes_tbl','nb_clie_2_fld','string',255,'N','N','N',NULL),('nb_clientes_tbl','nb_clie_3_fld','string',255,'N','N','N',NULL),('nb_clientes_tbl','nb_clie_4_fld','string',255,'N','N','N',NULL),('nb_clientes_tbl','nb_clie_5_fld','string',255,'N','N','N',NULL),('nb_clientes_tbl','nb_clie_6_fld','string',255,'N','N','N',NULL),('nb_clientes_tbl','nb_clie_7_fld','string',255,'N','N','N',NULL),('nb_clientes_tbl','nb_clie_8_fld','string',255,'N','N','N',NULL),('nb_clientes_tbl','nb_clie_9_fld','string',255,'N','N','N',NULL),('nb_detallef_tbl','nb_detaf_1_fld','string',255,'N','N','N',NULL),('nb_detallef_tbl','nb_detaf_2_fld','string',255,'N','N','N',NULL),('nb_detallef_tbl','nb_detaf_3_fld','string',255,'N','N','N',NULL),('nb_detallef_tbl','nb_detaf_4_fld','string',255,'N','N','N',NULL),('nb_detallef_tbl','nb_detaf_5_fld','string',255,'N','N','N',NULL),('nb_detallef_tbl','nb_detaf_6_fld','string',255,'N','N','N',NULL),('nb_detallef_tbl','nb_detaf_7_fld','string',255,'N','N','N',NULL),('nb_detallef_tbl','nb_detaf_8_fld','string',255,'N','N','N',NULL),('nb_detallef_tbl','nb_detaf_9_fld','string',255,'N','N','N',NULL),('nbd_user_tbl','nb_estado_fld','number',2,'N','N','N',NULL),('nb_facturacion_tbl','nb_fact_10_fld','string',255,'N','N','N',NULL),('nb_facturacion_tbl','nb_fact_11_fld','string',255,'N','N','N',NULL),('nb_facturacion_tbl','nb_fact_12_fld','string',255,'N','N','N',NULL),('nb_facturacion_tbl','nb_fact_13_fld','string',255,'N','N','N',NULL),('nb_facturacion_tbl','nb_fact_14_fld','string',255,'N','N','N',NULL),('nb_facturacion_tbl','nb_fact_15_fld','string',255,'N','N','N',NULL),('nb_facturacion_tbl','nb_fact_16_fld','string',255,'N','N','N',NULL),('nb_facturacion_tbl','nb_fact_17_fld','string',255,'N','N','N',NULL),('nb_facturacion_tbl','nb_fact_18_fld','string',255,'N','N','N',NULL),('nb_facturacion_tbl','nb_fact_19_fld','string',255,'N','N','N',NULL),('nb_facturacion_tbl','nb_fact_1_fld','string',255,'Y','N','N',NULL),('nb_facturacion_tbl','nb_fact_20_fld','string',255,'N','N','N',NULL),('nb_facturacion_tbl','nb_fact_2_fld','string',255,'N','N','N',NULL),('nb_facturacion_tbl','nb_fact_3_fld','number',255,'N','N','N',NULL),('nb_facturacion_tbl','nb_fact_4_fld','string',255,'N','N','N',NULL),('nb_facturacion_tbl','nb_fact_5_fld','string',255,'N','N','N',NULL),('nb_facturacion_tbl','nb_fact_6_fld','string',255,'N','N','N',NULL),('nb_facturacion_tbl','nb_fact_7_fld','string',255,'N','N','N',NULL),('nb_facturacion_tbl','nb_fact_8_fld','string',255,'N','N','N',NULL),('nb_facturacion_tbl','nb_fact_9_fld','string',255,'N','N','N',NULL),('nbd_role_user_tbl','nb_id_role_fld','number',11,'N','N','N',NULL),('nb_inventario_tbl','nb_inve_10_fld','string',255,'N','N','N',NULL),('nb_inventario_tbl','nb_inve_11_fld','string',255,'N','N','N',NULL),('nb_inventario_tbl','nb_inve_12_fld','string',255,'N','N','N',NULL),('nb_inventario_tbl','nb_inve_13_fld','string',255,'N','N','N',NULL),('nb_inventario_tbl','nb_inve_14_fld','string',255,'N','N','N',NULL),('nb_inventario_tbl','nb_inve_15_fld','string',255,'N','N','N',NULL),('nb_inventario_tbl','nb_inve_16_fld','string',255,'N','N','N',NULL),('nb_inventario_tbl','nb_inve_17_fld','string',255,'N','N','N',NULL),('nb_inventario_tbl','nb_inve_18_fld','string',255,'N','N','N',NULL),('nb_inventario_tbl','nb_inve_19_fld','string',255,'N','N','N',NULL),('nb_inventario_tbl','nb_inve_1_fld','string',255,'Y','N','N',NULL),('nb_inventario_tbl','nb_inve_20_fld','string',255,'N','N','N',NULL),('nb_inventario_tbl','nb_inve_2_fld','string',255,'N','N','N',NULL),('nb_inventario_tbl','nb_inve_3_fld','string',255,'N','N','N',NULL),('nb_inventario_tbl','nb_inve_4_fld','string',255,'N','N','N',NULL),('nb_inventario_tbl','nb_inve_5_fld','string',255,'N','N','N',NULL),('nb_inventario_tbl','nb_inve_6_fld','string',255,'N','N','N',NULL),('nb_inventario_tbl','nb_inve_7_fld','string',255,'N','N','N',NULL),('nb_inventario_tbl','nb_inve_8_fld','string',255,'N','N','N',NULL),('nb_inventario_tbl','nb_inve_9_fld','string',255,'N','N','N',NULL),('nb_productos_tbl','nb_prod_10_fld','string',255,'N','N','N',NULL),('nb_productos_tbl','nb_prod_11_fld','string',255,'N','N','N',NULL),('nb_productos_tbl','nb_prod_12_fld','string',255,'N','N','N',NULL),('nb_productos_tbl','nb_prod_13_fld','string',255,'N','N','N',NULL),('nb_productos_tbl','nb_prod_14_fld','string',255,'N','N','N',NULL),('nb_productos_tbl','nb_prod_15_fld','string',255,'N','N','N',NULL),('nb_productos_tbl','nb_prod_16_fld','string',255,'N','N','N',NULL),('nb_productos_tbl','nb_prod_17_fld','string',255,'N','N','N',NULL),('nb_productos_tbl','nb_prod_18_fld','string',255,'N','N','N',NULL),('nb_productos_tbl','nb_prod_19_fld','string',255,'N','N','N',NULL),('nb_productos_tbl','nb_prod_1_fld','string',255,'Y','N','N',NULL),('nb_productos_tbl','nb_prod_20_fld','string',255,'N','N','N',NULL),('nb_productos_tbl','nb_prod_2_fld','string',255,'N','N','N',NULL),('nb_productos_tbl','nb_prod_3_fld','string',255,'N','N','N',NULL),('nb_productos_tbl','nb_prod_4_fld','string',255,'N','N','N',NULL),('nb_productos_tbl','nb_prod_5_fld','string',255,'N','N','N',NULL),('nb_productos_tbl','nb_prod_6_fld','string',255,'N','N','N',NULL),('nb_productos_tbl','nb_prod_7_fld','string',255,'N','N','N',NULL),('nb_productos_tbl','nb_prod_8_fld','string',255,'N','N','N',NULL),('nb_productos_tbl','nb_prod_9_fld','string',255,'N','N','N',NULL),('nb_proveedores_tbl','nb_prov_10_fld','string',255,'N','N','N',NULL),('nb_proveedores_tbl','nb_prov_11_fld','string',255,'N','N','N',NULL),('nb_proveedores_tbl','nb_prov_12_fld','string',255,'N','N','N',NULL),('nb_proveedores_tbl','nb_prov_13_fld','string',255,'N','N','N',NULL),('nb_proveedores_tbl','nb_prov_14_fld','string',255,'N','N','N',NULL),('nb_proveedores_tbl','nb_prov_15_fld','string',255,'N','N','N',NULL),('nb_proveedores_tbl','nb_prov_16_fld','string',255,'N','N','N',NULL),('nb_proveedores_tbl','nb_prov_17_fld','string',255,'N','N','N',NULL),('nb_proveedores_tbl','nb_prov_18_fld','string',255,'N','N','N',NULL),('nb_proveedores_tbl','nb_prov_19_fld','string',255,'N','N','N',NULL),('nb_proveedores_tbl','nb_prov_1_fld','string',255,'Y','N','N',NULL),('nb_proveedores_tbl','nb_prov_20_fld','string',255,'N','N','N',NULL),('nb_proveedores_tbl','nb_prov_2_fld','string',255,'N','N','N',NULL),('nb_proveedores_tbl','nb_prov_3_fld','string',255,'N','N','N',NULL),('nb_proveedores_tbl','nb_prov_4_fld','string',255,'N','N','N',NULL),('nb_proveedores_tbl','nb_prov_5_fld','string',255,'N','N','N',NULL),('nb_proveedores_tbl','nb_prov_6_fld','string',255,'N','N','N',NULL),('nb_proveedores_tbl','nb_prov_7_fld','string',255,'N','N','N',NULL),('nb_proveedores_tbl','nb_prov_8_fld','string',255,'N','N','N',NULL),('nb_proveedores_tbl','nb_prov_9_fld','string',255,'N','N','N',NULL),('nb_vendedores_tbl','nb_vend_10_fld','string',255,'N','N','N',NULL),('nb_vendedores_tbl','nb_vend_11_fld','string',255,'N','N','N',NULL),('nb_vendedores_tbl','nb_vend_12_fld','string',255,'N','N','N',NULL),('nb_vendedores_tbl','nb_vend_13_fld','string',255,'N','N','N',NULL),('nb_vendedores_tbl','nb_vend_14_fld','string',255,'N','N','N',NULL),('nb_vendedores_tbl','nb_vend_15_fld','string',255,'N','N','N',NULL),('nb_vendedores_tbl','nb_vend_16_fld','string',255,'N','N','N',NULL),('nb_vendedores_tbl','nb_vend_17_fld','string',255,'N','N','N',NULL),('nb_vendedores_tbl','nb_vend_18_fld','string',255,'N','N','N',NULL),('nb_vendedores_tbl','nb_vend_19_fld','string',255,'N','N','N',NULL),('nb_vendedores_tbl','nb_vend_1_fld','string',255,'Y','N','N',NULL),('nb_vendedores_tbl','nb_vend_20_fld','string',255,'N','N','N',NULL),('nb_vendedores_tbl','nb_vend_2_fld','string',255,'N','N','N',NULL),('nb_vendedores_tbl','nb_vend_3_fld','string',255,'N','N','N',NULL),('nb_vendedores_tbl','nb_vend_4_fld','string',255,'N','N','N',NULL),('nb_vendedores_tbl','nb_vend_5_fld','string',255,'N','N','N',NULL),('nb_vendedores_tbl','nb_vend_6_fld','string',255,'N','N','N',NULL),('nb_vendedores_tbl','nb_vend_7_fld','string',255,'N','N','N',NULL),('nb_vendedores_tbl','nb_vend_8_fld','string',255,'N','N','N',NULL),('nb_vendedores_tbl','nb_vend_9_fld','string',255,'N','N','N',NULL);
/*!40000 ALTER TABLE `nb_table_fields_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nb_tables_tbl`
--

DROP TABLE IF EXISTS `nb_tables_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nb_tables_tbl` (
  `nb_id_fld` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `nb_description_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nb_tables_tbl`
--

LOCK TABLES `nb_tables_tbl` WRITE;
/*!40000 ALTER TABLE `nb_tables_tbl` DISABLE KEYS */;
INSERT INTO `nb_tables_tbl` VALUES ('nbd_role_user_tbl','Tabla Roles del sistema'),('nbd_user_tbl','Tabla usuarios del sistema'),('nb_clientes_tbl','Clientes'),('nb_detallef_tbl','Detalle Factura'),('nb_facturacion_tbl','facturacion'),('nb_inventario_tbl','inventario'),('nb_productos_tbl','productos'),('nb_proveedores_tbl','proveedores'),('nb_vendedores_tbl','vendedores');
/*!40000 ALTER TABLE `nb_tables_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nb_value_tbl`
--

DROP TABLE IF EXISTS `nb_value_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nb_value_tbl` (
  `nb_id_pr_schema_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_id_value_fld` varchar(11) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `nb_value_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_value_fld`,`nb_id_pr_schema_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nb_value_tbl`
--

LOCK TABLES `nb_value_tbl` WRITE;
/*!40000 ALTER TABLE `nb_value_tbl` DISABLE KEYS */;
INSERT INTO `nb_value_tbl` VALUES ('nb_estado_fld','0','Activo'),('nb_tipodoc_fld','0','Tarjeta Identidad'),('nb_tipofact_fld','0','Factura'),('nb_umed_fld','0','Metro'),('nb_estado_fld','1','Inactivo'),('nb_tipodoc_fld','1','Cedula Ciudadania'),('nb_tipofact_fld','1','Nota Credito'),('nb_umed_fld','1','Metro 3'),('nb_tipodoc_fld','2','NIT'),('nb_umed_fld','2','Litro'),('nb_umed_fld','3','Kilogramo'),('nb_umed_fld','4','Gramo');
/*!40000 ALTER TABLE `nb_value_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nb_vendedores_tbl`
--

DROP TABLE IF EXISTS `nb_vendedores_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nb_vendedores_tbl`
--

LOCK TABLES `nb_vendedores_tbl` WRITE;
/*!40000 ALTER TABLE `nb_vendedores_tbl` DISABLE KEYS */;
INSERT INTO `nb_vendedores_tbl` VALUES (1,'1','4','Pablo Garcia','','','','0','','','','','','','','','','','',''),(2,'1','123456','Nicolas Almagro','Calle 5','3345677','nico@gmail.com','0','prueba','','','','','','','','','','','');
/*!40000 ALTER TABLE `nb_vendedores_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `nb_vendedores_vw`
--

DROP TABLE IF EXISTS `nb_vendedores_vw`;
/*!50001 DROP VIEW IF EXISTS `nb_vendedores_vw`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `nb_vendedores_vw` AS SELECT 
 1 AS `Id`,
 1 AS `Tipo_Documento`,
 1 AS `Documento`,
 1 AS `Nombre`,
 1 AS `Direccion`,
 1 AS `Telefono`,
 1 AS `Email`,
 1 AS `Estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `nb_wizard_bind_tbl`
--

DROP TABLE IF EXISTS `nb_wizard_bind_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nb_wizard_bind_tbl` (
  `nb_id_wizard_bind` int(11) NOT NULL,
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_id_pr_schema_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_id_wizard_step` int(11) DEFAULT NULL,
  `nb_id_wizard_step_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`nb_id_wizard_bind`,`nb_id_page_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nb_wizard_bind_tbl`
--

LOCK TABLES `nb_wizard_bind_tbl` WRITE;
/*!40000 ALTER TABLE `nb_wizard_bind_tbl` DISABLE KEYS */;
INSERT INTO `nb_wizard_bind_tbl` VALUES (1,'nb_clientes_pg','nb_clie_1_fld',1,1),(1,'nb_facturacion_pg','nb_fact_1_fld',1,1),(1,'nb_inventario_pg','nb_inve_1_fld',1,1),(1,'nb_password_pg','nbd_password_fld',1,2),(1,'nb_productos_pg','nb_prod_1_fld',1,1),(1,'nb_proveedores_pg','nb_prov_1_fld',1,1),(1,'nb_usersm_pg','nbd_id_user_fldX',1,1),(1,'nb_users_pg','nbd_id_user_fld',1,1),(1,'nb_vendedores_pg','nb_vend_1_fld',1,1),(2,'nb_clientes_pg','nb_clie_2_fld',1,2),(2,'nb_facturacion_pg','nb_fact_2_fld',1,2),(2,'nb_inventario_pg','nb_inve_2_fld',1,2),(2,'nb_password_pg','nbd_email_fld',1,1),(2,'nb_productos_pg','nb_prod_2_fld',1,2),(2,'nb_proveedores_pg','nb_prov_2_fld',1,2),(2,'nb_usersm_pg','nbd_email_fldx',1,2),(2,'nb_users_pg','nbd_email_fld',1,2),(2,'nb_usuariosm_pg','nb_numerodoc_fldX',1,2),(2,'nb_vendedores_pg','nb_vend_2_fld',1,2),(3,'nb_clientes_pg','nb_clie_3_fld',1,3),(3,'nb_facturacion_pg','nb_fact_3_fld',1,3),(3,'nb_inventario_pg','nb_inve_3_fld',1,3),(3,'nb_productos_pg','nb_prod_3_fld',1,3),(3,'nb_proveedores_pg','nb_prov_3_fld',1,3),(3,'nb_usersm_pg','nbd_descr_fld',1,3),(3,'nb_users_pg','nbd_descr_fld',1,3),(3,'nb_vendedores_pg','nb_vend_3_fld',1,3),(4,'nb_clientes_pg','nb_clie_4_fld',1,4),(4,'nb_facturacion_pg','nb_fact_4_fld',1,4),(4,'nb_inventario_pg','nb_inve_4_fld',1,4),(4,'nb_productos_pg','nb_prod_4_fld',1,4),(4,'nb_proveedores_pg','nb_prov_4_fld',1,4),(4,'nb_usersm_pg','nbd_password_fld',1,4),(4,'nb_users_pg','nbd_password_fld',1,4),(4,'nb_vendedores_pg','nb_vend_4_fld',1,4),(5,'nb_clientes_pg','nb_clie_5_fld',1,5),(5,'nb_facturacion_pg','nb_fact_5_fld',2,1),(5,'nb_inventario_pg','nb_inve_5_fld',2,2),(5,'nb_productos_pg','nb_prod_5_fld',1,5),(5,'nb_proveedores_pg','nb_prov_5_fld',2,1),(5,'nb_vendedores_pg','nb_vend_5_fld',2,1),(6,'nb_clientes_pg','nb_clie_6_fld',1,6),(6,'nb_facturacion_pg','nb_fact_6_fld',2,2),(6,'nb_inventario_pg','nb_inve_6_fld',2,3),(6,'nb_productos_pg','nb_prod_6_fld',2,1),(6,'nb_proveedores_pg','nb_prov_6_fld',2,2),(6,'nb_vendedores_pg','nb_vend_6_fld',2,2),(7,'nb_clientes_pg','nb_clie_7_fld',2,1),(7,'nb_facturacion_pg','nb_fact_7_fld',2,3),(7,'nb_inventario_pg','nb_inve_7_fld',2,4),(7,'nb_productos_pg','nb_prod_7_fld',2,2),(7,'nb_proveedores_pg','nb_prov_7_fld',2,3),(7,'nb_vendedores_pg','nb_vend_7_fld',2,3),(8,'nb_clientes_pg','nb_clie_8_fld',2,2),(8,'nb_facturacion_pg','nb_fact_8_fld',3,1),(8,'nb_inventario_pg','nb_inve_8_fld',2,5),(8,'nb_productos_pg','nb_prod_8_fld',2,3),(8,'nb_proveedores_pg','nb_prov_8_fld',3,1),(8,'nb_vendedores_pg','nb_vend_8_fld',3,1),(9,'nb_clientes_pg','nb_clie_9_fld',2,3),(9,'nb_facturacion_pg','nb_fact_9_fld',3,2),(9,'nb_inventario_pg','nb_inve_9_fld',2,6),(9,'nb_productos_pg','nb_prod_9_fld',2,4),(9,'nb_proveedores_pg','nb_prov_9_fld',3,2),(9,'nb_vendedores_pg','nb_vend_9_fld',3,2),(10,'nb_clientes_pg','nb_clie_10_fld',2,4),(10,'nb_facturacion_pg','nb_fact_10_fld',3,3),(10,'nb_inventario_pg','nb_inve_10_fld',2,7),(10,'nb_productos_pg','nb_prod_10_fld',2,5),(10,'nb_proveedores_pg','nb_prov_10_fld',4,1),(10,'nb_vendedores_pg','nb_vend_10_fld',4,1),(11,'nb_clientes_pg','nb_clie_11_fld',3,1),(11,'nb_facturacion_pg','nb_fact_11_fld',3,4),(11,'nb_inventario_pg','nb_inve_11_fld',3,1),(11,'nb_productos_pg','nb_prod_11_fld',3,1),(11,'nb_proveedores_pg','nb_prov_11_fld',4,2),(11,'nb_vendedores_pg','nb_vend_11_fld',4,2),(12,'nb_clientes_pg','nb_clie_12_fld',3,2),(12,'nb_facturacion_pg','nb_fact_12_fld',3,5),(12,'nb_inventario_pg','nb_inve_12_fld',3,2),(12,'nb_productos_pg','nb_prod_12_fld',3,2),(12,'nb_proveedores_pg','nb_prov_12_fld',4,3),(12,'nb_vendedores_pg','nb_vend_12_fld',4,3),(13,'nb_clientes_pg','nb_clie_13_fld',3,3),(13,'nb_facturacion_pg','nb_fact_13_fld',3,6),(13,'nb_inventario_pg','nb_inve_13_fld',3,3),(13,'nb_productos_pg','nb_prod_13_fld',3,3),(13,'nb_proveedores_pg','nb_prov_13_fld',4,4),(13,'nb_vendedores_pg','nb_vend_13_fld',4,4),(14,'nb_clientes_pg','nb_clie_14_fld',3,4),(14,'nb_facturacion_pg','nb_fact_14_fld',3,7),(14,'nb_inventario_pg','nb_inve_14_fld',3,4),(14,'nb_productos_pg','nb_prod_14_fld',3,4),(14,'nb_proveedores_pg','nb_prov_14_fld',4,5),(14,'nb_vendedores_pg','nb_vend_14_fld',4,5),(15,'nb_clientes_pg','nb_clie_15_fld',3,5),(15,'nb_facturacion_pg','nb_fact_15_fld',3,8),(15,'nb_inventario_pg','nb_inve_15_fld',3,5),(15,'nb_productos_pg','nb_prod_15_fld',3,5),(15,'nb_proveedores_pg','nb_prov_15_fld',4,6),(15,'nb_vendedores_pg','nb_vend_15_fld',4,6),(16,'nb_clientes_pg','nb_clie_16_fld',4,1),(16,'nb_facturacion_pg','nb_fact_16_fld',4,1),(16,'nb_inventario_pg','nb_inve_16_fld',4,1),(16,'nb_productos_pg','nb_prod_16_fld',4,1),(16,'nb_proveedores_pg','nb_prov_16_fld',4,7),(16,'nb_vendedores_pg','nb_vend_16_fld',4,7),(17,'nb_clientes_pg','nb_clie_17_fld',4,2),(17,'nb_facturacion_pg','nb_fact_17_fld',4,2),(17,'nb_inventario_pg','nb_inve_17_fld',4,2),(17,'nb_productos_pg','nb_prod_17_fld',4,2),(17,'nb_proveedores_pg','nb_prov_17_fld',4,8),(17,'nb_vendedores_pg','nb_vend_17_fld',4,8),(18,'nb_clientes_pg','nb_clie_18_fld',4,3),(18,'nb_facturacion_pg','nb_fact_18_fld',4,3),(18,'nb_inventario_pg','nb_inve_18_fld',4,3),(18,'nb_productos_pg','nb_prod_18_fld',4,3),(18,'nb_proveedores_pg','nb_prov_18_fld',4,9),(18,'nb_vendedores_pg','nb_vend_18_fld',4,9),(19,'nb_clientes_pg','nb_clie_19_fld',4,4),(19,'nb_facturacion_pg','nb_fact_19_fld',4,4),(19,'nb_inventario_pg','nb_inve_19_fld',4,4),(19,'nb_productos_pg','nb_prod_19_fld',4,4),(19,'nb_proveedores_pg','nb_prov_19_fld',4,10),(19,'nb_vendedores_pg','nb_vend_19_fld',4,10),(20,'nb_clientes_pg','nb_clie_20_fld',4,5),(20,'nb_facturacion_pg','nb_fact_20_fld',4,5),(20,'nb_inventario_pg','nb_inve_20_fld',4,5),(20,'nb_productos_pg','nb_prod_20_fld',4,5),(20,'nb_proveedores_pg','nb_prov_20_fld',4,11),(20,'nb_vendedores_pg','nb_vend_20_fld',4,11),(1,'nb_clientes_m_pg','nb_clie_1_fldX',1,1),(2,'nb_clientes_m_pg','nb_clie_2_fld',1,2),(3,'nb_clientes_m_pg','nb_clie_3_fld',1,3),(4,'nb_clientes_m_pg','nb_clie_4_fld',1,4),(5,'nb_clientes_m_pg','nb_clie_5_fld',1,5),(6,'nb_clientes_m_pg','nb_clie_6_fld',1,6),(7,'nb_clientes_m_pg','nb_clie_7_fld',2,1),(8,'nb_clientes_m_pg','nb_clie_8_fld',2,2),(9,'nb_clientes_m_pg','nb_clie_9_fld',2,3),(10,'nb_clientes_m_pg','nb_clie_10_fld',2,4),(11,'nb_clientes_m_pg','nb_clie_11_fld',3,1),(12,'nb_clientes_m_pg','nb_clie_12_fld',3,2),(13,'nb_clientes_m_pg','nb_clie_13_fld',3,3),(14,'nb_clientes_m_pg','nb_clie_14_fld',3,4),(15,'nb_clientes_m_pg','nb_clie_15_fld',3,5),(16,'nb_clientes_m_pg','nb_clie_16_fld',4,1),(17,'nb_clientes_m_pg','nb_clie_17_fld',4,2),(18,'nb_clientes_m_pg','nb_clie_18_fld',4,3),(19,'nb_clientes_m_pg','nb_clie_19_fld',4,4),(20,'nb_clientes_m_pg','nb_clie_20_fld',4,5),(1,'nb_vendedores_m_pg','nb_vend_1_fldX',1,1),(2,'nb_vendedores_m_pg','nb_vend_2_fld',1,2),(3,'nb_vendedores_m_pg','nb_vend_3_fld',1,3),(4,'nb_vendedores_m_pg','nb_vend_4_fld',1,4),(5,'nb_vendedores_m_pg','nb_vend_5_fld',2,1),(6,'nb_vendedores_m_pg','nb_vend_6_fld',2,2),(7,'nb_vendedores_m_pg','nb_vend_7_fld',2,3),(8,'nb_vendedores_m_pg','nb_vend_8_fld',3,1),(9,'nb_vendedores_m_pg','nb_vend_9_fld',3,2),(10,'nb_vendedores_m_pg','nb_vend_10_fld',4,1),(11,'nb_vendedores_m_pg','nb_vend_11_fld',4,2),(12,'nb_vendedores_m_pg','nb_vend_12_fld',4,3),(13,'nb_vendedores_m_pg','nb_vend_13_fld',4,4),(14,'nb_vendedores_m_pg','nb_vend_14_fld',4,5),(15,'nb_vendedores_m_pg','nb_vend_15_fld',4,6),(16,'nb_vendedores_m_pg','nb_vend_16_fld',4,7),(17,'nb_vendedores_m_pg','nb_vend_17_fld',4,8),(18,'nb_vendedores_m_pg','nb_vend_18_fld',4,9),(19,'nb_vendedores_m_pg','nb_vend_19_fld',4,10),(20,'nb_vendedores_m_pg','nb_vend_20_fld',4,11),(1,'nb_proveedores_m_pg','nb_prov_1_fldX',1,1),(2,'nb_proveedores_m_pg','nb_prov_2_fld',1,2),(3,'nb_proveedores_m_pg','nb_prov_3_fld',1,3),(4,'nb_proveedores_m_pg','nb_prov_4_fld',1,4),(5,'nb_proveedores_m_pg','nb_prov_5_fld',2,1),(6,'nb_proveedores_m_pg','nb_prov_6_fld',2,2),(7,'nb_proveedores_m_pg','nb_prov_7_fld',2,3),(8,'nb_proveedores_m_pg','nb_prov_8_fld',3,1),(9,'nb_proveedores_m_pg','nb_prov_9_fld',3,2),(10,'nb_proveedores_m_pg','nb_prov_10_fld',4,1),(11,'nb_proveedores_m_pg','nb_prov_11_fld',4,2),(12,'nb_proveedores_m_pg','nb_prov_12_fld',4,3),(13,'nb_proveedores_m_pg','nb_prov_13_fld',4,4),(14,'nb_proveedores_m_pg','nb_prov_14_fld',4,5),(15,'nb_proveedores_m_pg','nb_prov_15_fld',4,6),(16,'nb_proveedores_m_pg','nb_prov_16_fld',4,7),(17,'nb_proveedores_m_pg','nb_prov_17_fld',4,8),(18,'nb_proveedores_m_pg','nb_prov_18_fld',4,9),(19,'nb_proveedores_m_pg','nb_prov_19_fld',4,10),(20,'nb_proveedores_m_pg','nb_prov_20_fld',4,11),(1,'nb_productos_m_pg','nb_prod_1_fldX',1,1),(2,'nb_productos_m_pg','nb_prod_2_fld',1,2),(3,'nb_productos_m_pg','nb_prod_3_fld',1,3),(4,'nb_productos_m_pg','nb_prod_4_fld',1,4),(5,'nb_productos_m_pg','nb_prod_5_fld',1,5),(6,'nb_productos_m_pg','nb_prod_6_fld',2,1),(7,'nb_productos_m_pg','nb_prod_7_fld',2,2),(8,'nb_productos_m_pg','nb_prod_8_fld',2,3),(9,'nb_productos_m_pg','nb_prod_9_fld',2,4),(10,'nb_productos_m_pg','nb_prod_10_fld',2,5),(11,'nb_productos_m_pg','nb_prod_11_fld',3,1),(12,'nb_productos_m_pg','nb_prod_12_fld',3,2),(13,'nb_productos_m_pg','nb_prod_13_fld',3,3),(14,'nb_productos_m_pg','nb_prod_14_fld',3,4),(15,'nb_productos_m_pg','nb_prod_15_fld',3,5),(16,'nb_productos_m_pg','nb_prod_16_fld',4,1),(17,'nb_productos_m_pg','nb_prod_17_fld',4,2),(18,'nb_productos_m_pg','nb_prod_18_fld',4,3),(19,'nb_productos_m_pg','nb_prod_19_fld',4,4),(20,'nb_productos_m_pg','nb_prod_20_fld',4,5),(1,'nb_inventario_m_pg','nb_inve_1_fldX',1,1),(2,'nb_inventario_m_pg','nb_inve_2_fld',1,2),(3,'nb_inventario_m_pg','nb_inve_3_fld',1,3),(4,'nb_inventario_m_pg','nb_inve_4_fld',1,4),(5,'nb_inventario_m_pg','nb_inve_5_fld',2,2),(6,'nb_inventario_m_pg','nb_inve_6_fld',2,3),(7,'nb_inventario_m_pg','nb_inve_7_fld',2,4),(8,'nb_inventario_m_pg','nb_inve_8_fld',2,5),(9,'nb_inventario_m_pg','nb_inve_9_fld',2,6),(10,'nb_inventario_m_pg','nb_inve_10_fld',2,7),(11,'nb_inventario_m_pg','nb_inve_11_fld',3,1),(12,'nb_inventario_m_pg','nb_inve_12_fld',3,2),(13,'nb_inventario_m_pg','nb_inve_13_fld',3,3),(14,'nb_inventario_m_pg','nb_inve_14_fld',3,4),(15,'nb_inventario_m_pg','nb_inve_15_fld',3,5),(16,'nb_inventario_m_pg','nb_inve_16_fld',4,1),(17,'nb_inventario_m_pg','nb_inve_17_fld',4,2),(18,'nb_inventario_m_pg','nb_inve_18_fld',4,3),(19,'nb_inventario_m_pg','nb_inve_19_fld',4,4),(20,'nb_inventario_m_pg','nb_inve_20_fld',4,5),(1,'nb_facturacion_m_pg','nb_fact_1_fldX',1,1),(2,'nb_facturacion_m_pg','nb_fact_2_fld',1,2),(3,'nb_facturacion_m_pg','nb_fact_3_fld',1,3),(4,'nb_facturacion_m_pg','nb_fact_4_fld',1,4),(5,'nb_facturacion_m_pg','nb_fact_5_fld',2,1),(6,'nb_facturacion_m_pg','nb_fact_6_fld',2,2),(7,'nb_facturacion_m_pg','nb_fact_7_fld',2,3),(8,'nb_facturacion_m_pg','nb_fact_8_fld',3,1),(9,'nb_facturacion_m_pg','nb_fact_9_fld',3,2),(10,'nb_facturacion_m_pg','nb_fact_10_fld',3,3),(11,'nb_facturacion_m_pg','nb_fact_11_fld',3,4),(12,'nb_facturacion_m_pg','nb_fact_12_fld',3,5),(13,'nb_facturacion_m_pg','nb_fact_13_fld',3,6),(14,'nb_facturacion_m_pg','nb_fact_14_fld',3,7),(15,'nb_facturacion_m_pg','nb_fact_15_fld',3,8),(16,'nb_facturacion_m_pg','nb_fact_16_fld',4,1),(17,'nb_facturacion_m_pg','nb_fact_17_fld',4,2),(18,'nb_facturacion_m_pg','nb_fact_18_fld',4,3),(19,'nb_facturacion_m_pg','nb_fact_19_fld',4,4),(20,'nb_facturacion_m_pg','nb_fact_20_fld',4,5);
/*!40000 ALTER TABLE `nb_wizard_bind_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nb_wizard_buttons_tbl`
--

DROP TABLE IF EXISTS `nb_wizard_buttons_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nb_wizard_buttons_tbl` (
  `nb_id_wizard_button` int(11) NOT NULL,
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_wizard_button_name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `nb_wizard_button_title` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_wizard_button_validate` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_wizard_button_click` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_wizard_button`,`nb_id_page_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nb_wizard_buttons_tbl`
--

LOCK TABLES `nb_wizard_buttons_tbl` WRITE;
/*!40000 ALTER TABLE `nb_wizard_buttons_tbl` DISABLE KEYS */;
INSERT INTO `nb_wizard_buttons_tbl` VALUES (1,'nb_clientes_pg','submit','Guardar',NULL,NULL),(1,'nb_facturacion_pg','submit','Detalle',NULL,NULL),(1,'nb_inventario_pg','submit','Guardar',NULL,NULL),(1,'nb_password_pg','submit','Actualizar',NULL,NULL),(1,'nb_productos_pg','submit','Guardar',NULL,NULL),(1,'nb_proveedores_pg','submit','Guardar',NULL,NULL),(1,'nb_usersm_pg','submit','Actualizar',NULL,NULL),(1,'nb_users_pg','submit','Guardar',NULL,NULL),(1,'nb_vendedores_pg','submit','Guardar',NULL,NULL),(2,'nb_clientes_pg','previous','Atras',NULL,NULL),(2,'nb_facturacion_pg','previous','Atras',NULL,NULL),(2,'nb_inventario_pg','previous','Atras',NULL,NULL),(2,'nb_productos_pg','previous','Atras',NULL,NULL),(2,'nb_proveedores_pg','previous','Atras',NULL,NULL),(2,'nb_vendedores_pg','previous','Atras',NULL,NULL),(3,'nb_clientes_pg','next','Siguiente',NULL,NULL),(3,'nb_facturacion_pg','next','Siguiente',NULL,NULL),(3,'nb_inventario_pg','next','Siguiente',NULL,NULL),(3,'nb_productos_pg','next','Siguiente',NULL,NULL),(3,'nb_proveedores_pg','next','Siguiente',NULL,NULL),(3,'nb_vendedores_pg','next','Siguiente',NULL,NULL),(1,'nb_clientes_m_pg','submit','Actualizar',NULL,NULL),(2,'nb_clientes_m_pg','previous','Atras',NULL,NULL),(3,'nb_clientes_m_pg','next','Siguiente',NULL,NULL),(1,'nb_vendedores_m_pg','submit','Actualizar',NULL,NULL),(2,'nb_vendedores_m_pg','previous','Atras',NULL,NULL),(3,'nb_vendedores_m_pg','next','Siguiente',NULL,NULL),(1,'nb_proveedores_m_pg','submit','Actualizar',NULL,NULL),(2,'nb_proveedores_m_pg','previous','Atras',NULL,NULL),(3,'nb_proveedores_m_pg','next','Siguiente',NULL,NULL),(1,'nb_productos_m_pg','submit','Actualizar',NULL,NULL),(2,'nb_productos_m_pg','previous','Atras',NULL,NULL),(3,'nb_productos_m_pg','next','Siguiente',NULL,NULL),(1,'nb_inventario_m_pg','submit','Actualizar',NULL,NULL),(2,'nb_inventario_m_pg','previous','Atras',NULL,NULL),(3,'nb_inventario_m_pg','next','Siguiente',NULL,NULL),(1,'nb_facturacion_m_pg','submit','Detalle',NULL,NULL),(2,'nb_facturacion_m_pg','previous','Atras',NULL,NULL),(3,'nb_facturacion_m_pg','next','Siguiente',NULL,NULL);
/*!40000 ALTER TABLE `nb_wizard_buttons_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nb_wizard_steps_tbl`
--

DROP TABLE IF EXISTS `nb_wizard_steps_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nb_wizard_steps_tbl` (
  `nb_id_wizard_step` int(11) NOT NULL,
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_wizard_step_title` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_wizard_step_desc` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_wizard_step`,`nb_id_page_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nb_wizard_steps_tbl`
--

LOCK TABLES `nb_wizard_steps_tbl` WRITE;
/*!40000 ALTER TABLE `nb_wizard_steps_tbl` DISABLE KEYS */;
INSERT INTO `nb_wizard_steps_tbl` VALUES (1,'nb_clientes_pg','Datos Basicos','Identificacion'),(1,'nb_facturacion_pg','Cliente','Datos Basicos'),(1,'nb_inventario_pg','Productos','Ingreso Inventario'),(1,'nb_password_pg','Usuarios','Cambio de Contrase&#241;a'),(1,'nb_productos_pg','Producto','Detalle'),(1,'nb_proveedores_pg','Proveedores','Datos Basicos'),(1,'nb_usersm_pg','Usuarios','Actualizacion Usuarios del Sistemas'),(1,'nb_users_pg','Usuarios','Registros Usuarios del Sistemas'),(1,'nb_vendedores_pg','Vendedor','Datos Basicos'),(2,'nb_clientes_pg','Datos Contacto','Ubicacion'),(2,'nb_facturacion_pg','Cliente','Datos Contacto'),(2,'nb_productos_pg','Producto','Precio Venta'),(2,'nb_proveedores_pg','Proveedores','Dato Localizacion'),(2,'nb_vendedores_pg','Vendedor','Datos Contacto'),(3,'nb_clientes_pg','Otros Datos','Observaciones'),(3,'nb_facturacion_pg','Factura','Detalle'),(3,'nb_proveedores_pg','Otros Datos','Observaciones'),(3,'nb_vendedores_pg','Otros Datos','Observaciones'),(1,'nb_clientes_m_pg','Datos Basicos','Identificacion'),(2,'nb_clientes_m_pg','Datos Contacto','Ubicacion'),(3,'nb_clientes_m_pg','Otros Datos','Observaciones'),(1,'nb_vendedores_m_pg','Vendedor','Datos Basicos'),(2,'nb_vendedores_m_pg','Vendedor','Datos Contacto'),(3,'nb_vendedores_m_pg','Otros Datos','Observaciones'),(1,'nb_proveedores_m_pg','Proveedores','Datos Basicos'),(2,'nb_proveedores_m_pg','Proveedores','Dato Localizacion'),(3,'nb_proveedores_m_pg','Otros Datos','Observaciones'),(1,'nb_productos_m_pg','Producto','Detalle'),(2,'nb_productos_m_pg','Producto','Precio Venta'),(1,'nb_inventario_m_pg','Productos','Ingreso Inventario'),(1,'nb_facturacion_m_pg','Cliente','Datos Basicos'),(2,'nb_facturacion_m_pg','Cliente','Datos Contacto'),(3,'nb_facturacion_m_pg','Factura','Detalle');
/*!40000 ALTER TABLE `nb_wizard_steps_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nb_wizard_tbl`
--

DROP TABLE IF EXISTS `nb_wizard_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nb_wizard_tbl` (
  `nb_id_wizard` int(11) NOT NULL AUTO_INCREMENT,
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_wizard_title` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_wizard_desc` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_wizard_show_progress` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_wizard`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nb_wizard_tbl`
--

LOCK TABLES `nb_wizard_tbl` WRITE;
/*!40000 ALTER TABLE `nb_wizard_tbl` DISABLE KEYS */;
INSERT INTO `nb_wizard_tbl` VALUES (1,'nb_users_pg','Usuarios',NULL,'true'),(2,'nb_usersm_pg','Usuarios',NULL,'true'),(3,'nb_password_pg',NULL,NULL,'true'),(4,'nb_productos_pg','Productos',NULL,'true'),(5,'nb_clientes_pg','Clientes',NULL,'true'),(6,'nb_inventario_pg','Inventario',NULL,'true'),(7,'nb_facturacion_pg','Facturacion',NULL,'true'),(8,'nb_vendedores_pg','','','true'),(9,'nb_proveedores_pg','','','true'),(10,'nb_clientes_m_pg','Clientes',NULL,'true'),(11,'nb_vendedores_m_pg','','','true'),(12,'nb_proveedores_m_pg','','','true'),(13,'nb_productos_m_pg','Productos',NULL,'true'),(14,'nb_inventario_m_pg','Inventario',NULL,'true'),(15,'nb_facturacion_m_pg','Facturacion',NULL,'true');
/*!40000 ALTER TABLE `nb_wizard_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nbd_role_user_tbl`
--

DROP TABLE IF EXISTS `nbd_role_user_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nbd_role_user_tbl` (
  `nbd_id_user_fld` int(11) NOT NULL DEFAULT '0',
  `nb_id_role_fld` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`nb_id_role_fld`,`nbd_id_user_fld`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nbd_role_user_tbl`
--

LOCK TABLES `nbd_role_user_tbl` WRITE;
/*!40000 ALTER TABLE `nbd_role_user_tbl` DISABLE KEYS */;
INSERT INTO `nbd_role_user_tbl` VALUES (1,1);
/*!40000 ALTER TABLE `nbd_role_user_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nbd_user_tbl`
--

DROP TABLE IF EXISTS `nbd_user_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nbd_user_tbl` (
  `nbd_id_user_fld` int(11) NOT NULL AUTO_INCREMENT,
  `nbd_email_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nbd_descr_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nbd_password_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_estado_fld` int(2) DEFAULT '0',
  PRIMARY KEY (`nbd_id_user_fld`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nbd_user_tbl`
--

LOCK TABLES `nbd_user_tbl` WRITE;
/*!40000 ALTER TABLE `nbd_user_tbl` DISABLE KEYS */;
INSERT INTO `nbd_user_tbl` VALUES (1,'admin','Usuario Administrador','21232f297a57a5a743894a0e4a801fc3',0);
/*!40000 ALTER TABLE `nbd_user_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'naburest'
--

--
-- Dumping routines for database 'naburest'
--

--
-- Final view structure for view `nb_clientes_vw`
--

/*!50001 DROP VIEW IF EXISTS `nb_clientes_vw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nb_clientes_vw` AS select `a`.`nb_clie_1_fld` AS `Id`,`b`.`nb_value_fld` AS `Tipo_Documento`,`a`.`nb_clie_3_fld` AS `Documento`,`a`.`nb_clie_6_fld` AS `Nombre`,`a`.`nb_clie_8_fld` AS `Direccion`,`a`.`nb_clie_9_fld` AS `Telefono`,`a`.`nb_clie_10_fld` AS `Email`,`c`.`nb_value_fld` AS `Estado` from ((`nb_clientes_tbl` `a` join `nb_value_tbl` `b`) join `nb_value_tbl` `c`) where ((`b`.`nb_id_pr_schema_fld` = 'nb_tipodoc_fld') and (`a`.`nb_clie_2_fld` = `b`.`nb_id_value_fld`) and (`c`.`nb_id_pr_schema_fld` = 'nb_estado_fld') and (`a`.`nb_clie_11_fld` = `c`.`nb_id_value_fld`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `nb_cuadrediario_vw`
--

/*!50001 DROP VIEW IF EXISTS `nb_cuadrediario_vw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nb_cuadrediario_vw` AS select `nb_factura_vw`.`Tipo` AS `Tipo`,concat('$',format(ifnull(sum(replace(replace(`nb_factura_vw`.`Monto`,',',''),'$','')),0),2)) AS `Monto` from `nb_factura_vw` where ((1 = 1) and (str_to_date(`nb_factura_vw`.`Fecha_Factura`,'%m/%d/%Y') > (curdate() - interval 1 day))) group by `nb_factura_vw`.`Tipo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `nb_cuadretotal_vw`
--

/*!50001 DROP VIEW IF EXISTS `nb_cuadretotal_vw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nb_cuadretotal_vw` AS select extract(year_month from str_to_date(`nb_factura_vw`.`Fecha_Factura`,'%m/%d/%Y')) AS `Periodo`,`nb_factura_vw`.`Tipo` AS `Tipo`,concat('$',format(ifnull(sum(replace(replace(`nb_factura_vw`.`Monto`,',',''),'$','')),0),2)) AS `Monto` from `nb_factura_vw` group by extract(year_month from str_to_date(`nb_factura_vw`.`Fecha_Factura`,'%m/%d/%Y')),`nb_factura_vw`.`Tipo` order by extract(year_month from str_to_date(`nb_factura_vw`.`Fecha_Factura`,'%m/%d/%Y')) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `nb_factura_c_print_vw`
--

/*!50001 DROP VIEW IF EXISTS `nb_factura_c_print_vw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nb_factura_c_print_vw` AS select `a`.`nb_fact_1_fld` AS `Id`,ifnull((select `c`.`nb_value_fld` from (`nb_clientes_tbl` `b` join `nb_value_tbl` `c`) where ((`a`.`nb_fact_3_fld` = `b`.`nb_clie_3_fld`) and (`b`.`nb_clie_2_fld` = `c`.`nb_id_value_fld`) and (`c`.`nb_id_pr_schema_fld` = 'nb_tipodoc_fld'))),'Cedula Ciudadania') AS `Tipo_Documento`,`a`.`nb_fact_3_fld` AS `Documento`,`a`.`nb_fact_4_fld` AS `Nombre`,`a`.`nb_fact_5_fld` AS `Direccion`,`a`.`nb_fact_6_fld` AS `Telefono`,`a`.`nb_fact_7_fld` AS `Email`,ucase(date_format(str_to_date(`a`.`nb_fact_8_fld`,'%m/%d/%Y'),'%d-%b-%Y')) AS `Fecha_Factura`,ucase(date_format(str_to_date(`a`.`nb_fact_9_fld`,'%m/%d/%Y'),'%d-%b-%Y')) AS `Vencimiento`,(select `e`.`nb_vend_4_fld` from `nb_vendedores_tbl` `e` where (`e`.`nb_vend_1_fld` = `a`.`nb_fact_10_fld`)) AS `Vendedor`,(select `d`.`nb_value_fld` from `nb_value_tbl` `d` where ((`a`.`nb_fact_11_fld` = `d`.`nb_id_value_fld`) and (`d`.`nb_id_pr_schema_fld` = 'nb_tipofact_fld'))) AS `Tipo_Factura` from `nb_facturacion_tbl` `a` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `nb_factura_d_print_vw`
--

/*!50001 DROP VIEW IF EXISTS `nb_factura_d_print_vw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nb_factura_d_print_vw` AS select substr(`nb_detallef_tbl`.`Factura`,1,(locate('-',`nb_detallef_tbl`.`Factura`) - 1)) AS `Id`,`nb_detallef_tbl`.`Cantidad` AS `Cantidad`,concat(`nb_detallef_tbl`.`Producto`,'-',`nb_detallef_tbl`.`Descripcion`,'-',`nb_detallef_tbl`.`UOM`) AS `Producto`,`nb_detallef_tbl`.`Precio` AS `Precio`,`nb_detallef_tbl`.`Iva` AS `Iva`,`nb_detallef_tbl`.`Total` AS `Total` from `nb_detallef_tbl` where (`nb_detallef_tbl`.`Producto` is not null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `nb_factura_vw`
--

/*!50001 DROP VIEW IF EXISTS `nb_factura_vw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nb_factura_vw` AS select `a`.`nb_fact_1_fld` AS `Factura`,ifnull(`d`.`nb_value_fld`,'Factura') AS `Tipo`,concat('$',format(ifnull(sum(replace(replace(`f`.`Total`,',',''),'$','')),0),2)) AS `Monto`,`a`.`nb_fact_8_fld` AS `Fecha_Factura`,`a`.`nb_fact_9_fld` AS `Vencimiento`,ucase(ifnull(`c`.`nb_value_fld`,'Cedula Ciudadania')) AS `Tipo_Documento`,`a`.`nb_fact_3_fld` AS `Documento`,ucase(`a`.`nb_fact_4_fld`) AS `Nombre`,ucase(ifnull(`e`.`nb_vend_4_fld`,`a`.`nb_fact_10_fld`)) AS `Vendedor`,'Imprimir Factura' AS `Imprimir` from (((((`nb_facturacion_tbl` `a` left join `nb_clientes_tbl` `b` on((`a`.`nb_fact_3_fld` = `b`.`nb_clie_3_fld`))) left join `nb_value_tbl` `c` on(((`c`.`nb_id_value_fld` = `b`.`nb_clie_2_fld`) and (`c`.`nb_id_pr_schema_fld` = 'nb_tipodoc_fld')))) left join `nb_value_tbl` `d` on(((`d`.`nb_id_value_fld` = `a`.`nb_fact_11_fld`) and (`d`.`nb_id_pr_schema_fld` = 'nb_tipofact_fld')))) left join `nb_vendedores_tbl` `e` on((`a`.`nb_fact_10_fld` = `e`.`nb_vend_1_fld`))) left join `nb_detallef_tbl` `f` on((concat(`a`.`nb_fact_1_fld`,'-') like substr(`f`.`Factura`,1,locate('-',`f`.`Factura`))))) group by `a`.`nb_fact_1_fld`,ifnull(`d`.`nb_value_fld`,'Factura'),`a`.`nb_fact_8_fld`,`a`.`nb_fact_9_fld`,ucase(ifnull(`c`.`nb_value_fld`,'Cedula Ciudadania')),`a`.`nb_fact_3_fld`,ucase(`a`.`nb_fact_4_fld`),ucase(ifnull(`e`.`nb_vend_4_fld`,`a`.`nb_fact_10_fld`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `nb_inventario_vw`
--

/*!50001 DROP VIEW IF EXISTS `nb_inventario_vw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nb_inventario_vw` AS select `nb_inventario_tbl`.`nb_inve_1_fld` AS `Id`,`nb_inventario_tbl`.`nb_inve_2_fld` AS `Producto`,`nb_inventario_tbl`.`nb_inve_3_fld` AS `Cantidad`,`nb_inventario_tbl`.`nb_inve_4_fld` AS `Fecha` from `nb_inventario_tbl` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `nb_login_vw`
--

/*!50001 DROP VIEW IF EXISTS `nb_login_vw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nb_login_vw` AS select `a`.`nbd_id_user_fld` AS `Id`,`a`.`nbd_descr_fld` AS `Usuario`,`a`.`nbd_email_fld` AS `Login`,ifnull(`c`.`nb_desc_fld`,'Asignar Role') AS `Role`,ifnull((select `nb_value_tbl`.`nb_value_fld` from `nb_value_tbl` where ((`nb_value_tbl`.`nb_id_pr_schema_fld` = 'nb_estado_fld') and (`nb_value_tbl`.`nb_id_value_fld` = `a`.`nb_estado_fld`))),'Asignar Estado') AS `Estado` from ((`nbd_user_tbl` `a` left join `nbd_role_user_tbl` `b` on((`a`.`nbd_id_user_fld` = `b`.`nbd_id_user_fld`))) left join `nb_role_tbl` `c` on((`b`.`nb_id_role_fld` = `c`.`nb_id_role_fld`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `nb_productos_vw`
--

/*!50001 DROP VIEW IF EXISTS `nb_productos_vw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nb_productos_vw` AS select `a`.`nb_prod_1_fld` AS `Id`,`a`.`nb_prod_2_fld` AS `Descripcion`,`a`.`nb_prod_3_fld` AS `Marca`,`a`.`nb_prod_4_fld` AS `Modelo`,`b`.`nb_value_fld` AS `UOM`,`a`.`nb_prod_7_fld` AS `Precio`,`a`.`nb_prod_8_fld` AS `Iva` from (`nb_productos_tbl` `a` left join `nb_value_tbl` `b` on(((`b`.`nb_id_pr_schema_fld` = 'nb_umed_fld') and (`a`.`nb_prod_6_fld` = `b`.`nb_id_value_fld`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `nb_proveedores_vw`
--

/*!50001 DROP VIEW IF EXISTS `nb_proveedores_vw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nb_proveedores_vw` AS select `a`.`nb_prov_1_fld` AS `Id`,`b`.`nb_value_fld` AS `Tipo_Documento`,`a`.`nb_prov_3_fld` AS `Documento`,`a`.`nb_prov_4_fld` AS `Nombre`,`a`.`nb_prov_5_fld` AS `Direccion`,`a`.`nb_prov_6_fld` AS `Telefono`,`a`.`nb_prov_7_fld` AS `Email`,`c`.`nb_value_fld` AS `Estado` from ((`nb_proveedores_tbl` `a` join `nb_value_tbl` `b`) join `nb_value_tbl` `c`) where ((`b`.`nb_id_pr_schema_fld` = 'nb_tipodoc_fld') and (`a`.`nb_prov_2_fld` = `b`.`nb_id_value_fld`) and (`c`.`nb_id_pr_schema_fld` = 'nb_estado_fld') and (`a`.`nb_prov_8_fld` = `c`.`nb_id_value_fld`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `nb_vendedores_vw`
--

/*!50001 DROP VIEW IF EXISTS `nb_vendedores_vw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nb_vendedores_vw` AS select `a`.`nb_vend_1_fld` AS `Id`,`b`.`nb_value_fld` AS `Tipo_Documento`,`a`.`nb_vend_3_fld` AS `Documento`,`a`.`nb_vend_4_fld` AS `Nombre`,`a`.`nb_vend_5_fld` AS `Direccion`,`a`.`nb_vend_6_fld` AS `Telefono`,`a`.`nb_vend_7_fld` AS `Email`,`c`.`nb_value_fld` AS `Estado` from ((`nb_vendedores_tbl` `a` join `nb_value_tbl` `b`) join `nb_value_tbl` `c`) where ((`b`.`nb_id_pr_schema_fld` = 'nb_tipodoc_fld') and (`a`.`nb_vend_2_fld` = `b`.`nb_id_value_fld`) and (`c`.`nb_id_pr_schema_fld` = 'nb_estado_fld') and (`a`.`nb_vend_8_fld` = `c`.`nb_id_value_fld`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-24 18:30:18
