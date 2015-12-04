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

	Fecha creacion		= 20-02-2015
	Desarrollador		= CAGC
	Fecha modificacion	= 22-02-2015
	Usuario Modifico	= CAGC

*/


class Menu
{
	function Menu($id_page, $util){
	
	$db=$util->cx->conectar();
    session_start();
	$role = 999999;
	if(isset($_SESSION['role']))
		$role = $_SESSION['role'];
	$result = $db->Execute("SELECT a.nb_sec_fld id,
								   a.nb_id_menu_fld menu,
								   a.nb_parent_fld papa,
								   a.nb_descr_men_fld descr,
								   a.nb_image_fld image,
								   a.nb_link_fld link,
								   a.nb_target_fld target
							FROM nb_navigation_tbl a, nb_role_pag_tbl b
							WHERE a.nb_id_page_fld = b.nb_id_page_fld and b.nb_id_role_fld = " . $role . " and a.nb_id_page_fld='" . $id_page . "' and
								  (a.nb_link_fld in (select nb_id_page_fld from nb_role_pag_tbl where nb_id_role_fld = " . $role . ")  or a.nb_link_fld is null)
							order by a.nb_sec_fld");
?>
		<nav id="menu">
<?php
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
            
            $db2=$util->cx->conectar();
            $result2 = $db2->Execute("SELECT a.nb_parent_fld FROM nb_navigation_tbl a WHERE a.nb_id_page_fld='$id_page' and a.nb_sec_fld='$id'");
            $row2 = $result2->FetchRow();
            $papa2=$row2[0];
            $result3 = $db2->Execute("SELECT a.nb_parent_fld,a.nb_id_menu_fld FROM nb_navigation_tbl a WHERE a.nb_id_page_fld='$id_page' and a.nb_sec_fld='$papa2'");
            $row3 = $result3->FetchRow();
            $papa3=$row3[0];
            $hijo3=$row3[1];
               
            $maxHijo2=$util->maxHijo($id_page,$papa3,$hijo3);
            
            if ($maxHijo and $maxHijo2)
                echo '</ul>';
		}
		
		echo '</ul>';
        
        $db=$util->cx->desconectar();
?>
		</nav>
<?php
		
	}
}

?>
