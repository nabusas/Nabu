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
	Fecha modificacion	= 11-04-2018
	Usuario Modifico	= CAGC

*/

include_once "../Class/Utilities.php";

session_start();

    $operatorId=$_SESSION['opridLogin'];
    $empresa=$_SESSION['app'];
    $objUtilities = $_SESSION['objUtilities'];
    $role = $_SESSION['role'];
    $database = $objUtilities->database;
    
    if (isset($_GET["campo"]))
        $campo=$_GET["campo"];
    else
	   $campo='X';	

    

    if ($campo <> 'X'){
		
        $tablaRef =$database->existRefValue($empresa,$campo);
    
        if ($tablaRef[0] == 1){
            
            $param =$database->valueRef($empresa,$campo);
            
            $sql="select id,descr from ".$param[0]." where 1=1 ";
            
            if( $param[1]=='true')
                $co1=" AND empresa = '".$empresa."' ";
            if( $param[2]=='true')
                $co2=" AND usuario = '".$operatorId."' ";
            if( $param[3]=='true')
                $co3=" AND estado = 'A'";
            if( $param[4]=='true')
                $co3=" AND role = '".$role."'";
            
            $sql=$sql.$co1.$co2.$co3;
            
        }
        else
            $sql="Select nb_id_value_fld,nb_value_fld from nabu.nb_value_tbl where nb_enterprise_id_fld ='".$empresa."' and nb_id_pr_schema_fld='".$campo."'";

        $rows=$database->executeQuery($sql);
        $rows_returned =  count($rows);
		
        
        if ($rows_returned > 0 ){
            $i=1;
            $vector='{';

            foreach($rows as $row){
                if ($i==$rows_returned ){
                        $vector=$vector.'"'.$row[0].'":"'.$row[1].'"}';
                    }
                    else{
                        $vector=$vector.'"'.$row[0].'":"'.$row[1].'",';

                    }
                $i=$i+1;
            }
            
            $v1="\n"; $c1=" ";                                    //\n            se cambia por vacio
            $v2="\t"; $c2="";                                     //\t            se cambia por vacio
            $v3="\r"; $c3=" ";                                    //\r            se cambia por vacio
                
            $chars= array($v1,$v2,$v3);
            $correc= array($c1,$c2,$c3);
            
            //$vector=utf8_encode($vector);
            
            for ($i=0; $i<sizeof($chars); $i++)
                $vector=str_replace($chars[$i],$correc[$i],$vector);
                    

           echo $vector;
        }
        else
            echo '{"-1": "No hay valores"}';
	}
    else
        echo '{"-1": "No hay valores"}';

?>



	