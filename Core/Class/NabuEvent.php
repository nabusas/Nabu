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

	Fecha creacion		= 24-09-2015
	Desarrollador		= CAGC
    Fecha modificacion	= 09-03-2017
	Usuario Modifico	= CAGC

*/

include_once "Utilities.php";

class NabuEvent
{
	var $page;
    var $database;
    var $objUtilities;
    
	function NabuEvent($id_page, $post) {
        
		$this->page = $id_page;
        $objUtilities = $_SESSION['objUtilities'];
        $this->database = $objUtilities->database;
    }
	
    function getpagelink($page){
        
        $pageLink =$this->database->getPageLink($_SESSION['app'],$page);
    
        return $pageLink[0];
    }
    
    function getEventSql($accion, $audit) {
        
        if ($accion == 2 or $accion==3){
            
            $tomanoArray=sizeof($_REQUEST)-2;
            $numeroColumnas=4;
            $numeroFilas =$tomanoArray/$numeroColumnas;
            
            if ($numeroFilas < 9)
                $recortar=3;
            else
                $recortar=4;
        }
        else
            $numeroFilas=1;
        
        $tables = $this->database->getTables($_SESSION['app'],$this->page);
        $resultado=1;
        
        foreach($tables as $table) {
            $fields = $this->database->getFields($_SESSION['app'],$this->page,$table[0]);
            
            $fieldsValues='';  
            $fieldsTable='';
            $setValue='Set ';
            $whereValue='Where ';
            
            $i1=1;
            $i2=1;
            
            for ($i=0; $i<$numeroFilas; $i++){
                foreach($fields as $field){
                    
                    $type =$this->database->getTypes($_SESSION['app'],$table[0],$field[1]);
                    
                    if ($accion == 0 or $accion==1){
                        if (isset($_POST[$field[0]])){
                            $value =trim($_POST[$field[0]]);
                            
                            $password=strpos($field[1],'password'); 
                            if ($password)
                                $value =md5(trim($_POST[$field[0]]));    
                        }
                        else
                            $value ='nabuNull';
                    }
                    else{
                        if (isset($_POST['_'.$i.'_'.$field[1]])){
                            $value =trim($_POST['_'.$i.'_'.$field[1]]); 
                        }
                        else
                            $value ='nabuNull';
                    }
                    
                    $fieldsTable .= $field[1];

                    if ($value =='')
                        $value ='nabuNull';    

                    if ($value <> 'nabuNull' ){

                        switch($type[0]) {
                            case 'string':
                                $value = "'" . $value . "'";
                                break;
                            case 'currency':
                                $value = "'" . str_replace(',','.',str_replace('.','',str_replace('$','',$value))) . "'";
                                break;
                            case 'date':
                                if (!$setData)
                                    $value=$this->objUtilities->castingDate($value);

                                $value= "STR_TO_DATE('" .$value. "','%Y-%m-%d %H:%i:%s')";

                                break;
                        }

                        $fieldsValues .=$value;
                    }
                    else {
                        switch($type[0]) {
                            case 'string':
                                $fieldsValues .= "''";
                                break;
                            case 'number':
                                $fieldsValues .= "0";
                                break;
                            case 'currency':
                                $fieldsValues .= "0";
                                break;    
                            case 'date':
                                $fieldsValues .= "null";
                                break;
                        }
                    }

                    if ($accion == 1 or $accion == 3){
                        $key =$this->database->getKeyField($_SESSION['app'],$table[0],$field[1]);

                        if ($value <> 'nabuNull' ){
                            if ($key[0] == 0){
                                if ($i1== 1)
                                    $setValue .= $field[1]."=".$value.' ';
                                else
                                    $setValue .= ', '.$field[1]."=".$value;
                                $i1++;    
                            }
                            else{
                                if ($i2== 1)
                                    $whereValue .= $field[1]."=".$value.' ';
                                else
                                    $whereValue .= 'AND '.$field[1]."=".$value.' ';
                                $i2++;
                            }
                        }
                    }

                    if($field[0]) {
                        $fieldsTable .= ",";
                        $fieldsValues .= ",";
                    }
                }
            
                    
                if ($accion == 0 or $accion == 2){
                    
                    if ($audit == 'true'){
                        if ( strpos($table[0], 'nabu.')  !== false){
                            $fieldsTable =$fieldsTable."nb_enterprise_id_fld,nb_oprid_i_fld,nb_date_i_fld";
                            $fieldsValues = $fieldsValues."'".$_SESSION['app']."','".$_SESSION['oprid']."',sysdate()";
                        }
                        else{
                            $fieldsTable =$fieldsTable."nb_oprid_i_fld,nb_date_i_fld";
                            $fieldsValues = $fieldsValues."'".$_SESSION['oprid']."',sysdate()";
                        }
                    }
                    
                    if ($i ==0 and $numeroFilas==1)
                        $sql= " INSERT INTO " .$table[0]. "(" . $fieldsTable . ") VALUES(" . $fieldsValues . ") ";
                    else{
                        
                        if ($i ==0){
                            $sql= " INSERT INTO " .$table[0]. "(" . $fieldsTable . ") VALUES";
                            $values= "(" . $fieldsValues . ") ";        
                        }
                        else
                            $values.=",(" . $fieldsValues . ") ";
                        
                    }
                    
                    $fin =',)';$correccionF=')';
                    $sql=str_replace($fin,$correccionF,$sql);
                    $values=str_replace($fin,$correccionF,$values);
                    $fieldsTable='';
                    $fieldsValues='';
                }
                else{
                    if ($audit == 'true')
                        $setValue = $setValue.",nb_oprid_u_fld='".$_SESSION['oprid']."',nb_date_u_fld=sysdate()";
                    
                    if ( strpos($table[0], 'nabu.')  !== false)
                        $whereValue = $whereValue." and nb_enterprise_id_fld='".$_SESSION['app']."'";
                        
                    $sql='Update '.$table[0].' '.$setValue.' '.$whereValue;
                    
                    $setValue='';
                    $whereValue='';
                }
            }
            
            if ($accion == 0 or $accion == 2)
                $sql .=$values;
            
            $result =$this->database->executeSqlEvent($sql);
            
            if ($result->EOF <> 1)
                $resultado=0;
        }
        
        return $resultado;
    }
} 
?>
