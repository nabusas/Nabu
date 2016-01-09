##	PAGINAS DE LA APLICACION
select nb_id_page_fld from nb_pages_tbl

##	ATRIBUTOS POR PAGINAS
insert  nb_pageattribute_tbl 
select	'nb_users_pg', nb_id_attribute_fld
from	nb_pageattribute_tbl
where	nb_id_page_fld='nb_usuarios_pg'


##	NAVEGACION

delete from nb_navigation_tbl where	nb_id_page_fld<>'home';

select distinct nb_link_fld from nb_navigation_tbl where nb_link_fld not in ('login','home');



insert into nb_navigation_tbl
select  'construccion',nb_sec_fld,nb_parent_fld,nb_id_menu_fld,nb_descr_men_fld,nb_link_fld,nb_image_fld,nb_target_fld
from 	nb_navigation_tbl
where	nb_id_page_fld='home'



##	CAMPOS
insert  into nb_forms_tbl
SELECT	DISTINCT 'nb_tarifas_pg','nb_6_tiempoS_fld',nb_config_frmwrk_id_fld,nb_schem_value_fld
FROM	nb_forms_tbl
where	nb_id_pr_schema_fld='nb_5_tiempoG_fld'

update nb_forms_tbl set nb_id_page_fld='nb_pagos_pg' where nb_id_page_fld='1'


SELECT DISTINCT nb_id_pr_schema_fld
FROM 	nb_forms_tbl
WHERE   nb_id_page_fld = 'nb_pagos_pg'

##	CONFIGURACION DE LAS GRILLAS

insert into nb_datagrid_tbl
SELECT	'nb_usuariosv_pg',nb_config_frmwrk_id_fld, case when nb_config_frmwrk_id_fld = 37 then 'Usuario' when nb_config_frmwrk_id_fld = 44 then 'Usuario' else  nb_value_fld end end 
FROM 	nb_datagrid_tbl
where	nb_id_page_fld='nb_monitoreo_pg'


##	COLUMNAS DE LAS GRILLAS
insert    into nb_datagridcol_tbl
SELECT	'nb_monitoreo_pg',10,nb_config_frmwrk_id_fld, 
		case when nb_config_frmwrk_id_fld = 45  then 'Estado' when nb_config_frmwrk_id_fld = 46  then 'Estado' else nb_value_fld end end 
FROM		nb_datagridcol_tbl
WHERE	nb_id_page_fld='nb_tarifasv_pg'
and		nb_column_fld='1'

delete from nb_datagridcol_tbl where nb_id_page_fld='nb_usuariosv_pg' and nb_column_fld='1'

## CONFIGURACION METODO SAVE

SELECT * FROM NB_USUARIOSR_TBL

DESC NB_USUARIOSR_TBL  nb_usuarios_pg

SELECT * FROM NB_OPTION_TBL WHERE NB_ID_PAGE_FLD='nb_usuarios_pg'

INSERT INTO NB_FORM_TABLES_TBL VALUES ('nb_usuarios_pg','NB_USUARIOSR_TBL','nb_tipodoc_fld','nb_tipodoc_fld');
INSERT INTO NB_FORM_TABLES_TBL VALUES ('nb_usuarios_pg','NB_USUARIOSR_TBL','nb_numerodoc_fld','nb_numerodoc_fld');
INSERT INTO NB_FORM_TABLES_TBL VALUES ('nb_usuarios_pg','NB_USUARIOSR_TBL','nb_nombre_fld','nb_nombre_fld');
INSERT INTO NB_FORM_TABLES_TBL VALUES ('nb_usuarios_pg','NB_USUARIOSR_TBL','nb_1_tipotarifa_fld','nb_1_tipotarifa_fld');
INSERT INTO NB_FORM_TABLES_TBL VALUES ('nb_usuarios_pg','NB_USUARIOSR_TBL','nb_1_tipo_vehi_fld','nb_1_tipo_vehi_fld');
INSERT INTO NB_FORM_TABLES_TBL VALUES ('nb_usuarios_pg','NB_USUARIOSR_TBL','nb_2_placa_fld','nb_2_placa_fld');
INSERT INTO NB_FORM_TABLES_TBL VALUES ('nb_usuarios_pg','NB_USUARIOSR_TBL','nb_3_placa_fld','nb_3_placa_fld');
INSERT INTO NB_FORM_TABLES_TBL VALUES ('nb_usuarios_pg','NB_USUARIOSR_TBL','nb_4_placa_fld','nb_4_placa_fld');


SELECT * FROM NB_TABLE_FIELDS_TBL

