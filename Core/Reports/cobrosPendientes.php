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

function schemaReport($pdf,$tamanoFuenteForm,$cabecera,$detalle,$totales,$fecha_despacho_desde, $fecha_despacho_hasta,$zona)
{

        $borde=1;
        $w=5;

	$pdf->Image("../Images/homeParaiso.jpg", 90, 11, 50, '', 'JPG', false, 'C', false, 300, 'C', false, false, 0, false, false, false);

	$pdf->Ln(31);
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+4); 
        $pdf->Cell(278,$w,'RELACION DE COBROS PENDIENTES POR ZONA', $borde, 1, 'C');
	$pdf->Cell(278,$w,'ZONA: '.$zona[0], $borde, 1, 'C');
	$pdf->Ln(5);
	$pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40,$w,"Fecha desde:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(99,$w,$fecha_despacho_desde,$borde,0, 'L');

	$pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40,$w,"Fecha hasta:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(99,$w,$fecha_despacho_hasta,$borde,0, 'L');
              
        $pdf->Ln(10);
        
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(16,$w,'Fecha de cobro', $borde,0,'C');
        $pdf->Cell(25,$w,'Referencia factura',$borde,0,'C');
        $pdf->Cell(25,$w,'Cliente',$borde,0,'C');
        $pdf->Cell(20,$w,'Barrio',$borde,0,'C');
        $pdf->Cell(25,$w,'Direccion',$borde,0,'C');
	$pdf->Cell(25,$w,'Telefono',$borde,0,'C');
	$pdf->Cell(25,$w,'Valor factura',$borde,0,'C');
	$pdf->Cell(25,$w,'Valor abonos',$borde,0,'C');
	$pdf->Cell(25,$w,'Valor descuento',$borde,0,'C');	
	$pdf->Cell(25,$w,'Saldo pendiente',$borde,0,'C');
	$pdf->Cell(25,$w,'Abono realizado',$borde,0,'C');
	$pdf->Cell(25,$w,'Fecha proximo pago',$borde,0,'C');	
        $pdf->Ln(5);

        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);  
        
        for ($i=0; $i<sizeof($detalle); $i++){
            $pdf->Cell(16,$w,$detalle[$i]['fechadecobro'], $borde,0,'C');
            $pdf->Cell(25,$w,$detalle[$i]['factura'],$borde,0,'C');
            $pdf->Cell(25,$w,$detalle[$i]['nombre'],$borde,0,'C');
            $pdf->Cell(20,$w,$detalle[$i]['barrio'],$borde,0,'C');
            $pdf->Cell(25,$w,$detalle[$i]['direccion'],$borde,0,'C');
	    $pdf->Cell(25,$w,$detalle[$i]['telefono'],$borde,0,'C');
	    $pdf->Cell(25,$w,$detalle[$i]['valorfactura'],$borde,0,'C');
	    $pdf->Cell(25,$w,$detalle[$i]['valorabonos'],$borde,0,'C');
	    $pdf->Cell(25,$w,$detalle[$i]['valordescuentos'],$borde,0,'C');
	    $pdf->Cell(25,$w,$detalle[$i]['saldopendiente'],$borde,0,'C');
	    $pdf->Cell(25,$w,'',$borde,0,'C');
	    $pdf->Cell(25,$w,'',$borde,0,'C');
            $pdf->Ln(5);
        }
	$pdf->Ln(5);
	$pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40,$w,"Total facturas a cobrar:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(99,$w,$cabecera['totalfacturas'],$borde,0, 'L');
	$pdf->Ln(5);
	$pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(40,$w,"Total saldo a cobrar:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(99,$w,$cabecera['totalsaldo'],$borde,0, 'L');
}


    $fecha_desde=$_POST['nb_fecha_desde_fld'];
    $fecha_hasta=$_POST['nb_fecha_hasta_fld'];
    $zona=$_POST['nb_zona_fld'];
    session_start();
    
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;

    $sql="select nb_nombre_fld from nb_zonas_tbl where nb_id_fld=".$zona;
    $zonanombre = $database->executeQueryOneRow($sql);

     $sql="select count(nb_id_fld) as totalfacturas,CONCAT('$', FORMAT(ROUND(sum(REPLACE(REPLACE(saldopendiente,',',''),'$','')), 2), 2)) as totalsaldo from (Select nb_id_fld,saldopendiente, 1 as grupo from nb_cobros_pendientes_reporte where (fechadecobro BETWEEN STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y')) and "."zona=".$zona.") t group by grupo";
    $cabecera=$database->executeQueryOneRow($sql);
    
    $sql="Select * from nb_cobros_pendientes_reporte where (fechadecobro BETWEEN STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y')) and "."zona=".$zona;
    $detalle=$database->executeQuery($sql);
    
        
    $objReport = new Report('Facturacion','L','A4','Nabu','Nabu','Nabu','Nabu');

    $pdf=$objReport->setupForm();

    schemaReport($pdf,5,$cabecera,$detalle,NULL, $fecha_desde, $fecha_hasta,$zonanombre);

    $objReport->exportarPdf($pdf,$id);

?>
