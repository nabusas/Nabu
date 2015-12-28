<?php

/*
The MIT License (MIT)

Copyright (c) <2015> <Francisco Javier Franco Rivera - frajafrari@gmail.com>

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
	Desarrollador		= frajafrari
    Fecha modificacion	= 28-12-2015
	Usuario Modifico	= CAGC

*/

include_once "Utilities.php";
include_once "Conexion.php";
include_once "Database.php";



class NabuEvent
{
	var $page;
    var $database;
    var $objUtilities;
    
	function NabuEvent($id_page, $post) {
        
		$this->page = $id_page;
        $this->database = new Database(); 
        $this->objUtilities = new Utilities();
	}
	
    function Save() {
        
        $respcode = 0;
    
        $tables = $this->database->getTables($this->page);
        $secuencia=-1;        
        
        foreach($tables as $table) {
            $fields = $this->database->getFields($this->page,$table[0]);
            $fieldsValues='';  
            $fieldsTable=''; 
            
            foreach($fields as $field){
                
                $type =$this->database->getTypes($table[0],$field[1]);
                
                if (isset($_POST[$field[0]])){
                    $value =trim($_POST[$field[0]]);
                    
                    $password=strpos($field[1],'password'); 
                    if ($password)
                        $value =md5(trim($_POST[$field[0]]));    
                }
                else    
                    $value ='nabuNull';
            
                $fieldsTable .= $field[1];
                
                /*
                $valueC = $this->database->getDataValue($table[0],$field[1]);
                $setData=false;
                    
                if ($valueC[0] <> '' ){
                    if ($valueC[0] == 'nb_secuencia'){
                        if ($secuencia == -1) {
                            $value=$this->objUtilities->changeValue($field[1],$valueC[0]);
                            $secuencia=$value;
                        }
                        else
                            $value=$secuencia;
                    }
                    else{
                        $setData=true;
                        $value=$this->objUtilities->changeValue($field[1],$valueC[0]);
                    }
                }
                */
                
                if ($value =='')
                    $value ='nabuNull';    
                
                if ($value <> 'nabuNull' ){
                  
                    switch($type[0]) {
						case 'string':
							$fieldsValues .= "'" . $value . "'";
							break;
						case 'number':
							$fieldsValues .= $value;
							break;
						case 'date':
                            if (!$setData)
                                $value=$this->objUtilities->castingDate($value);
                            
                            $fieldsValues .= "STR_TO_DATE('" .$value. "','%Y-%m-%d %H:%i:%s')";
                            
							break;
					}
					
				}
				else {
					switch($type[0]) {
						case 'string':
							$fieldsValues .= "''";
							break;
						case 'number':
							$fieldsValues .= "0";
							break;
						case 'date':
							$fieldsValues .= "null";
							break;
					}
				}
                
                if($field[0]) {
					$fieldsTable .= ",";
					$fieldsValues .= ",";
				}
                
			}
            
            $result =$this->database->saveData($table[0],$fieldsTable,$fieldsValues);
            
        }
        
        return $result;
       
	}
} 
?>
