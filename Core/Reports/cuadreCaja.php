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

function schemaReport($pdf,$tamanoFuenteForm,$ingresos, $egresos, $caja_menor, $total_ingresos, $total_egresos, $saldo_caja, $fecha_arqueo,$responsable)
{

        $borde=1;
        $w=5;

	$pdf->Image("../Images/homeParaiso.jpg", 90, 11, 50, '', 'JPG', false, 'C', false, 300, 'C', false, false, 0, false, false, false);

	$pdf->Ln(31);
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+4); 
        $pdf->Cell(278,$w,'ARQUEO DE CAJA MENOR', $borde, 1, 'C');
        $pdf->Ln(5);
	
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(83,$w,"Responsable:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(194,$w,$responsable["nombre"],$borde,0, 'L');
	
	$pdf->Ln(5);
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(83,$w,"Fecha arqueo:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(194,$w,$fecha_arqueo,$borde,0, 'L');
	
	$pdf->Ln(5);

	$pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(83,$w,"Valor base caja menor:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(194,$w,$caja_menor["saldo_inicial"],$borde,0, 'L');

        $pdf->Ln(10);

	$pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(92.6,$w,"Concepto ingresos",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
	$pdf->Cell(92.6,$w,"Cantidad",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
	$pdf->Cell(92.6,$w,"Valor ingresos",$borde,0,'C', 0, '', 0, false, 'T', 'C');

	$pdf->Ln(5);
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(92.6,$w,"Abonos",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
	$pdf->Cell(92.6,$w,$ingresos[0]["cantidadFacturas"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
	$pdf->Cell(92.6,$w,$ingresos[0]["valorIngreso"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
	$pdf->Ln(5);
	$pdf->Cell(92.6,$w,"Ventas de contado",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
	$pdf->Cell(92.6,$w,$ingresos[1]["cantidadFacturas"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
	$pdf->Cell(92.6,$w,$ingresos[1]["valorIngreso"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
	$pdf->Ln(5);
	$pdf->Cell(92.6,$w,"Ventas de credicontado",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
	$pdf->Cell(92.6,$w,$ingresos[2]["cantidadFacturas"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
	$pdf->Cell(92.6,$w,$ingresos[2]["valorIngreso"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
	$pdf->Ln(5);
	$pdf->Cell(92.6,$w,"Abonos sin factura",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
	$pdf->Cell(92.6,$w,$ingresos[3]["cantidadFacturas"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
	$pdf->Cell(92.6,$w,$ingresos[3]["valorIngreso"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
	
	$pdf->Ln(10);
	$pdf->Cell(185.2,$w,"Total ingresos",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
	$pdf->Cell(92.6,$w,$total_ingresos["ingresostotales"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');

	$pdf->Ln(10);

	$pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(92.6,$w,"Concepto egresos",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
	$pdf->Cell(92.6,$w,"Cantidad",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
	$pdf->Cell(92.6,$w,"Valor egresos",$borde,0, 'C', 0, '', 0, false, 'T', 'C');

	$pdf->Ln(5);
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(92.6,$w,"Pagos",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
	$pdf->Cell(92.6,$w,$egresos[0]["cantidadFacturas"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
	$pdf->Cell(92.6,$w,$egresos[0]["valorIngreso"],$borde,0,'C', 0, '', 0, false, 'T', 'C');
	$pdf->Ln(5);
	$pdf->Cell(92.6,$w,"Compras de contado",$borde,0,'C', 0, '', 0, false, 'T', 'C');
	$pdf->Cell(92.6,$w,$egresos[1]["cantidadFacturas"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
	$pdf->Cell(92.6,$w,$egresos[1]["valorIngreso"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
	$pdf->Ln(5);
	$pdf->Cell(92.6,$w,"Compras de credicontado",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
	$pdf->Cell(92.6,$w,$egresos[2]["cantidadFacturas"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
	$pdf->Cell(92.6,$w,$egresos[2]["valorIngreso"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
	$pdf->Ln(5);
	$pdf->Cell(92.6,$w,"Egresos",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
	$pdf->Cell(92.6,$w,$egresos[3]["cantidadFacturas"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
	$pdf->Cell(92.6,$w,$egresos[3]["valorIngreso"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
	
	$pdf->Ln(10);
	$pdf->Cell(185.2,$w,"Total egresos",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
	$pdf->Cell(92.6,$w,$total_egresos["egresostotales"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');

	$pdf->Ln(10);
	$pdf->Cell(185.2,$w,"Saldo en caja",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
	$pdf->Cell(92.6,$w,$saldo_caja["saldo"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');

	$pdf->Ln(33);
	$pdf->Cell(30,0,"",0,0, 'L');
	$pdf->Cell(60,0,"Responsable",'T', 0, 'L');
	$pdf->Cell(100,0,"",0,0, 'L');
	$pdf->Cell(60,0,"Autorizado por",'T', 0, 'L');
}


    $fecha_arqueo=$_POST['nb_fecha_arqueo_fld'];
    $responsable=$_POST['nb_responsable_fld'];
    session_start();
    
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;

    $sqlingresos="select 
		count(nb_id_fld) as cantidadFacturas,
		CONCAT('$',
		        FORMAT(IFNULL(SUM(REPLACE(REPLACE(IFNULL(nb_valor_fld, 0), ',', ''),
		                '$',
		                '')),0),
		            2)) as valorIngreso
	from nb_cartera_tbl
	where SUBSTR(nb_referencia_fld,1,1)='v' and nb_estado_fld=0 and nb_fecha_ingreso_concepto_fld = '".$fecha_arqueo."'
	union all
	select
		count(nb_id_fld) as cantidadFacturas,
	    	CONCAT('$',
			FORMAT(IFNULL(SUM(REPLACE(REPLACE(IFNULL(`b`.`total`, 0), ',', ''),
			        '$',
			        '')),0),
			    2)) as valorIngreso
	from nb_ventas_tbl a
	inner join nb_venta_detalle_tbl b on (CONCAT(CAST(`a`.`nb_id_fld` AS CHAR CHARSET UTF8),
		        '-') LIKE CONVERT( SUBSTR(`b`.`factura`,
		    1,
		    LOCATE('-', `b`.`factura`)) USING UTF8))
	where a.nb_forma_pago_fld=0 and a.nb_estado_fld=0 and a.nb_fecha_ingreso_fld='".$fecha_arqueo."'
	union all
	select
		count(nb_id_fld) as cantidadFacturas,
	    	CONCAT('$',
		        FORMAT(IFNULL(SUM(REPLACE(REPLACE(IFNULL(`b`.`total`, 0), ',', ''),
                        '$',
                        '')),0),
                    2)) as valorIngreso
	from nb_ventas_tbl a
	inner join nb_venta_detalle_tbl b on (CONCAT(CAST(`a`.`nb_id_fld` AS CHAR CHARSET UTF8),
                '-') LIKE CONVERT( SUBSTR(`b`.`factura`,
            1,
            LOCATE('-', `b`.`factura`)) USING UTF8))
	where a.nb_forma_pago_fld=2 and a.nb_estado_fld=0 and a.nb_fecha_ingreso_fld='".$fecha_arqueo."'
	union all
	select
		count(nb_id_fld) as cantidadFacturas,
    		CONCAT('$',
                	FORMAT(IFNULL(SUM(REPLACE(REPLACE(IFNULL(nb_abono_fld, 0), ',', ''),
                        '$',
                        '')),0),
                    2)) as valorIngreso
	from nb_abonosinfactura_tbl
	where nb_estado_fld=1 and nb_fecha_cobro_fld = '".$fecha_arqueo."'";

    $ingresos=$database->executeQuery($sqlingresos);

    $sqlegresos="select 
		count(nb_id_fld) as cantidadFacturas,
		CONCAT('$',
		        FORMAT(IFNULL(SUM(REPLACE(REPLACE(IFNULL(nb_valor_fld, 0), ',', ''),
		                '$',
		                '')),0),
		            2)) as valorIngreso
	from nb_cartera_tbl
	where SUBSTR(nb_referencia_fld,1,1)='c' and nb_fecha_ingreso_concepto_fld = '".$fecha_arqueo."'
	union all
	select
		count(nb_id_fld) as cantidadFacturas,
	    	CONCAT('$',
			FORMAT(IFNULL(SUM(REPLACE(REPLACE(IFNULL(`b`.`total`, 0), ',', ''),
			        '$',
			        '')),0),
			    2)) as valorIngreso
	from nb_compras_tbl a
	inner join nb_compra_detalle_tbl b on (CONCAT(CAST(`a`.`nb_id_fld` AS CHAR CHARSET UTF8),
                '-') LIKE CONVERT( SUBSTR(`b`.`factura`,
            1,
            LOCATE('-', `b`.`factura`)) USING UTF8))
	where a.nb_forma_pago_fld=0 and a.nb_estado_fld=0 and a.nb_fecha_ingreso_fld= '".$fecha_arqueo."'
	union all
	select
		count(nb_id_fld) as cantidadFacturas,
	   	 CONCAT('$',
		        FORMAT(IFNULL(SUM(REPLACE(REPLACE(IFNULL(`b`.`total`, 0), ',', ''),
                        '$',
                        '')),0),
            		2)) as valorIngreso
	from nb_compras_tbl a
	inner join nb_compra_detalle_tbl b on (CONCAT(CAST(`a`.`nb_id_fld` AS CHAR CHARSET UTF8),
                '-') LIKE CONVERT( SUBSTR(`b`.`factura`,
            1,
            LOCATE('-', `b`.`factura`)) USING UTF8))
	where a.nb_forma_pago_fld=2 and  a.nb_estado_fld=0 and a.nb_fecha_ingreso_fld='".$fecha_arqueo."'
	union all
	select
		count(nb_id_fld) as cantidadFacturas,
		CONCAT('$',
		        FORMAT(IFNULL(SUM(REPLACE(REPLACE(IFNULL(nb_valor_fld, 0), ',', ''),
                        '$',
                        '')),0),
                    2)) as valorIngreso
	from nb_egresos_tbl
	where nb_fecha_fld = '".$fecha_arqueo."'";

    $egresos=$database->executeQuery($sqlegresos);

    $sqlegresostotales= "select CONCAT('$',FORMAT(REPLACE(REPLACE('".$egresos[0]["valorIngreso"]."', ',', ''),'$','') + ".
			"REPLACE(REPLACE('".$egresos[1]["valorIngreso"]."', ',', ''),'$','') + ".
			"REPLACE(REPLACE('".$egresos[2]["valorIngreso"]."', ',', ''),'$','') + ".
			"REPLACE(REPLACE('".$egresos[3]["valorIngreso"]."', ',', ''),'$',''),2)) as egresostotales";

    $total_egresos=$database->executeQueryOneRow($sqlegresostotales);

    $sqlingresostotales= "select CONCAT('$',FORMAT(REPLACE(REPLACE('".$ingresos[0]["valorIngreso"]."', ',', ''),'$','') + ".
			"REPLACE(REPLACE('".$ingresos[1]["valorIngreso"]."', ',', ''),'$','') + ".
			"REPLACE(REPLACE('".$ingresos[2]["valorIngreso"]."', ',', ''),'$','') + ".
			"REPLACE(REPLACE('".$ingresos[3]["valorIngreso"]."', ',', ''),'$',''),2)) as ingresostotales";

    $total_ingresos=$database->executeQueryOneRow($sqlingresostotales);
       
    $sql="select ifnull((select
	nb_saldo_inicial_fld
	from nb_caja_tbl
	where nb_fecha_fld='".$fecha_arqueo."' and nb_estado_fld=0),'$0.00') as saldo_inicial";

    $caja_menor=$database->executeQueryOneRow($sql);

    $sqlsaldocaja = "select CONCAT('$',FORMAT((REPLACE(REPLACE('".$caja_menor["saldo_inicial"]."', ',', ''),'$','') +"
			."REPLACE(REPLACE('".$total_ingresos["ingresostotales"]."', ',', ''),'$','') -"
			."REPLACE(REPLACE('".$total_egresos["egresostotales"]."', ',', ''),'$','')),2)) as saldo";

    $saldo_caja=$database->executeQueryOneRow($sqlsaldocaja);

    $sqlresponsable = "select nb_nombre_fld as nombre from nb_terceros_tbl where nb_id_fld=".$responsable;

    $responsable_resultado=$database->executeQueryOneRow($sqlresponsable);

    $objReport = new Report('Facturacion','L','A4','Nabu','Nabu','Nabu','Nabu');

    $pdf=$objReport->setupForm();

    schemaReport($pdf,10, $ingresos, $egresos, $caja_menor, $total_ingresos, $total_egresos, $saldo_caja, $fecha_arqueo,$responsable_resultado);

    $objReport->exportarPdf($pdf,$id);

?>
