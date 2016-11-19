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
	Fecha modificacion	= 19-11-2015
	Usuario Modifico	= CAGC

*/

class Chart
{
    var $labels;
    var $datasets;
    var $oprid;
    var $empresa;
    
    function Chart(){
      $this->oprid =$_SESSION['opridLogin'];
      $this->empresa =$_SESSION['app'];  
    }
    
    function labels($db,$page){
        
        $row=$db->getTablaChart($this->empresa,$page);
        $table =$row['tabla'];
        
        $row=$db->getLabelChart($this->empresa,$page);
        $label =$row[0];
        
        $oprid =$_SESSION['opridLogin'];
        
        $rows=$db->getDataLabelChart($table,$label,$this->oprid);    
        
        if (!isset($this->labels))
            $this->labels = array();
      
        foreach($rows as $row)
            array_push($this->labels,$row[0]);
       
    }
    
    function bars($db,$page){
        
        if (!isset($this->datasets))
            $this->datasets = array();
        
        $row=$db->getTablaChart($this->empresa,$page);
        $table =$row['tabla'];
        
        $rows=$db->getOptionsChart($this->empresa,$page);
        
        foreach($rows as $row)
            array_push($this->datasets,$this->bar($db,$table,$row[0],$row[1]));
        
        
    }
    
    function bar($db,$table,$field,$color){
        
        if (!isset($bara))
        $bara= array();
        
        $fillColor=$color;
        
        $rows=$db->getDataChart($table,$field,$this->oprid);
        
        $data = array();
        
        foreach($rows as $row)
            array_push($data,(float)$row[0]);
        
        $bara ["title"]="Prueba";
        $bara ["fillColor"]=$fillColor;
        $bara ["data"]=$data; 
        
        return $bara;
        
 
    }
}
?>