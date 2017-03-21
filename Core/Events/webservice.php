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

	Fecha creacion		= 17-03-2017
	Desarrollador		= CAGC
	Fecha modificacion	= 17-03-2017
	Usuario Modifico	= CAGC

*/
    include_once "../Class/Utilities.php";

    //Parametros de entrada
    if ( isset($_GET['token']) ){
            $token =$_GET['token'];
            if ($token == 'e53db2b5b93254fddb55de43a3323970'){
                
                header('Content-type: application/json');
                
                $empresa =$_GET['empre'];
                $bd =$_GET['bd'];
                $sqlcode =$_GET['sqlco'];
                $mensaje =$_GET['messa'];
                $binds=explode(";",$_GET['binds']);
                
                $objUtilities = new Utilities('localhost','nabu','6492496',$bd);
                $database = $objUtilities->database;

                $sql=$database->getSqlStatement($empresa,$sqlcode,$binds,"1");

                $count=$sql[0];

                if ( $count > 0 ){
                    $value = false;
                    $mensaje = "Ya existe ".$mensaje;
                }
                else{
                    $value = true;
                }

                $result["status"] =$value;
                $result["message"] =$mensaje;

                echo json_encode(array('result'=>$result));
            }
    }
    
?>