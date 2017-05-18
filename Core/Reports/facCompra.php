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

function schemaReport($pdf,$tamanoFuenteForm,$cabecera,$detalle,$totales)
{

        $borde=1;
        $w=5;

	    $pdf->Image("../Images/homeParaiso.jpg", 90, 11, 50, '', 'JPG', false, 'C', false, 300, 'C', false, false, 0, false, false, false);
        $pdf->Ln(27);
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm);
        $pdf->Cell(278,2,'Cra 10 # 18 31 - Buga (Valle)', 0, 1, 'C');
        $pdf->Cell(278,2,'NIT: 6462116-1', 0, 1, 'C');
        $pdf->Cell(278,2,'Celular: 3157902012', 0, 1, 'C');
        $pdf->Cell(278,2,'Teléfono: 2381804', 0, 1, 'C');
        $pdf->Ln(5);
    
    
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+4); 
        $pdf->Cell(278,$w,'FACTURA DE COMPRA '.$cabecera['referencia'], $borde, 1, 'C');
        $pdf->Ln(5);
        
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40,$w,"Fecha factura:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(99,$w,$cabecera['fecha_ingreso'],$borde,0, 'L');
        
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40,$w,"Forma de pago:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(99,$w,$cabecera['forma_pago'],$borde,0, 'L');

        $pdf->Ln(5);
	
        
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40,$w,"Comprador:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(99,$w,$cabecera['nombre_com'],$borde,0, 'L');
    
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40,$w,"Documento:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(99,$w,$cabecera['tipo_documento_com'].' : '.$cabecera['documento_com'],$borde,0, 'L');
        
        $pdf->Ln(5);
        
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40,$w,"Direccion:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(238,$w,$cabecera['direccion_com'],$borde,0, 'L');
        
	$pdf->Ln(5);

        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40,$w,"Celular:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(99,$w,$cabecera['celular_com'],$borde,0, 'L');
        
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40,$w,"Telefono:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(99,$w,$cabecera['telefono_com'],$borde,0, 'L');


	$pdf->Ln(5);	
        
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40,$w,"Proovedor:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(99,$w,$cabecera['nombre_pro'],$borde,0, 'L');
    
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40,$w,"Documento:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(99,$w,$cabecera['tipo_documento_pro'].' : '.$cabecera['documento_pro'],$borde,0, 'L');
        
        $pdf->Ln(5);
        
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40,$w,"Direccion:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(238,$w,$cabecera['direccion_pro'],$borde,0, 'L');
        
	$pdf->Ln(5);

        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40,$w,"Celular:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(99,$w,$cabecera['celular_pro'],$borde,0, 'L');
        
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40,$w,"Telefono:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(99,$w,$cabecera['telefono_pro'],$borde,0, 'L');
        
        $pdf->Ln(10);
        
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(100,$w,'Producto', $borde,0,'C');
        $pdf->Cell(35,$w,'Cantidad',$borde,0,'C');
        $pdf->Cell(40,$w,'Precio de Compra',$borde,0,'C');
        $pdf->Cell(30,$w,'Iva',$borde,0,'C');
        $pdf->Cell(73,$w,'Total Linea',$borde,0,'C');
        $pdf->Ln(5);

        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);  
        
        for ($i=0; $i<sizeof($detalle); $i++){
            $pdf->Cell(100,$w,$detalle[$i]['producto'], $borde,0,'C');
            $pdf->Cell(35,$w,$detalle[$i]['cantidad'],$borde,0,'C');
            $pdf->Cell(40,$w,$detalle[$i]['precio_unitario'],$borde,0,'C');
            $pdf->Cell(30,$w,$detalle[$i]['iva'],$borde,0,'C');
            $pdf->Cell(73,$w,$detalle[$i]['total'],$borde,0,'C');
            $pdf->Ln(5);
        }
        
        $pdf->Ln(5);
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(175,$w,'',0,0,'C');
        $pdf->Cell(30,$w,'Total', $borde,0,'C');
        $pdf->Cell(73,$w,$totales['total'], $borde,0,'C');
		
}

if (isset($_GET['idCabecera']))
{
    $id=$_GET['idCabecera'];
    $idF=$_GET['idF'];
    session_start();
    
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;

    $sql="select * from nb_compras_cabeza_reporte_vw where id=".$id;
    $cabecera=$database->executeQueryOneRow($sql);
    
    $sql="Select * from nb_compras_detalle_reporte_vw where id=".$id;
    $detalle=$database->executeQuery($sql);
    
    $sql="select total from nb_compras_grid_vw where id =".$id;
    $totales=$database->executeQueryOneRow($sql);
    
    $objReport = new Report('Facturacion','L','A4','Nabu','Nabu','Nabu','Nabu');

    $pdf=$objReport->setupForm();

    schemaReport($pdf,10,$cabecera,$detalle,$totales);

    $objReport->exportarPdf($pdf,$id);
}
?>
