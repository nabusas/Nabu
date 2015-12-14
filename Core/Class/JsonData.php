<?php

/*
The MIT License (MIT)

Copyright (c) <2015> <Carlos Alberto Garcia Cobo - carlosgc4@gmail.com>

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
	Fecha modificacion	= 12-10-2015
	Usuario Modifico	= CAGC

*/

class JsonData
{
    public function JsonData(){
    }
    
    function replaceData($value){
        
        date_default_timezone_set("America/Bogota");
        
        if ( $value=='nb_sysdate' )
            return date("Y-m-d h:i:sa");  
            
        return $value;    
    }
    
    function getData($setData){
        
        if (!isset($data))
            $data = array();
        
        foreach($setData as $rowData)
            $data[$rowData[0]] = $this->replaceData($rowData[1]);
        
        return $data;
        
    }
    
    function getDataSelect($database, $table,$fields){
        
        if (!isset($data))
            $data = array();
        
        $i=0;
        foreach($fields as $field){
            
            $value=$database->getDataValue($table,$field[0]);
            $data[$field[0]] =$value[0];
            $i=$i+1;
        }
        return $data;
    
    }
  
}

?>