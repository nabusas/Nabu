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
	Fecha modificacion	= 09-03-2017
	Usuario Modifico	= CAGC

*/


class Menu
{
	function Menu($empresa, $util){
	
	$role = 999999;
	if(isset($_SESSION['role']))
		$role = $_SESSION['role'];
        $operatorId=$_SESSION['oprid'];
        
       $result =$util->database->menu1($empresa,$role);
	   echo "<nav id='menu'>";

		echo '<ul>';
		while ($row = $result->FetchRow()){
		    $id=$row['id'];
            
			$hijos=$util->menuHijos($empresa,$id);
			$maxHijo=$util->maxHijo($empresa,$row['papa'],$row['menu']);
            
            $target=' ';
            if ( $row['target'] == 'Y' )
               $target="TARGET='_blank'";
            
            $enlace=str_replace('operatorId',$operatorId,$row['link']);
            
            if (is_numeric($enlace))
                $enlace = '#';
            
            if((strpos($enlace, 'nb_') === false and ($enlace !='login' and $enlace != 'home' and $enlace !='event'))or  $enlace == '#')
                echo"<li><a href=".$enlace." ".$target."><i class='".$row['image']."'></i>&nbsp;".$row['descr']."</a>"; 
            else
                echo"<li><a href=../Pages/nabu.php?p=".$enlace." ".$target."><i class='".$row['image']."'></i>&nbsp;".$row['descr']."</a>";
            
            if ($hijos)
				echo"<ul>";
            else
				echo"</li>";


            if ($maxHijo)
                if (!$hijos)
				    echo '</ul></li>';
            
            
            $row2 =$util->database->menu2($empresa,$id);
            $papa2=$row2[0];
            
            $row3 =$util->database->menu3($empresa,$papa2);
            
            $papa3=$row3[0];
            $hijo3=$row3[1];
            
            
            $maxHijo2=$util->maxHijo($empresa,$papa3,$hijo3);
            
            if ($maxHijo and $maxHijo2)
                echo '</ul>';
            
            if ( $empresa == 'paraiso'){
                if (
                        ($role == '2' and $enlace == 'nb_validacion_cartera_pg') or
                        ($role == '3' and $enlace == 'nb_cartera_v_pg')
                        ($role == '5' and ($enlace == 'nb_productos_v_pg') or $enlace == 'nb_cartera_v_pg') )
                    )
                            echo '</ul>';
                if  ($role == '6' and $enlace == 'nb_consolidado_i_pg')
                    echo '</ul></ul></ul>';
            }
		}
		
		echo '</ul>';
        
     echo '</nav>';
        
        
		
	}
}

?>
