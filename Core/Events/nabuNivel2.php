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
	Fecha modificacion	= 24-02-2017
	Usuario Modifico	= CAGC

*/
    include_once "../Class/Utilities.php";
    include_once "../Class/NabuEvent.php";

    session_start();

    $objUtilities = $_SESSION['objUtilities'];
    $oprid= $_SESSION['oprid'];

    $database = $objUtilities->database;
    
    $audit=$database->getPageAudit($_SESSION['app'],$_GET['p']);
    $accion=$_GET['accion'];
    $options=$database->getGridSaveOptions($_SESSION['app'],$_GET['p']);

    $pagDetalle = $options[0];
    $tablaCabecera = $options[1];
    $idCabecera = $options[2];
    $tablaDetalle = $options[3];
    $idDetalle = $options[4];
    $lineasDetalle = $options[5];

    if (!isset($_POST[$idCabecera]) or $_POST[$idCabecera] ==''){
        $idN=$database->getInvoiceNum($tablaCabecera,$idCabecera);
        $id=$idN[0];
        $_POST[$idCabecera]=$id;
        $insert = true;
    }
    else{
        $insert = false;
        $id=$_POST[$idCabecera];
    }
        

    $nabuEvent = new NabuEvent($_GET['p'], $_POST);

    $result=$nabuEvent->getEventSql($accion,$audit[0]);

    if ($insert === true)
        $database->setInvoiceDeta($tablaDetalle,$idDetalle,$id,$lineasDetalle,$oprid);
    else
        $database->setInvoiceDetaUpdt($tablaDetalle,$oprid);

    if ($id != 0){
        header("location:../Pages/nabu.php?p=".$pagDetalle."&idCabecera=".$id);
    }
    else{
        header("location:../Pages/nabu.php?p=".$_GET['p']);
    }
?>