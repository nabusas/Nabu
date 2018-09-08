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

    function schemaReport($pdf,$tamanoFuenteForm,$fecha_desde, $fecha_hasta, $nombre_categoria, $producto, $movimiento_det_inv)
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
        $pdf->Cell(278,$w,'MOVIMIENTO DETALLADO DE INVENTARIO', $borde, 1, 'C');
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
        $pdf->Cell(83,$w,"Linea:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(194,$w,$nombre_categoria,$borde,0, 'L');
    	
    	

    	$pdf->Ln(5);
        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $pdf->Cell(83,$w,"Producto:",$borde,0, 'L');
        $pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $pdf->Cell(194,$w,$producto,$borde,0, 'L');
    	
    	$pdf->Ln(10);

        $pdf->Cell(60.6,$w,"",0,0, 'C', 0, '', 0, false, 'T', 'C');   
        $pdf->Cell(70.5,$w,"ENTRADAS",$borde,0, 'C', 0, '', 0, false, 'T', 'C'); 
        $pdf->Cell(71,$w,"SALIDAS",$borde,0, 'C', 0, '', 0, false, 'T', 'C'); 
        $pdf->Cell(76,$w,"TOTALES",$borde,0, 'C', 0, '', 0, false, 'T', 'C'); 
        $pdf->Ln(5);
    	$pdf->Cell(40.5,$w,"Producto",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(20,$w,"Inv. Inicial",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(20,$w,"Compras",$borde,0,'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(25.5,$w,"Entradas Alma",$borde,0,'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(25,$w,"Dev. Ventas",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(20,$w,"Ventas",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(25.5,$w,"Salidas alma",$borde,0,'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(25.5,$w,"Dev. Compras",$borde,0,'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(25.5,$w,"Inv. tránsito",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(25.5,$w,"Inv. Bodega",$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        $pdf->Cell(25,$w,"Inv. Total",$borde,0,'C', 0, '', 0, false, 'T', 'C');


        for($i=0; $i<sizeof($movimiento_det_inv);$i++){
        	$pdf->Ln(5);
            $pdf->SetFont('helvetica', 'N', 8); 
        	$pdf->Cell(40.5,$w,$movimiento_det_inv[$i]["nombre"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        	$pdf->Cell(20,$w,$movimiento_det_inv[$i]["inv_inicial"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        	$pdf->Cell(20,$w,$movimiento_det_inv[$i]["compras"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        	$pdf->Cell(25.5,$w,$movimiento_det_inv[$i]["entra_alma"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        	$pdf->Cell(25,$w,$movimiento_det_inv[$i]["devol_vtas"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        	$pdf->Cell(20,$w,$movimiento_det_inv[$i]["ventas"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        	$pdf->Cell(25.5,$w,$movimiento_det_inv[$i]["sali_alma"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        	$pdf->Cell(25.5,$w,$movimiento_det_inv[$i]["devo_compras"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        	$pdf->Cell(25.5,$w,$movimiento_det_inv[$i]["inv_transi"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        	$pdf->Cell(25.5,$w,$movimiento_det_inv[$i]["inv_total"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        	$pdf->Cell(25,$w,$movimiento_det_inv[$i]["inv_bodega"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        }

    }


    $fecha_desde=$_POST['nd_fecha_desde_fld'];
    $fecha_hasta=$_POST['nd_fecha_hasta_fld'];
    $categoria=$_POST['nb_categoria_fld'];
    $producto=$_POST['nb_producto_fld'];

    
	
    session_start();
    
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;

    $query = "
    select  existencia.producto,existencia.nombre, existencia.inv_inicial, ifnull(compras.cantidad_compras,0) compras, 
    				ifnull(entradas_almacen.cantidad,0)entra_alma, ifnull(devo_vtas.dev_v_cantidad,0) devol_vtas, ifnull(ventas.cantidad_ventas,0) ventas,
    				ifnull(salidas_almacen.cantidad,0) sali_alma,
    				ifnull(devo_comptas.dev_c_cantidad,0) devo_compras,
    				ifnull(inv_transito.inv_transito_cantidad,0) inv_transi, 
    				(existencia.inv_inicial + ifnull(compras.cantidad_compras,0) + ifnull(entradas_almacen.cantidad,0) + ifnull(devo_vtas.dev_v_cantidad,0) - ifnull(ventas.cantidad_ventas,0) - ifnull(salidas_almacen.cantidad,0) - ifnull(devo_comptas.dev_c_cantidad,0) + ifnull(inv_transito.inv_transito_cantidad,0)) inv_total,
    			 ((existencia.inv_inicial + ifnull(compras.cantidad_compras,0) + ifnull(entradas_almacen.cantidad,0) + ifnull(devo_vtas.dev_v_cantidad,0) - ifnull(ventas.cantidad_ventas,0) - ifnull(salidas_almacen.cantidad,0) - ifnull(devo_comptas.dev_c_cantidad,0) + ifnull(inv_transito.inv_transito_cantidad,0)) - ifnull(inv_transito.inv_transito_cantidad,0))	inv_bodega
    from (

        select  a.nb_id_fld producto,a.nb_nombre_fld nombre, b.existencia inv_inicial
        from nb_productos_vw a, nb_inventario_grid_vw b
        where id = (
                        select max(id) from nb_inventario_grid_vw where producto = b.producto
                        and date_format(fecha,'%d/%m/%Y') < str_to_date('".$fecha_desde."','%d/%m/%Y') 
                        and estado = 'ACTIVO' 
                    )
        and b.producto = a.nb_id_fld ) existencia left join   


        (select b.producto producto, c.nb_nombre_fld, sum(b.cantidad) cantidad_compras 
        from nb_compras_grid_vw a, nb_compra_detalle_tbl b,nb_productos_vw c
        where a.fechaingreso between str_to_date('".$fecha_desde."','%d/%m/%Y') and str_to_date('".$fecha_hasta."','%d/%m/%Y')
        and a.estado = 'ACTIVO'
        and b.factura = a.referencia
        and c.nb_id_fld = b.producto
        group by b.producto) compras on existencia.producto = compras.producto

        left join 

        (select a.nb_producto_fld producto, sum(a.nb_cantidad_fld) cantidad 
        from  nb_inventario_tbl a, nb_productos_vw b
        where a.nb_producto_fld = b.nb_id_fld
        and a.nb_concepto_fld = '0'
        and  a.nb_estado_fld = '0'
        and str_to_date(a.nb_fecha_fld,'%d/%m/%Y') between str_to_date('".$fecha_desde."','%d/%m/%Y') and str_to_date('".$fecha_hasta."','%d/%m/%Y')
        group by a.nb_producto_fld) entradas_almacen on existencia.producto = entradas_almacen.producto

        left  join 

        (select b.producto producto, sum(b.cantidad) cantidad_ventas 
        from nb_ventas_tbl a, nb_venta_detalle_tbl b, nb_productos_vw c
        where str_to_date(a.nb_fecha_ingreso_fld,'%d/%m/%Y') between str_to_date('".$fecha_desde."','%d/%m/%Y') and str_to_date('".$fecha_hasta."','%d/%m/%Y')
        and a.nb_estado_fld = '0'
        and b.factura = a.nb_id_fld
        and b.producto = c.nb_id_fld 
        group by b.producto) ventas  on  existencia.producto = ventas.producto

        left join 

        (select a.nb_producto_fld producto, sum(a.nb_cantidad_fld) cantidad 
        from  nb_inventario_tbl a, nb_productos_vw b
        where a.nb_producto_fld = b.nb_id_fld
        and a.nb_concepto_fld = '1'
        and  a.nb_estado_fld = '0'
        and str_to_date(a.nb_fecha_fld,'%d/%m/%Y') between str_to_date('".$fecha_desde."','%d/%m/%Y') and str_to_date('".$fecha_hasta."','%d/%m/%Y')
        group by a.nb_producto_fld) salidas_almacen on existencia.producto = salidas_almacen.producto

        left join 

        (select a.producto producto, sum(a.transito) inv_transito_cantidad
        from nb_despacho_detalle_tbl a,  nb_productos_vw b , (select max(nb_id_fld) id_despacho, nb_codigo_vendedor_fld from nb_despachos_tbl
        where nb_estado_fld = '0'
        group by nb_codigo_vendedor_fld) c
        where a.factura = c.id_despacho
        and a.producto = b.nb_id_fld
        and str_to_date(a.fecha,'%d/%m/%Y') <= str_to_date('".$fecha_hasta."','%d/%m/%Y')
        group by a.producto) inv_transito on existencia.producto = inv_transito.producto

        left join 

        (select b.producto producto, sum(b.cantidad) dev_v_cantidad  
        from nb_devoluciones_tbl a, nb_devoluciones_detalle_tbl b,  nb_productos_vw c
        where left(a.nb_factura_fld,1) = 'v'
        and a.nb_afecta_inventario_fld = 'SI'
        and a.nb_estado_fld = '0'
        and str_to_date(a.nb_fecha_devolucion_fld,'%d/%m/%Y') between str_to_date('".$fecha_desde."','%d/%m/%Y') and str_to_date('".$fecha_hasta."','%d/%m/%Y')
        and b.linea = a.nb_id_fld
        and b.producto = c.nb_id_fld
        group by b.producto) devo_vtas on existencia.producto = devo_vtas.producto

        left join 

        (select b.producto producto, sum(b.cantidad) dev_c_cantidad  
        from nb_devoluciones_tbl a, nb_devoluciones_detalle_tbl b,  nb_productos_vw c
        where left(a.nb_factura_fld,1) = 'c'
        and a.nb_estado_fld = '0'
        and str_to_date(a.nb_fecha_devolucion_fld,'%d/%m/%Y') between str_to_date('".$fecha_desde."','%d/%m/%Y') and str_to_date('".$fecha_hasta."','%d/%m/%Y')
        and b.linea = a.nb_id_fld
        and b.producto = c.nb_id_fld
        group by b.producto) devo_comptas on existencia.producto = devo_comptas.producto
    ";

    if($producto <> ''){
        $query = $query."  where existencia.producto = ".$producto; 
        
    }

    $movimiento_detallado_inv=$database->executeQuery($query);

    if(isset($categoria) && $categoria !== '' && $producto == ''){
         $query_categoria = "  select nb_nombre_fld
                                from nb_categoria_productos_tbl
                                where nb_id_fld =  ".$categoria;

        $sql_categoria = $database->executeQueryOneRow($query_categoria);

        $nombre_categoria = $sql_categoria[0];
    }

    elseif(isset($producto) && $producto !== '' && isset($categoria) && $categoria !== ''){
        //$query = $query."  where existencia.producto = ".$producto; 

        $sql_producto = $database->executeQueryOneRow("select nb_nombre_fld from nb_productos_tbl
        where nb_id_fld = ".$producto);

        $nombre_producto = $sql_producto[0];

        $query_categoria = " select nb_nombre_fld 
        from nb_categoria_productos_tbl 
        where nb_id_fld = (select nb_categoria_fld from nb_productos_tbl where nb_id_fld = ".$producto.")";

        $sql_categoria = $database->executeQueryOneRow($query_categoria);

        $nombre_categoria = $sql_categoria[0];
            
    }
    else{
        $nombre_categoria = "Todos";
        $nombre_producto = "Todos";
    }

    $movimiento_detallado_inv=$database->executeQuery($query);

    $objReport = new Report('Facturacion','L','A4','Nabu','Nabu','Nabu','Nabu');

    $pdf=$objReport->setupForm();

    schemaReport($pdf,10,$fecha_desde, $fecha_hasta, $nombre_categoria, $nombre_producto, $movimiento_detallado_inv);

    $objReport->exportarPdf($pdf,$id);

?>
