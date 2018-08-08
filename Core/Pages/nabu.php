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
	Fecha modificacion	= 05-12-2016
	Usuario Modifico	= CAGC

*/
    include "../Class/TemplatePage.php";

    if( !isset($_GET['p']) )
        $_GET['p']='login';

    if($_GET['p'] == 'login'){
        session_start();
        session_unset();
        $objTemplate =new TemplatePage(null);
        $objTemplate->initTemplate('nabu',$_GET['p']);
    }
	else {
        session_start();
        if(isset($_SESSION['role']) and $_SESSION['role'] <>'') {
            $objTemplate =new TemplatePage($_SESSION['objUtilities']);
            if($objTemplate->objUtilities->validateRole($_SESSION['app'],$_GET['p'], $_SESSION['role'])){
                $objTemplate->initTemplate($_SESSION['app'],$_GET['p']);
            }    
        }
    }
?>