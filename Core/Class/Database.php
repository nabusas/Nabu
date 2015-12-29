<?php

/*
The MIT License (MIT)

Copyright (c) <2015> <Gabriel Asakawa - gabriel.asakawa@gmail.com>

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
	Fecha modificacion	= 29-12-2015
	Usuario Modifico	= CAGC

*/

    include_once "Conexion.php";

    class Database{
        
        var $cx;
        var $db;
        
        function Database(){
            $this->cx=new Conexion();   
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
            $i = 0;
            while($row = $result->FetchRow()){
                $rows[$i] = $row;
                $i++;
            }

            $this->db=$this->cx->desconectar();
            return $rows;
        }
        
        function executeQueryOneRow($sql){
            $this->db=$this->cx->conectar();
            $result = $this->db->Execute($sql);
            $i = 0;
            $row = $result->FetchRow();

            $this->db=$this->cx->desconectar();
            return $row;
        }
        
        function fechasControl($placa){
            $sql ="select nb_3_fecha_ingreso_fld from nb_control_tbl where nb_2_placa_fld='".$placa."'";
            $sql =$sql." AND  nb_3_fecha_ingreso_fld=(SELECT MAX(nb_3_fecha_ingreso_fld) FROM nb_control_tbl WHERE nb_2_placa_fld='".$placa."')";
            return $this->executeQueryOneRow($sql); 
        }
        
        function tarifaControlDB($placa){
            $sql ="select ifnull(nb_1_tipotarifa_fld,2),ifnull((SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_1_tipotarifa_fld' AND NB_ID_VALUE_FLD=nb_1_tipotarifa_fld),'Normal'),count(1)";
            $sql =$sql." from nb_control_tbl"; 
            $sql =$sql." where nb_2_placa_fld='".$placa."'";
            $sql =$sql." AND  nb_3_fecha_ingreso_fld=(SELECT MAX(nb_3_fecha_ingreso_fld) FROM nb_control_tbl WHERE nb_2_placa_fld='".$placa."')";
            return $this->executeQueryOneRow($sql); 
        }
        
        function tarifaControl($placa){
            $sql ="select ifnull(nb_1_tipotarifa_fld,2),ifnull((SELECT NB_VALUE_FLD FROM NB_VALUE_TBL WHERE nb_id_pr_schema_fld = 'nb_1_tipotarifa_fld' AND NB_ID_VALUE_FLD=nb_1_tipotarifa_fld),'Normal'),count(1)";
            $sql =$sql." from nb_usuariosr_tbl"; 
            $sql =$sql." where (nb_2_placa_fld='".$placa."' or nb_3_placa_fld='".$placa."' or nb_4_placa_fld='".$placa."')";
            return $this->executeQueryOneRow($sql); 
        }
        
        function tarjRepControl($tarjeta){
            $sql ="select count(1) from nb_control_tbl where nb_4_fecha_salida_fld is NULL and nb_3_tarjeta_fld=".$tarjeta;
            return $this->executeQueryOneRow($sql); 
        }
        
        function validaSalida($placa,$tarjeta){
            $sql ="select count(1) from nb_control_tbl where nb_4_fecha_salida_fld is NULL and (nb_3_tarjeta_fld=".$tarjeta;
            $sql =$sql." or nb_2_placa_fld='".$placa."') and nb_1_tipotarifa_fld=2";
            return $this->executeQueryOneRow($sql); 
        }
        
        function tipoControl($tipo){
            
            $sql ="select nb_value_fld from nb_value_tbl where nb_id_pr_schema_fld='nb_1_tipo_vehi_fld' and nb_id_value_fld=".$tipo;
            return $this->executeQueryOneRow($sql); 
        }
        
        function dataTarifa ($tipo,$tarifa,$cobro){
            $sql ="SELECT nb_4_valor_fld,nb_5_tiempoG_fld FROM nb_tarifas_tbl where nb_1_tipotarifa_fld=".$tarifa." and nb_1_tipo_vehi_fld=".$tipo." and nb_3_tipocobro_fld=".$cobro;
            
            return $this->executeQueryOneRow($sql); 
        }
        
        function updtCosto($placa,$valor){
            $sql =" Update nb_control_tbl set nb_6_valor_fld=".$valor." where nb_2_placa_fld='".$placa."' and nb_6_valor_fld=-1";
            return $this->execute($sql);
        }
        
        function tiempoGracia($tarifa,$tipo){
            $sql ="select ifnull(nb_6_tiempoS_fld,0) from nb_tarifas_tbl where nb_1_tipotarifa_fld=".$tarifa;
            $sql =$sql." and nb_1_tipo_vehi_fld=".$tipo;
            return $this->executeQueryOneRow($sql); 
        }
        
        function validaGracia($placa,$tiempoG){
            $sql ="select  COUNT(1) from nb_control_tbl where nb_2_placa_fld='".$placa."'";
            $sql =$sql." AND nb_4_fecha_salida_fld=(SELECT MAX(nb_4_fecha_salida_fld) FROM nb_control_tbl";
            $sql =$sql." WHERE nb_2_placa_fld='".$placa."')";
            $sql =$sql." AND NOW() < DATE_ADD(nb_4_fecha_salida_fld, interval ".$tiempoG." MINUTE)";
            return $this->executeQueryOneRow($sql); 
        }
        
        function tarjControl($placa){
            $sql ="select nb_3_tarjeta_fld from nb_control_tbl where nb_2_placa_fld='".$placa."'";
            $sql =$sql." AND  nb_3_fecha_ingreso_fld=(SELECT MAX(nb_3_fecha_ingreso_fld) FROM nb_control_tbl WHERE nb_2_placa_fld='".$placa."')";
            return $this->executeQueryOneRow($sql); 
        }
        function timeControl($placa){
            
            $sql ="select nb_5_totalhoras_fld from nb_control_tbl where nb_2_placa_fld='".$placa."'";
            $sql =$sql." AND  nb_3_fecha_ingreso_fld=(SELECT MAX(nb_3_fecha_ingreso_fld) FROM nb_control_tbl WHERE nb_2_placa_fld='".$placa."')";
            return $this->executeQueryOneRow($sql); 
        }
        function updtControl($placa,$fecha){
            
            $sql ="Update nb_control_tbl set nb_4_fecha_salida_fld='".$fecha."',"; 
            $sql =$sql." nb_5_totalhoras_fld=ABS(TIMESTAMPDIFF(MINUTE, nb_3_fecha_ingreso_fld,nb_4_fecha_salida_fld)), nb_6_valor_fld=-1";
            $sql =$sql." where nb_2_placa_fld='".$placa."' and nb_4_fecha_salida_fld IS NULL";
            return $this->execute($sql);
        }
        function verifiControl($placa){
            
            $sql ="select COUNT(1) from nb_control_tbl where nb_2_placa_fld='".$placa."' and nb_4_fecha_salida_fld IS NULL";
            return $this->executeQueryOneRow($sql); 
        }
        
        function mas1Mensual($placa){
            $sql ="SELECT count(1) FROM nb_control_tbl WHERE  nb_4_fecha_salida_fld IS NULL ";
            $sql =$sql." AND nb_2_placa_fld=(SELECT nb_2_placa_fld FROM NB_USUARIOSR_TBL WHERE NB_1_TIPOTARIFA_FLD=1 AND (nb_2_placa_fld='".$placa."' OR nb_3_placa_fld='".$placa."'  OR nb_4_placa_fld='".$placa."' )) ";
            $sql =$sql." OR nb_2_placa_fld=(SELECT nb_3_placa_fld FROM NB_USUARIOSR_TBL WHERE NB_1_TIPOTARIFA_FLD=1 AND (nb_2_placa_fld='".$placa."' OR nb_3_placa_fld='".$placa."'  OR nb_4_placa_fld='".$placa."' )) ";
            $sql =$sql." OR nb_2_placa_fld=(SELECT nb_4_placa_fld FROM NB_USUARIOSR_TBL WHERE NB_1_TIPOTARIFA_FLD=1 AND (nb_2_placa_fld='".$placa."' OR nb_3_placa_fld='".$placa."'  OR nb_4_placa_fld='".$placa."' )) ";

            return $this->executeQueryOneRow($sql); 
        }
        function insertControl($tipo,$placa,$tarjeta,$fecha,$tarifa,$oprid){
            
            $sql = "INSERT INTO NB_CONTROL_TBL (";
            $campos = "nb_id_fld,nb_1_tipo_vehi_fld,nb_2_placa_fld,nb_3_tarjeta_fld,nb_3_fecha_ingreso_fld,nb_4_fecha_salida_fld,nb_1_tipotarifa_fld, nb_5_totalhoras_fld ,nb_6_valor_fld,nbd_id_user_fld)VALUES(";
            $valores="nb_id_fld,".$tipo.",'".$placa."',".$tarjeta.",'".$fecha."',NULL,".$tarifa.",0,0,'".$oprid."')";
                
            $sql=$sql.$campos.$valores;
            
            return $this->execute($sql);
        }
        
        function saveData($table,$fieldsTable,$fieldsValues){
            $sql = "INSERT INTO " .$table. "(" . $fieldsTable . ") VALUES(" . $fieldsValues . ")";
            
            $fin =',)';$correccionF=')';
            $sql=str_replace($fin,$correccionF,$sql);
            return $this->execute($sql);
        }
        
        function getTables($idPage){
            $sql ="SELECT distinct nb_id_table_fld FROM nb_form_tables_tbl where nb_id_page_fld ='" . $idPage . "'";
            return $this->executeQuery($sql);
        }
        
        function getFields($idPage, $table){
           $sql ="SELECT nb_id_page_field_fld, nb_id_table_field_fld FROM nb_form_tables_tbl where nb_id_page_fld ='" . $idPage . "' and nb_id_table_fld = '" .$table. "'";
            return $this->executeQuery($sql);
        }
        
        function getTypes($table, $field){
            $sql ="SELECT nb_type_fld FROM nb_table_fields_tbl where nb_id_fld ='" .$field. "' and nb_id_table_fld = '" .$table . "'";
            return $this->executeQueryOneRow($sql);   
        }
        
        function getViewParent($idPage){
            $sql ="SELECT nb_page_view_pa_fld FROM nb_pages_tbl where nb_id_page_fld ='" . $idPage . "'";
            return $this->executeQueryOneRow($sql);
        }
        
        function getDataValue($table, $field){
            $sql = "Select ".$field." from ".$table."";
            return $this->executeQueryOneRow($sql); 
        }
        
        function getDataRecord($idPage){
            $sql ="select a.nb_page_data_fld from nb_pages_tbl a where a.nb_id_page_fld = '" .$idPage . "'";
            return $this->executeQueryOneRow($sql); 
        }    
        
        function getDataFields($table){
            $sql ="describe " .$table;
            return $this->execute($sql);
        }
            
        function getData($idPage){
            $sql ="select nb_id_pr_schema_fld,a.nb_value_fld from nb_data_tbl a where a.nb_id_page_fld = '" .$idPage . "'";
            return $this->executeQuery($sql);
        }
        
        function nextSequence($field){
            $sql ="Update nb_sequences_tbl set nb_value_fld=nb_value_fld+1 where nb_id_table_field_fld = '" .$field . "'";
            return $this->execute($sql);
        }
        
        function getSequence($field){
            $sql ="select coalesce(max(nb_value_fld),0)+1 from nb_sequences_tbl where nb_id_table_field_fld = '" .$field . "'";
            $this->nextSequence($field);
            return $this->executeQueryOneRow($sql); 
        }
        
        function getWizardQuery($idPage){
            $sql = " SELECT NB_WIZARD_TITLE,NB_WIZARD_DESC,NB_WIZARD_SHOW_PROGRESS FROM NB_WIZARD_TBL WHERE NB_ID_PAGE_FLD = '$idPage'";
            return $this->executeQuery($sql);
            
        }
        
        function getWizardStepsQuery($idPage){
            $sql = "SELECT NB_WIZARD_STEP_TITLE, NB_WIZARD_STEP_DESC FROM NB_WIZARD_STEPS_TBL WHERE NB_ID_PAGE_FLD = '$idPage' ORDER BY NB_ID_WIZARD_STEP ASC";
            return $this->executeQuery($sql);
            
        }
        
        function getWizardBindingsQuery($idPage){
            $sql = "SELECT NB_ID_PR_SCHEMA_FLD, NB_ID_WIZARD_STEP FROM NB_WIZARD_BIND_TBL WHERE NB_ID_PAGE_FLD = '$idPage' ORDER BY NB_ID_WIZARD_STEP_ORDER, NB_ID_WIZARD_STEP";
            return $this->executeQuery($sql);
        }
        
        function getWizardButtonQuery($idPage){
            $sql = "SELECT NB_WIZARD_BUTTON_NAME, NB_WIZARD_BUTTON_TITLE, NB_WIZARD_BUTTON_VALIDATE, NB_WIZARD_BUTTON_CLICK FROM NB_WIZARD_BUTTONS_TBL WHERE NB_ID_PAGE_FLD = '$idPage'";
            return $this->executeQuery($sql);   
        }
        
        function getValidateRole($idRole, $idPage){
            $sql = "SELECT NB_ID_ROLE_FLD,NB_ID_PAGE_FLD FROM NB_ROLE_PAG_TBL WHERE NB_ID_ROLE_FLD = $idRole AND NB_ID_PAGE_FLD = '$idPage'";
            return $this->executeQueryOneRow($sql);   
        }
        
        function getMaxHijo($idPage, $papa){
            $sql = "SELECT MAX(A.NB_ID_MENU_FLD) FROM NB_NAVIGATION_TBL A WHERE A.NB_ID_PAGE_FLD='$idPage' AND A.NB_PARENT_FLD ='$papa'";
            return $this->executeQueryOneRow($sql);
        }
        
        function getMenuHijos($idPage, $id){
            $sql = "SELECT COUNT(1) FROM  NB_NAVIGATION_TBL A WHERE A.NB_ID_PAGE_FLD='$idPage' AND A.NB_PARENT_FLD='$id'";
            return $this->executeQueryOneRow($sql);   
        }
        
        function getsetupConfig(){
            $sql = "SELECT NB_SLOGAN_TBL FROM NB_CONFIG_TBL";
            return $this->executeQueryOneRow($sql); 
        }
        function getPageProperties($idPage){
            $sql = "SELECT NB_PAGE_TITLE_FLD title,NB_PAGE_STYLE_FLD style,NB_PAGE_TRACE_FLD trace,NB_PAGE_TYPE_FLD tipo FROM NB_PAGES_TBL WHERE NB_ID_PAGE_FLD='$idPage'";
            return $this->executeQueryOneRow($sql);   
        }
        
        function getPageAttribute($idPage){
            $sql = "SELECT B.NB_ATTRIBUTE_FLD,B.NB_URL_FLD,B.NB_TYPE_FLD,B.NB_REL_FLD FROM   NB_PAGEATTRIBUTE_TBL A, NB_HTMLATTRIBUTE_TBL B WHERE  A.NB_ID_ATTRIBUTE_FLD = B.NB_ID_ATTRIBUTE_FLD AND A.NB_ID_PAGE_FLD ='$idPage' ORDER BY A.NB_ID_ATTRIBUTE_FLD ASC";
            return $this->executeQuery($sql);
        }
        
        function getSchemaDescription($idPage){
            $sql = "SELECT A.NB_TITLE_FLD, A.NB_DESCRIPTION_FLD, A.NB_TYPE_FLD FROM NB_SCHEMA_TBL A WHERE  A.NB_ID_PAGE_FLD = '$idPage'";
            return $this->executeQueryOneRow($sql);   
        }
        
        function getFormFields($idPage, $type){
            $sql = "SELECT DISTINCT A.NB_ID_PR_SCHEMA_FLD FROM  NB_FORMS_TBL A , NB_CONFIG_FRMWRK_TBL B WHERE A.NB_CONFIG_FRMWRK_ID_FLD = B.NB_CONFIG_FRMWRK_ID_FLD AND  B.NB_CONFIG_TYPE_FLD='$type' AND A.NB_ID_PAGE_FLD = '$idPage'";
            return $this->executeQuery($sql);   
        }
        
        function getFormFieldsTypes($idPage, $type, $field){
            $sql = "SELECT B.NB_PROPERTY_FLD,B.NB_TYPE_FLD,A.NB_SCHEM_VALUE_FLD FROM NB_FORMS_TBL A , NB_CONFIG_FRMWRK_TBL B WHERE A.NB_CONFIG_FRMWRK_ID_FLD = B.NB_CONFIG_FRMWRK_ID_FLD AND B.NB_CONFIG_TYPE_FLD='$type' AND A.NB_ID_PAGE_FLD = '$idPage' AND A.NB_ID_PR_SCHEMA_FLD ='$field'";
            return $this->executeQuery($sql);   
        }
        
        function getPageType($idPage){
            $sql = "SELECT A.NB_TYPEALPACA_FLD TYPE FROM NB_OPTION_TBL A WHERE A.NB_ID_PAGE_FLD = '$idPage'";
            return $this->executeQueryOneRow($sql);   
        }
        
        function getOptionsEvents($idPage){
            $sql = "SELECT A.NB_TYPEALPACA_FLD ALPACA,CONCAT(A.NB_ACTION_PATH,A.NB_ACTION_FLD,'.php?p=$idPage') EVENT FROM NB_OPTION_TBL A WHERE A.NB_ID_PAGE_FLD = '$idPage'";
            return $this->executeQueryOneRow($sql);   
        }
        
        function getFormButtonsQuery($idPage){
            $sql = "SELECT A.NB_ID_OPT_FORM_FLD,A.NB_VALUE_FLD,A.NB_TITLE_FLD,A.NB_CLICK_FLD FROM NB_OPTIONS_BUTTONS_TBL A WHERE A.NB_ID_PAGE_FLD = '$idPage'";
            return $this->executeQuery($sql);   
        }
        
        function getChartDataQuery($idPage, $type){
            $sql = "SELECT NB_VALUE_FLD, NB_COLOR_FLD FROM NB_CHART_DATA_TBL WHERE NB_ID_PAGE_FLD = '$idPage' AND NB_TYPE_FLD='$type' ORDER BY NB_POS_FLD";
            return $this->executeQuery($sql);   
        }

         
       
    }
?>