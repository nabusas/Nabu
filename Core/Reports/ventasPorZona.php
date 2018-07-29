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
	Fecha modificacion	= 18-05-2017
	Usuario Modifico	= CAGC

*/

include "../Class/Utilities.php";
include "../Class/Report.php";
include_once "../Class/ExportToExcel.php";

function schemaReport($pdf,$tamanoFuenteForm,$fecha_desde, $fecha_hasta, $zona, $ventas_por_zona)
{

    $borde=1;
    $w=5;

	$pdf->Image("../Images/homeParaiso.jpg", 90, 11, 50, '', 'JPG', false, 'C', false, 300, 'C', false, false, 0, false, false, false);
    $pdf->Ln(27);
    $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm-2);
    $pdf->Cell(278,2,'Cra 10 # 18 31 - Buga (Valle)', 0, 1, 'C');
    $pdf->Cell(278,2,'NIT: 6462116-1', 0, 1, 'C');
    $pdf->Cell(278,2,'Celular: 3157902012', 0, 1, 'C');
    $pdf->Cell(278,2,'Teléfono: 2381804', 0, 1, 'C');
    $pdf->Ln(3);
    
    $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
    $pdf->Cell(278,$w,'VENTAS POR ZONA', $borde, 1, 'C');
    $pdf->Write(0, 'Archivo', $file, false, 'C', false);
    $pdf->Ln(4);
	
    $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
    $pdf->Cell(83,$w,"Fecha Desde:",$borde,0, 'L');
    $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
    $pdf->Cell(194,$w,$fecha_desde,$borde,0, 'L');
	
	$pdf->Ln(5);
    $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
    $pdf->Cell(83,$w,"Fecha Hasta:",$borde,0, 'L');
    $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
    $pdf->Cell(194,$w,$fecha_hasta,$borde,0, 'L');
	
	

	$pdf->Ln(5);
    $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
    $pdf->Cell(83,$w,"Zona:",$borde,0, 'L');
    $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
    $pdf->Cell(194,$w,$zona,$borde,0, 'L');
	
	
	$pdf->Ln(10);
    $pdf->Cell(50,$w,"",0,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(50,$w,"FACTURAS CONTADO",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(50,$w,"FACTURAS CREDITO",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(75,$w,"FACTURAS CREDICONTADO",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Ln(5);
	$pdf->Cell(25.5,$w,"FECHA",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(25.5,$w,"ZONA",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(25.5,$w,"#",$borde,0,'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(25.5,$w,"EFECTIVO",$borde,0,'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(25.5,$w,"#",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(25.5,$w,"CARTERA",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(25.5,$w,"#",$borde,0,'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(25.5,$w,"EFECTIVO",$borde,0,'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(25.5,$w,"CARTERA",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(25.5,$w,"EFECTIVO GEN.",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(25.5,$w,"CARTERA GEN.",$borde,0,'C', 0, '', 0, false, 'T', 'C');

    $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);
    for($i=0; $i<sizeof($ventas_por_zona);$i++){
    	$pdf->Ln(5);
    	$pdf->Cell(25.5,$w,$ventas_por_zona[$i]["fechaingreso"],$borde,0, 'C');
    	$pdf->Cell(25.5,$w,$ventas_por_zona[$i]["zona"],$borde,0, 'C');
    	$pdf->Cell(25.5,$w,$ventas_por_zona[$i]["contado_cant"],$borde,0, 'C');
    	$pdf->Cell(25.5,$w,$ventas_por_zona[$i]["contado_efec"],$borde,0, 'C');
    	$pdf->Cell(25.5,$w,$ventas_por_zona[$i]["credito_cant"],$borde,0, 'C');
    	$pdf->Cell(25.5,$w,$ventas_por_zona[$i]["creadito_cart"],$borde,0, 'C');
    	$pdf->Cell(25.5,$w,$ventas_por_zona[$i]["credicont_cant"],$borde,0, 'C');
    	$pdf->Cell(25.5,$w,$ventas_por_zona[$i]["credicont_efec"],$borde,0, 'C');
    	$pdf->Cell(25.5,$w,$ventas_por_zona[$i]["credicont_cart"],$borde,0, 'C');
    	$pdf->Cell(25.5,$w,$ventas_por_zona[$i]["efectivo_generado"],$borde,0, 'C');
    	$pdf->Cell(25.5,$w,$ventas_por_zona[$i]["cartera_generada"],$borde,0, 'C');
    }

}


    $fecha_desde=$_POST['nd_fecha_desde_fld'];
    $fecha_hasta=$_POST['nd_fecha_hasta_fld'];
    $zona=$_POST['nb_zona_fld'];
	
    session_start();
    
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;

    if($zona){
        $zona_query = "select nb_nombre_fld from nb_zonas_tbl where nb_id_fld = ".$zona;
        $zona_name = $database->executeQueryOneRow($zona_query);
    }

    $query = "select * from nb_ventas_zona_vw
              where str_to_date(fechaingreso,'%d/%m/%Y') 
                    between  str_to_date('".$fecha_desde."','%d/%m/%Y') and str_to_date('".$fecha_hasta."','%d/%m/%Y')";
    if($zona){
        $query = $query." and zona = '".$zona_name[0]."'";
    }

    $query = $query." order by fechaingreso";


    $ventas_por_zona=$database->executeQuery($query);


    $objReport = new Report('Facturacion','L','A4','Nabu','Nabu','Nabu','Nabu');

    $pdf=$objReport->setupForm();

    $csv = new ExportExcel();
    $database->conectar();
    $file=$csv->exportarFile('0',$query);
    $database->desconectar();

    schemaReport($pdf,10,$fecha_desde, $fecha_hasta, $zona_name[0],$ventas_por_zona);

    $objReport->exportarPdf($pdf,$id);

?>
