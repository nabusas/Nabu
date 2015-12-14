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
	Fecha modificacion	= 20-02-2015
	User modify		= CAGC

*/

    include "../Class/Utilities.php";

	$objUtilities = new Utilities();

	$idPage=$_GET['p'];

	$db = $objUtilities->cx->conectar();
   
    $result =$db->Execute("SELECT distinct nb_id_pr_Schema_fld FROM nb_forms_tbl where nb_id_page_fld = '$idPage'");

	while ($row = $result->FetchRow()){
		if (isset($_POST[$row[0]])){
	        if (!isset($fields)){
				$fields = array();
			}
			$fields[$row[0]]=$_POST[$row[0]];
		}
	}

    $result = $db->Execute("SELECT nbd_id_user_fld FROM nbd_user_tbl WHERE nbd_email_fld='" . $fields['Campo1'] . "' AND nbd_password_fld='" . md5($fields['Campo2']) . "'");
    $row=$result->FetchRow();

	if ($row[0] != null) {
		session_start();
        $_SESSION['oprid'] = $row[0];
        $result = $db->Execute("SELECT nb_id_role_fld FROM nbd_role_user_tbl WHERE nbd_id_user_fld = " . $row[0]);
    	$row = $result->FetchRow();
		$_SESSION['role'] = $row[0];
		header("location:../Pages/?p=home");
	}
	else
	{
        unset($_SESSION['role']);
        header("location:../Pages/?p=error");
	}
	$db=$objUtilities->cx->desconectar();
?>