INSERT INTO NB_TABLE_FIELDS_TBL VALUES ('NB_USUARIOSR_TBL','nb_tipodoc_fld','number',2,'','');
INSERT INTO NB_TABLE_FIELDS_TBL VALUES ('NB_USUARIOSR_TBL','nb_numerodoc_fld','number',30,'','');
INSERT INTO NB_TABLE_FIELDS_TBL VALUES ('NB_USUARIOSR_TBL','nb_nombre_fld','string',255,'','');
INSERT INTO NB_TABLE_FIELDS_TBL VALUES ('NB_USUARIOSR_TBL','nb_1_tipotarifa_fld','number',2,'','');
INSERT INTO NB_TABLE_FIELDS_TBL VALUES ('NB_USUARIOSR_TBL','nb_1_tipo_vehi_fld','number',2,'','');
INSERT INTO NB_TABLE_FIELDS_TBL VALUES ('NB_USUARIOSR_TBL','nb_2_placa_fld','string',255,'','');
INSERT INTO NB_TABLE_FIELDS_TBL VALUES ('NB_USUARIOSR_TBL','nb_3_placa_fld','string',255,'','');
INSERT INTO NB_TABLE_FIELDS_TBL VALUES ('NB_USUARIOSR_TBL','nb_4_placa_fld','string',255,'','');


SELECT * FROM NB_TABLES_TBL

INSERT INTO NB_TABLES_TBL VALUES ('NB_USUARIOSR_TBL','Tabla usuarios del proceso');

