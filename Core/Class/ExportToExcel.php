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
	Fecha modificacion	= 23-02-2016
	Usuario Modifico	= CAGC

*/

class ExportExcel
{
    
    function ExportExcel(){
    }
    
    function exportarFile($tipo,$sqlE)
	{

        if ($tipo=='44')
            $sqlE="Select * from $sqlE";
        else{
            $sqlE=str_replace('operatorId',$_SESSION['opridLogin'],$sqlE);
        }
            
		$dir="../uploads/";
        $filename = $dir.strtotime("now").'.csv';
    
        $mask = $dir."*.*";
        array_map( "unlink", glob( $mask ) );

        $sql = mysql_query($sqlE) or die(mysql_error());

        $num_rows = mysql_num_rows($sql);
    
        if($num_rows >= 1)
		{
			
            $row = mysql_fetch_assoc($sql);
			$fp = fopen($filename, "w+") or die("No puede abrir archivo ".$filename);
            
            $seperator = "";
			$comma = "";
            
            
			foreach ($row as $name => $value)
				{
					$seperator .= $comma . '' .str_replace('', '""', $name);
					$comma = ",";
				}
            
            
			$seperator .= "\n";
            fputs($fp, $seperator);
	        
			mysql_data_seek($sql, 0);
			
            while($row = mysql_fetch_assoc($sql))
				{
					$seperator = "";
					$comma = "";

					foreach ($row as $name => $value) 
						{
							$seperator .= $comma . '' .str_replace('', '""', $value);
							$comma = ",";
						}

					$seperator .= "\n";
					fputs($fp, $seperator);
				}
	       
			fclose($fp);
            
			return $filename;
            
		  
        }
		else
		{
			return '';
		}

        
	}
}    
?>