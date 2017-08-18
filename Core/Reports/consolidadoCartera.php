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
	include "../Class/Report.php";
    include_once "../Class/ExportToExcel.php";

	function schemaReport($pdf,$tamanoFuenteForm,$file,$zona,$fecha_cartera_desde,$fecha_cartera_hasta) 
	{
		$borde=1;
     	$w=5;

    	$pdf->Image("../Images/homeParaiso.jpg", 90, 11, 50, '', 'JPG', false, 'C', false, 300, 'C', false, false, 0, false, false, false);
     	$pdf->Ln(27);
     	$pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+2);
     	$pdf->Cell(278,2,'Cra 10 # 18 31 - Buga (Valle)', 0, 1, 'C');
     	$pdf->Cell(278,2,'NIT: 6462116-1', 0, 1, 'C');
     	$pdf->Cell(278,2,'Celular: 3157902012', 0, 1, 'C');
     	$pdf->Cell(278,2,'Teléfono: 2381804', 0, 1, 'C');
     	$pdf->Ln(5);

     	$pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+4); 
        $pdf->Cell(278,$w,'CONSOLIDADO CARTER', $borde, 1, 'C');
	    $pdf->Cell(278,$w,'ZONA: '.$zona[0], $borde, 1, 'C');
	    $pdf->Ln(5);
	    $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40,$w,"Fecha desde:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(99,$w,$fecha_cartera_hasta,$borde,0, 'L');

        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40,$w,"Fecha hasta:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(99,$w,$fecha_cartera_hasta,$borde,0, 'L');
        $pdf->Write(0, 'Archivo', $file, false, 'C', false);
              
    }

	$fecha_cartera_desde=$_POST['nb_fecha_desde_fld'];
    $fecha_cartera_hasta=$_POST['nb_fecha_hasta_fld'];
    $zona=$_POST['nb_zona_fld'];
    session_start();
    
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;

    $sql="select nb_nombre_fld from nb_zonas_tbl where nb_id_fld=".$zona;
    $zona = $database->executeQueryOneRow($sql);


 	$cabecera=$database->executeQueryOneRow($sql);

 	$sql="";

  	$detalle=$database->executeQuery($sql);

  	$objReport = new Report('Facturacion','L','A4','Nabu','Nabu','Nabu','Nabu');
	$pdf=$objReport->setupForm();
	

    $csv = new ExportExcel();
    $database->conectar();
    $file=$csv->exportarFile('0',$sql);
    $database->desconectar();

    schemaReport($pdf,10,$file,$zona,$fecha_cartera_desde,$fecha_cartera_hasta);
    $objReport->exportarPdf($pdf,$id); 
    
?>