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
        
        $pdf->Image("../Images/homeParaiso.jpg", 90, 11, 50, '', 'JPG', false, 'C', false, 300, 'C', false, false, 0, false, false, false);

	$pdf->Ln(31);

        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+4); 
        $pdf->Cell(278,$w,'FACTURA DE VENTA '.$cabecera['referencia'], $borde, 1, 'C');
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
        $pdf->Cell(40,$w,"Fecha primer cobro:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(238,$w,$cabecera['fecha_primer_cobro'],$borde,0, 'L');

	$pdf->Ln(5);
        
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40,$w,"Cliente:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(99,$w,$cabecera['nombre_cliente'],$borde,0, 'L');
    
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40,$w,"Documento:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(99,$w,$cabecera['tipo_documento_cliente'].' : '.$cabecera['documento_cliente'],$borde,0, 'L');
        
        $pdf->Ln(5);
        
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40,$w,"Direccion:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(99,$w,$cabecera['direccion_cliente'],$borde,0, 'L');


	$pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40,$w,"Barrio:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(99,$w,$cabecera['barrio_cliente'],$borde,0, 'L');
        
	$pdf->Ln(5);

        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40,$w,"Celular:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(99,$w,$cabecera['celular_cliente'],$borde,0, 'L');
        
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40,$w,"Telefono:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(99,$w,$cabecera['telefono_cliente'],$borde,0, 'L');
        
        $pdf->Ln(5);

	$pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40,$w,"Datos contacto:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(238,$w,$cabecera['contacto_nombre_cli'].' : '.$cabecera['contacto_tel_cli'],$borde,0, 'L');
        
	$pdf->Ln(5);

        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40, $w,"Vendedor:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(238,$w,$cabecera['nombre_vendedor'],$borde,0, 'L');

	$pdf->Ln(5);

	$pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40, $w,"Cobrador:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(238,$w,$cabecera['nombre_cobrador'],$borde,0, 'L');
        
        $pdf->Ln(10);
        
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(107,$w,'Producto', $borde,0,'C');
        $pdf->Cell(44,$w,'Cantidad',$borde,0,'C');
        $pdf->Cell(47,$w,'Precio',$borde,0,'C');
        #$pdf->Cell(30,$w,'Iva',$borde,0,'C');
        $pdf->Cell(80,$w,'Total Linea',$borde,0,'C');
        $pdf->Ln(5);

        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);  
        
        for ($i=0; $i<sizeof($detalle); $i++){
            $pdf->Cell(107,$w,$detalle[$i]['producto'], $borde,0,'C');
            $pdf->Cell(44,$w,$detalle[$i]['cantidad'],$borde,0,'C');
            $pdf->Cell(47,$w,$detalle[$i]['precio_unitario'],$borde,0,'C');
            #$pdf->Cell(30,$w,$detalle[$i]['iva'],$borde,0,'C');
            $pdf->Cell(80,$w,$detalle[$i]['total'],$borde,0,'C');
            $pdf->Ln(5);
        }
        
        $pdf->Ln(5);
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(151,$w,'',0,0,'C');
        $pdf->Cell(47,$w,'Total', $borde,0,'C');
        $pdf->Cell(80,$w,$totales['total'], $borde,0,'C');
		
}

if (isset($_GET['idCabecera']))
{
    $id=$_GET['idCabecera'];
    $idF=$_GET['idF'];
    session_start();
    
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;

    $sql="select * from nb_ventas_cabeza_reporte_vw where id=".$id;
    $cabecera=$database->executeQueryOneRow($sql);
    
    $sql="Select * from nb_ventas_detalle_reporte_vw where id=".$id;
    $detalle=$database->executeQuery($sql);
    
    $sql="select total from nb_ventas_grid_vw where id =".$id;
    $totales=$database->executeQueryOneRow($sql);
    
    $objReport = new Report('Facturacion','L','A4','Nabu','Nabu','Nabu','Nabu');

    $pdf=$objReport->setupForm();

    schemaReport($pdf,10,$cabecera,$detalle,$totales);

    $objReport->exportarPdf($pdf,$id);
}
?>
