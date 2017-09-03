<?php 

	/*
	The MIT License (MIT)

	Copyright (c) <2017> <Steven Moreno>

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

		Fecha creacion		= 05-08-2017
		Desarrollador		= SM
		Fecha modificacion	= 05-08-2017
		Usuario Modifico	= SM

	*/

	include "../Class/Utilities.php";
	include_once "../Class/ExportToExcel.php";

	
	$fecha_cartera_desde=$_POST['nb_fecha_desde_fld'];
    $fecha_cartera_hasta=$_POST['nb_fecha_hasta_fld'];
    $zona=$_POST['nb_zona_fld'];
    session_start();
    
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;

    $sqlZonas=' ';
    if (isset($zona) and $zona <> '')
        $sqlZonas= "where ID_ZONA =".$zona;

    $rangoFecha =$sql."BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') AND STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y') ";

    $sql="select ID_ZONA as ZONA,";
    $sql =$sql."upper(a.nb_nombre_fld) AS 'NOMBRE ZONA',";
    $sql =$sql."(select count(1) from nb_ventas_grid_vw where EstadoCartera <> '' and date(fechaingreso) $rangoFecha )AS 'FACTURAS INICIALES',";
    $sql =$sql."1  AS 'SALDO INICIAL',";
    $sql =$sql."1  AS 'FACTURAS ENTREGADAS',";
    $sql =$sql."1  AS 'FACTURAS ABONADAS',";
    $sql =$sql."1  AS 'FACTURAS CANCELADAS',";
    $sql =$sql."1  AS 'RECAUDO',";
    $sql =$sql."1  AS 'FACTURAS VENDIDAS',";
    $sql =$sql."1  AS 'NUEVA CARTERA',";
    $sql =$sql."1  AS 'FACTURAS CASTIGADA',";
    $sql =$sql."1  AS 'MONTO CASTIGADO',";
    $sql =$sql."1  AS 'TRASLADOS IN',";
    $sql =$sql."1  AS 'MONTO TRASLADO IN',";
    $sql =$sql."1  AS 'TRASLADOS OUT',";
    $sql =$sql."1  AS 'MONTO TRASLADO OUT',";
    $sql =$sql."1  AS 'SALDO FINAL'";
    $sql =$sql."from nb_conosolidado_cartera_detalle_reporte a";
    $sql =$sql.$sqlZonas;

    $csv = new ExportExcel();
    $database->conectar();
    $file=$csv->exportarFile('0',$sql);
    $database->desconectar();

    $filename=str_replace('../uploads/','',$file);

    header( 'Content-Type: application/octet-stream');
    header( 'Content-Length: '.filesize($file));
    header( 'Content-Disposition:attachment;filename='.$filename);
    readfile($file);
    
?>