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

function schemaReport($pdf,$tamanoFuenteForm,$cabecera,$detalle,$totales,$fecha_despacho_desde, $fecha_despacho_hasta)
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
        $pdf->Cell(278,$w,'SALIDA DE MERCANCIA', $borde, 1, 'C');
        $pdf->Ln(5);
        
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40,$w,"Fecha desde:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(99,$w,$fecha_despacho_desde,$borde,0, 'L');

	$pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40,$w,"Fecha hasta:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(99,$w,$fecha_despacho_hasta,$borde,0, 'L');

        $pdf->Ln(5);
	
        
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40,$w,"Responsable:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(99,$w,$cabecera['nombre'],$borde,0, 'L');

	$pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40,$w,"Codigo:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(99,$w,$cabecera['codigotercero'],$borde,0, 'L');
        
                
	$pdf->Ln(5);

        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40,$w,"Celular:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(99,$w,$cabecera['celular'],$borde,0, 'L');
        
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40,$w,"Telefono:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(99,$w,$cabecera['telefono'],$borde,0, 'L');
        
        $pdf->Ln(10);
        
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(53,$w,'Producto', $borde,0,'C');
        $pdf->Cell(45,$w,'Transito',$borde,0,'C');
        $pdf->Cell(45,$w,'Cantidad',$borde,0,'C');
        $pdf->Cell(45,$w,'Entradas',$borde,0,'C');
        $pdf->Cell(45,$w,'Ventas',$borde,0,'C');
	$pdf->Cell(45,$w,'Pendiente',$borde,0,'C');
        $pdf->Ln(5);

        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);  
        
        for ($i=0; $i<sizeof($detalle); $i++){
            $pdf->Cell(53,$w,$detalle[$i]['producto']."-".$detalle[$i]['descripcion'], $borde,0,'C');
            $pdf->Cell(45,$w,$detalle[$i]['transito'],$borde,0,'C');
            $pdf->Cell(45,$w,$detalle[$i]['cantidad'],$borde,0,'C');
            $pdf->Cell(45,$w,$detalle[$i]['entradas'],$borde,0,'C');
            $pdf->Cell(45,$w,$detalle[$i]['ventas'],$borde,0,'C');
	    $pdf->Cell(45,$w,$detalle[$i]['pendiente'],$borde,0,'C');
            $pdf->Ln(5);
        }
}


    $fecha_despacho_desde=$_POST['nb_fecha_despacho_desde_fld'];
    $fecha_despacho_hasta=$_POST['nb_fecha_despacho_hasta_fld'];
    $codigo_tercero=$_POST['nb_codigo_tercero_fld'];
    session_start();
    
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;

    $sql="select * from nb_despacho_cabeza_reporte where (fecha BETWEEN STR_TO_DATE('".$fecha_despacho_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_despacho_hasta."','%d/%m/%Y')) and "."codigotercero=".$codigo_tercero." LIMIT 1";
    $cabecera=$database->executeQueryOneRow($sql);
    
    $sql="Select * from nb_despacho_detalle_reporte where (fecha BETWEEN STR_TO_DATE('".$fecha_despacho_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_despacho_hasta."','%d/%m/%Y')) and "."codigotercero=".$codigo_tercero;
    $detalle=$database->executeQuery($sql);
    
        
    $objReport = new Report('Facturacion','L','A4','Nabu','Nabu','Nabu','Nabu');

    $pdf=$objReport->setupForm();

    schemaReport($pdf,10,$cabecera,$detalle,NULL, $fecha_despacho_desde, $fecha_despacho_hasta);

    $objReport->exportarPdf($pdf,$id);

?>
