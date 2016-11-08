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
	Fecha modificacion	= 19-01-2016
	Usuario Modifico	= CAGC

*/


class Schema{
	var $title;
	var $description;
	var $type;
	var $items;
	var $properties;


    function Schema($title,$description,$type){
        $this->title = $title;
        $this->description = $description;
        $this->type = $type;
    }

   
   function addProperties($fieldId,$value){

      if (!isset($this->properties)){
         $this->properties = array();
      }

      $this->properties[$fieldId] = $value;
   }

   function addItems($fieldId,$value){
     
        if (!isset($this->items)){
              $this->items = array();
        }
     
        $this->items[$fieldId] = $value;
   }
  
  
    function addField($rows){

        if (!isset($fields)){
            $fields = array();
        }
        
        foreach($rows as $row){
            if ( $row[1] == "boolean" ) {
                if ($row[2] == 'true' )
                    $row[2]= true;
                else
                    $row[2]= false;

                $fields[$row[0]]=$row[2];
            }else if($row[1] == "array"){
                $values = split(";", $row[2]); 
                $fields[$row[0]] = $values;
            }else{
                $fields[$row[0]]=$row[2];
            }
        }

       return $fields;

    }
}

?>