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

function schemaReport($pdf,$tamanoFuenteForm,$fecha_desde, $fecha_hasta, $zona,$product, $causa, $consolidado_devols)
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
    $pdf->Cell(278,$w,'CONSOLIDADO DE DEVOLUCIONES', $borde, 1, 'C');
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

    $pdf->Ln(5);
    $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
    $pdf->Cell(83,$w,"Producto:",$borde,0, 'L');
    $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
    $pdf->Cell(194,$w,$product,$borde,0, 'L');

    $pdf->Ln(5);
    $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
    $pdf->Cell(83,$w,"Causa:",$borde,0, 'L');
    $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
    $pdf->Cell(194,$w,$causa,$borde,0, 'L');
	
	
	$pdf->Ln(10);
    $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
    $pdf->Cell(27,$w,"FECHA",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(20,$w,"ZONA",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(35,$w,"PRODUCTO",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(30,$w,"CAUSA",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
	$pdf->Cell(25,$w,"CANTIDAD",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(30,$w,"COSTO UNI.",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(40,$w,"SUBTOTAL COSTO",$borde,0,'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(30,$w,"PRECIO UNIT.",$borde,0,'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(40,$w,"SUBTOTAL PRECIO",$borde,0, 'C', 0, '', 0, false, 'T', 'C');

    $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm); 
    for($i=0; $i<sizeof($consolidado_devols);$i++){
    	$pdf->Ln(5);
    	$pdf->Cell(27,$w,$consolidado_devols[$i]["fecha"],$borde,0, 'C');
    	$pdf->Cell(20,$w,$zona,$borde,0, 'C');
    	$pdf->Cell(35,$w,$product,$borde,0, 'C');
    	$pdf->Cell(30,$w,$causa,$borde,0, 'C');
    	$pdf->Cell(25,$w,$consolidado_devols[$i]["cantidad"],$borde,0, 'C');
    	$pdf->Cell(30,$w,$consolidado_devols[$i]["costo_unitario"],$borde,0, 'C');
    	$pdf->Cell(40,$w,"$".$consolidado_devols[$i]["subtotal_costo"],$borde,0, 'C');
    	$pdf->Cell(30,$w,$consolidado_devols[$i]["precio_unitario"],$borde,0, 'C');
    	$pdf->Cell(40,$w,"$".$consolidado_devols[$i]["subtotal_precio"],$borde,0, 'C');
    }

}


    $fecha_desde=$_POST['nd_fecha_desde_fld'];
    $fecha_hasta=$_POST['nd_fecha_hasta_fld'];
    $zona=$_POST['nb_zona_fld'];
    $producto=$_POST['nb_producto_fld'];
    $causa=$_POST['nb_causa_fld'];

  
    $zona_name = "TODAS";
    $product_name = "TODOS";
    $causa_name = "TODAS";
	
    session_start();
    
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;

    if($zona){

        $zona_query = "select nb_nombre_fld from nb_zonas_tbl where nb_id_fld = ".$zona;

        $zona_result = $database->executeQueryOneRow($zona_query);
        $zona_name = $zona_result[0];
    }

    if($producto){

        $product_query = "select nb_nombre_fld from nb_productos_tbl where nb_id_fld = ".$producto;

        $producto_result = $database->executeQueryOneRow($product_query);
        $product_name = $producto_result[0];
    }
    if($causa){

        $causa_query = "select nb_value_fld 
                        from nabu.nb_value_tbl 
                        where nb_enterprise_id_fld = 'paraiso' 
                        and   nb_id_pr_schema_fld = 'nb_causa_dev_fld'  
                        and   nb_id_value_fld= ".$causa;

        $causa_result = $database->executeQueryOneRow($causa_query);
        $causa_name = $causa_result[0];

    }

    $query = "select * from nb_consolidado_devoluciones_vw
              where str_to_date(fecha,'%d/%m/%Y') 
                    between  str_to_date('".$fecha_desde."','%d/%m/%Y') and str_to_date('".$fecha_hasta."','%d/%m/%Y')";
    if($zona <> ''){
        $query = $query." and zona = '".$zona_result[0]."'";
    }

    else if($producto <> ''){
        $query = $query." and producto = '".$producto."'";
    }

    else if($causa <> ''){
        $query = $query." and cod_causa = '".$causa."'";
    }

    $query = $query." order by fecha";

    
    $consolidado_devols=$database->executeQuery($query);


    $objReport = new Report('Facturacion','L','A4','Nabu','Nabu','Nabu','Nabu');

    $pdf=$objReport->setupForm();

    $csv = new ExportExcel();
    $database->conectar();
    $file=$csv->exportarFile('0',$query);
    $database->desconectar();

    

    schemaReport($pdf,10,$fecha_desde, $fecha_hasta, $zona_name, $product_name, $causa_name, $consolidado_devols);

    $objReport->exportarPdf($pdf,$id);

?>
