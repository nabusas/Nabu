##	PAGINAS DE LA APLICACION
select nb_id_page_fld from nb_pages_tbl

##	ATRIBUTOS POR PAGINAS
insert  nb_pageattribute_tbl 
select	'nb_users_pg', nb_id_attribute_fld
from	nb_pageattribute_tbl
where	nb_id_page_fld='nb_usuarios_pg'


##	NAVEGACION

delete from nb_navigation_tbl where	nb_id_page_fld<>'home';

insert into nb_navigation_tbl
select  'nb_users_pg',nb_sec_fld,nb_parent_fld,nb_id_menu_fld,nb_descr_men_fld,nb_link_fld,nb_image_fld,nb_target_fld
from 	nb_navigation_tbl
where	nb_id_page_fld='home'



##	CAMPOS
insert  into nb_forms_tbl
SELECT	DISTINCT 'nb_users_pg','nbd_password_fld',nb_config_frmwrk_id_fld,nb_schem_value_fld
FROM	nb_forms_tbl
where	nb_id_pr_schema_fld='nb_mes_fld'

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
SELECT	'nb_loginv_pg',2,nb_config_frmwrk_id_fld, 
		case when nb_config_frmwrk_id_fld = 45  then 'Login' when nb_config_frmwrk_id_fld = 46  then 'Login' else nb_value_fld end end 
FROM		nb_datagridcol_tbl
WHERE	nb_id_page_fld='nb_usuariosv_pg'
and		nb_column_fld='1'

delete from nb_datagridcol_tbl where nb_id_page_fld='nb_usuariosv_pg' and nb_column_fld='1'

