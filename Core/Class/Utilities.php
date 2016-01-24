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

	Fecha creacion		= 28-02-2015
	Desarrollador		= CAGC
	Fecha modificacion	= 24-01-2016
	Usuario Modifico	= CAGC

*/

include_once "Schema.php";
include_once "Options.php";
include_once "JsonData.php";
include_once "Chart.php";
include_once "View.php";
include "../Framework/Datagrid/lib/inc/jqgrid_dist.php";
include_once "Database.php";
include_once "ExportToExcel.php";


class Utilities
{
	var $db;
	var $result;
    var $fields;
    var $database;
    var $csv;

    function Utilities($host,$user,$password,$database){
        $this->database = new Database($host,$user,$password,$database);
    }

    function idPage($path){
		$idPage = strtolower(str_replace('.php','',basename($path)));
        return $idPage;
    }
	
	function validateRole($page, $role) {
        
        if($role != 9999) {
            $row = $this->database->getValidateRole($role, $page);
            if ($row != null)
                return true;
            else
                return false;
		}
		else {
			if($page == 'login' || $page == 'error')
				return true;
			else
				return false;
		}
	}
    
    function maxHijo($id_page,$papa,$idHijo){
        $row = $this->database->getMaxHijo($id_page, $papa);
        if ($row[0] == $idHijo)
		  return true;

        return false;
    	
    }

    function fileDatagrid($page){
        $this->csv = new ExportExcel();
        $table = $this->database->tableDataGrid($page);
        $this->database->conectar();
        $file=$this->csv->exportarFile($table[0]);
        $this->database->desconectar();
        return $file;
    }
    
    function castingDate($date){
    
       $fechaInicioF = split (' ', $date);
	   $dateFormated = split('/', $fechaInicioF[0] );
	   $date = $dateFormated[2].'-'.$dateFormated[0].'-'.$dateFormated[1];
        
        return $date;
    }
    
    function menuHijos($id_page,$id){
        $row = $this->database->getMenuHijos($id_page, $id);
        if ($row[0] > 0)
            return true;

        return false;
	
    }
    
    function changeValue($field,$value) {
        
        if ($value == 'nb_secuencia')
            return $this->maxSequence ($field);
        
        if  ($value == 'nb_userid')
            return 'NABU'; 
            
        if   ($value == 'nb_sysdate')
            return $this->addSysdate();
            
        return $value;
    }
    
    function maxSequence($field){
        $row = $this->database->getSequence($field);
        return $row[0];
    } 
    
    function addSysdate(){
        return (new \DateTime())->format('Y-m-d H:i:s');
    }
    
    function setupConfig(){
          $row = $this->database->getsetupConfig();
          return $row;
    }
    
    function pageProperties($id){
        return $this->database->getPageProperties($id);
    }
    
    
    function pageAttribute($id){
        
        $rows =$this->database->getPageAttribute($id);
        $comillas='"';
        
        foreach($rows as $row){
            echo chr(9).chr(9);  
            if ($row[0] == 'link' )
                echo '<link type='.$comillas.$row[2].$comillas.' href='.$comillas.$row[1].$comillas.' rel='.$comillas.$row[3].$comillas.'/>';
            if ($row[0] == 'script')
                echo '<script type='.$comillas.$row[2].$comillas.' src='.$comillas.$row[1].$comillas.'></script>';
        }
        
       if ( $id <> 'login' )
            echo '<script type="text/javascript">$(function() {$("nav#menu").mmenu({slidingSubmenus: false,"classes": "mm-light"});});</script>';
        
        
    }
    
	function getSchema($id){
       
        $id = strtolower($id);
	    $type = 'schema';
		
		$row = $this->database->getSchemaDescription($id);
        $typePage = $row[2];
		$json = new Schema($row[0],$row[1],$row[2]);
		
        if  ($typePage == 'array'){
			$json->addItems('type','object');
			$properties = array();
		}
		else
			unset($json->items);
        
        
        $rows = $this->database->getFormFields($id, $type);
        
        foreach($rows as $row){
            
           $rowsI = $this->database->getFormFieldsTypes($id, $type, $row[0]); 
            
           if  ($typePage == 'array')
               $properties[$row[0]] = $json->addField($rowsI);
           else{
               $campo = $json->addField($rowsI);
               $json->addProperties($row[0],$campo);
			} 
        }				
        
        if  ($typePage == 'array'){
			$json->addItems("properties",$properties);
			unset($json->properties);
		}

        return $json;
	}
   
