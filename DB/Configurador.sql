select nb_id_page_fld from nb_pages_tbl

insert into nb_navigation_tbl
select  'nb_usuarios_pg',nb_sec_fld,nb_parent_fld,nb_id_menu_fld,nb_descr_men_fld,nb_link_fld,nb_image_fld,nb_target_fld
from 	nb_navigation_tbl
where	nb_id_page_fld='home'


insert  into nb_forms_tbl
SELECT	'nb_usuarios_pg',nb_id_pr_schema_fld,nb_config_frmwrk_id_fld,nb_schem_value_fld
FROM	nb_forms_tbl
where	nb_id_page_fld = 'nb_tarifas_pg'
and		nb_id_pr_schema_fld='nb_1_tipotarifa_fld'