##	MONITOREO
CREATE OR REPLACE VIEW nb_monitoreoD_vw AS
SELECT	(SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_1_tipo_vehi_fld' AND NB_ID_VALUE_FLD=A.nb_1_tipo_vehi_fld) AS tipo,
		A.nb_2_placa_fld,A.nb_3_tarjeta_fld,A.nb_3_fecha_ingreso_fld,A.nb_4_fecha_salida_fld,
		(SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_1_tipotarifa_fld' AND NB_ID_VALUE_FLD=nb_1_tipotarifa_fld) AS tarifa,
		A.nb_5_totalhoras_fld,CONCAT('$',FORMAT(A.nb_6_valor_fld,0)) AS Valor,A.nbd_id_user_fld,
		CASE A.NB_ESTADO_FLD WHEN  0 THEN 'Parqueado' WHEN 1 THEN 'Pago'  WHEN 2 THEN 'Salio' END as estado
FROM	nb_control_tbl	A
WHERE	DATE_FORMAT(A.nb_3_fecha_ingreso_fld,'%Y-%m-%d') > CURDATE() - INTERVAL 1 DAY

##  REPORTE TOTAL
CREATE OR REPLACE VIEW nb_reporteDiario_vw AS
SELECT	(SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_1_tipo_vehi_fld' AND NB_ID_VALUE_FLD=A.nb_1_tipo_vehi_fld) AS tipo,
		A.nb_2_placa_fld as Placa ,A.nb_3_tarjeta_fld as Tarjeta,A.nb_3_fecha_ingreso_fld as Ingreso,A.nb_4_fecha_salida_fld Salida,
		(SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_1_tipotarifa_fld' AND NB_ID_VALUE_FLD=nb_1_tipotarifa_fld) AS tarifa,
		A.nb_5_totalhoras_fld as Minutos,CONCAT('$',FORMAT(A.nb_6_valor_fld,0)) AS Valor,A.nbd_id_user_fld as Usuario,
		CASE A.NB_ESTADO_FLD WHEN  0 THEN 'Parqueado' WHEN 1 THEN 'Pago'  WHEN 2 THEN 'Salio' END as estado
FROM	nb_control_tbl	A
ORDER BY A.nb_3_fecha_ingreso_fld,A.nb_4_fecha_salida_fld

##	REPORTE DIARIO DE COBROS

CREATE OR REPLACE VIEW nb_cobrosD_vw AS
SELECT	DATE_FORMAT(A.nb_4_fecha_salida_fld,'%Y-%m-%d') as Fecha,
		(SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_1_tipo_vehi_fld' AND NB_ID_VALUE_FLD=A.nb_1_tipo_vehi_fld) as tipo,
		(SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_1_tipotarifa_fld' AND NB_ID_VALUE_FLD=A.nb_1_tipotarifa_fld) as tarifa,
		A.nbd_id_user_fld Usuario,
		CONCAT('$',FORMAT(sum(A.nb_6_valor_fld),0)) Valor
FROM	nb_control_tbl	A
where	A.nb_4_fecha_salida_fld <> 'NULL'
And		nb_1_tipotarifa_fld = 2
And		nb_estado_fld=2
group by Fecha,tipo,tarifa,usuario

##	REPORTE MENSUAL DE COBROS

CREATE OR REPLACE VIEW nb_cobrosM_vw AS
SELECT	DATE_FORMAT(A.nb_4_fecha_salida_fld,'%Y-%m') as Fecha,
		(SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_1_tipo_vehi_fld' AND NB_ID_VALUE_FLD=A.nb_1_tipo_vehi_fld) as tipo,
		(SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_1_tipotarifa_fld' AND NB_ID_VALUE_FLD=A.nb_1_tipotarifa_fld) as tarifa,
		COUNT(1) AS Vehiculos,
		CONCAT('$',FORMAT(sum(A.nb_6_valor_fld),0)) Valor
FROM	nb_control_tbl	A
where	A.nb_4_fecha_salida_fld <> 'NULL'
And		A.nb_1_tipotarifa_fld not in (0,1)
And		nb_estado_fld=2
group by Fecha,tipo,tarifa
UNION
SELECT  CONCAT(A.NB_YEAR_FLD,'-',A.NB_MES_FLD) AS Fecha,
		(SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_1_tipo_vehi_fld' AND NB_ID_VALUE_FLD=B.nb_1_tipo_vehi_fld) as tipo,
		(SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_1_tipotarifa_fld' AND NB_ID_VALUE_FLD=A.nb_1_tipotarifa_fld) as tarifa,
		COUNT(1) AS Vehiculos,
		CONCAT('$',FORMAT(sum(C.nb_4_valor_fld),0)) Valor
FROM 	NB_PAGOS_TBL A, NB_USUARIOSR_TBL B, NB_TARIFAS_TBL C
WHERE	A.nb_tipodoc_fld = B.nb_tipodoc_fld
AND		A.nb_numerodoc_fld = B.nb_numerodoc_fld
AND		A.nb_1_tipotarifa_fld = C.nb_1_tipotarifa_fld
AND		B.nb_1_tipo_vehi_fld=C.nb_1_tipo_vehi_fld
AND		A.NB_ESTADO_FLD=0
group by Fecha,tipo,tarifa

SELECT * FROM NB_TARIFAS_TBL

##	Tarifas
CREATE OR REPLACE VIEW nb_tarifas_vw AS
SELECT	(SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_1_tipo_vehi_fld' AND NB_ID_VALUE_FLD=A.nb_1_tipo_vehi_fld) as tipo,
		(SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_1_tipotarifa_fld' AND NB_ID_VALUE_FLD=A.nb_1_tipotarifa_fld) as tarifa,
		(SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_3_tipocobro_fld' AND NB_ID_VALUE_FLD=A.nb_3_tipocobro_fld) as cobro,
		CONCAT('$',FORMAT(A.nb_4_valor_fld,0)) as Valor,
		A.nb_5_tiempoG_fld as Tiempo_Gratis,
		A.nb_6_tiempoS_fld as Tiempo_Salida
FROM 	NB_TARIFAS_TBL A

##	USUARIOS DE NOMINA

CREATE OR REPLACE VIEW nb_usuariosClientes_vw AS
SELECT	(SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_tipodoc_fld' AND NB_ID_VALUE_FLD=nb_tipodoc_fld) as tipodocumento,
		nb_numerodoc_fld as documento,
		nb_nombre_fld as nombre,
		(SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_1_tipotarifa_fld' AND NB_ID_VALUE_FLD=A.nb_1_tipotarifa_fld) as tarifa,
		(SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_1_tipo_vehi_fld' AND NB_ID_VALUE_FLD=nb_1_tipo_vehi_fld)  as tipo,
		nb_2_placa_fld as placa1,
		nb_3_placa_fld as placa2,
		nb_4_placa_fld as placa3		
FROM 	NB_USUARIOSR_TBL A

##	USUARIOS DEL SISTEMA

CREATE OR REPLACE VIEW nb_login_vw as
SELECT	A.NBD_ID_USER_FLD as Id,A.NBD_DESCR_FLD as Usuario, A.NBD_EMAIL_FLD as Login , IFNULL(C.NB_DESC_FLD,'Asignar Role') as Role, 
IFNULL((SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_estado_fld' AND NB_ID_VALUE_FLD=A.nb_estado_fld), 'Asignar Estado') AS Estado
FROM 	NBD_USER_TBL A 
LEFT JOIN	NBD_ROLE_USER_TBL B ON A.NBD_ID_USER_FLD = B.NBD_ID_USER_FLD
LEFT JOIN NB_ROLE_TBL C ON B.NB_ID_ROLE_FLD = C.NB_ID_ROLE_FLD		

##	CONSULTA DE PAGOS
CREATE OR REPLACE VIEW nb_pagos_vw as
SELECT	(SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_tipodoc_fld' AND NB_ID_VALUE_FLD=A.nb_tipodoc_fld) as tipodocumento,
		A.nb_numerodoc_fld as documento,
		B.nb_nombre_fld as nombre,
		(SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_1_tipotarifa_fld' AND NB_ID_VALUE_FLD=A.nb_1_tipotarifa_fld) as tarifa,
		nb_year_fld as year, nb_mes_fld as mes,
		(SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_estado_fld' AND NB_ID_VALUE_FLD=nb_estado_fld) as estado
FROM	NB_PAGOS_TBL A, NB_USUARIOSR_TBL B
WHERE	A.nb_tipodoc_fld= B.nb_tipodoc_fld
AND		A.nb_numerodoc_fld = B.nb_numerodoc_fld


## COPIAR PARA CREAR PAGINAS DE MODIFICACION
DESC NB_OPTION_TBL

INSERT INTO NB_FORM_TABLES_TBL SELECT 'nb_usersm_pg',nb_id_table_fld,nb_id_page_field_fld,nb_id_table_field_fld FROM NB_FORM_TABLES_TBL WHERE NB_ID_PAGE_FLD='nb_users_pg'

INSERT INTO NB_FORMS_TBL SELECT 'nb_usersm_pg',nb_id_pr_schema_fld,nb_config_frmwrk_id_fld,nb_schem_value_fld FROM NB_FORMS_TBL WHERE NB_ID_PAGE_FLD='nb_users_pg'

INSERT INTO NB_NAVIGATION_TBL SELECT 'nb_usersm_pg',nb_sec_fld,nb_parent_fld,nb_id_menu_fld,nb_descr_men_fld,nb_link_fld,nb_image_fld,nb_target_fld FROM NB_NAVIGATION_TBL WHERE NB_ID_PAGE_FLD='nb_users_pg'

INSERT INTO NB_OPTION_TBL SELECT 'nb_usersm_pg',nb_typealpaca_fld,nb_renderform_fld,nb_action_path,nb_action_fld,nb_typeaccion_fld,nb_method_fld,
nb_enctype_fld FROM NB_OPTION_TBL WHERE NB_ID_PAGE_FLD='nb_users_pg'

INSERT INTO NB_PAGEATTRIBUTE_TBL SELECT 'nb_usersm_pg',nb_id_attribute_fld FROM NB_PAGEATTRIBUTE_TBL WHERE NB_ID_PAGE_FLD='nb_users_pg'

INSERT INTO NB_PAGES_TBL SELECT 'nb_usersm_pg',nb_page_title_fld,nb_page_style_fld,nb_page_type_fld,nb_page_view_pa_fld,'',nb_page_trace_fld FROM NB_PAGES_TBL WHERE NB_ID_PAGE_FLD='nb_users_pg'

INSERT INTO NB_ROLE_PAG_TBL SELECT nb_id_role_fld,'nb_usersm_pg' FROM NB_ROLE_PAG_TBL WHERE NB_ID_PAGE_FLD='nb_users_pg'

INSERT INTO NB_SCHEMA_TBL SELECT 'nb_users_pgm',nb_title_fld,nb_description_fld,nb_type_fld FROM NB_SCHEMA_TBL WHERE NB_ID_PAGE_FLD='nb_users_pg'

INSERT INTO NB_WIZARD_BIND_TBL SELECT  nb_id_wizard_bind,'nb_usersm_pg',nb_id_pr_schema_fld,nb_id_wizard_step,nb_id_wizard_step_order FROM NB_WIZARD_BIND_TBL WHERE NB_ID_PAGE_FLD='nb_users_pg'

INSERT INTO NB_WIZARD_BUTTONS_TBL SELECT nb_id_wizard_button,'nb_usersm_pg',nb_wizard_button_name,nb_wizard_button_title,nb_wizard_button_validate,nb_wizard_button_click FROM NB_WIZARD_BUTTONS_TBL WHERE NB_ID_PAGE_FLD='nb_users_pg'

INSERT INTO NB_WIZARD_STEPS_TBL SELECT  NB_ID_WIZARD_STEP,'nb_usersm_pg',NB_WIZARD_STEP_TITLE,NB_WIZARD_STEP_DESC FROM NB_WIZARD_STEPS_TBL WHERE NB_ID_PAGE_FLD='nb_users_pg'

INSERT INTO NB_WIZARD_TBL SELECT '8','nb_usersm_pg',NB_WIZARD_TITLE,NB_WIZARD_DESC,NB_WIZARD_SHOW_PROGRESS FROM NB_WIZARD_TBL WHERE NB_ID_PAGE_FLD='nb_users_pg'


SELECT	nb_id_fld,nb_1_tipo_vehi_fld,nb_2_placa_fld,nb_3_tarjeta_fld,nb_3_fecha_ingreso_fld,nb_4_fecha_salida_fld,nb_1_tipotarifa_fld,
		nb_5_totalhoras_fld ,nb_6_valor_fld,nbd_id_user_fld
FROM NB_CONTROL_TBL


select  COUNT(1) from 	nb_control_tbl where nb_2_placa_fld='KCS973' 
AND  	nb_4_fecha_salida_fld=(SELECT MAX(nb_4_fecha_salida_fld) FROM nb_control_tbl WHERE nb_2_placa_fld='KCS973' )
AND   	NOW() < DATE_ADD(nb_4_fecha_salida_fld, interval 15 MINUTE)

select nb_6_tiempoS_fld from nb_tarifas_tbl where nb_1_tipotarifa_fld=2 and nb_1_tipo_vehi_fld='0'

select count(1) from nb_control_tbl where nb_4_fecha_salida_fld is NULL and (nb_3_tarjeta_fld=1234 or nb_2_placa_fld='KCS973')
and nb_1_tipotarifa_fld=2


select COUNT(1) from nb_control_tbl where nb_2_placa_fld='KCS973' 
AND nb_4_fecha_salida_fld=(SELECT MAX(nb_4_fecha_salida_fld) FROM nb_control_tbl WHERE nb_2_placa_fld='KCS973') 
AND NOW() < DATE_ADD(nb_4_fecha_salida_fld, interval MINUTE)


update `nb_navigation_tbl` set NB_ID_PAGE_FLD='nb_recaudo_pg' where NB_ID_PAGE_FLD='nb_recuado_pg'


SELECT count(1) FROM nb_control_tbl WHERE  nb_4_fecha_salida_fld IS NULL 
AND nb_2_placa_fld=(SELECT nb_2_placa_fld FROM NB_USUARIOSR_TBL WHERE NB_1_TIPOTARIFA_FLD=1 AND (nb_2_placa_fld='LOI987' OR nb_3_placa_fld='LOI987'  OR nb_4_placa_fld='LOI987' )) 
OR nb_2_placa_fld=(SELECT nb_3_placa_fld FROM NB_USUARIOSR_TBL WHERE NB_1_TIPOTARIFA_FLD=1 AND (nb_2_placa_fld='LOI987' OR nb_3_placa_fld='LOI987'  OR nb_4_placa_fld='LOI987' )) 
OR nb_2_placa_fld=(SELECT nb_4_placa_fld FROM NB_USUARIOSR_TBL WHERE NB_1_TIPOTARIFA_FLD=1 AND (nb_2_placa_fld='LOI987' OR nb_3_placa_fld='LOI987'  OR nb_4_placa_fld='LOI987' )) 



select COUNT(1) from nb_control_tbl where nb_2_placa_fld='KCS973' and nb_4_fecha_salida_fld IS NULL OR (NOW() < DATE_ADD(nb_4_fecha_salida_fld, interval 15 MINUTE))

ALTER TABLE nb_control_tbl AUTO_INCREMENT = 1

#INSERTAR PAGOS MENSAUAL

INSERT INTO NB_PAGOS_TBL
SELECT 	NB_TIPODOC_FLD, NB_NUMERODOC_FLD ,nb_1_tipotarifa_fld,2015,12,0
FROM 	NB_USUARIOSR_TBL
WHERE	NB_1_TIPOTARIFA_FLD=1

SELECT * FROM NB_PAGOS_TBL


insert into nb_forms_tbl 
select 	nb_id_page_fld,concat(nb_id_pr_schema_fld,'X'), nb_config_frmwrk_id_fld, nb_schem_value_fld
from		nb_forms_tbl
where	nb_id_page_fld='nb_usersm_pg'
and		nb_id_pr_schema_fld='nbd_email_fld'

insert into nb_forms_tbl 
select 	nb_id_page_fld,concat(nb_id_pr_schema_fld,'X'), 29, 'true'
#select 	nb_id_page_fld,nb_id_pr_schema_fld, 36, 'true'
from		nb_forms_tbl
where	nb_id_page_fld='nb_usersm_pg'
and		nb_id_pr_schema_fld='nbd_email_fld'
and      nb_config_frmwrk_id_fld=11


