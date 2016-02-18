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
	Fecha modificacion	= 18-01-2016
	User modify	   	    = CAGC

*/

    include "../Class/Utilities.php";    

    session_start();

    $empresa=$_POST['Campo0'];
    $usuario=$_POST['Campo1'];
    $password=$_POST['Campo2'];
    $idPage=$_GET['p'];
    
    $objUtilities=$_SESSION['objUtilities'];
    $enterprise=$objUtilities->database->getEnterprise($empresa);

    if (sizeof($enterprise) > 1){
        $objUtilities = new Utilities($enterprise[0],$enterprise[2],$enterprise[3],$enterprise[1]);
        $_SESSION['objUtilities']=$objUtilities;

        $objUtilities->database->getPageFields($idPage);

        $row=$objUtilities->database->validateUser($usuario,$password); 

        if ($row[0] != null) {
            session_start();
            $row = $objUtilities->database->validateRole($row[0]);
            $_SESSION['oprid'] = $row[0];
            $_SESSION['role'] = $row[0];
            $_SESSION['opridDescr'] = $usuario;
            header("location:../Pages/?p=home");
        }
        else
        {
            unset($_SESSION['oprid']);
            unset($_SESSION['role']);
            header("location:../Pages/?p=error");
        }
    }
    else
        header("location:../Pages/?p=login");
?>