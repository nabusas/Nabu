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


function schemaReport($pdf,$tamanoFuenteForm,$detalle_empleado,$detalle_ventas,$total_ventas,$detalle_cobro,$total_comision_cobros,$detalle_perdidas,$total_perdidas)
{

    $borde=1;
    $w=5;

	$pdf->Image("../Images/homeParaiso.jpg", 90, 11, 50, '', 'JPG', false, 'C', false, 300, 'C', false, false, 0, false, false, false);
    $pdf->Ln(27);
    $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm-2);
    $pdf->Cell(190,2,'Cra 10 # 18 31 - Buga (Valle)', 0, 1, 'C');
    $pdf->Cell(190,2,'NIT: 6462116-1', 0, 1, 'C');
    $pdf->Cell(190,2,'Celular: 3157902012', 0, 1, 'C');
    $pdf->Cell(190,2,'Teléfono: 2381804', 0, 1, 'C');
    $pdf->Ln(3);
    
    $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
    $pdf->Cell(190,$w,'REPORTE DE NOMINA', $borde, 1, 'C');
    //$pdf->Ln(4);
	
    $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
    $pdf->Cell(50,$w,"NOMBRE:",$borde,0, 'L');
    $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
    $pdf->Cell(140,$w,$detalle_empleado[0]['nombre'],$borde,0, 'L');
	
	$pdf->Ln(5);
    $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
    $pdf->Cell(50,$w,"CEDULA:",$borde,0, 'L');
    $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
    $pdf->Cell(140,$w,$detalle_empleado[0]['cedula'],$borde,0, 'L');

	$pdf->Ln(5);
    $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
    $pdf->Cell(50,$w,"CARGO:",$borde,0, 'L');
    $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
    $pdf->Cell(140,$w,$detalle_empleado[0]['cargo'],$borde,0, 'L');

    $pdf->Ln(10);
    $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
    $pdf->Cell(190,$w,'INGRESOS', $borde, 1, 'C');
    
    $pdf->Cell(47.5,$w,"DESCRIPCIÓN",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(47.5,$w,"CANTIDAD",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(47.5,$w,"VALOR UNITARIO",$borde,0,'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(47.5,$w,"TOTAL",$borde,0,'C', 0, '', 0, false, 'T', 'C');

    $pdf->Ln(5);
    $pdf->SetFont('helvetica', 'N', 8);
    $pdf->Cell(47.5,$w,"VENTAS",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(47.5,$w,$total_ventas[0]['total_productos'],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(47.5,$w,"",$borde,0,'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(47.5,$w,$total_ventas[0]['total_ingresos'],$borde,0,'C', 0, '', 0, false, 'T', 'C');

    $pdf->Ln(5);
    $pdf->Cell(47.5,$w,"COBROS",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(47.5,$w,"",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(47.5,$w,"",$borde,0,'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(47.5,$w,$total_comision_cobros[0]['total_comision_cobros'],$borde,0,'C', 0, '', 0, false, 'T', 'C');

    $pdf->Ln(5);
    $pdf->Cell(47.5,$w,"ALQUILES MOTO",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(47.5,$w,"",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(47.5,$w,"",$borde,0,'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(47.5,$w,"",$borde,0,'C', 0, '', 0, false, 'T', 'C');

    $pdf->Ln(5);
    $pdf->Cell(47.5,$w,"ENTREGA PEDIDOS",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(47.5,$w,"",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(47.5,$w,"",$borde,0,'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(47.5,$w,"",$borde,0,'C', 0, '', 0, false, 'T', 'C');

    $pdf->Ln(5);
    $pdf->Cell(47.5,$w,"OTROS",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(47.5,$w,"",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(47.5,$w,"",$borde,0,'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(47.5,$w,"",$borde,0,'C', 0, '', 0, false, 'T', 'C');

    $pdf->Ln(5);
    $pdf->Cell(95,$w,"",0,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(47.5,$w,"TOTAL INGRESOS",$borde,0,'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(47.5,$w,"",$borde,0,'C', 0, '', 0, false, 'T', 'C');

     $pdf->Ln(10);
    $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
    $pdf->Cell(190,$w,'DEDUCCIONES', $borde, 1, 'C');
    
    $pdf->Cell(130,$w,"DESCRIPCIÓN",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(60,$w,"VALOR",$borde,0,'C', 0, '', 0, false, 'T', 'C');

    $pdf->Ln(5);
    $pdf->SetFont('helvetica', 'N', 8); 
    $pdf->Cell(130,$w,"DEVOLUCIONES",$borde,0, 'L', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(60,$w,$total_ventas[0]['total_devoluciones'],$borde,0,'C', 0, '', 0, false, 'T', 'C');

    $pdf->Ln(5);
    $pdf->Cell(130,$w,"PERDIDAS",$borde,0, 'L', 0, 'L', 0, false, 'T', 'C');
    $pdf->Cell(60,$w,$total_perdidas,$borde,0,'C', 0, '', 0, false, 'T', 'C');
    
    $pdf->Ln(5);
    $pdf->Cell(130,$w,"VALES",$borde,0, 'L', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(60,$w,"",$borde,0,'C', 0, '', 0, false, 'T', 'C');

    $pdf->Ln(5);
    $pdf->Cell(130,$w,"SEGURIDAD SOCIAL",$borde,0, 'L', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(60,$w,"",$borde,0,'C', 0, '', 0, false, 'T', 'C');

    $pdf->Ln(5);
    $pdf->Cell(130,$w,"MINUTOS",$borde,0, 'L', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(60,$w,"",$borde,0,'C', 0, '', 0, false, 'T', 'C');

    $pdf->Ln(5);
    $pdf->Cell(130,$w,"PRESTAMOS",$borde,0, 'L', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(60,$w,"",$borde,0,'C', 0, '', 0, false, 'T', 'C');

    $pdf->Ln(5);
    $pdf->Cell(81,$w,"",0,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(48.5,$w,"TOTAL DEDUCCIONES",0,0,'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(60.5,$w,"",$borde,0,'C', 0, '', 0, false, 'T', 'C');
    $pdf->Ln(10);
    $pdf->Cell(81,$w,"",0,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(48.5,$w,"TOTAL DEVENGADO",0,0,'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(60.5,$w,"",$borde,0,'C', 0, '', 0, false, 'T', 'C');

    $pdf->Ln(10);
    $pdf->Cell(50,$w,"Fecha de Pago:",0,0,'L', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(80,$w,"",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    

    $pdf->Ln(10);
    $pdf->Cell(50,$w,"Firma de Conformidad:",0,0,'L', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(80,$w,"",$borde,0, 'C', 0, '', 0, false, 'T', 'C');

    $pdf->AddPage();
    $pdf->Ln(10);
    $pdf->SetFont('helvetica', 'B', 8); 
    $pdf->Cell(190,$w,'DETALLE DE VENTAS', $borde, 1, 'C');
    
    $pdf->Cell(27,$w,"FECHAS",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(40,$w,"PRODUCTO",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(22,$w,"CANTIDAD",$borde,0,'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(26,$w,"COMISION UNI.",$borde,0,'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(27,$w,"COMISION TOTAL",$borde,0,'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(19,$w,"DEVOLS.",$borde,0,'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(29,$w,"TOTAL DEVOLS.",$borde,0,'C', 0, '', 0, false, 'T', 'C');

    $total_productos = 0;
    $total_ingresos = 0;
    $total_devoluciones = 0;

    $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);
    for($i=0; $i<sizeof($detalle_ventas);$i++){
        $pdf->Ln(5);
        $pdf->Cell(27,$w,$detalle_ventas[$i]["Fecha"],$borde,0, 'C');
        $pdf->Cell(40,$w,$detalle_ventas[$i]["NombreP"],$borde,0, 'C');
        $pdf->Cell(22,$w,$detalle_ventas[$i]["Cantidad"],$borde,0, 'C');
        $pdf->Cell(26,$w,$detalle_ventas[$i]["Comision"],$borde,0, 'C');
        $pdf->Cell(27,$w,$detalle_ventas[$i]["ComisionT"],$borde,0, 'C');
        $pdf->Cell(19,$w,$detalle_ventas[$i]["devoluciones"],$borde,0, 'C');
        $pdf->Cell(29,$w,$detalle_ventas[$i]["total_devoluciones"],$borde,0, 'C');
        $total_productos = $total_productos + $i;
        $total_ingresos = $total_ingresos + $detalle_ventas[$i]["ComisionT"];
        $total_devoluciones = $total_devoluciones + $detalle_ventas[$i]["total_devoluciones"];
    }

    $pdf->AddPage();
    $pdf->Ln(10);
    $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
    $pdf->Cell(190,$w,'DETALLE DE COBROS', $borde, 1, 'C');
    
    $pdf->Cell(47.5,$w,"FECHAS",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(47.5,$w,"ABONOS",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(47.5,$w,"ABONOS SIN FACTURA",$borde,0,'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(47.5,$w,"COMISION ",$borde,0,'C', 0, '', 0, false, 'T', 'C');
    $total_comision_cobros = 0;

    $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);
    for($i=0; $i<sizeof($detalle_cobro);$i++){
        $pdf->Ln(5);
        $pdf->Cell(47.5,$w,$detalle_cobro[$i]["Fecha"],$borde,0, 'C');
        $pdf->Cell(47.5,$w,$detalle_cobro[$i]["Abonos"],$borde,0, 'C');
        $pdf->Cell(47.5,$w,$detalle_cobro[$i]["AbonosSF"],$borde,0, 'C');
        $pdf->Cell(47.5,$w,$detalle_cobro[$i]["Comision"],$borde,0, 'C');
        $total_comision_cobros = $total_comision_cobros + $detalle_cobro[$i]["Comision"];
        
    }

    $pdf->AddPage();
    $pdf->Ln(10);
    $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
    $pdf->Cell(190,$w,'DETALLE DE PERDIDAS', $borde, 1, 'C');
    
    $pdf->Cell(63.3,$w,"FECHAS",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(63.3,$w,"REFERENCIA DE FACTURA",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
    $pdf->Cell(63.3,$w,"PERDIDAS",$borde,0,'C', 0, '', 0, false, 'T', 'C');
    
    $total_perdidas = 0;
    $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);
    for($i=0; $i<sizeof($detalle_perdidas);$i++){
    	$pdf->Ln(5);
    	$pdf->Cell(63.3,$w,$detalle_perdidas[$i]["fecha"],$borde,0, 'C');
    	$pdf->Cell(63.3,$w,$detalle_perdidas[$i]["nb_factura_fld"],$borde,0, 'C');
    	$pdf->Cell(63.3,$w,$detalle_perdidas[$i]["valor_perdida"],$borde,0, 'C');
        $total_perdidas = $total_perdidas + $detalle_perdidas[$i]["valor_perdida"];
    }

}


    $empleado=$_POST['nb_empleado_pg'];
    $fecha_desde=$_POST['nd_fecha_desde_fld'];
    $fecha_hasta=$_POST['nd_fecha_hasta_fld'];
	
    session_start();
    
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;

    if($empleado){
        $query_empleado = "select   nb_nombre_fld nombre, nb_num_doc_fld cedula, 
                                    (case when (`nb_tipo_tercero_cob_fld` = '0') then 'COBRADOR' 
                                    when nb_tipo_tercero_ven_fld='0' then 'VENDEDOR'
                                    when nb_tipo_tercero_emp_fld = '0' then 'EMPLEADO' else '--' end) cargo
                            from    nb_terceros_tbl
                            where   nb_id_fld = ".$empleado;

        $detalle_empleado=$database->executeQuery($query_empleado); 
    }
    else{
        $detalle_empleado[0]['nombre'] = 'TODOS';
        $detalle_empleado[0]['cedula'] = '';
        $detalle_empleado[0]['cargo'] = '';

    }

    

    $query_ventas = "select * from nb_nomina_ventas_detalle_vw
              where str_to_date(fecha,'%d/%m/%Y')  between  str_to_date('".$fecha_desde."','%d/%m/%Y') 
              and str_to_date('".$fecha_hasta."','%d/%m/%Y')";

    if($empleado){
        $query_ventas = $query_ventas. " and IdVendedor = ".$empleado;
    }
    
    $detalle_ventas=$database->executeQuery($query_ventas);

    $query_total_ventas = "select count(*) total_productos, 
        concat('$',format(sum(round(replace(replace(ifnull(ComisionT,0),',',''),'$',''))),2)) total_ingresos, 
        concat('$',format(sum(round(replace(replace(ifnull(total_devoluciones,0),',',''),'$',''))),2)) total_devoluciones
        from nb_nomina_ventas_detalle_vw
        where  str_to_date(fecha,'%d/%m/%Y') between str_to_date('".$fecha_desde."','%d/%m/%Y') and str_to_date('".$fecha_hasta."','%d/%m/%Y')";

    if($empleado){
        $query_total_ventas = $query_total_ventas. " and IdVendedor = ".$empleado;
    }

    $total_ventas=$database->executeQuery($query_total_ventas);

    $query_cobros="
            SELECT * 
            FROM nb_nomina_recaudo_detalle_reporte 
            WHERE (STR_TO_DATE(Fecha,'%d/%m/%Y')  BETWEEN STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') 
            AND STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y')) ";

    if($empleado){
        $query_cobros = $query_cobros. " and IdCobrador = ".$empleado;
    }

    $detalle_cobro=$database->executeQuery($query_cobros);

    $query_total_comision_cobros = "
        select concat('$',format(sum(round(replace(replace(ifnull(Comision,0),',',''),'$',''))),2)) total_comision_cobros
        from nb_nomina_recaudo_detalle_reporte
        where  str_to_date(Fecha,'%d/%m/%Y') between str_to_date('".$fecha_desde."','%d/%m/%Y') and str_to_date('".$fecha_hasta."','%d/%m/%Y') ";
        
    if($empleado){
        $query_total_comision_cobros = $query_total_comision_cobros. " and IdCobrador = ".$empleado;
    }

    $total_comision_cobros=$database->executeQuery($query_total_comision_cobros);
    //echo "detalle_cobro -->".sizeof($detalle_cobro)."<br>";


    $query_perdidas ="select a.*, 
            ifnull(b.nb_valor_fld,0) abono,ifnull(b.nb_valor_descuento_fld,0) descuento, 
                         ifnull(replace(replace(left( b.nb_valor_fld, length( b.nb_valor_fld) - 3),'$',''),',','') + 
                         replace(replace(left( b.nb_valor_descuento_fld, length( b.nb_valor_descuento_fld) - 3),'$',''),',',''),0) abono_descuento,
                         a.sub_vlr_perdida -  (ifnull(replace(replace(left( b.nb_valor_fld, length( b.nb_valor_fld) - 3),'$',''),',','') + 
                         replace(replace(left( b.nb_valor_descuento_fld, length( b.nb_valor_descuento_fld) - 3),'$',''),',',''),0)) valor_perdida
            from (
            select a.nb_fecha_retornado_fld fecha,a.nb_id_fld,  a.nb_factura_fld,
            sum((a.cantidad - ifnull(b.cantidad,0)) * replace(replace(left( a.nb_valor_perdida_fld, length( a.nb_valor_perdida_fld) - 3),'$',''),',',''))  sub_vlr_perdida
            from 
            (select b.*, c.producto, c.cantidad, p.nb_valor_perdida_fld  
            from nb_ventas_tbl a, nb_venta_detalle_tbl c, nb_productos_tbl p,
            (select nb_id_fld,nb_fecha_retornado_fld, nb_factura_fld 
            from nb_relacionfactura_tbl
            where nb_estado_cartera_fld = 3
            ) b
            where a.nb_referencia_fld = b.nb_factura_fld
            and c.factura = a.nb_id_fld
            and p.nb_id_fld = c.producto) a

            left join

            (select a.nb_factura_fld, a.nb_referencia_fld, b.producto, b.cantidad
            from nb_devoluciones_tbl a, nb_devoluciones_detalle_tbl b
            where b.factura = a.nb_id_fld) b on a.nb_id_fld = b.nb_factura_fld 

            group by  a.nb_factura_fld ) a

            left join 

            nb_cartera_tbl b on a.nb_id_fld = b.nb_factura_fld
            where  str_to_date(fecha,'%d/%m/%Y') between str_to_date('".$fecha_desde."','%d/%m/%Y') 
            and str_to_date('".$fecha_hasta."','%d/%m/%Y')"; 

    $detalle_perdidas=$database->executeQuery($query_perdidas);
    
    $total_perdidas = 0;
    for($i=0; $i<sizeof($detalle_perdidas);$i++){
        $total_perdidas = $total_perdidas + $detalle_perdidas[$i]["valor_perdida"];
    }

    


    $objReport = new Report('Facturacion','P','A4','Nabu','Nabu','Nabu','Nabu');

    $pdf=$objReport->setupForm();
    

    schemaReport($pdf,10,$detalle_empleado,$detalle_ventas,$total_ventas,$detalle_cobro,$total_comision_cobros,$detalle_perdidas,$total_perdidas);

    $objReport->exportarPdf($pdf,$id);
?>
