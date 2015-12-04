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

	Fecha creacion		= 10-04-2015
	Desarrollador		= CAGC
*/

include "../Class/Conexion.php";

    $cx=new Conexion();
   
	
	if (isset($_GET["campo"]))
		$campo=$_GET["campo"];
	else
		$campo='X';	
	
    if ($campo <> 'X'){
		
        $valores = explode ("_", $campo);
        
        if ($valores[0] == 'value')
            $campo =  $valores[1];
        
		if ($campo == 'role')
			$sql='Select nb_id_role_fld,nb_desc_fld from nb_role_tbl';
        else
            if ($campo == 'country')
                $sql="Select nb_id_country_fld,nb_desc_fld from nb_country_tbl";
            else
                if ($valores[0] == 'state')
                    $sql="Select cc_codigoDept_fld,cc_descripc_fld from nb_state_tbl"; 
                else
                    if ($campo == 'city')
                        $sql="Select cc_codCiudad_fld,cc_descripc_fld from nb_city_tbl";
                    else
                        $sql="Select nb_id_value_fld,nb_value_fld from nb_value_tbl where nb_id_pr_schema_fld='".$campo."'";
        
		$db=$cx->conectar();
        $rs =  $db->Execute($sql);
		$rows_returned = $rs->RecordCount();

		$rs->MoveFirst();

		$i=1;
        $vector='{';
        
		while (!$rs->EOF) {
			if ($i==$rows_returned ){
					$vector=$vector.'"'.$rs->fields[0].'":"'.$rs->fields[1].'"}';
				}
				else{
					$vector=$vector.'"'.$rs->fields[0].'":"'.$rs->fields[1].'",';

				}
            $i=$i+1;
			$rs->MoveNext();
		}
        
        $db=$cx->desconectar();
		echo $vector;
	}
    else
       echo '{"-1": "No hay valores"}';

?>



	