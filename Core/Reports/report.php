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

	Fecha creacion		= 04-02-2016
	Desarrollador		= CAGC
	Fecha modificacion	= 04-02-2016
	Usuario Modifico	= CAGC

*/

include "../Class/Utilities.php";
include "../Class/Report.php";

$id=0;

if ( isset($_GET['tipo'])){
    $tipo=$_GET['tipo'];

   if ($tipo == 'fact'){
        if ( isset($_GET['id']))
            $id=$_GET['id'];
    
    }   
    session_start();

    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;

    $sql="Select * from nb_factura_C_Print_vw where Id=".$id;
    $cabecera=$database->executeQueryOneRow($sql);
    
    $sql="Select * from nb_factura_d_print_vw where Id=".$id;
    $detalle=$database->executeQuery($sql);
    
    $sql="select Monto from nb_factura_vw where Factura =".$id;
    $totales=$database->executeQueryOneRow($sql);
        
    $objReport = new Report('Facturacion','L','A4','Nabu','Nabu','Nabu','Nabu');

    $objReport->setupForm();

    $objReport->schemaReport(10,$cabecera,$detalle,$totales);

    $objReport->exportarPdf($id);
}
?>