	function getData($id){
        
        $json = new JsonData();
        
        $table  = $this->database->getDataRecord($id);
        
        if ($table[0] == '' ){
            
            $parametros=false;
            $fields = $this->database->getFieldsPage($id);
            
            foreach($fields as $field){
               if (isset($_GET[$field[0]])){
                   $parametros=true;
                    break;
                }
            }
            
            if ($parametros){
                $fieldsData = array();
                
                $where ="Where ";
                $i=1;
                $tabla='';
                
                foreach($fields as $field){
                    
                    $key=$field[2];
                    $tabla=$field[1];
                    
                    if (isset($_GET['accion'])){
                        if ($_GET['accion']=='b'){
                            if ($tabla=='' OR $tabla == $field[1]){
                                if ( $key=='Y' ){
                                    if (isset($_GET[$field[0]])){
                                        if ($_GET[$field[0]] <> ''){    
                                            $value=$this->database->getDataChange($field[0],$_GET[$field[0]]);

                                            if ($value[0] == '')
                                                $value[0]=$_GET[$field[0]];

                                            if ($i == 1)
                                                $where=$where.$field[0]."='".$value[0]."' ";
                                            else
                                                $where=$where." AND ".$field[0]."='".$value[0]."' ";

                                            $fieldsData[$field[0]]=$value[0];
                                            $fieldsData[$field[0].'X']=$value[0];
                                        }
                                    }
                                    $i++;
                                }
                                else{
                                    $value=$this->database->getDatavalueW($field[1],$field[0],$where);
                                    $fieldsData[$field[0]]=$value[0];
                                }
                            }
                            else
                                $tabla =$field[1];
                        }
                        else{
                            if ($_GET[$field[0]] <> '')
                                $fieldsData[$field[0]]=$_GET[$field[0]];
                            else{
                                $fieldsData['nb_fact_4_fld']='Carlos Alberto Garcia Cobo';
                            }
                        }
                    }
                }    
                
                $jsonA=$json->getData2($fieldsData);
            }
            else{
                $table  = $this->database->getDataRecord($id);
                $fields = $this->database->getDataFields($table[0]);
                $fields =$this->database->getData($id);
                $jsonA=$json->getData($fields);
            }
            
            
        }
        else
        {
            $jsonA=$json->getDataSelect($this->database ,$table[0],$fields);
        }
        
       return $jsonA;
    }
    
    function getView($id){
        
        $view = new View();
        $row = $this->database->getOptionsEvents($id);
        $alpaca = $row['ALPACA'];
        $parent = $this->database->getViewParent($id);
        $view->setView($this->database,$parent[0], $alpaca, $id); 
        
        return $view;
            
    }
    
    function getOption($id){
        
		$id = strtolower($id);
		$type = 'options';
		$row = $this->database->getOptionsEvents($id);
		$alpaca = $row['ALPACA'];  		
		
        $json = new Options();
        
        if ($alpaca == 'wizard' or $alpaca =='form' or $alpaca == 'table'){
            $event = $row['EVENT'];
			$attributes=$json->addElement($event,'post','');
			$json->addForm("attributes",$attributes);
            unset($json->datatables);
        }
        
        if ($alpaca == 'form' or $alpaca == 'table'){
			
			$rows = $this->database->getFormButtonsQuery($id);
            $button = array();
            foreach($rows as $r){
                $button[$r[0]] = array("value"=> $r[1],"title"=> $r[2], "click"=>$r[3]);
            }
			$json->addForm("buttons",$button);
            
            unset($json->type);
            unset($json->showActionsColumn);
            unset($json->datatables);
			
		}
        
        if ($alpaca == 'table'){
			$json->addType($alpaca,'true');
            $fieldsA = array();
            $info = array();
        }
        else
            unset($json->items);
        
        if ($alpaca == 'image'){
            unset($json->type);
			unset($json->renderForm);
			unset($json->form);
            unset($json->showActionsColumn);
            unset($json->datatables);
		
		}
		
        $rows = $this->database->getFormFields($id, $type);
        
        foreach($rows as $row){
            $rowsI = $this->database->getFormFieldsTypes($id,$type,$row[0]);
            $campo=$json->addField($rowsI);
		    
            if  ($alpaca == 'table')
                $fieldsA[$row[0]] = $campo;
            else
                $json->addFields($row[0],$campo);
            
        }
        
        if  ($alpaca == 'table'){
			$json->addItems("fields",$fieldsA);
            $info['emptyTable']=' ';
            $json->addDatatables($info);
			unset($json->renderForm);
			unset($json->fields);
		}
        
        return $json;

	}
    
    function fixedJson($json) {
        
        $v1=chr(34)."function("; $c1="function(";                           // "function(   se cambia por function(
        $v2=chr(59).chr(125).chr(34); $c2=chr(59).chr(125);                 // ;}"          se cambia por  ;}    
        $v3=chr(40).chr(92).chr(34); $c3=chr(40).chr(34);                   // (\"          se cambia por  ("
        $v4=chr(92).chr(34).chr(43); $c4=chr(34).chr(43);                   // \"+          se cambia por  "+  
        $v5=chr(34).chr(123); $c5=chr(123);                                 // "{           se cambia por  {
        $v6=chr(92).chr(34);  $c6=chr(34);                                  // \"           se cambia por  "
        $v7=chr(125).chr(34);  $c7=chr(125);                                // }"           se cambia por  }
        $v8=chr(125).chr(32).chr(34).chr(125);  $c8=chr(125).chr(125);      // }espacio"}    se cambia por  }}
        
        
        $chars= array($v1,$v2,$v3,$v4,$v5,$v6,$v7,$v8);
        $correc= array($c1,$c2,$c3,$c4,$c5,$c6,$c7,$c8);
        
        for ($i=0; $i<sizeof($chars); $i++)
            $json=str_replace($chars[$i],$correc[$i],$json);    
        
        return $json;
    }
    
