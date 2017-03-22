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

function schemaReport($pdf,$tamanoFuenteForm,$cabecera,$detalle,$totales)
{

        $borde=1;
        $w=5;
        
        $pdf->Ln(15);

        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+4); 
        $pdf->Cell(278,$w,$cabecera['tipo_factura'].' Numero '.$cabecera['id'], $borde, 1, 'C');
        $pdf->Ln(5);
        
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(35,$w,"Fecha Factura:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(100,$w,$cabecera['fecha_factura'],$borde,0, 'L');
        
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40,$w,"Fecha Vencimiento:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(103,$w,$cabecera['vencimiento'],$borde,0, 'L');
        
        $pdf->Ln(5);
        
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(35,$w,"Cliente:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(100,$w,$cabecera['nombre'],$borde,0, 'L');
    
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40,$w,"Documento:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(103,$w,$cabecera['tipo_documento'].' # '.$cabecera['documento'],$borde,0, 'L');
        
        $pdf->Ln(5);
        
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(35,$w,"Direccion:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(100,$w,$cabecera['direccion'],$borde,0, 'L');
        
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40,$w,"Telefono:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(30,$w,$cabecera['telefono'],$borde,0, 'L');
        
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(18,$w,"Email:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(55,$w,$cabecera['email'],$borde,0, 'L');
        
        $pdf->Ln(5);
        
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(35, $w,"Vendedor:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(243,$w,$cabecera['vendedor'],$borde,0, 'L');
        
        $pdf->Ln(10);
        
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(35,$w,'Cantidad', $borde,0,'C');
        $pdf->Cell(100,$w,'Producto',$borde,0,'C');
        $pdf->Cell(40,$w,'Precio',$borde,0,'C');
        $pdf->Cell(30,$w,'Iva',$borde,0,'C');
        $pdf->Cell(73,$w,'Total Linea',$borde,0,'C');
        $pdf->Ln(5);

        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);  
        
        for ($i=0; $i<sizeof($detalle); $i++){
            $pdf->Cell(35,$w,$detalle[$i]['cantidad'], $borde,0,'C');
            $pdf->Cell(100,$w,$detalle[$i]['producto'],$borde,0,'C');
            $pdf->Cell(40,$w,$detalle[$i]['precio'],$borde,0,'C');
            $pdf->Cell(30,$w,$detalle[$i]['iva'],$borde,0,'C');
            $pdf->Cell(73,$w,$detalle[$i]['total'],$borde,0,'C');
            $pdf->Ln(5);
        }
        
        $pdf->Ln(5);
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(175,$w,'',0,0,'C');
        $pdf->Cell(30,$w,'Total', $borde,0,'C');
        $pdf->Cell(73,$w,$totales['monto'], $borde,0,'C');
		
}

if (isset($_GET['idCabecera']))
{
    $id=$_GET['idCabecera'];
    $idF=$_GET['idF'];
    
    session_start();
    
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;

    
    //Demo
    if( $idF == 1 ){
        
        $sql="select * from nb_factura_c_print_vw where id=".$id;
        $cabecera=$database->executeQueryOneRow($sql);
    
        $sql="Select * from nb_factura_d_print_vw where id=".$id;
        $detalle=$database->executeQuery($sql);
    
        $sql="select Monto from nb_factura_vw where factura =".$id;
        $totales=$database->executeQueryOneRow($sql);
    }
        
    //Compras
    
        if( $idF == 2 ){
        
        $sql="select * from nb_factura_c_print_vw where id=".$id;
        $cabecera=$database->executeQueryOneRow($sql);
    
        $sql="Select * from nb_factura_d_print_vw where id=".$id;
        $detalle=$database->executeQuery($sql);
    
        $sql="select Monto from nb_factura_vw where factura =".$id;
        $totales=$database->executeQueryOneRow($sql);
    }
    
    //Ventas
    
        if( $idF == 3 ){
        
        $sql="select * from nb_factura_c_print_vw where id=".$id;
        $cabecera=$database->executeQueryOneRow($sql);
    
        $sql="Select * from nb_factura_d_print_vw where id=".$id;
        $detalle=$database->executeQuery($sql);
    
        $sql="select Monto from nb_factura_vw where factura =".$id;
        $totales=$database->executeQueryOneRow($sql);
    }
    
    
    $objReport = new Report('Facturacion','L','A4','Nabu','Nabu','Nabu','Nabu');

    $pdf=$objReport->setupForm();

    schemaReport($pdf,10,$cabecera,$detalle,$totales);

    $objReport->exportarPdf($pdf,$id);
}
?>