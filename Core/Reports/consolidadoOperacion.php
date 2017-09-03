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

function schemaReport($pdf,$tamanoFuenteForm,$ventas,$carteraConteo,$carteraCobros,$carteraPromedio,$descuentos,$porcdescuentos,$totalesventas,$fecha_despacho_desde, $fecha_despacho_hasta,$zona,$descuentosDetallado)
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
        $pdf->Cell(278,$w,'CONSOLIDADO DE OPERACIÓN EN LA ZONA', $borde, 1, 'C');
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
        $pdf->Cell(278,$w,"VENTAS",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        $pdf->Ln(5);
        $pdf->Cell(69.5,$w,"Tipo",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(69.5,$w,"Cantidad",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(69.5,$w,"Valor",$borde,0,'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(69.5,$w,"Valor promedio",$borde,0,'C', 0, '', 0, false, 'T', 'C');

        $pdf->Ln(5);
        $pdf->Cell(69.5,$w,"Contado",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(69.5,$w,$ventas[0]["conteo"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(69.5,$w,$ventas[0]["total"],$borde,0,'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(69.5,$w,$ventas[0]["promedio"],$borde,0,'C', 0, '', 0, false, 'T', 'C');

        $pdf->Ln(5);
        $pdf->Cell(69.5,$w,"Credito",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(69.5,$w,$ventas[1]["conteo"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(69.5,$w,$ventas[1]["total"],$borde,0,'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(69.5,$w,$ventas[1]["promedio"],$borde,0,'C', 0, '', 0, false, 'T', 'C');

        $pdf->Ln(5);
        $pdf->Cell(69.5,$w,"Credicontado",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(69.5,$w,$ventas[2]["conteo"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(69.5,$w,$ventas[2]["total"],$borde,0,'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(69.5,$w,$ventas[2]["promedio"],$borde,0,'C', 0, '', 0, false, 'T', 'C');
        $pdf->Ln(5);
        $pdf->Cell(69.5,$w,"Totales",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(69.5,$w,$totalesventas["totalcantidad"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(69.5,$w,$totalesventas["totalvalor"],$borde,0,'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(69.5,$w,$totalesventas["totalpromedio"],$borde,0,'C', 0, '', 0, false, 'T', 'C');

        $pdf->Ln(10);
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(278,$w,"CARTERA",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        $pdf->Ln(5);
        $pdf->Cell(92.6,$w,"No. facturas entregadas",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(92.6,$w,"Cobros realizados",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(92.6,$w,"Promedio",$borde,0,'C', 0, '', 0, false, 'T', 'C');
        $pdf->Ln(5);
        $pdf->Cell(92.6,$w,$carteraConteo["conteo"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(92.6,$w,$carteraCobros["cobros"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(92.6,$w,$carteraPromedio["promedio"],$borde,0,'C', 0, '', 0, false, 'T', 'C');


        $pdf->Ln(10);
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(278,$w,"DESCUENTOS",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        $pdf->Ln(5);
        $pdf->Cell(80,$w,"Tipo descuento",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(50,$w,"No. descuentos otorgados",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(70,$w,"Valor descuentos",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(78,$w,"% sobre ventas",$borde,0,'C', 0, '', 0, false, 'T', 'C');
        $pdf->Ln(5);
        $pdf->Cell(80,$w,"DESCUENTO NORMAL",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(50,$w,$descuentos["conteo"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(70,$w,$descuentos["totaldescuento"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(78,$w,$porcdescuentos["porc"],$borde,0,'C', 0, '', 0, false, 'T', 'C');
    
        for ($i=0; $i<sizeof($descuentosDetallado); $i++){
            $pdf->Ln(5);
            $pdf->Cell(80,$w,$descuentosDetallado[$i]["concepto"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
            $pdf->Cell(50,$w,$descuentosDetallado[$i]["conteo"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
            $pdf->Cell(70,$w,$descuentosDetallado[$i]["totaldescuento"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
            $pdf->Cell(78,$w,$descuentosDetallado[$i]["promedio"],$borde,0,'C', 0, '', 0, false, 'T', 'C');
        }
}


    $fecha_desde=$_POST['nb_fecha_desde_fld'];
    $fecha_hasta=$_POST['nb_fecha_hasta_fld'];
    $zona=$_POST['nb_zona_fld'];
    session_start();
    
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;

    $andZona = " ";
    $zonanombre[0] = 'TODAS';

    if($zona){
        $andZona = "and zona.nb_id_fld = ".$zona;
        $sql="select nb_nombre_fld from nb_zonas_tbl where nb_id_fld=".$zona;
        $zonanombre = $database->executeQueryOneRow($sql);
    }


	## ventas.
     $sql="select
	count(distinct venta.nb_id_fld) as conteo,
    CONCAT('$',
                FORMAT(ROUND(ifnull(SUM(REPLACE(REPLACE(IFNULL(`d`.`total`, 0), ',', ''),
            '$',
            '')),0), 2),
                    2)) AS `total`,
        CONCAT('$', FORMAT(ifnull(ifnull(SUM(REPLACE(REPLACE(IFNULL(`d`.`total`, 0), ',', ''), '$', '')),0)/count(distinct venta.nb_id_fld),0),2)) as promedio
from nb_ventas_tbl venta
left join  nb_venta_detalle_tbl d on venta.`nb_id_fld` = `d`.`factura`
inner join nb_terceros_tbl cliente on venta.nb_codigo_cliente_fld=cliente.nb_id_fld
left join nb_barrios_tbl barrio on cliente.nb_barrio_fld=barrio.nb_id_fld
left join nb_zonas_tbl zona on barrio.nb_zona_fld=zona.nb_id_fld
where venta.nb_estado_fld=0 and venta.nb_forma_pago_fld=0 ".$andZona." and (STR_TO_DATE(venta.nb_fecha_ingreso_fld, '%d/%m/%Y') BETWEEN STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y'))
union all
select
	count(distinct venta.nb_id_fld) as conteo,
    CONCAT('$',
                FORMAT(ROUND(ifnull(SUM(REPLACE(REPLACE(IFNULL(`d`.`total`, 0), ',', ''),
            '$',
            '')),0), 2),
                    2)) AS `total`,
        CONCAT('$', FORMAT(ifnull(ifnull(SUM(REPLACE(REPLACE(IFNULL(`d`.`total`, 0), ',', ''), '$', '')),0)/count(distinct venta.nb_id_fld),0),2)) as promedio
from nb_ventas_tbl venta
left join  nb_venta_detalle_tbl d on venta.`nb_id_fld` = `d`.`factura`
inner join nb_terceros_tbl cliente on venta.nb_codigo_cliente_fld=cliente.nb_id_fld
left join nb_barrios_tbl barrio on cliente.nb_barrio_fld=barrio.nb_id_fld
left join nb_zonas_tbl zona on barrio.nb_zona_fld=zona.nb_id_fld
where venta.nb_estado_fld=0 and venta.nb_forma_pago_fld=1  ".$andZona." and (STR_TO_DATE(venta.nb_fecha_ingreso_fld, '%d/%m/%Y') BETWEEN STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y'))
union all
select
	count(distinct venta.nb_id_fld) as conteo,
    CONCAT('$',
                FORMAT(ROUND(ifnull(SUM(REPLACE(REPLACE(IFNULL(`d`.`total`, 0), ',', ''),
            '$',
            '')),0), 2),
                    2)) AS `total`,
        CONCAT('$', FORMAT(ifnull(ifnull(SUM(REPLACE(REPLACE(IFNULL(`d`.`total`, 0), ',', ''), '$', '')),0)/count(distinct venta.nb_id_fld),0),2)) as promedio
from nb_ventas_tbl venta
left join  nb_venta_detalle_tbl d on venta.`nb_id_fld` = `d`.`factura`
inner join nb_terceros_tbl cliente on venta.nb_codigo_cliente_fld=cliente.nb_id_fld
left join nb_barrios_tbl barrio on cliente.nb_barrio_fld=barrio.nb_id_fld
left join nb_zonas_tbl zona on barrio.nb_zona_fld=zona.nb_id_fld
where venta.nb_estado_fld=0 and venta.nb_forma_pago_fld=2 ".$andZona."  and (STR_TO_DATE(venta.nb_fecha_ingreso_fld, '%d/%m/%Y') BETWEEN STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y'))";

     $ventas=$database->executeQuery($sql);

    ## uso un select para sumar los valores de ventas por forma de pago.
     $sql="select 
     ".$ventas[0]["conteo"]."+ ".$ventas[1]["conteo"]." + ".$ventas[2]["conteo"]." as totalcantidad,
    CONCAT('$',FORMAT((REPLACE(REPLACE(IFNULL('".$ventas[0]["total"]."', 0), ',', ''),'$','')+REPLACE(REPLACE(IFNULL('".$ventas[1]["total"]."', 0), ',', ''),'$','')+REPLACE(REPLACE(IFNULL('".$ventas[2]["total"]."', 0), ',', ''),'$','')),2)) as totalvalor,
    CONCAT('$',
                FORMAT(
                (
                 REPLACE(REPLACE(IFNULL('".$ventas[0]["total"]."', 0), ',', ''),'$','')
                +REPLACE(REPLACE(IFNULL('".$ventas[1]["total"]."', 0), ',', ''),'$','')
                +REPLACE(REPLACE(IFNULL('".$ventas[2]["total"]."', 0), ',', ''),'$','')
                )
                /(
    ".$ventas[0]["conteo"]."+ ".$ventas[1]["conteo"]." + ".$ventas[2]["conteo"]."),2)) as totalpromedio";

    $totalesventas= $database->executeQueryOneRow($sql); 


    ## Cartera

     $sql="select
	  count(a.nb_id_fld) AS conteo
      FROM nb_relacionfactura_tbl A
      JOIN nb_ventas_tbl venta ON venta.`nb_referencia_fld` = A.NB_FACTURA_FLD
      INNER JOIN nb_terceros_tbl cliente ON venta.nb_codigo_cliente_fld=cliente.nb_id_fld
      JOIN nb_barrios_tbl barrio ON cliente.nb_barrio_fld=barrio.nb_id_fld
      JOIN nb_zonas_tbl zona ON barrio.nb_zona_fld=zona.nb_id_fld
      ".$andZona."
      AND (STR_TO_DATE(A.nb_fecha_entrega_fld, '%d/%m/%Y') BETWEEN STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y'))
      AND A.nb_estado_fld = 0
      ";

    $carteraConteo = $database->executeQueryOneRow($sql);

    $sql="
    SELECT  CONCAT('$',FORMAT(ifnull(sum(REPLACE(REPLACE(IFNULL(cartera.nb_valor_fld, 0), ',', ''),'$','')),0),2)) AS cobros
    FROM 	nb_cartera_tbl cartera
    JOIN 	nb_ventas_tbl venta ON  ( upper(venta.nb_referencia_fld)  = SUBSTRING(upper(cartera.nb_referencia_fld),2,length(cartera.nb_referencia_fld)))
    JOIN    nb_terceros_tbl cliente ON venta.nb_codigo_cliente_fld=cliente.nb_id_fld
    JOIN    nb_barrios_tbl barrio ON cliente.nb_barrio_fld=barrio.nb_id_fld
    JOIN    nb_zonas_tbl zona ON barrio.nb_zona_fld=zona.nb_id_fld
    ".$andZona."
    WHERE 	SUBSTRING(upper(cartera.nb_referencia_fld),1,1) ='V'
    and		cartera.nb_estado_fld = 0
    AND		cartera.nb_concepto_fld = 1
    AND 	(STR_TO_DATE(cartera.nb_fecha_ingreso_concepto_fld, '%d/%m/%Y') BETWEEN STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y'))
    ";

    $carteraCobros = $database->executeQueryOneRow($sql);


    $sql="select CONCAT('$',FORMAT(ifnull(REPLACE(REPLACE('".$carteraCobros["cobros"]."', ',', ''),'$','')/".$carteraConteo["conteo"].",0),2)) as promedio";

    $carteraPromedio = $database->executeQueryOneRow($sql);

    # descuentos
         $sql="select
        count(cartera.nb_id_fld) as conteo,
        CONCAT('$',FORMAT(ifnull(sum(REPLACE(REPLACE(IFNULL(cartera.nb_valor_descuento_fld, 0), ',', ''),'$','')),0),2)) as totaldescuento,
        CONCAT('$',FORMAT(ifnull(ifnull(sum(REPLACE(REPLACE(IFNULL(cartera.nb_valor_descuento_fld, 0), ',', ''),'$','')),0)/count(cartera.nb_id_fld),0),2)) as promedio
    from nb_cartera_tbl cartera
    JOIN 	nb_ventas_tbl venta ON  ( upper(venta.nb_referencia_fld)  = SUBSTRING(upper(cartera.nb_referencia_fld),2,length(cartera.nb_referencia_fld)))
    JOIN    nb_terceros_tbl cliente ON venta.nb_codigo_cliente_fld=cliente.nb_id_fld
    JOIN    nb_barrios_tbl barrio ON cliente.nb_barrio_fld=barrio.nb_id_fld
    JOIN    nb_zonas_tbl zona ON barrio.nb_zona_fld=zona.nb_id_fld
    ".$andZona."
    WHERE 	SUBSTRING(upper(cartera.nb_referencia_fld),1,1) ='V'
    and    cartera.nb_aplica_desc_fld='0'
    and		cartera.nb_estado_fld = 0
    AND 	(STR_TO_DATE(cartera.nb_fecha_ingreso_concepto_fld, '%d/%m/%Y') BETWEEN STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y'))
    
    ";

    
    $descuentos = $database->executeQueryOneRow($sql);

     ## porcentaje descuento

     $sql="select CONCAT(FORMAT(ifnull((REPLACE(REPLACE('".$descuentos["totaldescuento"]."', ',', ''),'$','')/REPLACE(REPLACE('".$totalesventas["totalvalor"]."', ',', ''),'$','')),0)*100,2),'%') as porc";

     $porcdescuentos = $database->executeQueryOneRow($sql);

    ## porcentaje descuento Detallado

    $sql= "
    SELECT conceptos.nb_nombre_fld as concepto,
       count(cartera.nb_id_fld) AS conteo,
       CONCAT('$',FORMAT(ifnull(sum(REPLACE(REPLACE(IFNULL(cartera.nb_valor_fld, 0), ',', ''),'$','')),0),2)) AS totaldescuento,
       CONCAT('$',FORMAT(ifnull(ifnull(sum(REPLACE(REPLACE(IFNULL(cartera.nb_valor_fld, 0), ',', ''),'$','')),0)/count(cartera.nb_id_fld),0),2)) AS promedio
        FROM nb_cartera_tbl cartera
        JOIN nb_conceptos_facturas_tbl conceptos on (conceptos.nb_id_fld = cartera.nb_concepto_fld )
        JOIN nb_ventas_tbl venta ON (upper(venta.nb_referencia_fld) = SUBSTRING(upper(cartera.nb_referencia_fld),2,length(cartera.nb_referencia_fld)))
        JOIN nb_terceros_tbl cliente ON venta.nb_codigo_cliente_fld=cliente.nb_id_fld
        JOIN nb_barrios_tbl barrio ON cliente.nb_barrio_fld=barrio.nb_id_fld
        JOIN nb_zonas_tbl zona ON barrio.nb_zona_fld=zona.nb_id_fld
        ".$andZona."
        WHERE SUBSTRING(upper(cartera.nb_referencia_fld),1,1) ='V'
        AND cartera.nb_estado_fld = 0
        AND		cartera.nb_concepto_fld <> 1
        AND (STR_TO_DATE(cartera.nb_fecha_ingreso_concepto_fld, '%d/%m/%Y') BETWEEN STR_TO_DATE('01/08/2017','%d/%m/%Y') AND STR_TO_DATE('31/08/2017','%d/%m/%Y'))
        GROUP BY conceptos.nb_nombre_fld
    ";

   
    $descuentosDetallado = $database->executeQuery($sql);

    $objReport = new Report('Facturacion','L','A4','Nabu','Nabu','Nabu','Nabu');

    $pdf=$objReport->setupForm();

    schemaReport($pdf,5,$ventas,$carteraConteo,$carteraCobros,$carteraPromedio,$descuentos,$porcdescuentos,$totalesventas, $fecha_desde, $fecha_hasta,$zonanombre,$descuentosDetallado);

    $objReport->exportarPdf($pdf,$id);

?>
