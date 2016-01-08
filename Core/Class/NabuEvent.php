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
	Desarrollador		= frajafrari
    Fecha modificacion	= 08-01-2016
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
	
    function getEventSql($accion) {
        
        $respcode = 0;
    
        $tables = $this->database->getTables($this->page);
        $secuencia=-1;        
        
        foreach($tables as $table) {
            $fields = $this->database->getFields($this->page,$table[0]);
            $fieldsValues='';  
            $fieldsTable='';
            $setValue='Set ';
            $whereValue='Where ';
            
            $i1=1;
            $i2=1;
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
                
                if ($value =='')
                    $value ='nabuNull';    
                
                if ($value <> 'nabuNull' ){
                  
                    switch($type[0]) {
						case 'string':
							$value = "'" . $value . "'";
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
						case 'date':
							$fieldsValues .= "null";
							break;
					}
				}
                
                if ($accion == 1){
                    
                    $key =$this->database->getKeyField($table[0],$field[1]);
                    
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
                
                if($field[0]) {
					$fieldsTable .= ",";
					$fieldsValues .= ",";
				}
                
			}
            
            if ($accion == 0){
                $sql = "INSERT INTO " .$table[0]. "(" . $fieldsTable . ") VALUES(" . $fieldsValues . ")";
                $fin =',)';$correccionF=')';
                $sql=str_replace($fin,$correccionF,$sql);
            }
            else
                $sql ='Update '.$table[0].' '.$setValue.' '.$whereValue;
            
        }
        
        return $sql;
    }
    
    
    function executeSql($sql){
        
        $result =$this->database->executeSqlEvent($sql);
        
        return $result;
    }
} 
?>
