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
    

    $sql="
    SELECT reporte.ID_ZONA AS ZONA,
       upper(reporte.nb_nombre_fld) AS 'NOMBRE ZONA',
   (SELECT count(a.referencia)
   FROM nb_ventas_grid_vw a
   JOIN nb_zonasFacturas_vw zonas on (zonas.factura=  upper(a.referencia)  
   )
   WHERE replace(replace(saldo,'$',''),',','') > 0
     and estado = 'ACTIVO'
     and zonas.nb_id_fld = reporte.ID_ZONA
     and IFNULL(EstadoCartera,'X')  <> 'Castigada'
     AND date(fechaingreso) <= STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') )AS 'FACTURAS INICIALES',
   (SELECT ifnull(sum(replace(replace(saldo,'$',''),',','')),0)
   FROM nb_ventas_grid_vw a
   JOIN nb_zonasFacturas_vw zonas on (zonas.factura=  upper(a.referencia)  
   )
   WHERE replace(replace(saldo,'$',''),',','') > 0
     and estado = 'ACTIVO'
     and zonas.nb_id_fld = reporte.ID_ZONA
     and IFNULL(EstadoCartera,'X')  <> 'Castigada'
     AND date(fechaingreso) <= STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') ) AS 'SALDO INICIAL',
       (select
	  count(a.nb_id_fld)
      FROM nb_relacionfactura_tbl A
      JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= upper(A.NB_FACTURA_FLD))
      WHERE zonas.nb_id_fld = reporte.ID_ZONA
      AND (STR_TO_DATE(A.nb_fecha_entrega_fld, '%d/%m/%Y') BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y'))
      AND A.nb_estado_fld = 0) AS 'FACTURAS ENTREGADAS',
      (
	  SELECT count(cartera.nb_id_fld)
      FROM  nb_cartera_tbl cartera
      JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= SUBSTRING(upper(cartera.nb_referencia_fld),2,length(cartera.nb_referencia_fld)))
      WHERE cartera.nb_concepto_fld=1
      AND cartera.nb_id_fld = ( select max(cartera2.nb_id_fld) from nb_cartera_tbl cartera2 where cartera.nb_referencia_fld= cartera2.nb_referencia_fld )
      AND SUBSTRING(upper(cartera.nb_referencia_fld),1,1) ='V'
      AND replace(replace(cartera.nb_nuevo_saldo_fld,'$',''),',','') > 0
       AND zonas.nb_id_fld = reporte.ID_ZONA
      AND (STR_TO_DATE(cartera.nb_fecha_ingreso_concepto_fld, '%d/%m/%Y') BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y'))
      AND cartera.nb_estado_fld = 0
      ) AS 'FACTURAS ABONADAS',
     (
       SELECT count(cartera.nb_id_fld)
      FROM  nb_cartera_tbl cartera
      JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= SUBSTRING(upper(cartera.nb_referencia_fld),2,length(cartera.nb_referencia_fld)))
      WHERE cartera.nb_concepto_fld=1
      AND cartera.nb_id_fld = ( select max(cartera2.nb_id_fld) from nb_cartera_tbl cartera2 where cartera.nb_referencia_fld= cartera2.nb_referencia_fld )
      AND SUBSTRING(upper(cartera.nb_referencia_fld),1,1) ='V'
      AND replace(replace(cartera.nb_nuevo_saldo_fld,'$',''),',','') = 0
       AND zonas.nb_id_fld = reporte.ID_ZONA
      AND (STR_TO_DATE(cartera.nb_fecha_ingreso_concepto_fld, '%d/%m/%Y') BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y'))
      AND cartera.nb_estado_fld = 0
      
      ) AS 'FACTURAS CANCELADAS',
         (
      SELECT ifnull(sum(replace(replace(cartera.nb_valor_fld,'$',''),',','')),0)
      FROM  nb_cartera_tbl cartera
      JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= SUBSTRING(upper(cartera.nb_referencia_fld),2,length(cartera.nb_referencia_fld)))
      WHERE cartera.nb_concepto_fld=1
      AND SUBSTRING(upper(cartera.nb_referencia_fld),1,1) ='V'
       AND zonas.nb_id_fld = reporte.ID_ZONA
      AND (STR_TO_DATE(cartera.nb_fecha_ingreso_concepto_fld, '%d/%m/%Y') BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y'))
      AND cartera.nb_estado_fld = 0
      
      ) AS 'RECAUDO',
       (
            select count(1) 
            from nb_ventas_grid_vw venta
            JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= venta.referencia)
            where venta.estado = 'ACTIVO'
            and  venta.formapago <> 'CONTADO'
            AND zonas.nb_id_fld = reporte.ID_ZONA
            AND date(fechaingreso) BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y')

       ) AS 'FACTURAS VENDIDAS',
       (
            (
            SELECT ifnull(sum(replace(replace(total,'$',''),',','')),0)  
            from nb_ventas_grid_vw venta
            JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= venta.referencia)
            where venta.estado = 'ACTIVO'
            and  venta.formapago <> 'CONTADO'
            AND zonas.nb_id_fld = reporte.ID_ZONA
            AND date(fechaingreso) BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y')
            )
            -
            (
            SELECT ifnull(sum(replace(replace(venta.nb_abono_inicial_fld,'$',''),',','')),0) 
            from nb_ventas_tbl venta
            JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= venta.nb_referencia_fld)
            where venta.nb_estado_fld = 0
            and  venta.nb_forma_pago_fld <> 0
            AND zonas.nb_id_fld = reporte.ID_ZONA
            AND (STR_TO_DATE(venta.nb_fecha_ingreso_fld, '%d/%m/%Y') BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y'))
            
            )
       
       )
       AS 'NUEVA CARTERA',
       (
          select
          count(a.nb_id_fld)
          FROM nb_relacionfactura_tbl A
          JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= upper(A.NB_FACTURA_FLD))
          WHERE zonas.nb_id_fld = reporte.ID_ZONA
          AND (STR_TO_DATE(A.nb_fecha_retornado_fld, '%d/%m/%Y') BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y'))
          AND A.nb_estado_fld = 0
          AND A.nb_estado_cartera_fld = 3
       
       ) AS 'FACTURAS CASTIGADA',
       (
            (
                select ifnull(sum(replace(replace(venta.saldo,'$',''),',','')),0)
                from    nb_ventas_grid_vw venta
                where   venta.referencia in 
                (SELECT upper(A.NB_FACTURA_FLD)
                    FROM nb_relacionfactura_tbl A
                    JOIN nb_zonasFacturas_vw zonas ON (zonas.factura= upper(A.NB_FACTURA_FLD))
                    WHERE zonas.nb_id_fld = reporte.ID_ZONA
                      AND (STR_TO_DATE(A.nb_fecha_retornado_fld, '%d/%m/%Y') BETWEEN STR_TO_DATE('28/08/2017','%d/%m/%Y') AND STR_TO_DATE('09/09/2017','%d/%m/%Y'))
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
                  AND (STR_TO_DATE(A.nb_fecha_retornado_fld, '%d/%m/%Y') BETWEEN STR_TO_DATE('".$fecha_cartera_desde."','%d/%m/%Y') and STR_TO_DATE('".$fecha_cartera_hasta."','%d/%m/%Y'))
                  AND A.nb_estado_fld = 0
                  AND A.nb_estado_cartera_fld = 3

             )
             AND SUBSTRING(upper(cartera.nb_referencia_fld),1,1) ='V'
             AND cartera.nb_id_fld = ( select max(cartera2.nb_id_fld) from nb_cartera_tbl cartera2 where cartera.nb_referencia_fld= cartera2.nb_referencia_fld )      

           )
      )
       AS 'MONTO CASTIGADO'
    FROM nb_conosolidado_cartera_detalle_reporte reporte ".$sqlZonas;    

    
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