##	MONITOREO
CREATE OR REPLACE VIEW nb_monitoreoD_vw AS
SELECT	(SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_1_tipo_vehi_fld' AND NB_ID_VALUE_FLD=A.nb_1_tipo_vehi_fld) AS tipo,
		A.nb_2_placa_fld,A.nb_3_tarjeta_fld,A.nb_3_fecha_ingreso_fld,A.nb_4_fecha_salida_fld,
		(SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_1_tipotarifa_fld' AND NB_ID_VALUE_FLD=nb_1_tipotarifa_fld) AS tarifa,
		A.nb_5_totalhoras_fld,CONCAT('$',FORMAT(A.nb_6_valor_fld,0)) AS Valor,A.nbd_id_user_fld
FROM		nb_control_tbl	A
WHERE	DATE_FORMAT(A.nb_3_fecha_ingreso_fld,'%Y-%m-%d') > CURDATE() - INTERVAL 1 DAY

##  REPORTE TOTAL
CREATE OR REPLACE VIEW nb_reporteDiario_vw AS
SELECT	(SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_1_tipo_vehi_fld' AND NB_ID_VALUE_FLD=A.nb_1_tipo_vehi_fld) AS tipo,
		A.nb_2_placa_fld as Placa ,A.nb_3_tarjeta_fld as Tarjeta,A.nb_3_fecha_ingreso_fld as Ingreso,A.nb_4_fecha_salida_fld Salida,
		(SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_1_tipotarifa_fld' AND NB_ID_VALUE_FLD=nb_1_tipotarifa_fld) AS tarifa,
		A.nb_5_totalhoras_fld,CONCAT('$',FORMAT(A.nb_6_valor_fld,0)) AS Valor,A.nbd_id_user_fld
FROM	nb_control_tbl	A
ORDER BY A.nb_3_fecha_ingreso_fld,A.nb_4_fecha_salida_fld

##	REPORTE DIARIO DE COBROS

CREATE OR REPLACE VIEW nb_cobrosD_vw AS
SELECT	DATE_FORMAT(A.nb_4_fecha_salida_fld,'%Y-%m-%d') as Fecha,
		(SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_1_tipo_vehi_fld' AND NB_ID_VALUE_FLD=A.nb_1_tipo_vehi_fld) as tipo,
		(SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_1_tipotarifa_fld' AND NB_ID_VALUE_FLD=A.nb_1_tipotarifa_fld) as tarifa,
		CONCAT('$',FORMAT(sum(A.nb_6_valor_fld),0)) Valor
FROM	nb_control_tbl	A
where	A.nb_4_fecha_salida_fld <> 'NULL'
And		nb_1_tipotarifa_fld not in (0,1)
group by Fecha,tipo,tarifa

##	REPORTE MENSUAL DE COBROS

CREATE OR REPLACE VIEW nb_cobrosM_vw AS
SELECT	DATE_FORMAT(A.nb_4_fecha_salida_fld,'%Y-%m') as Fecha,
		(SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_1_tipo_vehi_fld' AND NB_ID_VALUE_FLD=A.nb_1_tipo_vehi_fld) as tipo,
		(SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_1_tipotarifa_fld' AND NB_ID_VALUE_FLD=A.nb_1_tipotarifa_fld) as tarifa,
		CONCAT('$',FORMAT(sum(A.nb_6_valor_fld),0)) Valor
FROM	nb_control_tbl	A
where	A.nb_4_fecha_salida_fld <> 'NULL'
And		A.nb_1_tipotarifa_fld not in (0)
group by Fecha,tipo,tarifa


##	Tarifas
CREATE OR REPLACE VIEW nb_tarifas_vw AS
SELECT	(SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_1_tipo_vehi_fld' AND NB_ID_VALUE_FLD=A.nb_1_tipo_vehi_fld) as tipo,
		(SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_1_tipotarifa_fld' AND NB_ID_VALUE_FLD=A.nb_1_tipotarifa_fld) as tarifa,
		(SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_3_tipocobro_fld' AND NB_ID_VALUE_FLD=A.nb_3_tipocobro_fld) as cobro,
		CONCAT('$',FORMAT(A.nb_4_valor_fld,0)) as Valor,
		A.nb_5_tiempoG_fld as Tiempo_Gratis
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
SELECT	NBD_DESCR_FLD as Usuario, NBD_EMAIL_FLD as Login
FROM 	NBD_USER_TBL

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
DESC NB_FORMS_TBL

INSERT INTO NB_FORMS_TBL SELECT 'nb_loginm_pg',nb_id_pr_schema_fld,nb_config_frmwrk_id_fld,nb_schem_value_fld FROM NB_FORMS_TBL WHERE NB_ID_PAGE_FLD='nb_users_pg'

INSERT INTO NB_NAVIGATION_TBL SELECT 'nb_loginm_pg',nb_sec_fld,nb_parent_fld,nb_id_menu_fld,nb_descr_men_fld,nb_link_fld,nb_image_fld,nb_target_fld FROM NB_NAVIGATION_TBL WHERE NB_ID_PAGE_FLD='nb_users_pg'

INSERT INTO NB_OPTION_TBL SELECT 'nb_loginm_pg',nb_typealpaca_fld,nb_renderform_fld,nb_action_path,nb_action_fld,nb_method_fld,nb_enctype_fld FROM NB_OPTION_TBL WHERE NB_ID_PAGE_FLD='nb_users_pg'

INSERT INTO NB_PAGEATTRIBUTE_TBL SELECT 'nb_loginm_pg',nb_id_attribute_fld FROM NB_PAGEATTRIBUTE_TBL WHERE NB_ID_PAGE_FLD='nb_users_pg'

INSERT INTO NB_PAGES_TBL SELECT 'nb_loginm_pg',nb_page_title_fld,nb_page_style_fld,nb_page_type_fld,nb_page_view_pa_fld,'nbd_user_tbl',nb_page_trace_fld FROM NB_PAGES_TBL WHERE NB_ID_PAGE_FLD='nb_users_pg'

INSERT INTO NB_ROLE_PAG_TBL SELECT nb_id_role_fld,'nb_loginm_pg' FROM NB_ROLE_PAG_TBL WHERE NB_ID_PAGE_FLD='nb_users_pg'

INSERT INTO NB_SCHEMA_TBL SELECT 'nb_loginm_pg',nb_title_fld,nb_description_fld,nb_type_fld FROM NB_SCHEMA_TBL WHERE NB_ID_PAGE_FLD='nb_users_pg'

INSERT INTO NB_WIZARD_BIND_TBL SELECT  nb_id_wizard_bind,'nb_loginm_pg',nb_id_pr_schema_fld,nb_id_wizard_step,nb_id_wizard_step_order FROM NB_WIZARD_BIND_TBL WHERE NB_ID_PAGE_FLD='nb_users_pg'

INSERT INTO NB_WIZARD_BUTTONS_TBL SELECT nb_id_wizard_button,'nb_loginm_pg',nb_wizard_button_name,nb_wizard_button_title,nb_wizard_button_validate,nb_wizard_button_click FROM NB_WIZARD_BUTTONS_TBL WHERE NB_ID_PAGE_FLD='nb_users_pg'

INSERT INTO NB_WIZARD_STEPS_TBL SELECT  NB_ID_WIZARD_STEP,'nb_loginm_pg',NB_WIZARD_STEP_TITLE,NB_WIZARD_STEP_DESC FROM NB_WIZARD_STEPS_TBL WHERE NB_ID_PAGE_FLD='nb_users_pg'

INSERT INTO NB_WIZARD_TBL SELECT '9','nb_loginm_pg',NB_WIZARD_TITLE,NB_WIZARD_DESC,NB_WIZARD_SHOW_PROGRESS FROM NB_WIZARD_TBL WHERE NB_ID_PAGE_FLD='nb_users_pg'


SELECT	nb_id_fld,nb_1_tipo_vehi_fld,nb_2_placa_fld,nb_3_tarjeta_fld,nb_3_fecha_ingreso_fld,nb_4_fecha_salida_fld,nb_1_tipotarifa_fld,
		nb_5_totalhoras_fld ,nb_6_valor_fld,nbd_id_user_fld
FROM NB_CONTROL_TBL


INSERT INTO NB_CONTROL_TBL VALUES (nb_id_fld,nb_1_tipo_vehi_fld,nb_2_placa_fld,nb_3_tarjeta_fld,nb_3_fecha_ingreso_fld,nb_4_fecha_salida_fld,nb_1_tipotarifa_fld, nb_5_totalhoras_fld ,nb_6_valor_fld,nbd_id_user_fld)('9','0','GFC954','1',NULL,NULL,'1','0','0','1')