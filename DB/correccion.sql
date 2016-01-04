# ************************************************************
# Sequel Pro SQL dump
# Version 4499
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 10.1.9-MariaDB)
# Database: nabu
# Generation Time: 2016-01-04 13:33:17 +0000
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
	('nabu','Semilla de innovacion que da vida a tus ideas <br> V. 0.27');

/*!40000 ALTER TABLE `nb_config_tbl` ENABLE KEYS */;
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
	('nb_usuariosm_pg','nb_1_tipo_vehi_fld',55,'../Events/ValoresCampo.php?campo=nb_1_tipo_vehi_fld'),
	('nb_usuariosm_pg','nb_1_tipo_vehi_fld',32,'select'),
	('nb_usuariosm_pg','nb_1_tipo_vehi_fld',24,'Tipo Vehiculo'),
	('nb_usuariosm_pg','nb_1_tipo_vehi_fld',13,'string'),
	('nb_usuariosm_pg','nb_1_tipotarifa_fld',59,'false'),
	('nb_usuariosm_pg','nb_1_tipotarifa_fld',58,'Seleccione tipo Tarifa'),
	('nb_usuariosm_pg','nb_1_tipotarifa_fld',55,'../Events/ValoresCampo.php?campo=nb_1_tipotarifa_fld'),
	('nb_usuariosm_pg','nb_1_tipotarifa_fld',32,'select'),
	('nb_usuariosm_pg','nb_1_tipotarifa_fld',24,'Tipo tarifa'),
	('nb_usuariosm_pg','nb_1_tipotarifa_fld',13,'string'),
	('nb_tarifasm_pg','nb_5_tiempoG_fld',24,'Tiempo Gratis'),
	('nb_tarifasm_pg','nb_5_tiempoG_fld',13,'string'),
	('nb_tarifasm_pg','nb_4_valor_fld',24,'Valor'),
	('nb_tarifasm_pg','nb_4_valor_fld',13,'string'),
	('nb_tarifasm_pg','nb_3_tipocobro_fld',59,'false'),
	('nb_tarifasm_pg','nb_3_tipocobro_fld',58,'Seleccione Tipo Cobro'),
	('nb_tarifasm_pg','nb_3_tipocobro_fld',55,'../Events/ValoresCampo.php?campo=nb_3_tipocobro_fld'),
	('nb_tarifasm_pg','nb_3_tipocobro_fld',32,'select'),
	('nb_tarifasm_pg','nb_3_tipocobro_fld',24,'Tipo Cobro'),
	('nb_tarifasm_pg','nb_3_tipocobro_fld',13,'string'),
	('nb_tarifasm_pg','nb_1_tipo_vehi_fld',59,'false'),
	('nb_tarifasm_pg','nb_1_tipo_vehi_fld',58,'Seleccione Tipo Vehiculo'),
	('nb_tarifasm_pg','nb_1_tipo_vehi_fld',55,'../Events/ValoresCampo.php?campo=nb_1_tipo_vehi_fld'),
	('nb_tarifasm_pg','nb_1_tipo_vehi_fld',32,'select'),
	('nb_tarifasm_pg','nb_1_tipo_vehi_fld',24,'Tipo Vehiculo'),
	('nb_tarifasm_pg','nb_1_tipo_vehi_fld',13,'string'),
	('nb_tarifasm_pg','nb_1_tipotarifa_fld',59,'false'),
	('nb_tarifasm_pg','nb_1_tipotarifa_fld',58,'Seleccione tipo Tarifa'),
	('nb_tarifasm_pg','nb_1_tipotarifa_fld',55,'../Events/ValoresCampo.php?campo=nb_1_tipotarifa_fld'),
	('nb_tarifasm_pg','nb_1_tipotarifa_fld',32,'select'),
	('nb_tarifasm_pg','nb_1_tipotarifa_fld',24,'Tipo tarifa'),
	('nb_tarifasm_pg','nb_1_tipotarifa_fld',13,'string'),
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
	('mn_pagos_pg','nb_1_tipotarifa_fld',11,'true'),
	('nb_recaudo_pg','nb_2_placa_fld',11,'true'),
	('nb_recaudo_pg','nb_2_placa_fld',13,'string'),
	('nb_recaudo_pg','nb_2_placa_fld',24,'Placa'),
	('addcustomer','nb_sexo_fld',60,'{\"nb_tipodoc_fld\": [\"1\",\"2\",\"4\",\"5\"] }'),
	('nb_users_pg','nbd_id_user_fld',13,'string'),
	('error','image',13,'strinrg'),
	('error','image',32,'image'),
	('error','image',35,'bootstrap-display'),
	('home','image',13,'string'),
	('home','image',32,'image'),
	('home','image',35,'bootstrap-display'),
	('login','Campo1',11,'true'),
	('login','Campo1',13,'string'),
	('login','Campo1',24,'Usuario'),
	('login','Campo2',6,'password'),
	('login','Campo2',9,'^[a-zA-Z0-9_]+$'),
	('login','Campo2',11,'true'),
	('login','Campo2',13,'string'),
	('login','Campo2',24,'Password'),
	('nb_loginm_pg','nbd_password_fld',24,'Contrase&#241;a'),
	('nb_loginm_pg','nbd_password_fld',13,'string'),
	('nb_loginm_pg','nbd_password_fld',11,'true'),
	('nb_loginm_pg','nbd_id_user_fld',24,'Id'),
	('nb_loginm_pg','nbd_id_user_fld',13,'string'),
	('nb_loginm_pg','nbd_id_user_fld',11,'true'),
	('nb_loginm_pg','nbd_email_fld',24,'Usuario'),
	('nb_loginm_pg','nbd_email_fld',13,'string'),
	('nb_loginm_pg','nbd_email_fld',11,'true'),
	('nb_loginm_pg','nbd_descr_fld',24,'Nombre'),
	('nb_loginm_pg','nbd_descr_fld',13,'string'),
	('nb_loginm_pg','nbd_descr_fld',11,'true'),
	('nb_control_pg','nb_1_tipo_vehi_fld',61,'false'),
	('nb_tarifas_pg','nb_4_valor_fld',60,'{\"nb_1_tipotarifa_fld\":[\"1\",\"2\"]}'),
	('nb_tarifas_pg','nb_4_valor_fld',2,'nb_1_tipotarifa_fld'),
	('nb_tarifas_pg','nb_5_tiempoG_fld',60,'{\"nb_1_tipotarifa_fld\":[\"2\"]}'),
	('nb_tarifas_pg','nb_5_tiempoG_fld',2,'nb_1_tipotarifa_fld'),
	('nb_tarifas_pg','nb_6_tiempoS_fld',2,'nb_1_tipotarifa_fld'),
	('nb_tarifas_pg','nb_6_tiempoS_fld',60,'{\"nb_1_tipotarifa_fld\":[\"2\"]}'),
	('nb_tarifas_pg','nb_6_tiempoS_fld',13,'string'),
	('nb_tarifas_pg','nb_6_tiempoS_fld',24,'Tiempo Salida (Min)'),
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
	('nb_usuariosm_pg','nb_tipodoc_fld',59,'false'),
	('nb_usuariosm_pg','nb_tipodoc_fld',58,'Seleccione Tipo de Documento'),
	('nb_usuariosm_pg','nb_tipodoc_fld',55,'../Events/ValoresCampo.php?campo=nb_tipodoc_fld'),
	('nb_usuariosm_pg','nb_tipodoc_fld',32,'select'),
	('nb_usuariosm_pg','nb_tipodoc_fld',24,'Tipo de Documento'),
	('nb_usuariosm_pg','nb_tipodoc_fld',13,'integer'),
	('nb_usuariosm_pg','nb_tipodoc_fld',11,'true'),
	('nb_usuariosm_pg','nb_numerodoc_fld',24,'Numero Documento'),
	('nb_usuariosm_pg','nb_numerodoc_fld',13,'string'),
	('nb_usuariosm_pg','nb_numerodoc_fld',11,'true'),
	('nb_usuariosm_pg','nb_nombre_fld',24,'Nombre/Razon Social'),
	('nb_usuariosm_pg','nb_nombre_fld',13,'string'),
	('nb_usuariosm_pg','nb_nombre_fld',11,'true'),
	('nb_usuariosm_pg','nb_4_placa_fld',24,'Placa'),
	('nb_usuariosm_pg','nb_4_placa_fld',13,'string'),
	('nb_usuariosm_pg','nb_3_placa_fld',24,'Placa'),
	('nb_usuariosm_pg','nb_3_placa_fld',13,'string'),
	('nb_usuariosm_pg','nb_2_placa_fld',24,'Placa'),
	('nb_usuariosm_pg','nb_2_placa_fld',13,'string'),
	('nb_usuariosm_pg','nb_1_tipo_vehi_fld',59,'false'),
	('nb_usuariosm_pg','nb_1_tipo_vehi_fld',58,'Seleccione Tipo Vehiculo'),
	('login','anb_empresa_fld',13,'string'),
	('login','anb_empresa_fld',11,'true'),
	('login','anb_empresa_fld',24,'Empresa'),
	('construccion','image',35,'bootstrap-display'),
	('construccion','image',13,'string'),
	('construccion','image',32,'image'),
	('nb_control_pg','nb_2_placa_fld',11,'true'),
	('nb_control_pg','nb_1_tipo_vehi_fld',59,'true'),
	('nb_control_pg','nb_2_placa_fld',13,'string'),
	('nb_control_pg','nb_2_placa_fld',24,'Placa'),
	('nb_control_pg','nb_1_tipo_vehi_fld',11,'true'),
	('nb_control_pg','nb_1_tipo_vehi_fld',13,'integer'),
	('nb_control_pg','nb_1_tipo_vehi_fld',24,'Vehiculo'),
	('nb_control_pg','nb_1_tipo_vehi_fld',32,'radio'),
	('nb_control_pg','nb_1_tipo_vehi_fld',55,'../Events/ValoresCampo.php?campo=nb_1_tipo_vehi_fld'),
	('nb_control_pg','nb_3_tarjeta_fld',11,'true'),
	('nb_control_pg','nb_3_tarjeta_fld',13,'string'),
	('nb_control_pg','nb_3_tarjeta_fld',24,'Tarjeta'),
	('nb_controlv_pg','nb_1_tipo_vehi_fld',24,'Tipo Vehiculo'),
	('nb_controlv_pg','nb_1_tipo_vehi_fld',13,'string'),
	('nb_controlv_pg','nb_2_placa_fld',13,'string'),
	('nb_controlv_pg','nb_2_placa_fld',24,'Placa'),
	('nb_controlv_pg','nb_3_fecha_ingreso_fld',13,'string'),
	('nb_controlv_pg','nb_3_fecha_ingreso_fld',24,'Fecha y Hora de Ingreso'),
	('nb_controlv_pg','nb_4_fecha_salida_fld',13,'string'),
	('nb_controlv_pg','nb_4_fecha_salida_fld',24,'Fecha y Hora de Salida'),
	('nb_controlv_pg','nb_5_totalhoras_fld',13,'string'),
	('nb_controlv_pg','nb_5_totalhoras_fld',24,'Total Tiempo'),
	('nb_controlv_pg','nb_6_valor_fld',13,'string'),
	('nb_controlv_pg','nb_6_valor_fld',24,'Total a Pagar'),
	('nb_tarifas_pg','nb_1_tipotarifa_fld',13,'string'),
	('nb_tarifas_pg','nb_1_tipo_vehi_fld',13,'string'),
	('nb_tarifas_pg','nb_3_tipocobro_fld',13,'string'),
	('nb_tarifas_pg','nb_4_valor_fld',13,'string'),
	('nb_usuarios_pg','nb_4_placa_fld',13,'string'),
	('nb_tarifas_pg','nb_1_tipotarifa_fld',24,'Tipo tarifa'),
	('nb_tarifas_pg','nb_1_tipo_vehi_fld',24,'Tipo Vehiculo'),
	('nb_tarifas_pg','nb_3_tipocobro_fld',24,'Tipo Cobro'),
	('nb_tarifas_pg','nb_4_valor_fld',24,'Valor'),
	('nb_usuarios_pg','nb_3_placa_fld',24,'Placa'),
	('nb_usuarios_pg','nb_3_placa_fld',13,'string'),
	('nb_tarifas_pg','nb_1_tipotarifa_fld',32,'select'),
	('nb_tarifas_pg','nb_1_tipo_vehi_fld',32,'select'),
	('nb_tarifas_pg','nb_3_tipocobro_fld',32,'select'),
	('nb_tarifas_pg','nb_1_tipo_vehi_fld',55,'../Events/ValoresCampo.php?campo=nb_1_tipo_vehi_fld'),
	('nb_tarifas_pg','nb_1_tipotarifa_fld',59,'false'),
	('nb_tarifas_pg','nb_1_tipo_vehi_fld',59,'false'),
	('nb_tarifas_pg','nb_3_tipocobro_fld',59,'false'),
	('nb_tarifas_pg','nb_1_tipotarifa_fld',55,'../Events/ValoresCampo.php?campo=nb_1_tipotarifa_fld'),
	('nb_tarifas_pg','nb_1_tipotarifa_fld',58,'Seleccione tipo Tarifa'),
	('nb_tarifas_pg','nb_1_tipo_vehi_fld',58,'Seleccione Tipo Vehiculo'),
	('nb_tarifas_pg','nb_3_tipocobro_fld',58,'Seleccione Tipo Cobro'),
	('nb_tarifas_pg','nb_3_tipocobro_fld',55,'../Events/ValoresCampo.php?campo=nb_3_tipocobro_fld'),
	('nb_usuarios_pg','nb_tipodoc_fld',24,'Tipo de Documento'),
	('nb_usuarios_pg','nb_tipodoc_fld',11,'true'),
	('nb_usuarios_pg','nb_tipodoc_fld',13,'integer'),
	('nb_usuarios_pg','nb_tipodoc_fld',32,'select'),
	('nb_usuarios_pg','nb_tipodoc_fld',55,'../Events/ValoresCampo.php?campo=nb_tipodoc_fld'),
	('nb_usuarios_pg','nb_tipodoc_fld',58,'Seleccione Tipo de Documento'),
	('nb_usuarios_pg','nb_tipodoc_fld',59,'false'),
	('nb_usuarios_pg','nb_numerodoc_fld',11,'true'),
	('nb_usuarios_pg','nb_numerodoc_fld',13,'string'),
	('nb_usuarios_pg','nb_numerodoc_fld',24,'Numero Documento'),
	('nb_usuarios_pg','nb_nombre_fld',11,'true'),
	('nb_usuarios_pg','nb_nombre_fld',13,'string'),
	('nb_usuarios_pg','nb_nombre_fld',24,'Nombre/Razon Social'),
	('nb_usuarios_pg','nb_1_tipo_vehi_fld',13,'string'),
	('nb_usuarios_pg','nb_1_tipo_vehi_fld',24,'Tipo Vehiculo'),
	('nb_usuarios_pg','nb_1_tipo_vehi_fld',32,'select'),
	('nb_usuarios_pg','nb_1_tipo_vehi_fld',55,'../Events/ValoresCampo.php?campo=nb_1_tipo_vehi_fld'),
	('nb_usuarios_pg','nb_1_tipo_vehi_fld',58,'Seleccione Tipo Vehiculo'),
	('nb_usuarios_pg','nb_1_tipo_vehi_fld',59,'false'),
	('nb_tarifas_pg','nb_5_tiempoG_fld',24,'Tiempo Gratis (Min)'),
	('nb_tarifas_pg','nb_5_tiempoG_fld',13,'string'),
	('nb_usuarios_pg','nb_4_placa_fld',24,'Placa'),
	('nb_usuarios_pg','nb_2_placa_fld',13,'string'),
	('nb_usuarios_pg','nb_2_placa_fld',24,'Placa'),
	('nb_usuarios_pg','nb_1_tipotarifa_fld',13,'string'),
	('nb_usuarios_pg','nb_1_tipotarifa_fld',24,'Tipo tarifa'),
	('nb_usuarios_pg','nb_1_tipotarifa_fld',32,'select'),
	('nb_usuarios_pg','nb_1_tipotarifa_fld',55,'../Events/ValoresCampo.php?campo=nb_1_tipotarifa_fld'),
	('nb_usuarios_pg','nb_1_tipotarifa_fld',58,'Seleccione tipo Tarifa'),
	('nb_usuarios_pg','nb_1_tipotarifa_fld',59,'false');

/*!40000 ALTER TABLE `nb_forms_tbl` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
