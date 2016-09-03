


CREATE OR REPLACE VIEW nb_cobrosm_vw
AS 
SELECT
   date_format(a.nb_4_fecha_salida_fld,'%Y-%m') AS Fecha,
   (select nb_value_tbl.nb_value_fld FROM nb_value_tbl where ((nb_value_tbl.nb_id_pr_schema_fld = 'nb_1_tipo_vehi_fld') and (nb_value_tbl.nb_id_value_fld = a.nb_1_tipo_vehi_fld))) AS tipo,
   (select nb_value_tbl.nb_value_fld from nb_value_tbl where ((nb_value_tbl.nb_id_pr_schema_fld = 'nb_1_tipotarifa_fld') and (nb_value_tbl.nb_id_value_fld = a.nb_1_tipotarifa_fld))) AS tarifa,
   count(1) AS Vehiculos,
   concat('$',format(sum(a.nb_6_valor_fld),0)) AS Valor 
   from nb_control_tbl a 
   where ((a.nb_4_fecha_salida_fld <> 'NULL') 
   and (a.nb_1_tipotarifa_fld not in (0,1)) 
   and (a.nb_estado_fld = 2)) 
   group by 
   
   date_format(a.nb_4_fecha_salida_fld,'%Y-%m'),
   	(select nb_value_tbl.nb_value_fld from nb_value_tbl where ((nb_value_tbl.nb_id_pr_schema_fld = 'nb_1_tipo_vehi_fld') and (nb_value_tbl.nb_id_value_fld = a.nb_1_tipo_vehi_fld))),
   	(select nb_value_tbl.nb_value_fld from nb_value_tbl where ((nb_value_tbl.nb_id_pr_schema_fld = 'nb_1_tipotarifa_fld') and (nb_value_tbl.nb_id_value_fld = a.nb_1_tipotarifa_fld))) 
   	
