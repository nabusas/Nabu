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
	Fecha modificacion	= 13-01-2016
	Usuario Modifico	= CAGC

*/


class Menu
{
	function Menu($id_page, $util){
	
	session_start();
	$role = 999999;
	if(isset($_SESSION['role']))
		$role = $_SESSION['role'];
        
       $result =$util->database->menu1($id_page,$role);
	   echo "<nav id='menu'>";

		echo '<ul>';
		while ($row = $result->FetchRow()){
		    $id=$row['id'];
            
			$hijos=$util->menuHijos($id_page,$id);
			$maxHijo=$util->maxHijo($id_page,$row['papa'],$row['menu']);
            
            $target=' ';
            if ( $row['target'] == 'Y' )
               $target="TARGET='_blank'";
			
            echo"<li><a href=../Pages/?p=".$row['link']." ".$target."><i class='".$row['image']."'></i>&nbsp;".$row['descr']."</a>";

			if ($hijos)
				echo"<ul>";
			else
				echo"</li>";

			if ($maxHijo){
                if (!$hijos){
				    echo '</ul></li>';
                }
            }
            
            $row2 =$util->database->menu2($id);
            $papa2=$row2[0];
            
            $row3 =$util->database->menu3($id_page,$papa2);
            
            $papa3=$row3[0];
            $hijo3=$row3[1];
            
            
            $maxHijo2=$util->maxHijo($id_page,$papa3,$hijo3);
            
            if ($maxHijo and $maxHijo2)
                echo '</ul>';
		}
		
		echo '</ul>';
        
     echo '</nav>';
        
        
		
	}
}

?>
