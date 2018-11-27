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

        $pdf->SetFont('helvetica', 'B', $tamanoFuenteForm-2);
        for($i=0; $i<sizeof($movimiento_det_inv);$i++){
            //echo " 1.producto || 2.inventario_inicial || 3.compras || 4.entradas_almacen || 5.devoluciones_ventas || 6.ventas || 7.salidas_almacen || 8.devolucion_compras || i9.nventario_transito || 10.inventario_total || 11.inventario_bodega || <br>";
            //echo "1. ".$movimiento_det_inv[$i]["producto"]." || 2. ".$movimiento_det_inv[$i]["inventario_inicial"]." || 3. ".$movimiento_det_inv[$i]["compras"]." || 4. ".$movimiento_det_inv[$i]["entradas_almacen"]." || 5. ".$movimiento_det_inv[$i]["devoluciones_ventas"]." || 6.".$movimiento_det_inv[$i]["ventas"]." || 7.".$movimiento_det_inv[$i]["salidas_almacen"]." || 8.".$movimiento_det_inv[$i]["devolucion_compras"]." || 9. ".$movimiento_det_inv[$i]["inventario_transito"]." || 10. ".$movimiento_det_inv[$i]["inventario_total"]." || 11. ".$movimiento_det_inv[$i]["inventario_bodega"]." <br> ";
        	$pdf->Ln(5);
            $pdf->SetFont('helvetica', 'N', 8); 
        	$pdf->Cell(40.5,$w,$movimiento_det_inv[$i]["producto"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        	$pdf->Cell(20,$w,$movimiento_det_inv[$i]["inventario_inicial"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        	$pdf->Cell(20,$w,$movimiento_det_inv[$i]["compras"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        	$pdf->Cell(25.5,$w,$movimiento_det_inv[$i]["entradas_almacen"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        	$pdf->Cell(25,$w,$movimiento_det_inv[$i]["devoluciones_ventas"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        	$pdf->Cell(20,$w,$movimiento_det_inv[$i]["ventas"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        	$pdf->Cell(25.5,$w,$movimiento_det_inv[$i]["salidas_almacen"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        	$pdf->Cell(25.5,$w,$movimiento_det_inv[$i]["devolucion_compras"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        	$pdf->Cell(25.5,$w,$movimiento_det_inv[$i]["inventario_transito"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        	$pdf->Cell(25.5,$w,$movimiento_det_inv[$i]["inventario_total"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        	$pdf->Cell(25,$w,$movimiento_det_inv[$i]["inventario_bodega"],$borde,0, 'C', 0, '', 0, false, 'T', 'C');
        }

    }


    $fecha_desde=$_POST['nd_fecha_desde_fld'];
    $fecha_hasta=$_POST['nd_fecha_hasta_fld'];
    $categoria=$_POST['nb_categoria_fld'];
    $producto=$_POST['nb_producto_fld'];

    
	
    session_start();
    
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;

    if (isset($categoria) and $categoria <> ''){
      $sqlProducto = " and nb_categoria_fld = '".$categoria."'";

      if (isset($producto) and $producto <> '') {
        $sqlProducto .= " and nb_id_fld = '".$producto."'";
      }
    }
    

    $productos = $database->executeQuery("select * 
                                          from nb_productos_tbl 
                                          where nb_estado_fld = 0 ".$sqlProducto." 
                                          order by nb_nombre_fld");

    
    $movimiento_det_inv = array();
    for($i=0; $i < sizeof($productos); $i++){

        $row = array();

        $producto = $productos[$i]['nb_id_fld'];
        $row['producto'] = $productos[$i]['nb_nombre_fld'];

        
        $inventario_inicial = get_inventario_inicial($producto, $fecha_desde);
        $row['inventario_inicial'] = $inventario_inicial;
        
        $compras = get_compras($producto, $fecha_desde, $fecha_hasta);
        $row['compras'] = $compras;
        
        $entradas_almacen = get_entradas_almacen($producto, $fecha_desde, $fecha_hasta);
        $row['entradas_almacen'] = $entradas_almacen;
        
        $devoluciones_ventas = get_devoluciones_ventas($producto, $fecha_desde, $fecha_hasta);
        $row['devoluciones_ventas'] = $devoluciones_ventas;
        
        $ventas = get_ventas($producto, $fecha_desde, $fecha_hasta);
        $row['ventas'] = $ventas;
                
        $salidas_almacen = get_salidas_almacen($producto, $fecha_desde, $fecha_hasta);
        $row['salidas_almacen'] = $salidas_almacen;
               
        $devolucion_compras = get_devolucion_compras($producto, $fecha_desde, $fecha_hasta);
        $row['devolucion_compras'] = $devolucion_compras;
                
        $inventario_transito = get_inventario_transito($producto, $fecha_desde, $fecha_hasta);
        $row['inventario_transito'] = $inventario_transito;

        
        $inventario_total =  get_inventario_total($inventario_inicial, $compras, $entradas_almacen, $devoluciones_ventas,
                                                  $ventas, $salidas_almacen, 
                                                  $devolucion_compras, $inventario_transito);
        
        $row['inventario_total'] = $inventario_total;

        $inventario_bodega = get_inventario_bodega($inventario_total, $inventario_transito);
        $row['inventario_bodega'] = $inventario_bodega;

        array_push($movimiento_det_inv, $row);


    }


    if(isset($categoria) && $categoria !== '' && $producto == ''){
         $query_categoria = "  select nb_nombre_fld
                                from nb_categoria_productos_tbl
                                where nb_id_fld =  ".$categoria;

        $sql_categoria = $database->executeQueryOneRow($query_categoria);

        $nombre_categoria = $sql_categoria[0];
    }

    elseif(isset($producto) && $producto !== '' && isset($categoria) && $categoria !== ''){

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


    $objReport = new Report('Facturacion','L','A4','Nabu','Nabu','Nabu','Nabu');

    $pdf=$objReport->setupForm();

    schemaReport($pdf,10,$fecha_desde, $fecha_hasta, $nombre_categoria, $nombre_producto, $movimiento_det_inv);

    $objReport->exportarPdf($pdf,$id);


    function get_inventario_inicial($producto, $fecha_desde){
        $objUtilities = $_SESSION['objUtilities'];
        $database = $objUtilities->database;
        $query_inventario_inicial = "select ifnull(b.existencia, 0) inv_inicial
                                    from nb_productos_vw a, nb_inventario_grid_vw b
                                    where id = (
                                                    select max(id) from nb_inventario_grid_vw where producto = '".$producto."'
                                                    and fecha < str_to_date('".$fecha_desde."','%d/%m/%Y') 
                                                    and estado = 'ACTIVO' 
                                                )
                                    and b.producto = a.nb_id_fld";

        $inventario_inicial = $database->executeQueryOneRow($query_inventario_inicial);

        return $inventario_inicial[0];

    }

    function get_compras($producto, $fecha_desde, $fecha_hasta){

        $objUtilities = $_SESSION['objUtilities'];
        $database = $objUtilities->database;
        $query_compras= "select ifnull(sum(b.cantidad),0) cantidad_compras 
                        from nb_compras_tbl a, nb_compra_detalle_tbl b
                        where str_to_date(a.nb_fecha_ingreso_fld,'%d/%m/%Y') 
                                between str_to_date('".$fecha_desde."','%d/%m/%Y') and str_to_date('".$fecha_hasta."','%d/%m/%Y')
                        and a.nb_estado_fld = '0'
                        and b.factura = a.nb_referencia_fld
                        and b.producto = '".$producto."'";

        $compras = $database->executeQueryOneRow($query_compras);

        return $compras[0];

    }

    function get_entradas_almacen($producto, $fecha_desde, $fecha_hasta){
        $objUtilities = $_SESSION['objUtilities'];
        $database = $objUtilities->database;
        $query_entradas_almacen = "
            select ifnull(sum(a.nb_cantidad_fld),0) cantidad 
            from  nb_inventario_tbl a
            where a.nb_producto_fld = '".$producto."'
            and a.nb_concepto_fld = '0'
            and  a.nb_estado_fld = '0'
            and str_to_date(a.nb_fecha_fld,'%d/%m/%Y') 
                    between str_to_date('".$fecha_desde."','%d/%m/%Y') and str_to_date('".$fecha_hasta."','%d/%m/%Y')";

        $entradas_almacen = $database->executeQueryOneRow($query_entradas_almacen);

        return $entradas_almacen[0];

        
    }

    function get_devoluciones_ventas($producto, $fecha_desde, $fecha_hasta){
        $objUtilities = $_SESSION['objUtilities'];
        $database = $objUtilities->database;
        $query_devo_ventas = "
            select ifnull(sum(b.devolucion), 0) dev_v_cantidad  
            from nb_devoluciones_tbl a, nb_devoluciones_detalle_tbl b
            where upper(left(a.nb_referencia_fld,1)) = 'V'
            and a.nb_afecta_inventario_fld = '1'
            and a.nb_estado_fld = '0'
            and str_to_date(a.nb_fecha_devolucion_fld,'%d/%m/%Y') 
                between str_to_date('".$fecha_desde."','%d/%m/%Y') and str_to_date('".$fecha_hasta."','%d/%m/%Y')
            and b.factura = a.nb_id_fld
            and b.producto = '".$producto."'";

        $devo_ventas = $database->executeQueryOneRow($query_devo_ventas);

        return $devo_ventas[0];

    }
    
    function get_ventas($producto, $fecha_desde, $fecha_hasta){
        $objUtilities = $_SESSION['objUtilities'];
        $database = $objUtilities->database;
        $query_ventas = "
            select ifnull(sum(b.cantidad), 0) cantidad_ventas 
            from nb_ventas_tbl a, nb_venta_detalle_tbl b
            where str_to_date(a.nb_fecha_ingreso_fld,'%d/%m/%Y') 
                  between str_to_date('".$fecha_desde."','%d/%m/%Y') and str_to_date('".$fecha_hasta."','%d/%m/%Y')
            and a.nb_estado_fld = '0'
            and b.factura = a.nb_id_fld
            and b.producto = '".$producto."'";

        $ventas = $database->executeQueryOneRow($query_ventas);

        return $ventas[0];


    }
    
    function get_salidas_almacen($producto, $fecha_desde, $fecha_hasta){
        $objUtilities = $_SESSION['objUtilities'];
        $database = $objUtilities->database;
        $query_salidas_almacen = "
            select ifnull(sum(a.nb_cantidad_fld), 0) cantidad 
            from  nb_inventario_tbl a
            where a.nb_producto_fld = '".$producto."'
            and a.nb_concepto_fld = '1'
            and  a.nb_estado_fld = '0'
            and str_to_date(a.nb_fecha_fld,'%d/%m/%Y') 
                between str_to_date('".$fecha_desde."','%d/%m/%Y') and str_to_date('".$fecha_hasta."','%d/%m/%Y')";

        $salidas_almacen = $database->executeQueryOneRow($query_salidas_almacen);

        return $salidas_almacen[0];


    }
    
    function get_devolucion_compras($producto, $fecha_desde, $fecha_hasta){
        $objUtilities = $_SESSION['objUtilities'];
        $database = $objUtilities->database;
        $query_devo_compras = "
            select ifnull(sum(b.devolucion), 0) dev_c_cantidad  
            from nb_devoluciones_tbl a, nb_devoluciones_detalle_tbl b
            where upper(left(a.nb_referencia_fld,1)) = 'C'
            and a.nb_estado_fld = '0'
            and str_to_date(a.nb_fecha_devolucion_fld,'%d/%m/%Y') 
                between str_to_date('".$fecha_desde."','%d/%m/%Y') and str_to_date('".$fecha_hasta."','%d/%m/%Y')
            and b.factura = a.nb_id_fld
            and b.producto = '".$producto."'";

        $devo_compras = $database->executeQueryOneRow($query_devo_compras);

        return $devo_compras[0];


    }
     
    function get_inventario_transito($producto, $fecha_desde, $fecha_hasta){
        $objUtilities = $_SESSION['objUtilities'];
        $database = $objUtilities->database;
        $query_inv_transito = "
            select ifnull(sum(a.transito), 0) inv_transito_cantidad
            from nb_despacho_detalle_tbl a,
                 (select max(nb_id_fld) id_despacho, nb_codigo_vendedor_fld 
                    from nb_despachos_tbl
                    where nb_estado_fld = '0'
                    group by nb_codigo_vendedor_fld) c
            where a.factura = c.id_despacho
            and a.producto = '".$producto."'
            and str_to_date(a.fecha,'%d/%m/%Y') <= str_to_date('".$fecha_hasta."','%d/%m/%Y')";

        $inv_transito = $database->executeQueryOneRow($query_inv_transito);

        return $inv_transito[0];

    }

    function get_inventario_bodega($inventario_total, $inventario_transito){
        return $inventario_total - $inventario_transito;

    }

    function get_inventario_total($inv_inicial, $compras, $entradas_almacen, $devo_ventas, $ventas, $salidas_almacen, 
        $devo_compras, $inventario_transito){

        $a = ($inv_inicial + $compras + $entradas_almacen + $devo_ventas);
        $b = ($ventas - $salidas_almacen - $devo_compras + $inventario_transito);

        return $a - $b;


    }



?>
