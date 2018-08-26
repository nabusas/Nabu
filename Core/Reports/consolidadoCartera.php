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

		Fecha creacion		= 05-08-2017
		Desarrollador		= SM
		Fecha modificacion	= 05-08-2017
		Usuario Modifico	= SM

	*/

	include "../Class/Utilities.php";
	include_once "../Class/ExportToExcel.php";

	
  $fecha_cartera_desde=$_POST['nb_fecha_desde_fld'];
  $fecha_cartera_hasta=$_POST['nb_fecha_hasta_fld'];
  $zona=$_POST['nb_zona_fld'];
  session_start();
  
  $objUtilities = $_SESSION['objUtilities'];
  $database = $objUtilities->database;

/*
    $sql = "
           
           (
            (
              select ifnull(sum(replace(replace(venta.saldo,'$',''),',','')),0)
              from    nb_ventas_grid_vw venta
              where   venta.referencia in 
              (SELECT upper(A.NB_FACTURA_FLD)
                FROM nb_relacionfactura_tbl A
                JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= upper(A.NB_FACTURA_FLD))
                WHERE zonas.nb_id_fld = reporte.ID_ZONA
                  AND (STR_TO_DATE(A.nb_fecha_retornado_fld, '%d/%m/%Y') 
                  BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') AND STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y'))
                  AND A.nb_estado_fld = 0
                  AND A.nb_estado_cartera_fld = 3
                  AND NOT EXISTS  (
                            SELECT 'J'
                            FROM   nb_cartera_tbl cartera
                            WHERE SUBSTRING(upper(cartera.nb_referencia_fld),2,length(cartera.nb_referencia_fld)) = upper(A.NB_FACTURA_FLD)
                          )
              )
            )
            
            +
            (
               SELECT ifnull(sum(replace(replace(cartera.nb_nuevo_saldo_fld,'$',''),',','')),0)
               FROM  nb_cartera_tbl cartera
               where SUBSTRING(upper(cartera.nb_referencia_fld),2,length(cartera.nb_referencia_fld)) in
               (
                  select upper(A.NB_FACTURA_FLD)
                  FROM nb_relacionfactura_tbl A
                  JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= upper(A.NB_FACTURA_FLD))
                  WHERE zonas.nb_id_fld = reporte.ID_ZONA
                  AND (STR_TO_DATE(A.nb_fecha_retornado_fld, '%d/%m/%Y') 
                  BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y'))
                  AND A.nb_estado_fld = 0
                  AND A.nb_estado_cartera_fld = 3

               )
               AND SUBSTRING(upper(cartera.nb_referencia_fld),1,1) ='V'
               AND cartera.nb_id_fld = ( select max(cartera2.nb_id_fld) from nb_cartera_tbl cartera2 where cartera.nb_referencia_fld= cartera2.nb_referencia_fld )      

            )
            )
             AS MONTO_CASTIGADO,
          
      FROM nb_conosolidado_cartera_detalle_reporte reporte ".$sqlZonas." ) datos ";   

*/

  $zonas = $database->executeQuery("select * from nb_zonas_tbl where nb_estado_fld = 0");

  //echo "$zonas -->".sizeof($zonas)."<br>";
  //echo "fecha_cartera_desde -->".$fecha_cartera_desde."<br>";

  for ($i=0; $i < sizeof($zonas); $i++) { 
    echo "----------------------------------------------";
    echo "zona -->".$zonas[$i]['nb_nombre_fld']."<br>";
    echo "";
    $facturas_iniciales = get_facturas_iniciales($zonas[$i]['nb_id_fld'], $fecha_cartera_desde);
    echo "facturas_iniciales -->".$facturas_iniciales"<br>";
    $saldo_inicial = get_saldo_inicial($zonas[$i]['nb_id_fld'], $fecha_cartera_desde, $fecha_cartera_hasta);
    echo "saldo_inicial -->".$saldo_inicial"<br>";
    $facturas_entregadas = get_facturas_entregadas($zonas[$i]['nb_id_fld'], $fecha_cartera_desde, $fecha_cartera_hasta);
    echo "facturas_entregadas -->".$facturas_entregadas"<br>";
    $facturas_Abonadas = get_facturas_abonadas($zonas[$i]['nb_id_fld'], $fecha_cartera_desde, $fecha_cartera_hasta);
    echo "facturas_Abonadas -->".$facturas_Abonadas"<br>";
    $facturas_canceladas = get_facturas_canceladas($zonas[$i]['nb_id_fld'], $fecha_cartera_desde, $fecha_cartera_hasta);
    echo "facturas_canceladas -->".$facturas_canceladas"<br>";
    $abonos_aplicados = get_abonos_aplicados($zonas[$i]['nb_id_fld'], $fecha_cartera_desde, $fecha_cartera_hasta);
    echo "abonos_aplicados -->".$abonos_aplicados"<br>";
    $recaduo = get_recaduo($zonas[$i]['nb_id_fld'], $fecha_cartera_desde, $fecha_cartera_hasta);
    echo "recaduo -->".$recaduo"<br>";
    $descuentos = get_descuentos($zonas[$i]['nb_id_fld'], $fecha_cartera_desde, $fecha_cartera_hasta);
    echo "descuentos -->".$descuentos"<br>";
    $descuentas_especiales = get_descuentas_especiales($zonas[$i]['nb_id_fld'], $fecha_cartera_desde, $fecha_cartera_hasta);
    echo "descuentas_especiales -->".$descuentas_especiales"<br>";
    $abonos_SF_aplicados = get_abonos_SF_aplicados($zonas[$i]['nb_id_fld'], $fecha_cartera_desde, $fecha_cartera_hasta);
    echo "abonos_SF_aplicados -->".$abonos_SF_aplicados"<br>";
    $abonos_SF_entrantes = get_abonos_SF_entrantes($zonas[$i]['nb_id_fld'], $fecha_cartera_desde, $fecha_cartera_hasta);
    echo "abonos_SF_entrantes -->".$abonos_SF_entrantes"<br>";
    $facturas_vendidas = get_facturas_vendidas($zonas[$i]['nb_id_fld'], $fecha_cartera_desde, $fecha_cartera_hasta);
    echo "facturas_vendidas -->".$facturas_vendidas"<br>";
    $nueva_cartera = get_nueva_cartera($zonas[$i]['nb_id_fld'], $fecha_cartera_desde, $fecha_cartera_hasta);
    echo "nueva_cartera -->".$nueva_cartera"<br>";
    $facturas_castigadas = get_facturas_castigadas($zonas[$i]['nb_id_fld'], $fecha_cartera_desde, $fecha_cartera_hasta);
    echo "facturas_castigadas -->".$facturas_castigadas"<br>";
    //$monto_castigado = get_monto_castigado($zonas[$i]['nb_id_fld'], $fecha_cartera_desde, $fecha_cartera_hasta);
    $facturas_recuperadas = get_facturas_recuperadas($zonas[$i]['nb_id_fld'], $fecha_cartera_desde, $fecha_cartera_hasta);
    echo "facturas_recuperadas -->".$facturas_recuperadas"<br>";
    $monto_recuperado = get_monto_recuperado();
    echo "monto_recuperado -->".$monto_recuperado"<br>";
    $facturas_por_devolucion = get_facturas_por_devolucion($zonas[$i]['nb_id_fld'], $fecha_cartera_desde, $fecha_cartera_hasta);
    echo "facturas_por_devolucion -->".$facturas_por_devolucion"<br>";
    $monto_devoluciones = get_monto_devoluciones($zonas[$i]['nb_id_fld'], $fecha_cartera_desde, $fecha_cartera_hasta);
    echo "monto_devoluciones -->".$monto_devoluciones"<br>";
    $traslados_in = get_traslados_in($zonas[$i]['nb_id_fld'], $fecha_cartera_desde, $fecha_cartera_hasta);
    echo "traslados_in -->".$traslados_in"<br>";
    $trasldos_out = get_trasldos_out($zonas[$i]['nb_id_fld'], $fecha_cartera_desde, $fecha_cartera_hasta);
    echo "trasldos_out -->".$trasldos_out"<br>";
    echo "-----------------------------------------------------";
  }



    /*  
    $csv = new ExportExcel();
    $database->conectar();
    $file=$csv->exportarFile('0',$sql);
    $database->desconectar();

    $filename=str_replace('../uploads/','',$file);

    header( 'Content-Type: application/octet-stream');
    header( 'Content-Length: '.filesize($file));
    header( 'Content-Disposition:attachment;filename='.$filename);
    readfile($file);*/


  function get_facturas_iniciales($zona, $fecha_desde){
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;
    $query = "select count(a.referencia)
              FROM nb_ventas_grid_vw a, nb_zonasFacturas_vw zonas
              WHERE replace(replace(saldo,'$',''),',','') > 0
              and estado = 'ACTIVO'
              and IFNULL(EstadoCartera,'X')  <> 'Castigada'
              and zonas.factura =  a.referencia
              AND STR_TO_DATE(fechaingreso,'%d/%m/%Y') = STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') 
              and zonas.nb_id_fld = ".$zona;

    $facturas_iniciales = $database->executeQueryOneRow($query);
  
    return $facturas_iniciales[0];

  }

  function get_saldo_inicial($zona, $fecha_desde, $fecha_hasta){
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;

    $query_saldo_ventas = "select ifnull(sum(replace(replace(saldo,'$',''),',','')),0)
                            FROM nb_ventas_grid_vw a, nb_zonasFacturas_vw zonas 
                            WHERE replace(replace(saldo,'$',''),',','') > 0
                            and estado = 'ACTIVO'
                            and zonas.factura=  a.referencia
                            and IFNULL(EstadoCartera,'X')  <> 'Castigada'
                            AND STR_TO_DATE(fechaingreso,'%d/%m/%Y') = STR_TO_DATE('".$fecha_desde."','%d/%m/%Y')
                            and zonas.nb_id_fld = ".$zona;

    $saldo_ventas = $database->executeQueryOneRow($query_saldo_ventas);


    $query_abonos_sf = "select ifnull(sum(replace(replace(a.nb_abono_fld,'$',''),',','')),0)
                        from nb_abonosinfactura_tbl a
                        where nb_estado_fld = 0
                        and   STR_TO_DATE(nb_fecha_cobro_fld,'%d/%m/%Y') < STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') 
                        and   STR_TO_DATE(nb_fecha_cambio_estado_fld,'%d/%m/%Y') between STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') 
                                                        and STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y')
                        and   a.nb_zona_fld = ".$zona;

    $abonos_sf = $database->executeQueryOneRow($query_abonos_sf);

    return =  $saldo_ventas[0] + $abonos_sf[0];
    
  }

  function get_facturas_entregadas($zona, $fecha_desde, $fecha_hasta){
    $query ) "select count(a.nb_id_fld)
              FROM nb_relacionfactura_tbl A
              JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= upper(A.NB_FACTURA_FLD))
              WHERE  A.nb_estado_fld = 0 
              AND STR_TO_DATE(A.nb_fecha_entrega_fld, '%d/%m/%Y') BETWEEN STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') 
                                                                  and STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y')
              AND zonas.nb_id_fld = ".$zona;

    $facturas_entregadas = $database->executeQueryOneRow($query);

    return =  $facturas_entregadas[0];
  }

  function get_facturas_abonadas($zona, $fecha_desde, $fecha_hasta){
    $query = "select count(cartera.nb_id_fld)
              FROM  nb_cartera_tbl cartera
              JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= SUBSTRING(upper(cartera.nb_referencia_fld),2,length(cartera.nb_referencia_fld)))
              WHERE cartera.nb_concepto_fld=1
              AND cartera.nb_estado_fld = 0
              AND cartera.nb_id_fld = ( select max(cartera2.nb_id_fld) from nb_cartera_tbl cartera2 where cartera.nb_referencia_fld= cartera2.nb_referencia_fld )
              AND SUBSTRING(upper(cartera.nb_referencia_fld),1,1) ='V'
              AND replace(replace(cartera.nb_nuevo_saldo_fld,'$',''),',','') > 0
              AND STR_TO_DATE(cartera.nb_fecha_ingreso_concepto_fld, '%d/%m/%Y') 
                    BETWEEN STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y')
              AND zonas.nb_id_fld = ".$zona;

    $facturas_abonadas = $database->executeQueryOneRow($query);

    return =  $facturas_abonadas[0];
  }

  function get_facturas_canceladas($zona, $fecha_desde, $fecha_hasta){
    $query = "select count(cartera.nb_id_fld)
            FROM  nb_cartera_tbl cartera
            JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= SUBSTRING(upper(cartera.nb_referencia_fld),2,length(cartera.nb_referencia_fld)))
            WHERE cartera.nb_concepto_fld=1
            AND cartera.nb_estado_fld = 0
            AND cartera.nb_id_fld = ( select max(cartera2.nb_id_fld) from nb_cartera_tbl cartera2 where cartera.nb_referencia_fld= cartera2.nb_referencia_fld )
            AND SUBSTRING(upper(cartera.nb_referencia_fld),1,1) ='V'
            AND replace(replace(cartera.nb_nuevo_saldo_fld,'$',''),',','') = 0
            AND STR_TO_DATE(cartera.nb_fecha_ingreso_concepto_fld, '%d/%m/%Y') 
                  BETWEEN STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y')
            AND zonas.nb_id_fld = ".$zona;

    $facturas_canceladas = $database->executeQueryOneRow($query);

    return =  $facturas_canceladas[0];
  }

  function get_abonos_aplicados($zona, $fecha_desde, $fecha_hasta){
    $query = "select   count(cartera.nb_id_fld) abonos_aplicados
            FROM    nb_cartera_tbl cartera
                JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= SUBSTRING(upper(cartera.nb_referencia_fld),2,length(cartera.nb_referencia_fld)))
            WHERE   cartera.nb_concepto_fld=1
            AND   cartera.nb_estado_fld = 0
            AND   cartera.nb_id_fld = ( select max(cartera2.nb_id_fld) from nb_cartera_tbl cartera2 where cartera.nb_referencia_fld= cartera2.nb_referencia_fld )
            AND   SUBSTRING(upper(cartera.nb_referencia_fld),1,1) ='V'
            AND   STR_TO_DATE(cartera.nb_fecha_ingreso_concepto_fld, '%d/%m/%Y') 
                  BETWEEN STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y')
            AND zonas.nb_id_fld = ".$zona;

    $abonos_aplicados = $database->executeQueryOneRow($query);

    return =  $abonos_aplicados[0];
  }

  function get_recaduo($zona, $fecha_desde, $fecha_hasta){
    $query = "select ifnull(sum(replace(replace(cartera.nb_valor_fld,'$',''),',','')),0)
            FROM  nb_cartera_tbl cartera
            JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= SUBSTRING(upper(cartera.nb_referencia_fld),2,length(cartera.nb_referencia_fld)))
            WHERE cartera.nb_concepto_fld=1
            AND SUBSTRING(upper(cartera.nb_referencia_fld),1,1) ='V'
             AND zonas.nb_id_fld = 2
            AND STR_TO_DATE(cartera.nb_fecha_ingreso_concepto_fld, '%d/%m/%Y') 
            BETWEEN STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y')
            AND zonas.nb_id_fld = ".$zona;

    $recaudo = $database->executeQueryOneRow($query);

    return =  $recaudo[0];
    
  }

  function get_descuentos($zona, $fecha_desde, $fecha_hasta){
    $query = "select ifnull(sum(replace(replace(cartera.nb_valor_descuento_fld,'$',''),',','')),0) descuentos
            from    nb_cartera_tbl cartera
                   join nb_zonasFacturas_vw zonas on (zonas.factura = SUBSTRING(upper(cartera.nb_referencia_fld),2,length(cartera.nb_referencia_fld)))
            where  cartera.nb_estado_fld = 0
            and    (STR_TO_DATE(cartera.nb_fecha_ingreso_concepto_fld, '%d/%m/%Y') 
            BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y'))
            AND     SUBSTRING(upper(cartera.nb_referencia_fld),1,1) ='V'
            AND     zonas.nb_id_fld = ".$zona;

    $descuentos = $database->executeQueryOneRow($query);

    return =  $descuentos[0];
    
  }

  function get_descuentas_especiales($zona, $fecha_desde, $fecha_hasta){
    $query = "select ifnull(sum(replace(replace(cartera.nb_valor_fld,'$',''),',','')),0) descuentos_especiales
            from    nb_cartera_tbl cartera
                   join nb_zonasFacturas_vw zonas on (zonas.factura = SUBSTRING(upper(cartera.nb_referencia_fld),2,length(cartera.nb_referencia_fld)))
            where  cartera.nb_estado_fld = 0
            and    cartera.nb_concepto_fld = 2
            and    (STR_TO_DATE(cartera.nb_fecha_ingreso_concepto_fld, '%d/%m/%Y') 
            BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y'))
            AND     SUBSTRING(upper(cartera.nb_referencia_fld),1,1) ='V'
            AND     zonas.nb_id_fld = ".$zona;

    $descuentos_especiales = $database->executeQueryOneRow($query);

    return =  $descuentos_especiales[0];
    
  }

  function get_abonos_SF_aplicados($zona, $fecha_desde, $fecha_hasta){
    $query = "select   ifnull(sum(replace(replace(abonosSF.nb_abono_fld,'$',''),',','')),0) abonosSF_aplicados
            FROM    nb_abonosinfactura_tbl abonosSF
            WHERE  nb_estado_fld = 0
            AND    nb_fecha_cambio_estado_fld 
                   BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y')
            AND    nb_zona_fld = ".$zona;

    $abonos_SF_aplicados = $database->executeQueryOneRow($query);

    return =  $abonos_SF_aplicados[0];
  }

  function get_abonos_SF_entrantes($zona, $fecha_desde, $fecha_hasta){
    $query = "select   concat('$',format(ifnull(sum(replace(replace(abonosSF.nb_abono_fld,'$',''),',','')),0),2)) abonosSF_entrantes
            FROM    nb_abonosinfactura_tbl abonosSF
            WHERE  nb_estado_fld = 0
            AND    STR_TO_DATE(nb_fecha_cobro_fld,'%d/%m/%Y') BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') 
                                      and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y')
            AND    nb_zona_fld = ".$zona;

    $abonos_SF_entrantes = $database->executeQueryOneRow($query);

    return =  $abonos_SF_entrantes[0];    
  }

  function get_facturas_vendidas($zona, $fecha_desde, $fecha_hasta){
    $query = "select count(1) 
            from nb_ventas_grid_vw venta
            JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= venta.referencia)
            where venta.estado = 'ACTIVO'
            and  venta.formapago <> 'CONTADO'
            AND date(fechaingreso) BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') 
                            and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y')
                            AND zonas.nb_id_fld = ".$zona;

    $facturas_vendidas = $database->executeQueryOneRow($query);

    return =  $facturas_vendidas[0];
  }

  function get_nueva_cartera($zona, $fecha_desde, $fecha_hasta){
    $query_vlr_total = "select ifnull(sum(replace(replace(total,'$',''),',','')),0)  
            from nb_ventas_grid_vw venta
            JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= venta.referencia)
            where venta.estado = 'ACTIVO'
            and  venta.formapago <> 'CONTADO'
            
            AND date(fechaingreso) 
                      BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y')
            AND zonas.nb_id_fld = ".$zona;

    $vlr_total = $database->executeQueryOneRow($query_vlr_total);

    $query_abono_inicial = " select ifnull(sum(replace(replace(venta.nb_abono_inicial_fld,'$',''),',','')),0) 
            from nb_ventas_tbl venta
            JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= venta.nb_referencia_fld)
            where venta.nb_estado_fld = 0
            and  venta.nb_forma_pago_fld <> 0
            AND (STR_TO_DATE(venta.nb_fecha_ingreso_fld, '%d/%m/%Y') 
            BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y'))
            AND zonas.nb_id_fld = ".$zona;

    $abono_inicial = $database->executeQueryOneRow($query_abono_inicial);

    return =  $vlr_total[0] - $abono_inicial[0];
    
  }

  function get_facturas_castigadas($zona, $fecha_desde, $fecha_hasta){
    $query = "select
            count(a.nb_id_fld)
            FROM nb_relacionfactura_tbl A
            JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= upper(A.NB_FACTURA_FLD))
            WHERE A.nb_estado_fld = 0
            AND A.nb_estado_cartera_fld = 3 
            AND (STR_TO_DATE(A.nb_fecha_retornado_fld, '%d/%m/%Y') 
            BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y'))
            AND zonas.nb_id_fld = ".$zona;

    $facturas_castigadas = $database->executeQueryOneRow($query);

    return =  $facturas_castigadas[0];
    
  }

  function get_monto_castigado($zona, $fecha_desde, $fecha_hasta){
    $query = "";
    
  }

  function get_facturas_recuperadas($zona, $fecha_desde, $fecha_hasta){
    $query = "select count(v.nb_id_fld) facturas_recuperadas
            FROM   nb_ventas_tbl v join nb_zonasFacturas_vw zonas on (zonas.factura = v.nb_referencia_fld),
              nb_relacionfactura_tbl rf
            where  v.nb_estado_fld = 0
            and    v.nb_referencia_fld = rf.nb_factura_fld
            and    rf.nb_estado_cartera_fld = 4
            and    str_to_date(rf.nb_fecha_recuperada_fld,'%d/%m/%Y') 
            between str_to_date('".$fecha_cartera_desde."','%d/%m/%Y') and str_to_date('".$fecha_cartera_hasta."','%d/%m/%Y')
            and    zonas.nb_id_fld = ".$zona;

    $facturas_recuperadas = $database->executeQueryOneRow($query);

    return =  $facturas_recuperadas[0];
    
    
  }

  function get_monto_recuperado(){
    $query = "select ifnull((total_ventas - total_cartera - total_devols),0) monto_recuperado
            from (
            select  ifnull(sum(replace(replace(v.total,'$',''),',','')),0) as  total_ventas
            from    nb_ventas_grid_vw v, nb_relacionfactura_tbl rf
            where   v.referencia = rf.nb_factura_fld
            and     v.fechaingreso <= rf.nb_fecha_recuperada_fld) as ventas,

            (
            select ifnull(sum(replace(replace(cartera.nb_valor_fld,'$',''),',','')),0) as total_cartera
            from    nb_cartera_tbl cartera, nb_relacionfactura_tbl rf
            where   rf.nb_factura_fld = SUBSTRING(upper(cartera.nb_referencia_fld),2,length(cartera.nb_referencia_fld))
            and       SUBSTRING(upper(cartera.nb_referencia_fld),1,1) ='V'
            and     cartera.nb_fecha_ingreso_concepto_fld <= rf.nb_fecha_recuperada_fld) as cartera,

            (
            select  ifnull(sum(replace(replace(devols.nb_valor_total_fld,'$',''),',','')),0) as total_devols
            from    nb_devoluciones_tbl devols, nb_relacionfactura_tbl rf
            where   rf.nb_factura_fld = SUBSTRING(upper(devols.nb_referencia_fld),2,length(devols.nb_referencia_fld))
            and       SUBSTRING(upper(devols.nb_referencia_fld),1,1) ='V'
            and     devols.nb_fecha_devolucion_fld <= rf.nb_fecha_recuperada_fld ) as devoluciones";

    $monto_recuperado = $database->executeQueryOneRow($query);

    return =  $monto_recuperado[0];
    
  }

  function get_facturas_por_devolucion($zona, $fecha_desde, $fecha_hasta){
    $query = "select  count(a.nb_id_fld) facturas_por_devols
            from    nb_devoluciones_tbl a, nb_ventas_grid_vw b
            where STR_TO_DATE(a.nb_fecha_devolucion_fld,'%d/%m/%Y')  
            between STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y')
            and   a.nb_estado_fld = 0
            and SUBSTRING(upper(a.nb_referencia_fld),2,length(a.nb_referencia_fld)) = b.referencia
            and   SUBSTRING(upper(a.nb_referencia_fld),1,1) ='V'
            and  b.formapago <> 'CONTADO'
            and b.referencia in ( SELECT a.referencia
               FROM nb_ventas_grid_vw a
               JOIN nb_zonasFacturas_vw zonas on (zonas.factura=  upper(a.referencia)  
               )
               WHERE replace(replace(saldo,'$',''),',','') = 0
               and estado = 'ACTIVO'
               and zonas.nb_id_fld = ".$zona."
               and IFNULL(EstadoCartera,'X')  <> 'Castigada'
               AND STR_TO_DATE(fechaingreso,'%d/%m/%Y') = STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y'))";

    $facturas_por_devolucion = $database->executeQueryOneRow($query);

    return =  $facturas_por_devolucion[0];
    
  }

  function get_monto_devoluciones($zona, $fecha_desde, $fecha_hasta){
    $query = "select ifnull(sum(replace(replace(devols.nb_valor_total_fld,'$',''),',','')),0) monto_devoluciones
            from nb_devoluciones_tbl devols
                join nb_zonasFacturas_vw zonas on (zonas.factura = SUBSTRING(upper(devols.nb_referencia_fld),2,length(devols.nb_referencia_fld)))
            where devols.nb_estado_fld = 0
            and str_to_date(devols.nb_fecha_devolucion_fld,'%d/%m/%Y') 
            BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y')
            and zonas.nb_id_fld = ".$zona;

    $monto_devoluciones = $database->executeQueryOneRow($query);

    return =  $monto_devoluciones[0];
    
  }

  function get_traslados_in($zona, $fecha_desde, $fecha_hasta){
    $query = "select ifnull(count(ventas.nb_id_fld),0) traslados_in
             from   nb_terceros_tbl terceros join nb_zonas_tbl zonas on (zonas.nb_nombre_fld = terceros.nb_zona_fld), nb_ventas_tbl ventas
            where   terceros.nb_zona_anterior_fld <> ''
            and terceros.nb_tipo_tercero_cli_fld = 0
             and  str_to_date(terceros.nb_fecha_cambio_zona_fld,'%d/%m/%Y') between str_to_date('".$fecha_cartera_desde."','%d/%m/%Y') and str_to_date('".$fecha_cartera_hasta."','%d/%m/%Y')
             and ventas.nb_codigo_cliente_fld = terceros.nb_id_fld
             and zonas.nb_id_fld = ".$zona;

    $traslados_in = $database->executeQueryOneRow($query);

    return =  $traslados_in[0];
    
  }

  function get_trasldos_out($zona, $fecha_desde, $fecha_hasta){
    $query = "select ifnull(count(ventas.nb_id_fld),0) traslados_out
            from  nb_terceros_tbl terceros join nb_zonas_tbl zonas on (zonas.nb_nombre_fld = terceros.nb_zona_anterior_fld), nb_ventas_tbl ventas
            where   terceros.nb_zona_anterior_fld <> ''
            and terceros.nb_tipo_tercero_cli_fld = 0
             and  str_to_date(terceros.nb_fecha_cambio_zona_fld,'%d/%m/%Y') between str_to_date('".$fecha_cartera_desde."','%d/%m/%Y') and str_to_date('".$fecha_cartera_hasta."','%d/%m/%Y')
             and ventas.nb_codigo_cliente_fld = terceros.nb_id_fld
             and zonas.nb_id_fld = ".$zona;

    $trasldos_out = $database->executeQueryOneRow($query);

    return =  $trasldos_out[0];
    
  }

  function get_facturas_finales($zona, $fecha_desde, $fecha_hasta){
    $query = "";
    
  }

  function get_saldo_final($zona, $fecha_desde, $fecha_hasta){
    $query = "";
    
  }

  function get_rotacion_cartera($zona, $fecha_desde, $fecha_hasta){
    $query = "";

  }

?>