	function forms($style,$imprimirJsons,$schema,$options,$data, $view){
        
        $JsonSchema =json_encode($schema);
        $JsonOptions=$this->fixedJson(json_encode($options));
        $JsonData=json_encode($data);
        $JsonView=json_encode($view, JSON_PRETTY_PRINT);    
        
		if  ($imprimirJsons == "true") {
			echo '*******************************************************Schema*******************************************************<br/>';
			print_r($JsonSchema);
			echo '<br/>*******************************************************Options*******************************************************<br/>';
			print_r($JsonOptions);
			echo '<br/>*******************************************************Data*******************************************************<br/>';
			print_r($JsonData);
            echo '<br/>*******************************************************View*******************************************************<br/>';
			print_r($JsonView);
        }
    ?>
     <div class=<?php echo $style ?> >
			<div id="field1"></div>
				<script type="text/javascript" id="field1-script">
					$(function() {
						Alpaca.setDefaultLocale("es_ES");
						$("#field1").alpaca({
							"optionsSource":<?php print_r($JsonOptions);?>,
							"schema":<?php print_r($JsonSchema);?>,
							"dataSource":<?php print_r($JsonData); ?>,
							"view": <?php print_r($JsonView) ?>
						});
					});
				</script>
		</div>
	  
<?php
	}
    
    function legend($id){

        $rows = $this->database->getChartDataQuery($id, 'column');
        echo "<table border=1><tr>";
        
        foreach($rows as $row)
            echo "<th bgcolor='$row[1]'>&nbsp$row[0]&nbsp</th>";
        
        echo "</tr></table>";

    }
    
    function charts($id,$user){
        
        $this->database->conectar();
        $json = new Chart();
        $json->labels($this->database,$id,$user);
        $json->bars($this->database,$id,$user);
        $this->database->desconectar();
        
?>
       <script>
          function addCommas(nStr){
                nStr += '';
                x = nStr.split('.');
                x1 = x[0];
                x2 = x.length > 1 ? '.' + x[1] : '';
                var rgx = /(\d+)(\d{3})/;
                while (rgx.test(x1)) {
                    x1 = x1.replace(rgx, '$1' + ',' + '$2');
                }
                return x1 + x2;
            }
            var barChartData =<?php print_r(json_encode($json)); ?>

            var options = {
               responsive : true,
               animation: true,
               multiTooltipTemplate:"<%= '$' + addCommas(value) %>", 
               scaleLabel :"<%= '$' + addCommas(value) %>"
            };
           
            window.onload = function(){
                var ctx = document.getElementById("canvas").getContext("2d");
                myBar = new Chart(ctx).Bar(barChartData,options);
            }
        
        </script>
  
<?php        
    }
    function getDataGrid($id){
    
        $g = new jqgrid();
        $pageL = $this->database->getTableLink($id);
        
        $type='gridoptions';
        
        $result = $this->database->getGrid1($type,$id);
        
        
        while ($row = $result->FetchRow()){
            $value=$row[2];
            
            if ( $row[0] <> 'table' ){
                if ( $row[1] == 'number')
                    $value= (int)$value;
                
                if ( $row[1] == 'boolean'){
                    if ($value == 'true')
                        $value= true;
                     else
                         $value= false;
                }
                    
                $grid[$row[0]] =$value;
            }
            else{
                $g->table = $value;
            }
        }

        $campos = $this->database->getGrid2($id);
        
        $type='gridcoloptions';
        
        while ($camposDescribe = $campos->FetchRow()){
            $result = $this->database->getGrid3($type,$id,$camposDescribe[0]);
            $col = array();
            while ($row = $result->FetchRow()){
                $value=$row[2];
                
                if ($row[0]=='link')
                    $value="nabu.php?p=".$pageL[0]."&accion=b&".$value;
                
                 if ( $row[1] == 'number')
                    $value= (int)$value;
                
                 if ( $row[1] == 'boolean'){
                     if ($value == 'true')
                        $value= true;
                     else
                         $value= false;
                 }
                $col[$row[0]]= $value; 
            } 
            $cols[] = $col;
        }

        $this->database->conectar();
        $g->set_columns($cols);
        $g->set_options($grid);

        $g->set_actions(array("add"=>false,"edit"=>false,"delete"=>false,"rowactions"=>false,"search" => "advance","export"=>false,"autofilter" => true ));

        return $g->render("list1");
        
        
    }
}
?>


