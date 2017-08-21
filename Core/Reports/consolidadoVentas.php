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

		Fecha creacion		= 07-08-2017
		Desarrollador		= SM
		Fecha modificacion	= 07-08-2017
		Usuario Modifico	= SM

	*/

	include "../Class/Utilities.php";
	include "../Class/Report.php";

	function schemaReport($pdf,$tamanoFuenteForm,$cabecera,$detalle,$totales,$fecha_cv_desde, $fecha_cv_hasta) 
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
     	$pdf->Cell(278,$w,'CONSOLIDADO DE VENTAS', $borde, 1, 'C');
      $pdf->Ln(5);

      $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
      $pdf->Cell(40,$w,"Fecha desde:",$borde,0, 'L');
      $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
      $pdf->Cell(99,$w,$fecha_cv_desde,$borde,0, 'L');

      $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
      $pdf->Cell(40,$w,"Fecha hasta:",$borde,0, 'L');
      $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
      $pdf->Cell(99,$w,$fecha_cv_hasta,$borde,0, 'L');

      //$pdf->Ln(5);

      //$pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
      //$pdf->Cell(40,$w,"Responsable:",$borde,0, 'L');
      //$pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
      //$pdf->Cell(99,$w,$cabecera['nombre'],$borde,0, 'L');

      //$pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
      //$pdf->Cell(40,$w,"Codigo:",$borde,0, 'L');
      //$pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
      //$pdf->Cell(99,$w,$cabecera['codigotercero'],$borde,0, 'L');

      //$pdf->Ln(5);

      //$pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
      //$pdf->Cell(40,$w,"Celular:",$borde,0, 'L');
      //$pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
      //$pdf->Cell(99,$w,$cabecera['celular'],$borde,0, 'L');
        
      //$pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
      //$pdf->Cell(40,$w,"Telefono:",$borde,0, 'L');
      //$pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
      //$pdf->Cell(99,$w,$cabecera['telefono'],$borde,0, 'L');
        
      $pdf->Ln(5);

      $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
      $pdf->Cell(27,$w,'Fecha', $borde,0,'C');
      $pdf->Cell(27,$w,'Zona',$borde,0,'C');
      $pdf->Cell(35,$w,'Nombre Vendedor',$borde,0,'C');
      $pdf->Cell(45,$w,'Nombre Producto',$borde,0,'C');
      $pdf->Cell(27,$w,'Cantidad',$borde,0,'C');
		$pdf->Cell(27,$w,'Precio',$borde,0,'C');
		$pdf->Cell(27,$w,'Iva',$borde,0,'C');
		$pdf->Cell(27,$w,'Subtotal',$borde,0,'C');
		$pdf->Cell(27,$w,'Total',$borde,0,'C');
      $pdf->Ln(5);

      $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);  
        
     	for ($i=0; $i<sizeof($detalle); $i++)
     	{
      	$pdf->Cell(27,$w,$detalle[$i]['fecha'], $borde,0,'C');
         $pdf->Cell(27,$w,$detalle[$i]['Zona'], $borde,0,'C');
         $pdf->Cell(35,$w,$detalle[$i]['NombreV'], $borde,0,'C');
         $pdf->Cell(45,$w,$detalle[$i]['NombreP'], $borde,0,'C');
         $pdf->Cell(27,$w,$detalle[$i]['Cantidad'], $borde,0,'C');
	    	$pdf->Cell(27,$w,$detalle[$i]['Precio'], $borde,0,'C');
	    	$pdf->Cell(27,$w,$detalle[$i]['Iva'], $borde,0,'C');
	    	$pdf->Cell(27,$w,$detalle[$i]['Subtotal'], $borde,0,'C');
	    	$pdf->Cell(27,$w,$detalle[$i]['Total'], $borde,0,'C');
      	$pdf->Ln(5);
     	}
	}

	$fecha_cv_desde=$_POST['nb_fecha_cv_desde_fld'];
   $fecha_cv_hasta=$_POST['nb_fecha_cv_hasta_fld'];
   $codigo_tercero=$_POST['nb_nombre_tercero_fld'];
   $zona = $_POST['nb_zona_fld'];
   session_start();

   $objUtilities = $_SESSION['objUtilities'];
  	$database = $objUtilities->database;

  	if($codigo_tercero)
  	{      
  		$where = " AND codigotercero = '".$codigo_tercero."' ";
  	}

  	if($zona)
  	{      
  		$where.= " AND zonaid = '".$zona."' ";
  	}

  	$sql="
  			SELECT * 
  			FROM nb_consolidado_ventas_cabeza_reporte 
  			WHERE (fecha BETWEEN STR_TO_DATE('".$fecha_cv_desde."','%d/%m/%Y') 
  			AND STR_TO_DATE('".$fecha_cv_hasta."','%d/%m/%Y')) 
  			".$where." 
         LIMIT 1
  		  ";

 	$cabecera=$database->executeQueryOneRow($sql);

 	$sql="
 			SELECT * 
 			FROM nb_consolidado_ventas_detalle_reporte 
 			WHERE (fecha BETWEEN STR_TO_DATE('".$fecha_cv_desde."','%d/%m/%Y') 
 			AND STR_TO_DATE('".$fecha_cv_hasta."','%d/%m/%Y')) 
 			".$where;

  	$detalle=$database->executeQuery($sql);

  	$objReport = new Report('Facturacion','L','A4','Nabu','Nabu','Nabu','Nabu');
	$pdf=$objReport->setupForm();
	schemaReport($pdf,10,$cabecera,$detalle,NULL, $fecha_cv_desde, $fecha_cv_hasta);

   $objReport->exportarPdf($pdf,$id);

?>
