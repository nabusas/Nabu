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

function schemaReport($pdf,$tamanoFuenteForm,$comprobante_devols)
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
    $pdf->Cell(278,$w,'COMPROBANTE DE DEVOLUCIONES', $borde, 1, 'C');
    $pdf->Ln(4);
	
    $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
    $pdf->Cell(83,$w,"Fecha:",$borde,0, 'L');
    $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
    $pdf->Cell(194,$w,$comprobante_devols[0]['nb_fecha_devolucion_fld'],$borde,0, 'L');
	
	$pdf->Ln(5);
    $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
    $pdf->Cell(83,$w,"Cliente:",$borde,0, 'L');
    $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
    $pdf->Cell(194,$w,$comprobante_devols[0]['nb_nombre_tercero_fld'],$borde,0, 'L');
	
	$pdf->Ln(5);
    $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
    $pdf->Cell(83,$w,"Factura:",$borde,0, 'L');
    $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
    $pdf->Cell(194,$w,$comprobante_devols[0]['referencia'],$borde,0, 'L');
	
	$pdf->Ln(5);
    $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
    $pdf->Cell(83,$w,"Recibe:",$borde,0, 'L');
    $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
    $pdf->Cell(194,$w,$comprobante_devols[0]['responsable'],$borde,0, 'L');
	
	$pdf->Ln(10);

    $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
	$pdf->Cell(66.5,$w,"PRODUCTO",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(66.5,$w,"CANTIDAD",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(66.5,$w,"VALOR",$borde,0,'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(66.5,$w,"SUBTOTAL",$borde,0,'C', 0, '', 0, false, 'T', 'C');
   
    $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm); 
    $total = 0;

    for($i=0; $i<sizeof($comprobante_devols);$i++){
    	$pdf->Ln(5);
    	$pdf->Cell(66.5,$w,$comprobante_devols[$i]["nombre_producto"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    	$pdf->Cell(66.5,$w,$comprobante_devols[$i]["cantiad"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    	$pdf->Cell(66.5,$w,$comprobante_devols[$i]["valor"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    	$pdf->Cell(66.5,$w,'$'.$comprobante_devols[$i]["sub_total"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        $total = $total + $comprobante_devols[$i]["sub_total"];
    }

    $pdf->Ln(5);
    $pdf->Cell(66.5,$w,"",0,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(66.5,$w,"",0,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
    $pdf->Cell(66.5,$w,"TOTAL",$borde,0,'C', 0, '', 0, false, 'T', 'C');
    $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm); 
    $pdf->Cell(66.5,$w,'$'.$total,$borde,0,'C', 0, '', 0, false, 'T', 'C');

    	

}

if (isset($_GET['idCabecera'])){
    
    $id_devolucion=$_GET['idCabecera'];

   
    session_start();
    
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;


    $query = "
    select b.*, 
    a.producto id_producto,
    c.nb_nombre_fld nombre_producto, 
    a.cantidad cantiad, 
    a.subtotal valor,
    ( a.cantidad * replace(replace(left(a.subtotal, length(a.subtotal) - 3),'$',''),',','')) sub_total
    from nb_devoluciones_detalle_tbl a, (
    select nb_id_fld, nb_factura_fld, nb_fecha_devolucion_fld, nb_responsable_fld,substring(nb_referencia_fld,2,length(nb_referencia_fld)) referencia, nb_nombre_tercero_fld 
    from nb_devoluciones_vw) b,
    nb_productos_tbl c
    where a.factura = b.nb_id_fld
    and a.producto = c.nb_id_fld
    and b.nb_id_fld = ". $id_devolucion;

    $comprobante_devols=$database->executeQuery($query);
    

    $objReport = new Report('Facturacion','L','A4','Nabu','Nabu','Nabu','Nabu');

    $pdf=$objReport->setupForm();

    
    schemaReport($pdf,10,$comprobante_devols);

    $objReport->exportarPdf($pdf,$id);
}

?>
