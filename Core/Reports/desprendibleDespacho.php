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

function schemaReport($pdf,$tamanoFuenteForm,$desprendible_despacho)
{

    $borde=1;
    $w=5;
    $weight = 19.5;
    /*
	$pdf->Image("../Images/homeParaiso.jpg", 90, 11, 50, '', 'JPG', false, 'C', false, 300, 'C', false, false, 0, false, false, false);
    $pdf->Ln(27);
    $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm-2);
    $pdf->Cell(278,2,'Cra 10 # 18 31 - Buga (Valle)', 0, 1, 'C');
    $pdf->Cell(278,2,'NIT: 6462116-1', 0, 1, 'C');
    $pdf->Cell(278,2,'Celular: 3157902012', 0, 1, 'C');
    $pdf->Cell(278,2,'Teléfono: 2381804', 0, 1, 'C');
    $pdf->Ln(3);
    
    $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
    $pdf->Cell(278,$w,'DESPRENDIBLE DE DESPACHO', $borde, 1, 'C');
    $pdf->Ln(4);*/
	$pdf->SetMargins(1, 2, -1, false); // set the margins
    $pdf->Ln(0.1); 
    $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
    $pdf->Cell(20,$w,"Vendedor:",$borde,0, 'L');
    $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
    $pdf->Cell(49.5,$w,$desprendible_despacho[0]['nombreven'],$borde,0, 'L');

	
	$pdf->Ln(5);
    $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
    $pdf->Cell(20,$w,"Despachador:",$borde,0, 'L');
    $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
    $pdf->Cell(49.5,$w,$desprendible_despacho[0]['usuariodes'],$borde,0, 'L');
	
	$pdf->Ln(5);
    $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
    $pdf->Cell(20,$w,"Fecha:",$borde,0, 'L');
    $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
    $pdf->Cell(49.5,$w,$desprendible_despacho[0]['fecha'],$borde,0, 'L');
	
	$pdf->Ln(5);
    $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
    $pdf->Cell(20,$w,"Zona:",$borde,0, 'L');
    $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
    $pdf->Cell(49.5,$w,$desprendible_despacho[0]['nb_zona_fld'],$borde,0, 'L');
	
	$pdf->Ln(10);

    $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
	$pdf->Cell(28,$w,"PRODUCTO",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(14,$w,"CANTIDAD",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(14,$w,"ENTRADAS",$borde,0,'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(14,$w,"DIFERENCIA",$borde,0,'C', 0, '', 0, false, 'T', 'C');
   
    $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm); 
    $total = 0;
    
    for($i=0; $i<sizeof($desprendible_despacho);$i++){
    	$pdf->Ln(5);
    	$pdf->Cell(28,$w,$desprendible_despacho[$i]["descripcion"],$borde,0, 'C');
        $pdf->Cell(14,$w,$desprendible_despacho[$i]["cantidad"],$borde,0, 'C');
        $pdf->Cell(14,$w,"",$borde,0, 'C');
    	$pdf->Cell(14,$w,"",$borde,0, 'C');
        $total = $total + intval($desprendible_despacho[$i]["cantidad"]);
    }
    
    $pdf->Ln(5);
    $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
    $pdf->Cell(28,$w,"TOTAL",$borde,0,'C', 0, '', 0, false, 'T', 'C');
    $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm); 
    $pdf->Cell(14,$w,$total,$borde,0,'C');
    $pdf->Cell(14,$w,"",$borde,0,'C');
    $pdf->Cell(14,$w,"",$borde,0,'C');

    $pdf->Ln(10);
    $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
    $pdf->Cell($weight,$w,"Recibí Conforme",0,0,'C', 0, '', 0, false, 'T', 'C');

}

if (isset($_GET['idCabecera'])){
    
    $id_despacho=$_GET['idCabecera'];

    session_start();
    
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;


    $query = "select a.nombreven,a.usuariodes,a.fecha,A.nb_zona_fld,b.producto,b.descripcion, b.cantidad
            from  nb_despachos_grid_vw a, nb_despacho_detalle_tbl b
            where a.nb_id_fld = b.factura
            and a.nb_id_fld = ".$id_despacho;

    $desprendible_despacho=$database->executeQuery($query);

    

    //$objReport = new Report('Facturacion','L','A4','Nabu','Nabu','Nabu','Nabu');
    $objReport = new Report('Facturacion','P','POS','Nabu','Nabu','Nabu','Nabu');

    $pdf=$objReport->setupForm();

    
    schemaReport($pdf,5,$desprendible_despacho);

    $objReport->exportarPdf($pdf,$id);
}

?>
