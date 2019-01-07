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
    Fecha creacion    = 05-08-2017
    Desarrollador   = SM
    Fecha modificacion  = 05-08-2017
    Usuario Modifico  = SM
  */
    include "../Class/Utilities.php";
    include_once "../Class/ExportToExcel.php";
  
    $fecha_desde=$_POST['nb_fecha_desde_fld'];
    $fecha_hasta=$_POST['nb_fecha_hasta_fld'];
    $zona_=$_POST['nb_zona_fld'];
    session_start();
  
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;
 
    $database->execute("delete from nb_consolidado_cartera_reporte_tbl ");
    
    if (isset($zona_) and $zona_ <> ''){
      $sqlZonas = " and nb_id_fld = '".$zona_."'";
    }
    
    $zonas = $database->executeQuery("select * from nb_zonas_tbl where nb_estado_fld = 0 ".$sqlZonas);
    $nombre_zona = "";
    for ($i=0; $i < sizeof($zonas); $i++) { 
            $zona=$zonas[$i]['nb_id_fld'];
        
            
            $resul_facturas_iniciales = get_facturas_iniciales($zona, $fecha_desde, $fecha_hasta);
            //echo "facturas_iniciales==>".$resul_facturas_iniciales[0]."<br>";
            //echo "saldo_inicial==>".$resul_facturas_iniciales[1]."<br>";
            
            $facturas_iniciales = $resul_facturas_iniciales[0];
            $saldo_inicial = $resul_facturas_iniciales[1];
                   
            
            
            $facturas_entregadas = get_facturas_entregadas($zona, $fecha_desde, $fecha_hasta);
            //echo "facturas_entregadas==>".$facturas_entregadas."<br>";
            
            $facturas_Abonadas = get_facturas_abonadas($zona, $fecha_desde, $fecha_hasta);
            //echo "facturas_Abonadas==>".$facturas_Abonadas."<br>";
            
            
            $facturas_canceladas = get_facturas_canceladas($zona, $fecha_desde, $fecha_hasta);
            //echo "facturas_canceladas==>".$facturas_canceladas."<br>";
            
            $abonos_aplicados = get_abonos_aplicados($zona, $fecha_desde, $fecha_hasta);
            //echo "abonos_aplicados==>".$abonos_aplicados."<br>";
            
            
        
            $recaduo = get_recaduo($zona, $fecha_desde, $fecha_hasta);
            //echo "recaduo==>".$recaduo."<br>";
            
            $descuentos = get_descuentos($zona, $fecha_desde, $fecha_hasta);
            //echo "descuentos==>".$descuentos."<br>";
            
            $descuentas_especiales = get_descuentas_especiales($zona, $fecha_desde, $fecha_hasta);
            //echo "descuentas_especiales==>".$descuentas_especiales."<br>";
            
            $abonos_SF_aplicados = get_abonos_SF_aplicados($zona, $fecha_desde, $fecha_hasta);
            //echo "abonos_SF_aplicados==>".$abonos_SF_aplicados."<br>";
            
            $abonos_SF_entrantes = get_abonos_SF_entrantes($zona, $fecha_desde, $fecha_hasta);
            //echo "abonos_SF_entrantes==>".$abonos_SF_entrantes."<br>";
            
            $facturas_vendidas = get_facturas_vendidas($zona, $fecha_desde, $fecha_hasta);
            //echo "facturas_vendidas==>".$facturas_vendidas."<br>";
            
            $nueva_cartera = get_nueva_cartera($zona, $fecha_desde, $fecha_hasta);
            //echo "nueva_cartera==>".$nueva_cartera."<br>";
            
            $facturas_castigadas = get_facturas_castigadas($zona, $fecha_desde, $fecha_hasta);
            //echo "facturas_castigadas==>".$facturas_castigadas."<br>";
            
            $monto_castigado = get_monto_castigado($zona, $fecha_desde, $fecha_hasta);
            //echo "monto_castigado==>".$monto_castigado."<br>";
            
            $facturas_recuperadas = get_facturas_recuperadas($zona, $fecha_desde, $fecha_hasta);
            //echo "facturas_recuperadas==>".$facturas_recuperadas."<br>";
            
            $monto_recuperado = get_monto_recuperado($zona, $fecha_desde, $fecha_hasta);
            //echo "monto_recuperado==>".$monto_recuperado."<br>";
            
            $facturas_por_devolucion = get_facturas_por_devolucion($zona, $fecha_desde, $fecha_hasta);
            //echo "facturas_por_devolucion==>".$facturas_por_devolucion."<br>";
            
                
            $monto_devoluciones = get_monto_devoluciones($zona, $fecha_desde, $fecha_hasta);
            //echo "monto_devoluciones==>".$monto_devoluciones."<br>";
            
            $traslados_in = get_traslados_in($zona, $fecha_desde, $fecha_hasta);
            //echo "traslados_in==>".$traslados_in."<br>";
            
            $monto_traslados_in = get_monto_traslados_in($zona, $fecha_desde, $fecha_hasta);
            //echo "monto_traslados_in==>".$monto_traslados_in."<br>";
            
            $trasldos_out = get_trasldos_out($zona, $fecha_desde, $fecha_hasta);
            //echo "trasldos_out==>".$trasldos_out."<br>";
            
            $monto_trasldos_out = get_monto_trasldos_out($zona, $fecha_desde, $fecha_hasta);
            //echo "monto_trasldos_out==>".$monto_trasldos_out."<br>";
            
            $facturas_finales = get_facturas_finales($facturas_iniciales, $facturas_canceladas, $facturas_vendidas, 
                                                     $facturas_castigadas,$facturas_recuperadas,$facturas_por_devolucion,
                                                     $traslados_in, $trasldos_out );
            //echo "facturas_finales==>".$facturas_finales."<br>";
            
            $saldo_final = get_saldo_final($saldo_inicial,$recaduo,$descuentos,$descuentas_especiales,$abonos_SF_entrantes,
                                            $nueva_cartera,$monto_castigado,$monto_recuperado,$monto_devoluciones);
            //echo "saldo_final==>".$saldo_final."<br>";
            
            $rotacion_cartera = get_rotacion_cartera($saldo_final, $saldo_inicial,$nueva_cartera);
            //echo "rotacion_cartera==>".$rotacion_cartera."<br>";
            
          
          $insert_query = "insert into nb_consolidado_cartera_reporte_tbl values(null,'".$zonas[$i]['nb_nombre_fld']."','"
                            .$facturas_iniciales."','".$saldo_inicial."','".$facturas_entregadas."','".$facturas_Abonadas."','"
                            .$facturas_canceladas."','".$abonos_aplicados."','".$recaduo."','".$descuentos."','"
                            .$descuentas_especiales."','".$abonos_SF_aplicados."','".$abonos_SF_entrantes."','"
                            .$facturas_vendidas."','".$nueva_cartera."','".$facturas_castigadas."', '".$monto_castigado."','"
                            .$facturas_recuperadas."','".$monto_recuperado."','".$facturas_por_devolucion."','"
                            .$monto_devoluciones."','".$traslados_in."','".$monto_traslados_in."','".$trasldos_out."','"
                            .$monto_trasldos_out."','".$facturas_finales."','".$saldo_final."','".$rotacion_cartera."')";
        
            
          //echo $insert_query."<br>";
          
          
        
            
          $database->execute($insert_query);
            
    }
    
    $sql = "select * from nb_consolidado_cartera_reporte_tbl ";
    //$result = $database->executeQuery($sql);
    
    $csv = new ExportExcel();
    $database->conectar();
    $file=$csv->exportarFile('0',$sql);
    $database->desconectar();
    $filename=str_replace('../uploads/','',$file);
    header( 'Content-Type: application/octet-stream');
    header( 'Content-Length: '.filesize($file));
    header( 'Content-Disposition:attachment;filename='.$filename);
    readfile($file);
    
    
  
  function get_facturas_iniciales($zona, $fecha_desde, $fecha_hasta){
      
      
    $facts_iniciales = array();
      
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;
    
    $query = "
      
        SELECT xy.referencia 
        FROM (
              ( SELECT a.referencia
                FROM nb_ventas_grid_sub_vw a, nb_zonasFacturas_vw zonas
                WHERE replace(replace(a.Saldo,'$',''),',','') > 0
                AND a.estado = 'ACTIVO'
                AND IFNULL(a.EstadoCartera,'X')  <> 'Castigada'
                AND zonas.factura =  a.referencia
                AND STR_TO_DATE(a.fechaingreso,'%d/%m/%Y') < STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') 
                AND zonas.nb_id_fld = '".$zona."') 
                
                UNION ALL
              ( SELECT a.referencia
                FROM nb_ventas_grid_sub_vw a
                     , nb_terceros_tbl b
                    , nb_zonas_tbl c
                WHERE a.codigocliente = b.nb_id_fld
                AND   b.nb_zona_anterior_fld = c.nb_nombre_fld
                AND STR_TO_DATE(b.nb_fecha_cambio_zona_fld,'%d/%m/%Y') 
                    BETWEEN STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') AND STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y')
                AND c.nb_id_fld = '".$zona."' )
             ) xy 
        WHERE xy.referencia NOT IN (  SELECT b.nb_factura_fld 
                                      FROM  nb_relacionfactura_tbl b
                                      WHERE b.nb_estado_cartera_fld = '4'
                                      AND STR_TO_DATE(b.nb_fecha_recuperada_fld,'%d/%m/%Y') 
                                          BETWEEN STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') 
                                                  AND STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y')
                                    )
      
      ";
      
    $facturas_iniciales = $database->executeQuery($query);
      
    $saldo_inicial = 0;
    for($i=0; $i < sizeof($facturas_iniciales); $i++) { 
    
      $factura=$facturas_iniciales[$i]['referencia'];
      $saldo = get_saldo_inicial($database,$zona, $fecha_desde, $fecha_hasta, $factura);
      $saldo_inicial = $saldo_inicial + $saldo;
        
    
    }
    $abono_sf = get_abono_sf($database,$zona, $fecha_desde, $fecha_hasta);
    $result = array();
    $result[0] = sizeof($facturas_iniciales);
    $result[1] = $saldo_inicial + $abono_sf;
    
    return $result;
  }
  function get_saldo_inicial($database, $zona, $fecha_desde, $fecha_hasta, $factura){
    
    $saldo_ventas = 0;
  
    $query_saldo = "
    select replace(replace(cartera.nb_nuevo_saldo_fld,'$',''),',','') saldo
                    from nb_cartera_tbl cartera
                    where SUBSTRING(upper(cartera.nb_referencia_fld),1,1) ='V'
                    and SUBSTRING(upper(cartera.nb_referencia_fld),2,length(cartera.nb_referencia_fld)) = '".$factura."'
                    AND cartera.nb_id_fld = ( 
                           select max(cartera2.nb_id_fld) 
                           from nb_cartera_tbl cartera2 
                           where cartera.nb_referencia_fld= cartera2.nb_referencia_fld 
                           and   STR_TO_DATE(nb_fecha_ingreso_concepto_fld, '%d/%m/%Y') < STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') 
                           ) 
                    AND cartera.nb_estado_fld = 0";
      
      
    
    $saldo = $database->executeQueryOneRow($query_saldo);
    $saldo_ventas = $saldo[0];
    
    if($saldo_ventas == 0 or $saldo_ventas == ''){
      $query_saldo_ = "
      select ifnull(replace(replace(Saldo,'$',''),',',''),0) saldo
      from nb_ventas_grid_sub_vw
      where referencia = '".$factura."'";
      $saldo2 = $database->executeQueryOneRow("select ifnull(replace(replace(Saldo,'$',''),',',''),0) from nb_ventas_grid_sub_vw where referencia = '".$factura."'");
      $saldo_ventas = $saldo2[0];
        
    }
    
    return   $saldo_ventas;
    
  }
  function get_abono_sf($database, $zona, $fecha_desde, $fecha_hasta){
    $query_abonos_sf = "select ifnull(sum(replace(replace(ifnull(a.nb_abono_fld,0),'$',''),',','')),0)
                        from nb_abonosinfactura_tbl a
                        where nb_estado_fld = 0
                        and   STR_TO_DATE(nb_fecha_cobro_fld,'%d/%m/%Y') < STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') 
                        and   STR_TO_DATE(nb_fecha_cambio_estado_fld,'%d/%m/%Y') between STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') 
                                                        and STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y')
                        and   a.nb_zona_fld = '".$zona."'";
    $abonos_sf = $database->executeQueryOneRow($query_abonos_sf);
    $abonos_sf_total = $abonos_sf[0];
    return $abonos_sf_total;
  }
  function get_facturas_entregadas($zona, $fecha_desde, $fecha_hasta){
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;
    $query = "select count(a.nb_id_fld)
              FROM nb_relacionfactura_tbl A
              JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= upper(A.NB_FACTURA_FLD))
              WHERE  A.nb_estado_fld = 0 
              AND STR_TO_DATE(A.nb_fecha_entrega_fld, '%d/%m/%Y') BETWEEN STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') 
                                                                  and STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y')
              AND zonas.nb_id_fld = '".$zona."'";
    $facturas_entregadas = $database->executeQueryOneRow($query);
    return  $facturas_entregadas[0];
  }
  function get_facturas_abonadas($zona, $fecha_desde, $fecha_hasta){
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;
    $query = "select count(cartera.nb_id_fld)
              FROM  nb_cartera_tbl cartera
              JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= SUBSTRING(upper(cartera.nb_referencia_fld),2,length(cartera.nb_referencia_fld)))
              WHERE cartera.nb_concepto_fld=1
              AND cartera.nb_estado_fld = 0
              AND cartera.nb_id_fld = ( 
                                        select max(cartera2.nb_id_fld) 
                                        from nb_cartera_tbl cartera2 
                                        where cartera.nb_referencia_fld= cartera2.nb_referencia_fld 
                                          and   STR_TO_DATE(nb_fecha_ingreso_concepto_fld, '%d/%m/%Y')   
                                                BETWEEN STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y')
                                      )
              AND SUBSTRING(upper(cartera.nb_referencia_fld),1,1) ='V'
              AND replace(replace(cartera.nb_nuevo_saldo_fld,'$',''),',','') > 0
              AND zonas.nb_id_fld = '".$zona."'";
    $facturas_abonadas = $database->executeQueryOneRow($query);
    return   $facturas_abonadas[0];
  }
  function get_facturas_canceladas($zona, $fecha_desde, $fecha_hasta){
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;
    $query = "select count(cartera.nb_id_fld)
            FROM  nb_cartera_tbl cartera
            JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= SUBSTRING(upper(cartera.nb_referencia_fld),2,length(cartera.nb_referencia_fld)))
            WHERE cartera.nb_concepto_fld in (1, 2)
            AND cartera.nb_estado_fld = 0
            AND cartera.nb_id_fld = ( select max(cartera2.nb_id_fld) from nb_cartera_tbl cartera2 where cartera.nb_referencia_fld= cartera2.nb_referencia_fld )
            AND SUBSTRING(upper(cartera.nb_referencia_fld),1,1) ='V'
            AND replace(replace(cartera.nb_nuevo_saldo_fld,'$',''),',','') = 0
            AND STR_TO_DATE(cartera.nb_fecha_ingreso_concepto_fld, '%d/%m/%Y') 
                  BETWEEN STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y')
            AND zonas.nb_id_fld = '".$zona."'";
    $facturas_canceladas = $database->executeQueryOneRow($query);
    return   $facturas_canceladas[0];
  }
  function get_abonos_aplicados($zona, $fecha_desde, $fecha_hasta){
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;
    $query = "select   count(cartera.nb_id_fld) abonos_aplicados
            FROM    nb_cartera_tbl cartera
                JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= SUBSTRING(upper(cartera.nb_referencia_fld),2,length(cartera.nb_referencia_fld)))
            WHERE   cartera.nb_concepto_fld=1
            AND   cartera.nb_estado_fld = 0
            AND   SUBSTRING(upper(cartera.nb_referencia_fld),1,1) ='V'
            AND   STR_TO_DATE(cartera.nb_fecha_ingreso_concepto_fld, '%d/%m/%Y') 
                  BETWEEN STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y')
            AND zonas.nb_id_fld = '".$zona."'";
    $abonos_aplicados = $database->executeQueryOneRow($query);
    return   $abonos_aplicados[0];
  }
  function get_recaduo($zona, $fecha_desde, $fecha_hasta){
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;
    $query = "select ifnull(sum(replace(replace(cartera.nb_valor_fld,'$',''),',','')),0)
            FROM  nb_cartera_tbl cartera
            JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= SUBSTRING(upper(cartera.nb_referencia_fld),2,length(cartera.nb_referencia_fld)))
            WHERE cartera.nb_concepto_fld=1
            AND  cartera.nb_estado_fld = 0
            AND SUBSTRING(upper(cartera.nb_referencia_fld),1,1) ='V'
            AND STR_TO_DATE(cartera.nb_fecha_ingreso_concepto_fld, '%d/%m/%Y') 
            BETWEEN STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y')
            AND zonas.nb_id_fld = '".$zona."'";
    $recaudo = $database->executeQueryOneRow($query);
    return   $recaudo[0];
    
  }
  function get_descuentos($zona, $fecha_desde, $fecha_hasta){
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;
    $query = "select ifnull(sum(replace(replace(cartera.nb_valor_descuento_fld,'$',''),',','')),0) descuentos
            from    nb_cartera_tbl cartera
                   join nb_zonasFacturas_vw zonas on (zonas.factura = SUBSTRING(upper(cartera.nb_referencia_fld),2,length(cartera.nb_referencia_fld)))
            where  cartera.nb_estado_fld = 0
            and    (STR_TO_DATE(cartera.nb_fecha_ingreso_concepto_fld, '%d/%m/%Y') 
                    BETWEEN STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y'))
            AND     SUBSTRING(upper(cartera.nb_referencia_fld),1,1) ='V'
            AND     zonas.nb_id_fld = '".$zona."'";
    $descuentos = $database->executeQueryOneRow($query);
    return   $descuentos[0];
    
  }
  function get_descuentas_especiales($zona, $fecha_desde, $fecha_hasta){
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;
    $query = "select ifnull(sum(replace(replace(cartera.nb_valor_fld,'$',''),',','')),0) descuentos_especiales
            from    nb_cartera_tbl cartera
                   join nb_zonasFacturas_vw zonas on (zonas.factura = SUBSTRING(upper(cartera.nb_referencia_fld),2,length(cartera.nb_referencia_fld)))
            where  cartera.nb_estado_fld = 0
            and    cartera.nb_concepto_fld = 2
            and    (STR_TO_DATE(cartera.nb_fecha_ingreso_concepto_fld, '%d/%m/%Y') 
            BETWEEN STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y'))
            AND     SUBSTRING(upper(cartera.nb_referencia_fld),1,1) ='V'
            AND     zonas.nb_id_fld = '".$zona."'";
    $descuentos_especiales = $database->executeQueryOneRow($query);
    return  $descuentos_especiales[0];
    
  }
  function get_abonos_SF_aplicados($zona, $fecha_desde, $fecha_hasta){
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;
    $query = "select   ifnull(sum(replace(replace(abonosSF.nb_abono_fld,'$',''),',','')),0) abonosSF_aplicados
            FROM    nb_abonosinfactura_tbl abonosSF
            WHERE  nb_estado_fld = 0
            AND    STR_TO_DATE(nb_fecha_cobro_fld,'%d/%m/%Y') 
                    BETWEEN STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y')
            AND    nb_zona_fld = '".$zona."'";
    $abonos_SF_aplicados = $database->executeQueryOneRow($query);
    return   $abonos_SF_aplicados[0];
  }
  function get_abonos_SF_entrantes($zona, $fecha_desde, $fecha_hasta){
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;
    $query = "select ifnull(sum(replace(replace(abonosSF.nb_abono_fld,'$',''),',','')),0) abonosSF_entrantes
            FROM    nb_abonosinfactura_tbl abonosSF
            WHERE  nb_estado_fld = 1
            AND    STR_TO_DATE(nb_fecha_cobro_fld,'%d/%m/%Y') BETWEEN STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') 
                                      and STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y')
            AND    nb_zona_fld = '".$zona."'";
    $abonos_SF_entrantes = $database->executeQueryOneRow($query);
    return  $abonos_SF_entrantes[0];    
  }
  function get_facturas_vendidas($zona, $fecha_desde, $fecha_hasta){
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;
    $query = "select count(*) 
            from nb_ventas_grid_vw venta
            JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= venta.referencia)
            where venta.estado = 'ACTIVO'
            and  venta.formapago <> 'CONTADO'
            AND STR_TO_DATE(fechaingreso,'%d/%m/%Y') BETWEEN STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') 
                            and STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y')
            AND zonas.nb_id_fld = '".$zona."'";
    $facturas_vendidas = $database->executeQueryOneRow($query);
    return   $facturas_vendidas[0];
  }
  function get_nueva_cartera($zona, $fecha_desde, $fecha_hasta){
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;
    $query_vlr_total = "select ifnull(sum(replace(replace(total,'$',''),',','')),0)  
            from nb_ventas_grid_vw venta
            JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= venta.referencia)
            where venta.estado = 'ACTIVO'
            and  venta.formapago <> 'CONTADO'
            
            AND STR_TO_DATE(fechaingreso,'%d/%m/%Y') 
                      BETWEEN STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y')
            AND zonas.nb_id_fld = '".$zona."'";
    $vlr_total = $database->executeQueryOneRow($query_vlr_total);
    $query_abono_inicial = " select ifnull(sum(replace(replace(venta.nb_abono_inicial_fld,'$',''),',','')),0) 
            from nb_ventas_tbl venta
            JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= venta.nb_referencia_fld)
            where venta.nb_estado_fld = 0
            and  venta.nb_forma_pago_fld <> 0
            AND (STR_TO_DATE(venta.nb_fecha_ingreso_fld, '%d/%m/%Y') 
            BETWEEN STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y'))
            AND zonas.nb_id_fld = '".$zona."'";
    $abono_inicial = $database->executeQueryOneRow($query_abono_inicial);
    return  $vlr_total[0] - $abono_inicial[0];
    
  }
  function get_facturas_castigadas($zona, $fecha_desde, $fecha_hasta){
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;
    $query = "select count(a.nb_id_fld)
            FROM nb_relacionfactura_tbl A
            JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= upper(A.NB_FACTURA_FLD))
            WHERE A.nb_estado_fld = 0
            AND A.nb_estado_cartera_fld in (3, 4) 
            AND (STR_TO_DATE(A.nb_fecha_retornado_fld, '%d/%m/%Y') 
            BETWEEN STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y'))
            AND zonas.nb_id_fld = '".$zona."'";
    $facturas_castigadas = $database->executeQueryOneRow($query);
    return  $facturas_castigadas[0];
    
  }
  function get_monto_castigado($zona, $fecha_desde, $fecha_hasta){
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;
    $result = 0;
    $query = "
        select ifnull(sum(replace(replace(vw.Saldo,'$',''),',','')),0) monto_catigado
        FROM nb_relacionfactura_tbl A
        JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= upper(A.NB_FACTURA_FLD)),
        nb_ventas_tbl v, nb_ventas_totalsaldos_vw vw
        WHERE A.nb_estado_fld = 0
        AND A.nb_estado_cartera_fld in (3, 4) 
        AND (STR_TO_DATE(A.nb_fecha_retornado_fld, '%d/%m/%Y') 
        BETWEEN STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y'))
        AND zonas.nb_id_fld = '".$zona."'
        and v.nb_referencia_fld = a.nb_factura_fld
        and vw.id = v.nb_id_fld";
    $mont_facturas_castigadas = $database->executeQueryOneRow($query);
    $result = $mont_facturas_castigadas[0];
   
    return  $result;
    
  }
  function get_facturas_recuperadas($zona, $fecha_desde, $fecha_hasta){
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;
    $query = "select count(v.nb_id_fld) facturas_recuperadas
            FROM   nb_ventas_tbl v join nb_zonasFacturas_vw zonas on (zonas.factura = v.nb_referencia_fld),
              nb_relacionfactura_tbl rf
            where  v.nb_estado_fld = 0
            and    v.nb_referencia_fld = rf.nb_factura_fld
            and    rf.nb_estado_cartera_fld = 4
            and    str_to_date(rf.nb_fecha_recuperada_fld,'%d/%m/%Y') 
            between str_to_date('".$fecha_desde."','%d/%m/%Y') and str_to_date('".$fecha_hasta."','%d/%m/%Y')
            and    zonas.nb_id_fld = '".$zona."'";
    $facturas_recuperadas = $database->executeQueryOneRow($query);
    return  $facturas_recuperadas[0];
    
    
  }
  function get_monto_recuperado($zona, $fecha_desde, $fecha_hasta){
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;
    $query = "
        select  ifnull(sum(replace(replace(vw.Saldo,'$',''),',','')),0) monto_recuperado
        FROM    nb_ventas_tbl v join nb_zonasFacturas_vw zonas on (zonas.factura = v.nb_referencia_fld),
                nb_relacionfactura_tbl rf, nb_ventas_totalsaldos_vw vw
        where  v.nb_estado_fld = 0
        and    v.nb_referencia_fld = rf.nb_factura_fld
        and    vw.id = v.nb_id_fld
        and    rf.nb_estado_cartera_fld = 4
        and    str_to_date(rf.nb_fecha_recuperada_fld,'%d/%m/%Y') 
        between str_to_date('".$fecha_desde."','%d/%m/%Y') and str_to_date('".$fecha_hasta."','%d/%m/%Y')
        and    zonas.nb_id_fld = '".$zona."'";
    $monto_recuperado = $database->executeQueryOneRow($query);
    return  $monto_recuperado[0];
    
  }
  function get_facturas_por_devolucion($zona, $fecha_desde, $fecha_hasta){
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;
    $query = "select  count(a.nb_id_fld) facturas_por_devols
            from    nb_devoluciones_tbl a, nb_ventas_grid_vw b
            where STR_TO_DATE(a.nb_fecha_devolucion_fld,'%d/%m/%Y')  
            between STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y')
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
               AND STR_TO_DATE(fechaingreso,'%d/%m/%Y') = STR_TO_DATE('".$fecha_desde."','%d/%m/%Y'))";
    $facturas_por_devolucion = $database->executeQueryOneRow($query);
    return  $facturas_por_devolucion[0];
    
  }
  function get_monto_devoluciones($zona, $fecha_desde, $fecha_hasta){
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;
    $query = "
        select ifnull(sum(replace(replace(devos_vw.total,'$',''),',','')),0) monto_devoluciones
        from nb_devoluciones_tbl devols
            join nb_zonasFacturas_vw zonas on (zonas.factura = SUBSTRING(upper(devols.nb_referencia_fld),2,length(devols.nb_referencia_fld))),
            nb_devoluciones_grid_vw devos_vw
        where devols.nb_estado_fld = 0
        and str_to_date(devols.nb_fecha_devolucion_fld,'%d/%m/%Y') 
        BETWEEN STR_TO_DATE('".$fecha_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_hasta."','%d/%m/%Y')
        and zonas.nb_id_fld = '".$zona."'
        and devos_vw.id = devols.nb_id_fld";
    $monto_devoluciones = $database->executeQueryOneRow($query);
    return $monto_devoluciones[0];
    
  }
  function get_traslados_in($zona, $fecha_desde, $fecha_hasta){
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;
    $query = "select  count(ventas.nb_referencia_fld)
              from nb_terceros_tbl terceros, nb_zonas_tbl zonas, nb_ventas_tbl ventas 
              where terceros.nb_tipo_tercero_cli_fld = 0
              and   terceros.nb_zona_anterior_fld <> ''
              and   terceros.nb_zona_fld = zonas.nb_nombre_fld
              and  zonas.nb_id_fld = '".$zona."'
              and  str_to_date(terceros.nb_fecha_cambio_zona_fld,'%d/%m/%Y') between str_to_date('".$fecha_desde."','%d/%m/%Y') and str_to_date('".$fecha_hasta."','%d/%m/%Y')
              and   ventas.nb_codigo_cliente_fld = terceros.nb_id_fld";
    $traslados_in = $database->executeQueryOneRow($query);
    return  $traslados_in[0];
    
  }
  function get_monto_traslados_in($zona, $fecha_desde, $fecha_hasta){
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;
    $query = "select ifnull(sum( b.nb_nuevo_saldo_fld),0)
              from (
                    select terceros.nb_id_fld id_tercero, terceros.nb_nombre_fld, 
                           terceros.nb_zona_fld, terceros.nb_fecha_cambio_zona_fld, 
                           terceros.nb_zona_anterior_fld, zonas.nb_id_fld, ventas.nb_referencia_fld, ventas.nb_id_fld ventas_id
                    from   nb_terceros_tbl terceros, nb_zonas_tbl zonas, nb_ventas_tbl ventas 
                    where  terceros.nb_tipo_tercero_cli_fld = 0
                    and    terceros.nb_zona_anterior_fld <> ''
                    and    terceros.nb_zona_fld = zonas.nb_nombre_fld
                    and    zonas.nb_id_fld = '".$zona."'
                    and    str_to_date(terceros.nb_fecha_cambio_zona_fld,'%d/%m/%Y') 
                                      between str_to_date('".$fecha_desde."','%d/%m/%Y') 
                                              and str_to_date('".$fecha_hasta."','%d/%m/%Y')
                    and   ventas.nb_codigo_cliente_fld = terceros.nb_id_fld
                  ) a, nb_cartera_tbl b 
              where SUBSTRING(b.nb_referencia_fld,2,length(b.nb_referencia_fld)) = a.nb_referencia_fld
              and   b.nb_estado_fld ='0'
              and b.nb_fecha_ingreso_concepto_fld < a.nb_fecha_cambio_zona_fld ";
    $traslados_in = $database->executeQueryOneRow($query);
    $result = $traslados_in[0];
    if ($traslados_in[0] == 0){
      $query_ = " 
      select  ifnull((ifnull(sum(replace(replace(b.total,'$',''),',','')),0) -  sum(a.abono_inicial) - ifnull(sum(devos.nb_valor_total_fld),0)),0) mnt_traslados_in
      from
      ( 
        select  ventas.nb_id_fld
                ,ventas.nb_referencia_fld
                ,ifnull(replace(replace(ventas.nb_abono_inicial_fld,'$',''),',',''),0) abono_inicial
        from   nb_terceros_tbl terceros, nb_zonas_tbl zonas, nb_ventas_tbl ventas 
        where  terceros.nb_tipo_tercero_cli_fld = 0
        and    terceros.nb_zona_anterior_fld <> ''
        and    terceros.nb_zona_fld = zonas.nb_nombre_fld
        and    zonas.nb_id_fld = '".$zona."'
        and    str_to_date(terceros.nb_fecha_cambio_zona_fld,'%d/%m/%Y') 
                    between str_to_date('".$fecha_desde."','%d/%m/%Y') and str_to_date('".$fecha_hasta."','%d/%m/%Y')
        and   ventas.nb_codigo_cliente_fld = terceros.nb_id_fld
      ) a 
      left  join nb_ventas_grid_sub_vw b on (a.nb_id_fld = b. id)
      left join nb_devoluciones_tbl devos on (  (a.nb_id_fld= devos.nb_factura_fld ) 
                                                and (devos.nb_estado_fld = '0') 
                                                and (devos.nb_fecha_devolucion_fld < '".$fecha_desde."')
                                             )";
      $traslados_in_ = $database->executeQueryOneRow($query_);
      $result = $traslados_in_[0];
    }
    return  $result;
    
  }
  function get_trasldos_out($zona, $fecha_desde, $fecha_hasta){
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;
    $query = "select  count(ventas.nb_referencia_fld)
              from nb_terceros_tbl terceros, nb_zonas_tbl zonas, nb_ventas_tbl ventas 
              where terceros.nb_tipo_tercero_cli_fld = 0
              and   terceros.nb_zona_anterior_fld <> ''
              and   terceros.nb_zona_anterior_fld = zonas.nb_nombre_fld
              and  zonas.nb_id_fld = '".$zona."'
              and  str_to_date(terceros.nb_fecha_cambio_zona_fld,'%d/%m/%Y') between str_to_date('".$fecha_desde."','%d/%m/%Y') and str_to_date('".$fecha_hasta."','%d/%m/%Y')
              and   ventas.nb_codigo_cliente_fld = terceros.nb_id_fld";
    $trasldos_out = $database->executeQueryOneRow($query);
    return  $trasldos_out[0];
    
  }
  function get_monto_trasldos_out($zona, $fecha_desde, $fecha_hasta){
    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;
   $query = "select ifnull(sum( b.nb_nuevo_saldo_fld),0)
              from 
              (select terceros.nb_id_fld id_tercero, terceros.nb_nombre_fld, 
                    terceros.nb_zona_fld, terceros.nb_fecha_cambio_zona_fld, 
                    terceros.nb_zona_anterior_fld, zonas.nb_id_fld, ventas.nb_referencia_fld, ventas.nb_id_fld ventas_id
              from nb_terceros_tbl terceros, nb_zonas_tbl zonas, nb_ventas_tbl ventas 
              where terceros.nb_tipo_tercero_cli_fld = 0
              and   terceros.nb_zona_anterior_fld <> ''
              and   terceros.nb_zona_anterior_fld = zonas.nb_nombre_fld
              and  zonas.nb_id_fld = '".$zona."'
              and  str_to_date(terceros.nb_fecha_cambio_zona_fld,'%d/%m/%Y') between str_to_date('".$fecha_desde."','%d/%m/%Y') and str_to_date('".$fecha_hasta."','%d/%m/%Y')
              and   ventas.nb_codigo_cliente_fld = terceros.nb_id_fld) a, nb_cartera_tbl b
              where SUBSTRING(b.nb_referencia_fld,2,length(b.nb_referencia_fld)) = a.nb_referencia_fld
              and   b.nb_estado_fld ='0'
              and b.nb_fecha_ingreso_concepto_fld < a.nb_fecha_cambio_zona_fld ";
    $trasldos_out = $database->executeQueryOneRow($query);
    $result = $traslados_in[0];
    if ($trasldos_out[0] == 0){
      $query_ = " 
      select  ifnull((ifnull(sum(replace(replace(b.total,'$',''),',','')),0) -  sum(a.abono_inicial) - ifnull(sum(devos.nb_valor_total_fld),0)),0) mnt_traslados_in
      from
      ( 
        select  ventas.nb_id_fld
                ,ventas.nb_referencia_fld
                ,ifnull(replace(replace(ventas.nb_abono_inicial_fld,'$',''),',',''),0) abono_inicial
        from   nb_terceros_tbl terceros, nb_zonas_tbl zonas, nb_ventas_tbl ventas 
        where  terceros.nb_tipo_tercero_cli_fld = 0
        and    terceros.nb_zona_anterior_fld <> ''
        and    terceros.nb_zona_anterior_fld = zonas.nb_nombre_fld
        and    zonas.nb_id_fld = '".$zona."'
        and    str_to_date(terceros.nb_fecha_cambio_zona_fld,'%d/%m/%Y') 
                    between str_to_date('".$fecha_desde."','%d/%m/%Y') and str_to_date('".$fecha_hasta."','%d/%m/%Y')
        and   ventas.nb_codigo_cliente_fld = terceros.nb_id_fld
      ) a 
      left  join nb_ventas_grid_sub_vw b on (a.nb_id_fld = b. id)
      left join nb_devoluciones_tbl devos on (  (a.nb_id_fld= devos.nb_factura_fld ) 
                                                and (devos.nb_estado_fld = '0') 
                                                and (devos.nb_fecha_devolucion_fld < '".$fecha_desde."')
                                             )";
                  
      $trasldos_out_ = $database->executeQueryOneRow($query_);
      $result = $trasldos_out_[0];
    }
    return  $result;
    return  $trasldos_out[0];
    
  }
  function get_facturas_finales($facturas_iniciales, $facturas_canceladas, $facturas_vendidas, 
                                $facturas_castigadas,$facturas_recuperadas,$facturas_por_devolucion,
                                $traslados_in, $trasldos_out ){
    $facturas_finales = $facturas_iniciales - $facturas_canceladas + $facturas_vendidas - 
                        $facturas_castigadas + $facturas_recuperadas - $facturas_por_devolucion +
                        $traslados_in - $trasldos_out; 
    return $facturas_finales;
    
  }
  function get_saldo_final($saldo_inicial,$recaduo,$descuentos,$descuentas_especiales,$abonos_SF_aplicados,
                           $nueva_cartera,$monto_castigado,$monto_recuperado,$monto_devoluciones){
    
    $saldo_final =  $saldo_inicial - $recaduo - $descuentos - $descuentas_especiales - $abonos_SF_aplicados +
                    $nueva_cartera - $monto_castigado + $monto_recuperado - $monto_devoluciones;
    return $saldo_final;
  }
  function get_rotacion_cartera($saldo_final, $saldo_inicial,$nueva_cartera){
    if($saldo_inicial > 0){
      $rotacion_cartera = 365 / ($nueva_cartera/ (($saldo_inicial + $saldo_final)/2));
    }
    else{
      $rotacion_cartera = 365 / ($nueva_cartera / $saldo_final);
    }
    return number_format($rotacion_cartera, 2, '.', ',');
  }
?>
