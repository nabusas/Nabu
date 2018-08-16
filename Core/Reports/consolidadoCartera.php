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

    $sqlZonas=' ';
    if (isset($zona) and $zona <> ''){
        $sqlZonas= "where ID_ZONA =".$zona;
    }
    

    $sql = "

  SELECT  datos.NOMBRE_ZONA, datos.FACTURAS_INICIALES, datos.SALDO_INICIAL, datos.FACTURAS_ENTREGADAS,
          datos.FACTURAS_ABONADAS,
          datos.FACTURAS_CANCELADAS, datos.ABONOS_APLICADOS, datos.RECAUDO, datos.DESCUENTOS,
          datos.DESCCUENTOS_ESPECIALES, datos.ABONOS_SF_APLICADOS, datos.ABONOS_SF_APLICADOS,
          datos.FACTURAS_VENDIDAS, datos.NUEVA_CARTERA,
          datos.FACTURAS_CASTIGADA,  datos.MONTO_CASTIGADO, 
          datos.FACTURAS_RECUPERADAS, datos.MONTO_RECUPERADO,
          datos.FACTURAS_POR_DEVOLUCIONES, datos.MONTO_DEVOLUCIONES,
          datos.TRASLADOS_IN,
          ifnull(null,0) MONTO_TRASLADOS_IN,    
          datos.TRASLADOS_OUT,
          ifnull(null,0) MONTO_TRASLADOS_OUT,
          (datos.FACTURAS_INICIALES- datos.FACTURAS_CANCELADAS + datos.FACTURAS_VENDIDAS - datos.FACTURAS_CASTIGADA + 
           datos.FACTURAS_RECUPERADAS - datos.FACTURAS_POR_DEVOLUCIONES + datos.TRASLADOS_IN - datos.TRASLADOS_OUT) FACTURAS_FINALES,
          (datos.SALDO_INICIAL - datos.RECAUDO - datos.DESCUENTOS - datos.DESCCUENTOS_ESPECIALES - datos.ABONOS_SF_APLICADOS +
             datos.NUEVA_CARTERA  + datos.MONTO_RECUPERADO - datos.MONTO_DEVOLUCIONES ) SALDO_FINAL,
          CASE  
            WHEN datos.SALDO_INICIAL = 0 
              THEN (365 / (datos.NUEVA_CARTERA /  (datos.SALDO_INICIAL - datos.RECAUDO - datos.DESCUENTOS - datos.DESCCUENTOS_ESPECIALES - datos.ABONOS_SF_APLICADOS +
              datos.NUEVA_CARTERA  + datos.MONTO_RECUPERADO - datos.MONTO_DEVOLUCIONES ))) 
            ELSE 
              (365 / 
              (datos.NUEVA_CARTERA / 
                (datos.SALDO_INICIAL + (datos.SALDO_INICIAL - datos.RECAUDO - datos.DESCUENTOS - datos.DESCCUENTOS_ESPECIALES - datos.ABONOS_SF_APLICADOS +
                 datos.NUEVA_CARTERA + datos.MONTO_RECUPERADO - datos.MONTO_DEVOLUCIONES ))/ 2)) 
          END ROTACION_CARTERA
  FROM(
      SELECT  reporte.ID_ZONA AS ZONA,
          upper(reporte.nb_nombre_fld) AS NOMBRE_ZONA,
          (SELECT count(a.referencia)
           FROM nb_ventas_grid_vw a
            JOIN nb_zonasFacturas_vw zonas on (zonas.factura=  upper(a.referencia))
           WHERE replace(replace(saldo,'$',''),',','') > 0
           and estado = 'ACTIVO'
           and zonas.nb_id_fld = reporte.ID_ZONA
           and IFNULL(EstadoCartera,'X')  <> 'Castigada'
           AND STR_TO_DATE(fechaingreso,'%d/%m/%Y') = STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') 
           )AS FACTURAS_INICIALES,
          ( 
            ( SELECT ifnull(sum(replace(replace(saldo,'$',''),',','')),0)
              FROM nb_ventas_grid_vw a
              JOIN nb_zonasFacturas_vw zonas on (zonas.factura=  upper(a.referencia))
              WHERE replace(replace(saldo,'$',''),',','') > 0
              and estado = 'ACTIVO'
              and zonas.nb_id_fld = reporte.ID_ZONA
              and IFNULL(EstadoCartera,'X')  <> 'Castigada'
              AND STR_TO_DATE(fechaingreso,'%d/%m/%Y') = STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y')
            )
               
            +    
               
            ( select ifnull(sum(replace(replace(a.nb_abono_fld,'$',''),',','')),0)
              from nb_abonosinfactura_tbl a
              where nb_estado_fld = 0
              and   STR_TO_DATE(nb_fecha_cobro_fld,'%d/%m/%Y') < STR_TO_DATE('17/04/2018','%d/%m/%Y') 
              and   STR_TO_DATE(nb_fecha_cambio_estado_fld,'%d/%m/%Y') between STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') 
                                              and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y')
              and   a.nb_zona_fld = reporte.ID_ZONA
            ) 
          ) AS SALDO_INICIAL,
           (select
            count(a.nb_id_fld)
            FROM nb_relacionfactura_tbl A
            JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= upper(A.NB_FACTURA_FLD))
            WHERE zonas.nb_id_fld = reporte.ID_ZONA
            AND (STR_TO_DATE(A.nb_fecha_entrega_fld, '%d/%m/%Y') BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') 
                                      and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y'))
            AND A.nb_estado_fld = 0) AS FACTURAS_ENTREGADAS,
            (
            SELECT count(cartera.nb_id_fld)
            FROM  nb_cartera_tbl cartera
            JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= SUBSTRING(upper(cartera.nb_referencia_fld),2,length(cartera.nb_referencia_fld)))
            WHERE cartera.nb_concepto_fld=1
            AND cartera.nb_id_fld = ( select max(cartera2.nb_id_fld) from nb_cartera_tbl cartera2 where cartera.nb_referencia_fld= cartera2.nb_referencia_fld )
            AND SUBSTRING(upper(cartera.nb_referencia_fld),1,1) ='V'
            AND replace(replace(cartera.nb_nuevo_saldo_fld,'$',''),',','') > 0
             AND zonas.nb_id_fld = reporte.ID_ZONA
            AND (STR_TO_DATE(cartera.nb_fecha_ingreso_concepto_fld, '%d/%m/%Y') 
            BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y'))
            AND cartera.nb_estado_fld = 0
            ) AS FACTURAS_ABONADAS,
           (
             SELECT count(cartera.nb_id_fld)
            FROM  nb_cartera_tbl cartera
            JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= SUBSTRING(upper(cartera.nb_referencia_fld),2,length(cartera.nb_referencia_fld)))
            WHERE cartera.nb_concepto_fld=1
            AND cartera.nb_id_fld = ( select max(cartera2.nb_id_fld) from nb_cartera_tbl cartera2 where cartera.nb_referencia_fld= cartera2.nb_referencia_fld )
            AND SUBSTRING(upper(cartera.nb_referencia_fld),1,1) ='V'
            AND replace(replace(cartera.nb_nuevo_saldo_fld,'$',''),',','') = 0
             AND zonas.nb_id_fld = reporte.ID_ZONA
            AND (STR_TO_DATE(cartera.nb_fecha_ingreso_concepto_fld, '%d/%m/%Y') 
            BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y'))
            AND cartera.nb_estado_fld = 0
            
            ) AS FACTURAS_CANCELADAS,
            ( SELECT   count(cartera.nb_id_fld) abonos_aplicados
            FROM    nb_cartera_tbl cartera
                JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= SUBSTRING(upper(cartera.nb_referencia_fld),2,length(cartera.nb_referencia_fld)))
            WHERE   cartera.nb_concepto_fld=1
            AND   cartera.nb_id_fld = ( select max(cartera2.nb_id_fld) from nb_cartera_tbl cartera2 where cartera.nb_referencia_fld= cartera2.nb_referencia_fld )
            AND   SUBSTRING(upper(cartera.nb_referencia_fld),1,1) ='V'
            AND   zonas.nb_id_fld = reporte.ID_ZONA
            AND   (STR_TO_DATE(cartera.nb_fecha_ingreso_concepto_fld, '%d/%m/%Y') 
                  BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y'))
            AND   cartera.nb_estado_fld = 0
            
            ) AS ABONOS_APLICADOS,
            (
            SELECT ifnull(sum(replace(replace(cartera.nb_valor_fld,'$',''),',','')),0)
            FROM  nb_cartera_tbl cartera
            JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= SUBSTRING(upper(cartera.nb_referencia_fld),2,length(cartera.nb_referencia_fld)))
            WHERE cartera.nb_concepto_fld=1
            AND SUBSTRING(upper(cartera.nb_referencia_fld),1,1) ='V'
             AND zonas.nb_id_fld = reporte.ID_ZONA
            AND (STR_TO_DATE(cartera.nb_fecha_ingreso_concepto_fld, '%d/%m/%Y') 
            BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y'))
            AND cartera.nb_estado_fld = 0
            
            ) AS RECAUDO,
           (  select ifnull(sum(replace(replace(cartera.nb_valor_descuento_fld,'$',''),',','')),0) descuentos
            from    nb_cartera_tbl cartera
                   join nb_zonasFacturas_vw zonas on (zonas.factura = SUBSTRING(upper(cartera.nb_referencia_fld),2,length(cartera.nb_referencia_fld)))
            where  cartera.nb_estado_fld = 0
            and    (STR_TO_DATE(cartera.nb_fecha_ingreso_concepto_fld, '%d/%m/%Y') 
            BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y'))
            AND     zonas.nb_id_fld = reporte.ID_ZONA
            AND     SUBSTRING(upper(cartera.nb_referencia_fld),1,1) ='V'
            
            ) AS DESCUENTOS,
           (  select ifnull(sum(replace(replace(cartera.nb_valor_fld,'$',''),',','')),0) descuentos_especiales
            from    nb_cartera_tbl cartera
                   join nb_zonasFacturas_vw zonas on (zonas.factura = SUBSTRING(upper(cartera.nb_referencia_fld),2,length(cartera.nb_referencia_fld)))
            where  cartera.nb_estado_fld = 0
            and    cartera.nb_concepto_fld = 2
            and    (STR_TO_DATE(cartera.nb_fecha_ingreso_concepto_fld, '%d/%m/%Y') 
            BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y'))
            AND     zonas.nb_id_fld = reporte.ID_ZONA
            AND     SUBSTRING(upper(cartera.nb_referencia_fld),1,1) ='V'
           ) AS DESCCUENTOS_ESPECIALES,
          (   SELECT   ifnull(sum(replace(replace(abonosSF.nb_abono_fld,'$',''),',','')),0) abonosSF_aplicados
            FROM    nb_abonosinfactura_tbl abonosSF
            WHERE  nb_estado_fld = 0
            AND    nb_zona_fld = reporte.ID_ZONA
            AND    nb_fecha_cambio_estado_fld BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y')
          ) AS ABONOS_SF_APLICADOS, 
          ( SELECT   concat('$',format(ifnull(sum(replace(replace(abonosSF.nb_abono_fld,'$',''),',','')),0),2)) abonosSF_entrantes
            FROM    nb_abonosinfactura_tbl abonosSF
            WHERE  nb_estado_fld = 0
            AND    nb_zona_fld = reporte.ID_ZONA
            AND    STR_TO_DATE(nb_fecha_cobro_fld,'%d/%m/%Y') BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') 
                                      and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y')
          
          ) AS ABONOS_SF_ENTRANTES,
           (
            select count(1) 
            from nb_ventas_grid_vw venta
            JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= venta.referencia)
            where venta.estado = 'ACTIVO'
            and  venta.formapago <> 'CONTADO'
            AND zonas.nb_id_fld = reporte.ID_ZONA
            AND date(fechaingreso) BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') 
                            and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y')

           ) AS FACTURAS_VENDIDAS,
           (
            (
            SELECT ifnull(sum(replace(replace(total,'$',''),',','')),0)  
            from nb_ventas_grid_vw venta
            JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= venta.referencia)
            where venta.estado = 'ACTIVO'
            and  venta.formapago <> 'CONTADO'
            AND zonas.nb_id_fld = reporte.ID_ZONA
            AND date(fechaingreso) 
            BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y')
            )
            -
            (
            SELECT ifnull(sum(replace(replace(venta.nb_abono_inicial_fld,'$',''),',','')),0) 
            from nb_ventas_tbl venta
            JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= venta.nb_referencia_fld)
            where venta.nb_estado_fld = 0
            and  venta.nb_forma_pago_fld <> 0
            AND zonas.nb_id_fld = reporte.ID_ZONA
            AND (STR_TO_DATE(venta.nb_fecha_ingreso_fld, '%d/%m/%Y') 
            BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y'))
            
            )
           
           )
           AS NUEVA_CARTERA,
           (
            select
            count(a.nb_id_fld)
            FROM nb_relacionfactura_tbl A
            JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= upper(A.NB_FACTURA_FLD))
            WHERE zonas.nb_id_fld = reporte.ID_ZONA
            AND (STR_TO_DATE(A.nb_fecha_retornado_fld, '%d/%m/%Y') 
            BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y'))
            AND A.nb_estado_fld = 0
            AND A.nb_estado_cartera_fld = 3
           
           ) AS FACTURAS_CASTIGADA,
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
          ( SELECT count(v.nb_id_fld) facturas_recuperadas
            FROM   nb_ventas_tbl v join nb_zonasFacturas_vw zonas on (zonas.factura = v.nb_referencia_fld),
              nb_relacionfactura_tbl rf
            where  v.nb_estado_fld = 0
            and    v.nb_referencia_fld = rf.nb_factura_fld
            and    rf.nb_estado_cartera_fld = 4
            and    zonas.nb_id_fld = reporte.ID_ZONA
            and    str_to_date(rf.nb_fecha_recuperada_fld,'%d/%m/%Y') 
            between str_to_date('".$fecha_cartera_desde."','%d/%m/%Y') and str_to_date('".$fecha_cartera_hasta."','%d/%m/%Y')
          
          ) AS FACTURAS_RECUPERADAS,
          ( select ifnull((total_ventas - total_cartera - total_devols),0) monto_recuperado
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
            and     devols.nb_fecha_devolucion_fld <= rf.nb_fecha_recuperada_fld ) as devoluciones
          
          ) AS MONTO_RECUPERADO,
          ( select  count(a.nb_id_fld) facturas_por_devols
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
               and zonas.nb_id_fld = reporte.ID_ZONA
               and IFNULL(EstadoCartera,'X')  <> 'Castigada'
               AND STR_TO_DATE(fechaingreso,'%d/%m/%Y') = STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y'))
          
          ) AS FACTURAS_POR_DEVOLUCIONES,
          ( select ifnull(sum(replace(replace(devols.nb_valor_total_fld,'$',''),',','')),0) monto_devoluciones
            from nb_devoluciones_tbl devols
                join nb_zonasFacturas_vw zonas on (zonas.factura = SUBSTRING(upper(devols.nb_referencia_fld),2,length(devols.nb_referencia_fld)))
            where devols.nb_estado_fld = 0
            and zonas.nb_id_fld = reporte.ID_ZONA
            and str_to_date(devols.nb_fecha_devolucion_fld,'%d/%m/%Y') 
            BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y')
          
          ) AS MONTO_DEVOLUCIONES,
          ( select ifnull(count(ventas.nb_id_fld),0) traslados_in
             from   nb_terceros_tbl terceros join nb_zonas_tbl zonas on (zonas.nb_nombre_fld = terceros.nb_zona_fld), nb_ventas_tbl ventas
            where   terceros.nb_zona_anterior_fld <> ''
            and terceros.nb_tipo_tercero_cli_fld = 0
             and  str_to_date(terceros.nb_fecha_cambio_zona_fld,'%d/%m/%Y') between str_to_date('".$fecha_cartera_desde."','%d/%m/%Y') and str_to_date('".$fecha_cartera_hasta."','%d/%m/%Y')
             and zonas.nb_id_fld = reporte.ID_ZONA
             and ventas.nb_codigo_cliente_fld = terceros.nb_id_fld
          
          ) AS TRASLADOS_IN,
          ( select ifnull(count(ventas.nb_id_fld),0) traslados_out
            from  nb_terceros_tbl terceros join nb_zonas_tbl zonas on (zonas.nb_nombre_fld = terceros.nb_zona_anterior_fld), nb_ventas_tbl ventas
            where   terceros.nb_zona_anterior_fld <> ''
            and terceros.nb_tipo_tercero_cli_fld = 0
             and  str_to_date(terceros.nb_fecha_cambio_zona_fld,'%d/%m/%Y') between str_to_date('".$fecha_cartera_desde."','%d/%m/%Y') and str_to_date('".$fecha_cartera_hasta."','%d/%m/%Y')
             and zonas.nb_id_fld = reporte.ID_ZONA
             and ventas.nb_codigo_cliente_fld = terceros.nb_id_fld
          
          ) AS TRASLADOS_OUT
      FROM nb_conosolidado_cartera_detalle_reporte reporte ".$sqlZonas." ) datos ";   

      
    $csv = new ExportExcel();
    $database->conectar();
    $file=$csv->exportarFile('0',$sql);
    $database->desconectar();

    $filename=str_replace('../uploads/','',$file);

    header( 'Content-Type: application/octet-stream');
    header( 'Content-Length: '.filesize($file));
    header( 'Content-Disposition:attachment;filename='.$filename);
    readfile($file);

?>