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

		Fecha creacion		= 07-08-2017
		Desarrollador		= SM
		Fecha modificacion	= 07-08-2017
		Usuario Modifico	= SM

	*/

	include "../Class/Utilities.php";
	include "../Class/Report.php";

	function schemaReport($pdf,$tamanoFuenteForm,$cabecera,$detalle,$totales,$fecha_desde, $fecha_hasta,$cobradornombre)
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
     	$pdf->Cell(278,$w,'REPORTE RELACION FACTURAS', $borde, 1, 'C');
		$pdf->Cell(278,$w,'COBRADOR: '.$cobradornombre[0], $borde, 1, 'C');
		$pdf->Ln(5);
		$pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
   	$pdf->Cell(40,$w,"Fecha desde:",$borde,0, 'L');
      $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
      $pdf->Cell(99,$w,$fecha_desde,$borde,0, 'L');

		$pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
      $pdf->Cell(40,$w,"Fecha hasta:",$borde,0, 'L');
      $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
      $pdf->Cell(99,$w,$fecha_hasta,$borde,0, 'L');
              
      $pdf->Ln(10);

      $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
  		$pdf->Cell(16,$w,'Factura', $borde,0,'C');
		$pdf->Cell(25,$w,'Fecha',$borde,0,'C');
      $pdf->Cell(25,$w,'Valor Inicial',$borde,0,'C');
      $pdf->Cell(20,$w,'Abonos',$borde,0,'C');
      $pdf->Cell(25,$w,'Descuentos',$borde,0,'C');
		$pdf->Cell(25,$w,'Saldo Actual',$borde,0,'C');
		$pdf->Cell(25,$w,'Ultimo Movimiento',$borde,0,'C');
		$pdf->Cell(25,$w,'Fecha Ultimo Movimiento',$borde,0,'C');
		$pdf->Cell(25,$w,'Abono',$borde,0,'C');	
		$pdf->Cell(25,$w,'Descuento',$borde,0,'C');
      $pdf->Ln(5);

      $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm); 

 		for ($i=0; $i<sizeof($detalle); $i++)
 		{
			$pdf->Cell(16,$w,$detalle[$i]['factura'], $borde,0,'C');
         $pdf->Cell(25,$w,$detalle[$i]['fecha'],$borde,0,'C');
         $pdf->Cell(25,$w,$detalle[$i]['valorInicial'],$borde,0,'C');
         $pdf->Cell(20,$w,$detalle[$i]['abonos'],$borde,0,'C');
         $pdf->Cell(25,$w,$detalle[$i]['descuentos'],$borde,0,'C');
	    	$pdf->Cell(25,$w,$detalle[$i]['saldo'],$borde,0,'C');
	    	$pdf->Cell(25,$w,$detalle[$i]['ultimoMov'],$borde,0,'C');
	    	$pdf->Cell(25,$w,$detalle[$i]['fechaUltimoMov'],$borde,0,'C');
	    	$pdf->Cell(25,$w,'',$borde,0,'C');
	    	$pdf->Cell(25,$w,'',$borde,0,'C');
         $pdf->Ln(5);
   	}
	}

	 $fecha_desde=$_POST['nb_fecha_desde_fld'];
    $fecha_hasta=$_POST['nb_fecha_hasta_fld'];
    $cobrador=$_POST['nb_nombre_tercero_fld'];
    session_start();

   $objUtilities = $_SESSION['objUtilities'];
 	$database = $objUtilities->database;

 	$sql = "SELECT nb_nombre_fld FROM nb_terceros_tbl WHERE nb_id_fld =".$cobrador;
 	$cobradornombre = $database->executeQueryOneRow($sql);
    
   $sql = "SELECT * FROM nb_relacion_facturas_reporte WHERE (fecha BETWEEN STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y')) and "."cobrador=".$cobrador;
   
   $detalle=$database->executeQuery($sql);
        
   $objReport = new Report('Facturacion','L','A4','Nabu','Nabu','Nabu','Nabu');
   $pdf=$objReport->setupForm();

   schemaReport($pdf,5,NULL,$detalle,NULL, $fecha_desde, $fecha_hasta, $cobradornombre);

   $objReport->exportarPdf($pdf,$id);
?>