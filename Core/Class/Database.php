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
	Fecha modificacion	= 25-11-2016
	Usuario Modifico	= CAGC

*/
    include "Conexion.php";
    
    class Database{
        
        var $cx;
        var $db;
        
        function Database($host,$user,$password,$database){
            $this->cx=new Conexion($host,$user,$password,$database); 
        }
        
        function getsetupConfig(){
            $sql = "SELECT NB_SLOGAN_FLD,nb_versionbd_fld,nb_versionap_fld,nb_tarceSql_fld FROM nabu.NB_CONFIG_TBL";
            return $this->executeQueryOneRow($sql); 
        }
        
        function traceSql($codigo,$sql){
            
            $config=$this->getsetupConfig();
            $activarTrace =$config[3];
            
            if ($activarTrace == 'true')
                echo "<br> codigo =".$codigo." Sql=".$sql;
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
            $row = $result->FetchRow();

            $this->db=$this->cx->desconectar();
            return $row;
        }
        
        /************************************************************************************************************************************/
        
        function setInvoiceDeta($fact){
            $i=1;
            for ($i=1; $i<21; $i++){
                
                if ($linea < 9 )
                    $linea='0'.$i;
                else
                    $linea=$i;
                
                $sql ="insert into nb_detallef_tbl (factura) values('".$fact."-".$linea."')";
                $this->traceSql('',$sql);
                $this->execute($sql);
            }    
        }
        function getInvoiceNum(){
            $sql ="SELECT IFNULL(MAX(nb_fact_1_fld),0)+1 from nb_facturacion_tbl";
            $this->traceSql('',$sql);
            return $this->executeQueryOneRow($sql);
        }
        
        /************************************************************************************************************************************/
        
        function getEnterprise($enter){
            $sql ="select nb_host_fld,nb_db_fld,nb_user_fld,nb_pass_fld from nabu.nb_enterprise_tbl where nb_enterprise_id_fld='" .$enter. "'";
            $this->traceSql('1',$sql);
            return $this->executeQueryOneRow($sql);
        }
        
        function menu3($empresa,$papa2){
            $sql ="SELECT a.nb_parent_fld,a.nb_id_menu_fld FROM nabu.nb_navigation_tbl a WHERE a.nb_enterprise_id_fld='$empresa' and a.nb_sec_fld='$papa2'";
            $this->traceSql('2',$sql);
            return $this->executeQueryOneRow($sql);
        }
        function menu2($empresa,$id){
            $sql ="SELECT a.nb_parent_fld FROM nabu.nb_navigation_tbl a WHERE a.nb_enterprise_id_fld='$empresa' and a.nb_sec_fld='$id'";
            $this->traceSql('3',$sql);
            return $this->executeQueryOneRow($sql);
        }
        
        function menu1($empresa,$role){
            $sql = "SELECT a.nb_sec_fld id,a.nb_id_menu_fld menu,a.nb_parent_fld papa,a.nb_descr_men_fld descr,a.nb_image_fld image,a.nb_link_fld link,a.nb_target_fld target FROM   nabu.nb_navigation_tbl a, nabu.nb_role_pag_tbl b WHERE  a.nb_enterprise_id_fld = b.nb_enterprise_id_fld and a.nb_link_fld = b.nb_id_page_fld and b.nb_id_role_fld =" . $role . " and 	a.nb_enterprise_id_fld='" . $empresa . "' and 	a.nb_link_fld in (select nb_id_page_fld from nabu.nb_role_pag_tbl where nb_enterprise_id_fld='" . $empresa . "' and nb_id_role_fld = " . $role . ") order by a.nb_sec_fld";
            $this->traceSql('4',$sql);
            return $this->execute($sql);
        }
        
        function getMaxHijo($empresa, $papa){
            $sql = "SELECT MAX(A.NB_ID_MENU_FLD) FROM nabu.NB_NAVIGATION_TBL A WHERE A.nb_enterprise_id_fld='$empresa' AND A.NB_PARENT_FLD ='$papa'";
            $this->traceSql('5',$sql);
            return $this->executeQueryOneRow($sql);
        }
        
        function getMenuHijos($empresa, $id){
            $sql = "SELECT COUNT(1) FROM  nabu.NB_NAVIGATION_TBL A WHERE a.nb_enterprise_id_fld='$empresa' AND A.NB_PARENT_FLD='$id'";
            $this->traceSql('6',$sql);
            return $this->executeQueryOneRow($sql);   
        }
        
        function getGrid3($empresa,$type,$idPage,$col){
            $sql ="SELECT b.nb_property_fld,b.nb_type_fld,a.nb_value_fld FROM nabu.nb_datagridcol_tbl a , nabu.nb_config_frmwrk_tbl b WHERE  a.nb_enterprise_id_fld='$empresa' AND a.nb_config_frmwrk_id_fld = b.nb_config_frmwrk_id_fld and b.nb_config_type_fld='$type' and a.nb_id_page_fld = '$idPage' and a.nb_column_fld='$col'";
            $this->traceSql('7',$sql);
            return $this->execute($sql);
        }
        
        function getGrid2($empresa,$idPage){
            $sql ="Select distinct a.nb_column_fld from nabu.nb_datagridcol_tbl a where a.nb_id_page_fld = '$idPage'";
            $this->traceSql('8',$sql);
            return $this->execute($sql);
        }
        
        function getGrid1($empresa,$type,$idPage){
            $sql ="SELECT b.nb_property_fld,b.nb_type_fld,a.nb_value_fld FROM nabu.nb_datagrid_tbl a , nabu.nb_config_frmwrk_tbl b WHERE  a.nb_config_frmwrk_id_fld = b.nb_config_frmwrk_id_fld and a.nb_enterprise_id_fld='$empresa' AND b.nb_config_type_fld='$type' and a.nb_id_page_fld = '$idPage'";
            $this->traceSql('9',$sql);
            return $this->execute($sql);
        }
        
        function tableDataGrid($empresa,$idPage){
            $sql ="select nb_config_frmwrk_id_fld,nb_value_fld from nabu.nb_datagrid_tbl where nb_enterprise_id_fld='$empresa' AND nb_config_frmwrk_id_fld in (44,65) and nb_id_page_fld ='" . $idPage . "'";
            $this->traceSql('10',$sql);
            return $this->executeQueryOneRow($sql);
        }
        
        function getPromptSelect($empresa,$idpage,$field,$value){
            $sql ="SELECT nb_id_field_2_fld,Concat(Concat('Select ',nb_id_field_4_fld), ' from ',nb_id_table_fld, ' Where ',nb_id_field_3_fld,'=','".$value."')";
            $sql.=" FROM nabu.nb_event_tbl where nb_enterprise_id_fld ='".$empresa."' and nb_id_page_fld='".$idpage."' and nb_id_field_1_fld='".$field."'";
            $this->traceSql('11',$sql);
            return $this->executeQuery($sql); 
        }
        
        function executeSqlEvent($sql){
            $this->traceSql('12',$sql);
            return $this->execute($sql);
        }
        
        function getTables($empresa,$idPage){
            $sql ="SELECT distinct nb_id_table_fld FROM nabu.nb_form_tables_tbl where nb_enterprise_id_fld ='".$empresa."' and nb_id_page_fld ='" . $idPage . "'";
            $this->traceSql('13',$sql);
            return $this->executeQuery($sql);
        }
        
        function getFields($empresa,$idPage, $table){
           $sql ="SELECT nb_id_page_field_fld, nb_id_table_field_fld FROM nabu.nb_form_tables_tbl where nb_enterprise_id_fld ='".$empresa."' and nb_id_page_fld ='" . $idPage . "' and nb_id_table_fld = '" .$table. "'";
            $this->traceSql('14',$sql);
            return $this->executeQuery($sql);
        }
        
        function getTypes($empresa,$table, $field){
            $sql ="SELECT nb_type_fld FROM nabu.nb_table_fields_tbl where nb_enterprise_id_fld ='".$empresa."' and nb_id_fld ='" .$field. "' and nb_id_table_fld = '" .$table . "'";
            $this->traceSql('15',$sql);
            return $this->executeQueryOneRow($sql);   
        }
        
        function getViewParent($empresa,$idPage){
            $sql ="SELECT nb_page_view_pa_fld FROM nabu.nb_pages_tbl where nb_enterprise_id_fld='" . $empresa. "' and nb_id_page_fld ='" . $idPage . "'";
            $this->traceSql('16',$sql);
            return $this->executeQueryOneRow($sql);
        }
        
        function getDatavalueW($table, $field ,$where){
            $sql = "Select ".$field." from ".$table." ".$where;
            $this->traceSql('17',$sql);
            return $this->executeQueryOneRow($sql);             
        }
        
        function getDataValue($table, $field){
            $sql = "Select ".$field." from ".$table;
            $this->traceSql('18',$sql);
            return $this->executeQueryOneRow($sql); 
        }
        
        function getTableLink($empresa,$idPage){
            $sql ="select a.nb_id2_page_fld from nabu.nb_link_tbl a where nb_enterprise_id_fld='" . $empresa. "' and a.nb_id_page_fld = '" .$idPage . "'";
            $this->traceSql('19',$sql);
            return $this->executeQueryOneRow($sql); 
        }
        
        function getDataRecord($empresa,$idPage){
            $sql ="select a.nb_page_data_fld from nabu.nb_pages_tbl a where a.nb_id_page_fld = '" .$idPage . "' and nb_enterprise_id_fld='" . $empresa. "'";
            $this->traceSql('20',$sql);
            return $this->executeQueryOneRow($sql); 
        }    
        
        function ifCrypted($empresa,$tabla,$campo){
            $sql="select nb_crypted_fld from nabu.nb_table_fields_tbl where nb_enterprise_id_fld ='".$empresa."' and nb_id_table_fld ='".$tabla."' and nb_id_fld='".$campo."'";
            $this->traceSql('21',$sql);
            return $this->executeQueryOneRow($sql);
        }
        
        function getDataChange($empresa,$campo, $valor){
            $sql="select nb_id_value_fld from nabu.nb_value_tbl where nb_enterprise_id_fld ='".$empresa."' and nb_id_pr_schema_fld='".$campo."' and nb_value_fld='".$valor."'";
            $this->traceSql('22',$sql);
            return $this->executeQueryOneRow($sql);
        }
        
        function getKeyField($empresa,$tabla,$campo){
            $sql="SELECT COUNT(1) FROM nabu.NB_TABLE_FIELDS_TBL WHERE nb_enterprise_id_fld ='".$empresa."' and nb_id_table_fld='".$tabla."' AND NB_ID_FLD='".$campo."' AND NB_KEY_FLD='Y'";
            $this->traceSql('23',$sql);
            return $this->executeQueryOneRow($sql);
        }
        function getFieldsPage($empresa,$idPage){
            $sql ="SELECT B.NB_ID_FLD,A.nb_id_table_fld,B.NB_KEY_FLD FROM nabu.NB_FORM_TABLES_TBL A , nabu.NB_TABLE_FIELDS_TBL B WHERE  a.nb_enterprise_id_fld  = b.nb_enterprise_id_fld  and A.nb_id_table_fld = B.nb_id_table_fld";
            $sql =$sql." AND A.NB_ID_PAGE_FIELD_FLD = B.NB_ID_FLD AND A.nb_enterprise_id_fld ='".$empresa."' and A.nb_id_page_fld = '" .$idPage . "' ORDER BY A.nb_id_table_fld, B.NB_KEY_FLD  desc";
            $this->traceSql('24',$sql);
            return $this->executeQuery($sql);  
        }
        
        function getData($empresa,$idPage){
            $sql ="select nb_id_pr_schema_fld,a.nb_value_fld from nabu.nb_data_tbl a where nb_enterprise_id_fld ='".$empresa."' and a.nb_id_page_fld = '" .$idPage . "'";
            $this->traceSql('25',$sql);
            return $this->executeQuery($sql);
        }
        
        function nextSequence($empresa,$field){
            $sql ="Update nb_sequences_tbl set nb_value_fld=nb_value_fld+1 where nb_enterprise_id_fld ='".$empresa."' and nb_id_table_field_fld = '" .$field . "'";
            $this->traceSql('26',$sql);
            return $this->execute($sql);
        }
        
        function getSequence($empresa,$field){
            $sql ="select coalesce(max(nb_value_fld),0)+1 from nb_sequences_tbl where nb_enterprise_id_fld ='".$empresa."' and nb_id_table_field_fld = '" .$field . "'";
            $this->nextSequence($empresa,$field);
            $this->traceSql('27',$sql);
            return $this->executeQueryOneRow($sql); 
        }
        
        function getWizardQuery($empresa,$idPage){
            $sql = "SELECT NB_WIZARD_TITLE,NB_WIZARD_DESC,NB_WIZARD_SHOW_PROGRESS FROM nabu.NB_WIZARD_TBL WHERE nb_enterprise_id_fld='" . $empresa . "' and NB_ID_PAGE_FLD = '$idPage'";
            $this->traceSql('28',$sql);
            return $this->executeQuery($sql);
            
        }
        
        function getWizardStepsQuery($empresa,$idPage){
            $sql = "SELECT NB_WIZARD_STEP_TITLE, NB_WIZARD_STEP_DESC FROM nabu.NB_WIZARD_STEPS_TBL WHERE nb_enterprise_id_fld='" . $empresa . "' and NB_ID_PAGE_FLD = '$idPage' ORDER BY NB_ID_WIZARD_STEP ASC";
            $this->traceSql('29',$sql);
            return $this->executeQuery($sql);
            
        }
        
        function getWizardBindingsQuery($empresa,$idPage){
            $sql = "SELECT NB_ID_PR_SCHEMA_FLD, NB_ID_WIZARD_STEP FROM nabu.NB_WIZARD_BIND_TBL WHERE nb_enterprise_id_fld='" . $empresa . "' and NB_ID_PAGE_FLD = '$idPage' ORDER BY NB_ID_WIZARD_STEP_ORDER, NB_ID_WIZARD_STEP";
            $this->traceSql('30',$sql);
            return $this->executeQuery($sql);
        }
        
        function getWizardButtonQuery($empresa,$idPage){
            $sql = "SELECT NB_WIZARD_BUTTON_NAME, NB_WIZARD_BUTTON_TITLE, NB_WIZARD_BUTTON_VALIDATE, NB_WIZARD_BUTTON_CLICK FROM nabu.NB_WIZARD_BUTTONS_TBL WHERE nb_enterprise_id_fld='" . $empresa . "' and NB_ID_PAGE_FLD = '$idPage'";
            $this->traceSql('31',$sql);
            return $this->executeQuery($sql);   
        }
        
        function getValidateRole($empresa,$idRole, $idPage){
            $sql = "SELECT NB_ID_ROLE_FLD,NB_ID_PAGE_FLD FROM nabu.NB_ROLE_PAG_TBL WHERE nb_enterprise_id_fld='" . $empresa . "' and NB_ID_ROLE_FLD = $idRole AND NB_ID_PAGE_FLD = '$idPage'";
            $this->traceSql('32',$sql);
            return $this->executeQueryOneRow($sql);   
        }
        
        function getPageProperties($empresa,$idPage){
            $sql = "SELECT NB_PAGE_TITLE_FLD title,NB_PAGE_STYLE_FLD style,NB_PAGE_TRACE_FLD trace,NB_PAGE_TYPE_FLD tipo FROM nabu.NB_PAGES_TBL WHERE NB_ID_PAGE_FLD='".$idPage."' and nb_enterprise_id_fld='" .$empresa."'";;
            $this->traceSql('33',$sql);
            return $this->executeQueryOneRow($sql);   
        }
        
        function getPageAttribute($empresa,$idPage){
            $sql = "SELECT C.NB_ATTRIBUTE_FLD,C.NB_URL_FLD,C.NB_TYPE_FLD,C.NB_REL_FLD FROM nabu.nb_pages_tbl A,nabu.NB_PAGEATTRIBUTE_TBL B, nabu.NB_HTMLATTRIBUTE_TBL C WHERE   A.nb_type_page_fld = b.nb_type_page_fld AND B.NB_ID_ATTRIBUTE_FLD = C.NB_ID_ATTRIBUTE_FLD and	a.nb_enterprise_id_fld ='$empresa' AND 	a.NB_ID_PAGE_FLD ='$idPage' ORDER BY B.NB_ID_ATTRIBUTE_FLD ASC";
            $this->traceSql('34',$sql);
            return $this->executeQuery($sql);
        }
        
        function validateUser($empresa,$usuario,$password){
            $sql="SELECT nb_id_user_fld,nb_id_role_fld FROM nabu.nb_user_tbl WHERE nb_enterprise_id_fld ='".$empresa."'  AND nb_user_fld='".$usuario."' AND nb_password_fld='".md5($password)."' and nb_estado_fld='0' ";
            $this->traceSql('35',$sql);
            return $this->executeQueryOneRow($sql);
        }
        
        function getSchemaDescription($empresa,$idPage){
            $sql = "SELECT A.NB_TITLE_FLD, A.NB_DESCRIPTION_FLD, A.NB_TYPE_FLD FROM nabu.NB_SCHEMA_TBL A WHERE  A.nb_enterprise_id_fld ='".$empresa."' and A.NB_ID_PAGE_FLD = '$idPage'";
            $this->traceSql('36',$sql);
            return $this->executeQueryOneRow($sql);   
        }
        
        function getFormFields($empresa,$idPage, $type){
            $sql = "SELECT DISTINCT A.NB_ID_PR_SCHEMA_FLD FROM  nabu.NB_FORMS_TBL A , nabu.NB_CONFIG_FRMWRK_TBL B WHERE A.nb_enterprise_id_fld ='".$empresa."' and A.NB_CONFIG_FRMWRK_ID_FLD = B.NB_CONFIG_FRMWRK_ID_FLD AND  B.NB_CONFIG_TYPE_FLD='$type' AND A.NB_ID_PAGE_FLD = '$idPage'";
            $this->traceSql('37',$sql);
            return $this->executeQuery($sql);   
        }
        
        function getFormFieldsTypes($empresa,$idPage, $type, $field){
            $sql = "SELECT B.NB_PROPERTY_FLD,B.NB_TYPE_FLD,A.NB_SCHEM_VALUE_FLD FROM nabu.NB_FORMS_TBL A , nabu.NB_CONFIG_FRMWRK_TBL B WHERE A.nb_enterprise_id_fld ='".$empresa."' and A.NB_CONFIG_FRMWRK_ID_FLD = B.NB_CONFIG_FRMWRK_ID_FLD AND B.NB_CONFIG_TYPE_FLD='$type' AND A.NB_ID_PAGE_FLD = '$idPage' AND A.NB_ID_PR_SCHEMA_FLD ='$field'";
            $this->traceSql('38',$sql);
            return $this->executeQuery($sql);   
        }
        
        function getOptionsEvents($empresa,$idPage){
            $sql = "SELECT A.NB_TYPEALPACA_FLD ALPACA,CONCAT(CONCAT(A.NB_ACTION_PATH,A.NB_ACTION_FLD,'.php?p=$idPage&accion='),A.nb_typeaccion_fld) EVENT FROM nabu.NB_OPTION_TBL A WHERE nb_enterprise_id_fld ='".$empresa."' and A.NB_ID_PAGE_FLD = '$idPage'";
            $this->traceSql('39',$sql);
            return $this->executeQueryOneRow($sql);   
        }
        
        function getFormButtonsQuery($empresa,$idPage){
            $sql = "SELECT A.NB_ID_OPT_FORM_FLD,A.NB_VALUE_FLD,A.NB_TITLE_FLD,A.NB_CLICK_FLD FROM nabu.NB_OPTIONS_BUTTONS_TBL A WHERE A.nb_enterprise_id_fld ='".$empresa."' and A.NB_ID_PAGE_FLD = '$idPage'";
            $this->traceSql('40',$sql);
            return $this->executeQuery($sql);   
        }
        
        function getChartDataQuery($empresa,$idPage, $type){
            $sql = "SELECT NB_VALUE_FLD, NB_COLOR_FLD FROM nabu.NB_CHART_DATA_TBL WHERE nb_enterprise_id_fld ='".$empresa."' and NB_ID_PAGE_FLD = '$idPage' AND NB_TYPE_FLD='$type' ORDER BY NB_POS_FLD";
            $this->traceSql('41',$sql);
            return $this->executeQuery($sql);   
        }

        function getTablaChart($empresa,$idPage){
            $sql = "Select nb_source_fld tabla from nabu.nb_chart_tbl where nb_enterprise_id_fld ='".$empresa."' and nb_id_page_fld ='".$idPage."'";
            $this->traceSql('42',$sql);
            return $this->executeQueryOneRow($sql);   
        }
        
        function getLabelChart($empresa,$idPage){
            $sql = "Select nb_value_fld, nb_color_fld from nabu.nb_chart_data_tbl where nb_enterprise_id_fld ='".$empresa."' and nb_id_page_fld = '".$idPage."' and nb_type_fld='label' order by nb_pos_fld ";
            $this->traceSql('43',$sql);
            return $this->executeQueryOneRow($sql);
        }
        
        function getOptionsChart($empresa,$idPage){
            $sql = "Select nb_value_fld, nb_color_fld from nabu.nb_chart_data_tbl where nb_enterprise_id_fld ='".$empresa."' and nb_id_page_fld = '".$idPage."' and nb_type_fld='column' order by nb_pos_fld ";
            $this->traceSql('44',$sql);
            return $this->executeQuery($sql);
        }
         
        function getDataLabelChart($table,$label,$oprid){
            $sql = "Select $label from $table where label like '$oprid%'";
            $this->traceSql('45',$sql);
            return $this->executeQuery($sql);
        }
        
        function getDataChart($table,$field,$oprid){
            $sql = "Select replace($field,',','') from $table where label like '$oprid%'";
            $this->traceSql('46',$sql);
            return $this->executeQuery($sql);
        }
        
        function getPageLink($empresa,$idPage){
            $sql ="select a.nb_id_page_fld from nabu.nb_link_tbl a where nb_enterprise_id_fld ='".$empresa."' and a.nb_id2_page_fld = '" .$idPage . "'";
            $this->traceSql('47',$sql);
            return $this->executeQueryOneRow($sql); 
        }
            
    }
?>