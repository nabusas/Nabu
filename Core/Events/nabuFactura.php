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
	Fecha modificacion	= 02-02-2016
	Usuario Modifico	= CAGC

*/
    include "../Class/Utilities.php";
    include "../Class/NabuEvent.php";

    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;

    if (!isset($_POST["nb_fact_1_fld"]) or $_POST["nb_fact_1_fld"] ==''){
        $facturaN=$database->getInvoiceNum();
        $factura=$facturaN[0];
        $_POST["nb_fact_1_fld"]=$factura;
    }
    else
        $factura=$_POST["nb_fact_1_fld"];

    $accion=$_GET['accion'];
    
     $nabuEvent = new NabuEvent($_GET['p'], $_POST);
	 $result=$nabuEvent->getEventSql($accion);
     $database->setInvoiceDeta($factura);


    if ($factura != 0)
        header("location:../Pages/nabu.php?p=nb_factura_de_pg&factura=".$factura);
    else
        header("location:../Pages/nabu.php?p=nb_facturacion_pg");
        


?>