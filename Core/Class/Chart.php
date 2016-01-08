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
	Fecha modificacion	= 03-03-2015
	Usuario Modifico	= CAGC

*/

class Chart
{
    var $labels;
    var $datasets;
    
    function Options(){
      
    }
    
    function labels($db,$id, $user){
        
        $result= $db->Execute("Select nb_source_fld tabla from nb_chart_tbl where nb_id_page_fld = '$id'");
        $row=$result->FetchRow();
		$table =$row['tabla'];
        
        $result= $db->Execute("Select nb_value_fld label from nb_chart_data_tbl where nb_id_page_fld = '$id' and nb_type_fld='label' ");
        $row=$result->FetchRow();
        $label =$row['label'];
        
        $result= $db->Execute("Select $label from $table where label like '$user%'");
        
        if (!isset($this->labels))
            $this->labels = array();
      
        while ($row = $result->FetchRow())
            array_push($this->labels,$row[0]);
       
        
    }
    function bars($db,$id,$user){
        if (!isset($this->datasets))
            $this->datasets = array();
        
        $result= $db->Execute("Select nb_source_fld tabla from nb_chart_tbl where nb_id_page_fld = '$id'");
        $row=$result->FetchRow();
		$table =$row['tabla'];
        
        $result= $db->Execute("Select nb_value_fld, nb_color_fld from nb_chart_data_tbl where nb_id_page_fld = '$id' and nb_type_fld='column' order by nb_pos_fld ");
        
        while ($row = $result->FetchRow()){
            array_push($this->datasets,$this->bar($db,$table,$row[0],$user,$row[1]));
        }
    }
    
    function bar($db,$table,$field,$user,$color){
        
        if (!isset($bara))
        $bara= array();
        
        $fillColor=$color;
        
        $result= $db->Execute("Select replace($field,',','') from $table where label like '$user%'");
        $data = array();
        
            while ($row = $result->FetchRow())
                array_push($data,(float)$row[0]);
        
        $bara ["title"]="Prueba";
        $bara ["fillColor"]=$fillColor;
        $bara ["data"]=$data; 
        
        return $bara;
        
 
    }
}
?>