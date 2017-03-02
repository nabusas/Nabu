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
	Fecha modificacion	= 03-03-2017
	Usuario Modifico	= CAGC

*/

include_once "Schema.php";
include_once "Options.php";
include_once "JsonData.php";
include_once "Chart.php";
include_once "View.php";
include_once "../Framework/Datagrid/lib/inc/jqgrid_dist.php";
include_once "Database.php";
include_once "ExportToExcel.php";
include_once "../Class/NabuEvent.php";

class Utilities
{
	var $database;
    
    function Utilities($host,$user,$password,$database){
        $this->database = new Database($host,$user,$password,$database);
    }

    function idPage($path){
		$idPage = strtolower(str_replace('.php','',basename($path)));
        return $idPage;
    }
	
	function validateRole($empresa,$page, $role) {
        
        if($role != 9999) {
            $row = $this->database->getValidateRole($empresa,$role, $page);
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
    

    function fileDatagrid($page){
        $csv = new ExportExcel();
        $sql = $this->database->tableDataGrid($_SESSION['app'],$page);
        
        $this->database->conectar();
        $file=$csv->exportarFile($sql[0],$sql[1]);
        $this->database->desconectar();
        
        return $file;
    }
    
    function castingDate($date){
    
       $fechaInicioF = split (' ', $date);
	   $dateFormated = split('/', $fechaInicioF[0] );
	   $date = $dateFormated[2].'-'.$dateFormated[0].'-'.$dateFormated[1];
        
        return $date;
    }
    
    function menuHijos($empresa,$id){
        $row = $this->database->getMenuHijos($empresa, $id);
        if ($row[0] > 0)
            return true;

        return false;
	
    }
    
    function maxHijo($empresa,$papa,$idHijo){
        $row = $this->database->getMaxHijo($empresa, $papa);
        if ($row[0] == $idHijo)
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
        $row = $this->database->getSequence($_SESSION['app'],$field);
        return $row[0];
    } 
    
    function addSysdate(){
        return (new \DateTime())->format('Y-m-d H:i:s');
    }
    
    function setupConfig(){
          $row = $this->database->getSqlStatement("nabu","0001",null,"1");
          return $row;
    }
    
    function pageProperties($empresa,$id){
        return $this->database->getPageProperties($empresa,$id);
    }
    
    
    function pageAttribute($empresa,$id){
        
        if ($empresa=='')
            $empresa='nabu';
        
        $rows =$this->database->getPageAttribute($empresa,$id);
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
    
	function getSchema($empresa,$id){
       
        $id = strtolower($id);
	    $type = 'schema';
		$row = $this->database->getSchemaDescription($empresa,$id);
        $typePage = $row[2];
		$json = new Schema($row[0],$row[1],$row[2]);
		
        if  ($typePage == 'array'){
			$json->addItems('type','object');
			$properties = array();
		}
		else
			unset($json->items);
        
        
        $rows = $this->database->getFormFields($empresa,$id, $type);
        
        foreach($rows as $row){
            
           $rowsI = $this->database->getFormFieldsTypes($empresa,$id, $type, $row[0]); 
            
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
   
	function getData($empresa,$id){
        
        $json = new JsonData();
        
        $table  = $this->database->getDataRecord($empresa,$id);
        $fields = $this->database->getFieldsPage($empresa,$id);
        
        $ifcampos=false;
        
        if (is_array($fields))
            $ifcampos=true;
        
        if ($table[0] == ''){

            $parametros=false;

            if($ifcampos){
                foreach($fields as $field){
                    if (isset($_GET['accion']))
                        if ($_GET['accion']=='b' or $_GET['accion']=='s'){
                            if (isset($_GET[$field[0]])){
                               $parametros=true;
                                break;
                            }
                        }    
                        else{
                           if (isset($_GET['_1_'.$field[0]])){
                               $parametros=true;
                                break;
                            } 
                        }
                }
            }

            if ($parametros){
                $fieldsData = array();

                $where ="Where ";
                $i=1;
                $tabla='';
                $j=1;

                if (isset($_GET['accion'])){
                    if ($_GET['accion']=='b'){
                        foreach($fields as $field){
                            $key=$field[2];
                            $tabla=$field[1];
                            if ($tabla=='' OR $tabla == $field[1]){
                                if ( $key=='Y' ){
                                    if (isset($_GET[$field[0]])){
                                        if ($_GET[$field[0]] <> ''){    
                                            $value=$this->database->getDataChange($empresa,$field[0],$_GET[$field[0]]);

                                            if ($value[0] == '')
                                                $value[0]=$_GET[$field[0]];

                                            $crypted=$this->database->ifCrypted($empresa,$field[1],$field[0]);

                                            if ($crypted[0] =='Y')
                                                $value[0]=base64_decode($value[0])/444;

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
                                    $type =$this->database->getTypes($empresa,$field[1],$field[0]);

                                    $fieldsData[$field[0]]=$value[0];
                                }
                            }
                            else
                                $tabla =$field[1];
                        }
                    }
                    else{
                        if ($_GET['accion']=='s'){
                            if (isset($_GET[$field[0]])){
                                if ($_GET[$field[0]] <> ''){

                                    $type =$this->database->getTypes($empresa,$field[1],$field[0]);
                                        if ($type[0] == 'number')
                                            if ( !is_numeric($_GET[$field[0]]) )
                                                $_GET[$field[0]]=0;

                                    $fieldsData[$field[0]]=$_GET[$field[0]];

                                    $fieldxs=$this->database->getPromptSelect($empresa,$id,$field[0],$_GET[$field[0]]);
                                    foreach($fieldxs as $fieldx){
                                        $value=$this->database->executeQueryOneRow($fieldx[1]);
                                        $fieldsData[$fieldx[0]]=$value[0];
                                    }    
                                }    
                            }
                        }
                    }
                }
                if ($_GET['accion']<>'bd')
                    $jsonA=$json->getData2($fieldsData);
            }
            else{
                $fields =$this->database->getData($empresa,$id);
                $jsonA=$json->getData($fields);
            }
        }
        else
        {
            if($ifcampos)
                $jsonA=$json->getDataSelect($this->database ,$table[0],$fields);
            else
                $jsonA='';
        }

        
       return $jsonA;
    }
    
    function getView($empresa,$id){
        
        $view = new View();
        $row = $this->database->getOptionsEvents($empresa,$id);
        $alpaca = $row['alpaca'];
        $parent = $this->database->getViewParent($empresa,$id);
        $view->setView($this->database,$parent[0], $alpaca, $id); 
        
        return $view;
            
    }
    
    function getOption($empresa,$id){
        
		$id = strtolower($id);
		$type = 'options';
		$row = $this->database->getOptionsEvents($empresa,$id);
		$alpaca = $row['alpaca'];  		
		
        $json = new Options();
        
        if ($alpaca == 'wizard' or $alpaca =='form' or $alpaca == 'table'){
            $event = $row['event'];
			$attributes=$json->addElement($event,'post','');
			$json->addForm("attributes",$attributes);
            unset($json->datatables);
        }
        
        if ($alpaca == 'form' or $alpaca == 'table'){
			
			$rows = $this->database->getFormButtonsQuery($empresa,$id);
            $button = array();
            foreach($rows as $r){
                //btn btn-primary fa fa-home fa-lg
                $button[$r[0]] = array("value"=> $r[1],"title"=> $r[2], "click"=>$r[3], "styles"=>$r[4]);
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
		
        $rows = $this->database->getFormFields($empresa,$id, $type);
        
        foreach($rows as $row){
            $rowsI = $this->database->getFormFieldsTypes($empresa,$id,$type,$row[0]);
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
        $v8=chr(125).chr(32).chr(34).chr(125);  $c8=chr(125).chr(125);      // }espacio"}   se cambia por  }}
        $v9=chr(92).chr(47); $c9=chr(47);                                   //\/            se cambia por /
        $v10=chr(34).chr(91); $c10=chr(91);                                 //"[            se cambia por [
        $v11=chr(93).chr(34); $c11=chr(93);                                 //]"            se cambia por ]
        
        
        $chars= array($v1,$v2,$v3,$v4,$v5,$v6,$v7,$v8,$v9,$v10,$v11);
        $correc= array($c1,$c2,$c3,$c4,$c5,$c6,$c7,$c8,$c9,$c10,$c11);
        
        for ($i=0; $i<sizeof($chars); $i++)
            $json=str_replace($chars[$i],$correc[$i],$json);    
        
        return $json;
    }
    
	function forms($style,$imprimirJsons,$schema,$options,$data, $view){
        
        $JsonSchema =$this->fixedJson(json_encode($schema));
        $JsonOptions=$this->fixedJson(json_encode($options));
        $JsonData=$this->fixedJson(json_encode($data));
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

        $rows = $this->database->getChartDataQuery($_SESSION['app'],$id, 'column');
        echo "<table border=1 width='20%'><tr>";
        
        foreach($rows as $row)
            echo "<th bgcolor='$row[1]'>&nbsp$row[0]&nbsp</th>";
        
        echo "</tr></table>";

    }
    
    function charts($id){
        
        $json = new Chart();
        $json->labels($this->database,$id);
        $json->bars($this->database,$id);
        
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
        $pageL = $this->database->getTableLink($_SESSION['app'],$id);
        
        $type='gridoptions';
        
        $result = $this->database->getGrid1($_SESSION['app'],$type,$id);
        
        
        while ($row = $result->FetchRow()){
            $value=$row[2];
            
            if ( $row[0] <> 'table' and  $row[0] <> 'where' ){
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
            
            if ($row[0] == 'sql'){
                $value=str_replace('operatorId',$_SESSION['opridLogin'],$value);
                $g->select_command=$value;
                    
            }
            
            if ($row[0] == 'table')
                $g->table = $value;
            
            if ($id == 'nb_factura_de_pg'){
                if (isset($_GET["factura"])){
                    $factura=$_GET["factura"];
                        if (!is_numeric($factura))
                            $factura=0;
                    }
                    else
                        $factura=0;

                    $g->select_command="Select * from nb_detallef_tbl where factura like '".$factura."-%'";
            }
        }

        $campos = $this->database->getGrid2($_SESSION['app'],$id);
        
        $type='gridcoloptions';
        $cols= array();
        
        while ($camposDescribe = $campos->FetchRow()){
            $result = $this->database->getGrid3($_SESSION['app'],$type,$id,$camposDescribe[0]);
            $col = array();
            while ($row = $result->FetchRow()){
                $value=$row[2];
                
                if ($row[0]=='link')
                    $value="nabu.php?p=".$pageL[0]."&accion=b&".$value;
                
                if ($row[0]=='linkE')
                    $row[0]='link';
                
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

        if ($id == 'nb_factura_de_pg')
            $configGrid=true;
        else
            $configGrid=false;
        
        $g->set_actions(array("add"=>$configGrid,"edit"=>$configGrid,"delete"=>$configGrid,"rowactions"=>true,"search" => "advance"));

        return $g->render("list1");
        
    }
    
    function validateLogin(){
        
       echo "<br><br><center><img src='../Images/error.png'><center>";

        $empresa=$_POST['Campo0'];
        $usuario=$_POST['Campo1'];
        $password=$_POST['Campo2'];

        $idPage=$_GET['p'];

        $bind[0]=$empresa;
        $enterprise=$this->database->getSqlStatement('nabu','0002',$bind,'1');

        if (sizeof($enterprise) > 1){

            $objUtilities = new Utilities($enterprise[0],$enterprise[2],$enterprise[3],$enterprise[1]);
            $_SESSION['objUtilities']=$objUtilities;

            $row=$objUtilities->database->validateUser($empresa,$usuario,$password); 

            if ($row[0] != null) {
                $_SESSION['app'] = $empresa;
                $_SESSION['oprid'] = $row[0];
                $_SESSION['role'] = $row[1];
                $_SESSION['opridLogin'] = $usuario;
                header("location:../Pages/?p=home");
            }
            else{
                unset($_SESSION['app']);
                unset($_SESSION['oprid']);
                unset($_SESSION['role']);
                unset($_SESSION['opridLogin']);
        ?>
                <script languaje="javascript">
                    notie.alert(3,'Error en autenticación de usuario',5);
                    setTimeout ('document.location = "../Pages/nabu.php?p=login";',2000); 
                </script> 
        <?php        

            }
        }
        else{
        ?>  
            <script languaje="javascript">
                notie.alert(3,'Empresa no existe',5);
                setTimeout ('document.location = "../Pages/nabu.php?p=login";',2000); 
            </script> 
        <?php        
        }
    }
    
    function eventSave(){
        
       $accion=$_GET['accion'];

        echo "<br><br><center><img src='../Images/save.gif'><center>";
        
        $nabuEvent = new NabuEvent($_GET['p'], $_POST);
        $result=$nabuEvent->getEventSql($accion);
        
        $pos = strpos($_GET['p'], 'm_pg');

        if ($pos == true)
            $pagelink=$nabuEvent->getpagelink($_GET['p']);
        else
            $pagelink=$_GET['p'];

        if ($result== 1){
            $tipomensaje=1;

            if ($accion== 0 or $accion== 2)
                $mensaje='Guardado Exitoso';
            else
                if ($accion== 1 or $accion== 3)
                    $mensaje='Actualizacion Exitosa';
        }
        else{
            $tipomensaje=3;
            $mensaje='Problemas al realizar la Operacion';
        }
?>

    <script languaje="javascript">
        var message = "<?php echo $mensaje;?>" ;
        var link = "<?php echo $pagelink ;?>" ;
        var tipo = <?php echo $tipomensaje;?>;

        notie.alert(tipo,message,5);
        setTimeout ('document.location = "../Pages/nabu.php?p="+link;',1000); 
    </script>
<?php
    }
}
?>
