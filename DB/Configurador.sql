##	PAGINAS DE LA APLICACION
select nb_id_page_fld from nb_pages_tbl

##	ATRIBUTOS POR PAGINAS
insert  nb_pageattribute_tbl 
select	'nb_login_pg', nb_id_attribute_fld
from	nb_pageattribute_tbl
where	nb_id_page_fld='nb_reporte_total_pg'


##	NAVEGACION

delete from nb_navigation_tbl where	nb_id_page_fld<>'home';

insert into nb_navigation_tbl
select  'nb_usuariosv_pg',nb_sec_fld,nb_parent_fld,nb_id_menu_fld,nb_descr_men_fld,nb_link_fld,nb_image_fld,nb_target_fld
from 	nb_navigation_tbl
where	nb_id_page_fld='home'



##	CAMPOS
insert  into nb_forms_tbl
SELECT	'nb_usuarios_pg',nb_id_pr_schema_fld,nb_config_frmwrk_id_fld,nb_schem_value_fld
FROM	nb_forms_tbl
where	nb_id_page_fld = 'nb_tarifas_pg'
and		nb_id_pr_schema_fld='nb_1_tipotarifa_fld'

SELECT DISTINCT nb_id_pr_schema_fld
FROM 	nb_forms_tbl
WHERE   nb_id_page_fld = 'nb_usuarios_pg'

##	CONFIGURACION DE LAS GRILLAS

insert into nb_datagrid_tbl
SELECT	'nb_usuariosv_pg',nb_config_frmwrk_id_fld, case when nb_config_frmwrk_id_fld = 37 then 'Usuarios' when nb_config_frmwrk_id_fld = 44 then 'nbd_user_tbl' else  nb_value_fld end end 
FROM 	nb_datagrid_tbl
where	nb_id_page_fld='nb_monitoreo_pg'


##	COLUMNAS DE LAS GRILLAS
insert    into nb_datagridcol_tbl
SELECT	'nb_monitoreo_pg',9,nb_config_frmwrk_id_fld, 
		case when nb_config_frmwrk_id_fld = 45  then 'Usuario' when nb_config_frmwrk_id_fld = 46  then 'nbd_id_user_fld' else nb_value_fld end end 
FROM		nb_datagridcol_tbl
WHERE	nb_column_fld='9'

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
		A.nb_5_tiempoG_fld as 'Tiempo Gratis'
FROM 	NB_TARIFAS_TBL A

##	USUARIOS DE NOMINA

CREATE OR REPLACE VIEW nb_usuariosClientes_vw AS
SELECT	(SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_tipodoc_fld' AND NB_ID_VALUE_FLD=nb_tipodoc_fld) as 'Tipo Documento',
		nb_numerodoc_fld as Documento,
		nb_nombre_fld as Nombre,
		(SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_1_tipo_vehi_fld' AND NB_ID_VALUE_FLD=nb_1_tipo_vehi_fld)  as 'Tipo Vehiculo',
		nb_2_placa_fld as 'Placa 1',
		nb_3_placa_fld as 'Placa 2',
		nb_4_placa_fld as 'Placa 3'		
FROM 	NB_USUARIOSR_TBL A

##	USUARIOS DEL SISTEMA

CREATE OR REPLACE VIEW nb_login_vw as
SELECT	NBD_DESCR_FLD as Usuario, NBD_EMAIL_FLD as Login
FROM 	NBD_USER_TBL

