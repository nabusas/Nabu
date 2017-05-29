<?php

/*
The MIT License (MIT)

Copyright (c) <2016> <Carlos Alberto Garcia Cobo - carlosgc4@gmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

	Fecha creacion		= 20-02-2015
	Desarrollador		= CAGC
	Fecha modificacion	= 24-05-2017
	Usuario Modifico	= CAGC

*/
    include "Conexion.php";
    
    class Database{
        
        var $cx;
        var $db;
        
        function Database($host,$user,$password,$database){
            $this->cx=new Conexion($host,$user,$password,$database); 
        }
        
        function conectar(){
            $this->cx->conectar();
        }
        
        function desconectar(){
            $this->cx->desconectar();
        }
        
        function execute($sql){
            $this->db=$this->cx->conectar();
            $result = $this->db->Execute($sql);
            $this->db=$this->cx->desconectar();
            return $result;
        }
            
        function executeQuery($sql){
            $this->db=$this->cx->conectar();
            $result = $this->db->Execute($sql);
            $this->db=$this->cx->desconectar();
            
            if (!isset($rows))
                $rows = array();
            
            if ($result){
                $i=0;

                while($row = $result->FetchRow()){
                    $rows[$i] = $row;
                    $i++;
                }
                
            }
                
            return $rows;
        }
        
        function executeQueryOneRow($sql){
            $this->db=$this->cx->conectar();
            $result = $this->db->Execute($sql);
            $rowResu = $result->FetchRow();
            $this->db=$this->cx->desconectar();
            return $rowResu;
        }
        
        function getSqlStatement($empresa,$id,$bind,$type){
            
            $sqlText="Select nb_sql_fld, nb_trace_fld from nabu.nb_sqlText_tbl where nb_enterprise_id_fld='".$empresa."' and nb_sql_id_fld='".$id."'";
            $sql=$this->executeQueryOneRow($sqlText);
            
            $sqlBinds=$sql[0];
            
            for ($i=0; $i<sizeof($bind); $i++)
                $sqlBinds=str_replace ("bind[".$i."]",$bind[$i],$sqlBinds);
            
            if ($sql[1] == 'true')
                echo "<br> codigo =".$id." Sql=".$sqlBinds;
            
            if (strlen($sqlBinds)>0){
                if ($type == '1')
                    return $this->executeQueryOneRow($sqlBinds);

                if ($type == '2')
                    return $this->executeQuery($sqlBinds);
            }
        }
        
        function getInvoiceNum($tabla,$campo){
            $sql ="SELECT IFNULL(MAX(CAST(".$campo." AS UNSIGNED INTEGER)),0)+1 from ".$tabla;
            return $this->executeQueryOneRow($sql);
        }
        
        function gridSave($empresa,$idpage){
            $sql ="SELECT a.nb_page_data_fld FROM nabu.nb_pages_tbl a WHERE a.nb_enterprise_id_fld='$empresa' and a.nb_id_page_fld='$idpage'";
            return $this->executeQueryOneRow($sql);
        }
        
        function menu3($empresa,$papa2){
            $sql ="SELECT a.nb_parent_fld,a.nb_id_menu_fld FROM nabu.nb_navigation_tbl a WHERE a.nb_enterprise_id_fld='$empresa' and a.nb_sec_fld='$papa2'";
            return $this->executeQueryOneRow($sql);
        }
        function menu2($empresa,$id){
            $sql ="SELECT a.nb_parent_fld FROM nabu.nb_navigation_tbl a WHERE a.nb_enterprise_id_fld='$empresa' and a.nb_sec_fld='$id'";
            return $this->executeQueryOneRow($sql);
        }
        
        function menu1($empresa,$role){
            $sql = "select a.nb_sec_fld id,a.nb_id_menu_fld menu,a.nb_parent_fld papa,a.nb_descr_men_fld descr,a.nb_image_fld image,a.nb_link_fld link,a.nb_target_fld target from   nabu.nb_navigation_tbl a, nabu.nb_role_pag_tbl b where  a.nb_enterprise_id_fld = b.nb_enterprise_id_fld and a.nb_link_fld = b.nb_id_page_fld and b.nb_id_role_fld =" . $role . " and 	a.nb_enterprise_id_fld='" . $empresa . "' and 	a.nb_link_fld in (select nb_id_page_fld from nabu.nb_role_pag_tbl where nb_enterprise_id_fld='" . $empresa . "' and nb_id_role_fld = " . $role . ") order by a.nb_sec_fld";
            return $this->execute($sql);
        }
        
        function getMaxHijo($empresa, $papa){
            $sql = "select max(a.nb_id_menu_fld) from nabu.nb_navigation_tbl a where a.nb_enterprise_id_fld='$empresa' and a.nb_parent_fld ='$papa'";
            return $this->executeQueryOneRow($sql);
        }
        
        function getMenuHijos($empresa, $id){
            $sql = "select count(1) from  nabu.nb_navigation_tbl a where a.nb_enterprise_id_fld='$empresa' and a.nb_parent_fld='$id'";
            return $this->executeQueryOneRow($sql);   
        }
        
        function getGridSaveOptions($empresa,$idpage){
            $sql ="SELECT nb_id_page_de_fld,nb_tab_cab_fld,nb_fie_cab_fld from nabu.nb_datagridopt_tbl a where a.nb_enterprise_id_fld='$empresa' and a.nb_id_page_fld = '$idpage'";
            return $this->executeQueryOneRow($sql);
        }
        
        function getGrid3($empresa,$type,$idpage,$col){
            $sql ="SELECT b.nb_property_fld,b.nb_type_fld,a.nb_value_fld FROM nabu.nb_datagridcol_tbl a , nabu.nb_config_frmwrk_tbl b WHERE  a.nb_enterprise_id_fld='$empresa' AND a.nb_config_frmwrk_id_fld = b.nb_config_frmwrk_id_fld and b.nb_config_type_fld='$type' and a.nb_id_page_fld = '$idpage' and a.nb_column_fld='$col'";            
            return $this->execute($sql);
        }
        
        function getGrid2($empresa,$idpage){
            $sql ="Select distinct a.nb_column_fld from nabu.nb_datagridcol_tbl a where a.nb_id_page_fld = '$idpage'";
            return $this->execute($sql);
        }
        
        function getGrid1($empresa,$type,$idpage){
            $sql ="SELECT b.nb_property_fld,b.nb_type_fld,a.nb_value_fld from nabu.nb_datagrid_tbl a , nabu.nb_config_frmwrk_tbl b where  a.nb_config_frmwrk_id_fld = b.nb_config_frmwrk_id_fld and a.nb_enterprise_id_fld='$empresa' AND b.nb_config_type_fld='$type' and a.nb_id_page_fld = '$idpage' AND a.nb_config_frmwrk_id_fld <>82";
            return $this->execute($sql);
        }
        
        function getGridHeader($empresa,$idpage){
            $sql ="SELECT a.nb_value_fld from nabu.nb_datagrid_tbl a where a.nb_enterprise_id_fld='$empresa' and a.nb_id_page_fld = '$idpage' AND a.nb_config_frmwrk_id_fld =82";
            return $this->executeQueryOneRow($sql);
        }
        
        function tableDataGrid($empresa,$idpage){
            $sql ="select nb_config_frmwrk_id_fld,nb_value_fld from nabu.nb_datagrid_tbl where nb_enterprise_id_fld='$empresa' AND nb_config_frmwrk_id_fld in (44,65) and nb_id_page_fld ='" . $idpage . "'";
            return $this->executeQueryOneRow($sql);
        }
        
        function getPromptSelect($empresa,$idpage,$field,$value){
            $sql ="SELECT nb_id_field_2_fld,Concat(Concat('Select ',nb_id_field_4_fld), ' from ',nb_id_table_fld, ' Where ',nb_id_field_3_fld,'=','\'".$value."\'')";
            $sql.=" FROM nabu.nb_event_tbl where nb_enterprise_id_fld ='".$empresa."' and nb_id_page_fld='".$idpage."' and nb_id_field_1_fld='".$field."'";
            return $this->executeQuery($sql); 
        }
        
        function executeSqlEvent($sql){
            return $this->execute($sql);
        }
        
        function getTables($empresa,$idpage){
            $sql ="SELECT distinct nb_id_table_fld FROM nabu.nb_form_tables_tbl where nb_enterprise_id_fld ='".$empresa."' and nb_id_page_fld ='" . $idpage . "' and  nb_id_table_fld not like '%_vw'";
            return $this->executeQuery($sql);
        }
        
        function getFields($empresa,$idpage, $table){
           $sql ="SELECT nb_id_page_field_fld, nb_id_table_field_fld FROM nabu.nb_form_tables_tbl where nb_enterprise_id_fld ='".$empresa."' and nb_id_page_fld ='" . $idpage . "' and nb_id_table_fld = '" .$table. "'";
            return $this->executeQuery($sql);
        }
        
        function getTypes($empresa,$table, $field){
            $sql ="SELECT nb_type_fld from nabu.nb_table_fields_tbl where nb_enterprise_id_fld ='".$empresa."' and nb_id_fld ='" .$field. "' and nb_id_table_fld = '" .$table . "'";
            return $this->executeQueryOneRow($sql);   
        }
        
        function getViewParent($empresa,$idpage){
            $sql ="SELECT nb_page_view_pa_fld from nabu.nb_pages_tbl where nb_enterprise_id_fld='" . $empresa. "' and nb_id_page_fld ='" . $idpage . "'";
            return $this->executeQueryOneRow($sql);
        }
        
        function getDatavalueW($table, $field ,$where){
            $sql = "Select ".$field." from ".$table." ".$where;
            return $this->executeQueryOneRow($sql);             
        }
        
        function getDataValue($table, $field){
            $sql = "Select ".$field." from ".$table;
            return $this->executeQueryOneRow($sql); 
        }
        
        function getPageLink($empresa,$idpage){
            $sql ="select a.nb_id2_page_fld from nabu.nb_link_tbl a where nb_enterprise_id_fld='" . $empresa. "' and a.nb_id_page_fld = '" .$idpage . "'";
            return $this->executeQueryOneRow($sql); 
        }
        
        function getDataRecord($empresa,$idpage){
            $sql ="select a.nb_page_data_fld from nabu.nb_pages_tbl a where a.nb_id_page_fld = '" .$idpage . "' and nb_enterprise_id_fld='" . $empresa. "'";
            return $this->executeQueryOneRow($sql); 
        }    
        
        function ifCrypted($empresa,$tabla,$campo){
            $sql="select nb_crypted_fld from nabu.nb_table_fields_tbl where nb_enterprise_id_fld ='".$empresa."' and nb_id_table_fld ='".$tabla."' and nb_id_fld='".$campo."'";
            return $this->executeQueryOneRow($sql);
        }
        
        function getDataChange($empresa,$campo, $valor){
            $sql="select nb_id_value_fld from nabu.nb_value_tbl where nb_enterprise_id_fld ='".$empresa."' and nb_id_pr_schema_fld='".$campo."' and nb_value_fld='".$valor."'";
            return $this->executeQueryOneRow($sql);
        }
        
        function getKeyField($empresa,$tabla,$campo){
            $sql="select count(1) from nabu.nb_table_fields_tbl where nb_enterprise_id_fld ='".$empresa."' and nb_id_table_fld='".$tabla."' and nb_id_fld='".$campo."' and nb_key_fld='y'";
            return $this->executeQueryOneRow($sql);
        }
        
        function getFieldsPage($empresa,$idpage,$tipoTabla){
            $sql ="select b.nb_id_fld,a.nb_id_table_fld,b.nb_key_fld from nabu.nb_form_tables_tbl a , nabu.nb_table_fields_tbl b where  a.nb_enterprise_id_fld  = b.nb_enterprise_id_fld  and a.nb_id_table_fld = b.nb_id_table_fld";
            $sql =$sql." and a.nb_id_page_field_fld = b.nb_id_fld and a.nb_enterprise_id_fld ='".$empresa."' and a.nb_id_page_fld = '" .$idpage . "' ";
            $sql =$sql." and  a.nb_id_table_fld not like '%_".$tipoTabla."' order by a.nb_id_table_fld, b.nb_key_fld  desc";
            return $this->executeQuery($sql);  
        }
        
        function getData($empresa,$idpage){
            $sql ="select nb_id_pr_schema_fld,a.nb_value_fld from nabu.nb_data_tbl a where nb_enterprise_id_fld ='".$empresa."' and a.nb_id_page_fld = '" .$idpage . "'";
            return $this->executeQuery($sql);
        }
        
        function nextSequence($empresa,$field){
            $sql ="Update nb_sequences_tbl set nb_value_fld=nb_value_fld+1 where nb_enterprise_id_fld ='".$empresa."' and nb_id_table_field_fld = '" .$field . "'";
            return $this->execute($sql);
        }
        
        function getSequence($empresa,$field){
            $sql ="select coalesce(max(nb_value_fld),0)+1 from nb_sequences_tbl where nb_enterprise_id_fld ='".$empresa."' and nb_id_table_field_fld = '" .$field . "'";
            $this->nextSequence($empresa,$field);
            return $this->executeQueryOneRow($sql); 
        }
        
        function getWizardQuery($empresa,$idpage){
            $sql = "select nb_wizard_title,nb_wizard_desc,nb_wizard_show_progress from nabu.nb_wizard_tbl where nb_enterprise_id_fld='" . $empresa . "' and nb_id_page_fld = '$idpage'";
            return $this->executeQuery($sql);
        }
        
        function getWizardStepsQuery($empresa,$idpage){
            $sql = "select nb_wizard_step_title, nb_wizard_step_desc from nabu.nb_wizard_steps_tbl where nb_enterprise_id_fld='" . $empresa . "' and nb_id_page_fld = '$idpage' order by nb_id_wizard_step asc";
            return $this->executeQuery($sql);
        }
        
        function getWizardBindingsQuery($empresa,$idpage){
            $sql = "select nb_id_pr_schema_fld, nb_id_wizard_step from nabu.nb_wizard_bind_tbl where nb_enterprise_id_fld='" . $empresa . "' and nb_id_page_fld = '$idpage' order by nb_id_wizard_step_order, nb_id_wizard_step";
            return $this->executeQuery($sql);
        }
        
        function getWizardButtonQuery($empresa,$idpage){
            $sql = "select nb_wizard_button_name, nb_wizard_button_title, nb_wizard_button_validate, nb_wizard_button_click from nabu.nb_wizard_buttons_tbl where nb_enterprise_id_fld='" . $empresa . "' and nb_id_page_fld = '$idpage'";
            return $this->executeQuery($sql);   
        }
        
        function getValidateRole($empresa,$idRole, $idpage){
            $sql = "select nb_id_role_fld,nb_id_page_fld from nabu.nb_role_pag_tbl where nb_enterprise_id_fld='" . $empresa . "' and nb_id_role_fld = $idRole and nb_id_page_fld = '$idpage'";
            return $this->executeQueryOneRow($sql);   
        }
        
        function getPageProperties($empresa,$idpage){
            $sql = "select nb_page_title_fld title,nb_page_style_fld style,nb_page_trace_fld trace,nb_page_type_fld tipo from nabu.nb_pages_tbl where nb_id_page_fld='".$idpage."' and nb_enterprise_id_fld='" .$empresa."'";;
            return $this->executeQueryOneRow($sql);   
        }
        
        function getPageAudit($empresa,$idpage){
            $sql = "select nb_audit_fld audit from nabu.nb_pages_tbl where nb_id_page_fld='".$idpage."' and nb_enterprise_id_fld='" .$empresa."'";;
            return $this->executeQueryOneRow($sql);   
        }
        
        function getPageAttribute($empresa,$idpage){
            $sql = "select c.nb_attribute_fld,c.nb_url_fld,c.nb_type_fld,c.nb_rel_fld from nabu.nb_pages_tbl a,nabu.nb_pageattribute_tbl b, nabu.nb_htmlattribute_tbl c where   a.nb_type_page_fld = b.nb_type_page_fld and b.nb_id_attribute_fld = c.nb_id_attribute_fld and	a.nb_enterprise_id_fld ='$empresa' and 	a.nb_id_page_fld ='$idpage' order by b.nb_id_attribute_fld asc";
            return $this->executeQuery($sql);
        }
        
        function validateUser($empresa,$usuario,$password){
            $sql="SELECT nb_id_user_fld,nb_id_role_fld from nabu.nb_user_tbl WHERE nb_enterprise_id_fld ='".$empresa."'  AND nb_user_fld='".$usuario."' AND nb_password_fld='".md5($password)."' and nb_estado_fld='0' ";
            return $this->executeQueryOneRow($sql);
        }
        
        function getSchemaDescription($empresa,$idpage){
            $sql = "select a.nb_title_fld, a.nb_description_fld, a.nb_type_fld from nabu.nb_schema_tbl a where  a.nb_enterprise_id_fld ='".$empresa."' and a.nb_id_page_fld = '$idpage'";
            return $this->executeQueryOneRow($sql);   
        }

	   function getPostrender($empresa,$idpage){
            $sql = "select a.nb_postrender_fld from nabu.nb_pages_tbl a where  a.nb_enterprise_id_fld ='".$empresa."' and a.nb_id_page_fld = '$idpage'";
            return $this->executeQueryOneRow($sql);   
        }
        
        function getFormFields($empresa,$idpage, $type){
            $sql = "select distinct a.nb_id_pr_schema_fld from  nabu.nb_forms_tbl a , nabu.nb_config_frmwrk_tbl b where a.nb_enterprise_id_fld ='".$empresa."' and a.nb_config_frmwrk_id_fld = b.nb_config_frmwrk_id_fld and  b.nb_config_type_fld='$type' and a.nb_id_page_fld = '$idpage'";
            return $this->executeQuery($sql);   
        }
        
        function getFormFieldsTypes($empresa,$idpage, $type, $field){
            $sql = "select b.nb_property_fld,b.nb_type_fld,a.nb_schem_value_fld from nabu.nb_forms_tbl a , nabu.nb_config_frmwrk_tbl b where a.nb_enterprise_id_fld ='".$empresa."' and a.nb_config_frmwrk_id_fld = b.nb_config_frmwrk_id_fld and b.nb_config_type_fld='$type' and a.nb_id_page_fld = '$idpage' and a.nb_id_pr_schema_fld ='$field'";
            return $this->executeQuery($sql);   
        }
        
        function getOptionsEvents($empresa,$idpage){
            $sql = "select a.nb_typealpaca_fld alpaca,concat(concat(a.nb_action_path,a.nb_action_fld,'.php?p=$idpage&accion='),a.nb_typeaccion_fld) event , a.nb_target_fld target from nabu.nb_option_tbl a where nb_enterprise_id_fld ='".$empresa."' and a.nb_id_page_fld = '$idpage'";
            return $this->executeQueryOneRow($sql);   
        }
        
        function getFormButtonsQuery($empresa,$idpage){
            $sql = "select a.nb_id_opt_form_fld,a.nb_value_fld,a.nb_title_fld,a.nb_click_fld,nb_styles_fld from nabu.nb_options_buttons_tbl a where a.nb_enterprise_id_fld ='".$empresa."' and a.nb_id_page_fld = '$idpage'";
            return $this->executeQuery($sql);   
        }
        
        function getChartDataQuery($empresa,$idpage, $type){
            $sql = "select nb_value_fld, nb_color_fld from nabu.nb_chart_data_tbl where nb_enterprise_id_fld ='".$empresa."' and nb_id_page_fld = '$idpage' and nb_type_fld='$type' order by nb_pos_fld";
            return $this->executeQuery($sql);   
        }

        function getTablaChart($empresa,$idpage){
            $sql = "select nb_source_fld tabla from nabu.nb_chart_tbl where nb_enterprise_id_fld ='".$empresa."' and nb_id_page_fld ='".$idpage."'";
            return $this->executeQueryOneRow($sql);   
        }
        
        function getLabelChart($empresa,$idpage){
            $sql = "select nb_value_fld, nb_color_fld from nabu.nb_chart_data_tbl where nb_enterprise_id_fld ='".$empresa."' and nb_id_page_fld = '".$idpage."' and nb_type_fld='label' order by nb_pos_fld ";
            return $this->executeQueryOneRow($sql);
        }
        
        function getOptionsChart($empresa,$idpage){
            $sql = "select nb_value_fld, nb_color_fld from nabu.nb_chart_data_tbl where nb_enterprise_id_fld ='".$empresa."' and nb_id_page_fld = '".$idpage."' and nb_type_fld='column' order by nb_pos_fld ";
            return $this->executeQuery($sql);
        }
         
        function getDataLabelChart($table,$label,$oprid){
            if ($oprid == 'N')
                $sql = "select $label from $table";
            else
                $sql = "select $label from $table where label like '$oprid%'";
            
            return $this->executeQuery($sql);
        }
        
        function getDataChart($table,$field,$oprid){
            if ($oprid == 'N')
                $sql = "Select replace($field,',','') from $table";
            else
            $sql = "Select replace($field,',','') from $table where label like '$oprid%'";
            return $this->executeQuery($sql);
        }
        
        function existRefValue($empresa,$campo){
            $sql ="select count(1) from nabu.nb_value_ref_tbl where nb_enterprise_id_fld ='".$empresa."' and nb_id_pr_schema_fld ='".$campo."'";
            return $this->executeQueryOneRow($sql); 
        }
        
        function valueRef($empresa,$campo){
            $sql ="select nb_id_table_fld,nb_empresa_fld,nb_usuario_fld,nb_estado_fld,nb_role_fld from nabu.nb_value_ref_tbl where nb_enterprise_id_fld ='".$empresa."' and nb_id_pr_schema_fld ='".$campo."'";
            return $this->executeQueryOneRow($sql); 
        }
        
        function reportPdf($empresa,$idpage){
            $sql = "select nb_report_id_fld from nabu.nb_reports_tbl where nb_enterprise_id_fld ='".$empresa."' and nb_id_page_fld = '".$idpage."'";
            return $this->executeQueryOneRow($sql);
        }
    }
?>