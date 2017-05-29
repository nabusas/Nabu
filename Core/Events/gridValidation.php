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

	Fecha creacion		= 17-03-2017
	Desarrollador		= CAGC
	Fecha modificacion	= 21-03-2017
	Usuario Modifico	= CAGC

*/
    include_once "../Class/Utilities.php";

    //Parametros de entrada
    if ( isset($_POST['token']) ){
            $token =$_POST['token'];
            if ($token == 'e53db2b5b93254fddb55de43a3323970'){
                
        header('Content-type: application/json');
                
        $codigoemp =$_POST['codigoemp'];
		$codigovalidacion =$_POST['codigovalidacion'];
        $binds=explode(";",$_POST['binds']);

        $objUtilities = new Utilities('localhost','nabu','6492496','nabu');
        $database = $objUtilities->database;

		$bindEmp[0]=$codigoemp;
        $sqlEmpresa = $database->getSqlStatement('nabu', 'nabuconnect', $bindEmp, "1");        

		$empresa =$sqlEmpresa[0];
        $bd =$sqlEmpresa[1];
		$usuario =$sqlEmpresa[2];
		$password =$sqlEmpresa[3];
		$host =$sqlEmpresa[4];

		$database->desconectar();

		$objUtilities = new Utilities($host, $usuario, $password, $bd);
        $database = $objUtilities->database;

        $sql=$database->getSqlStatement($empresa,$codigovalidacion,$binds,"1");
                
		switch ($codigovalidacion) {
		  case 'validacionProductoGrilla':
		    $result = validacionProductoGrilla($sql); break;
		  case 'validacionCantidadTotalenVentas':
		    $result = validacionCantidadTotalenVentas($sql); break;
		  case 'validacionModificacionGrillaVentas':
		    $result = validacionModificacionGrillaVentas($sql); break;
		  case 'validacionDespachosenVentas':
		    $result = validacionDespachosenVentas($sql); break;
		  case 'validacionModificacionGrillaCompras':
		    $result = validacionModificacionGrillaCompras($sql); break;
		  case 'validacionCantidadTotalenCompras':
		    $result = validacionCantidadTotalenCompras($sql); break;
		  case 'validacionModificacionGrillaEstadoCompras':
		    $result = validacionModificacionGrillaEstadoCompras($sql); break;
		  case 'validacionModificacionGrillaEstadoVentas':
		    $result = validacionModificacionGrillaEstadoVentas($sql); break;
		  case 'validacionExistencias':
		    $result = validacionExistencias($sql); break;
		  case 'validacionExisteVendedor':
		    $result = validacionExisteVendedor($sql); break;
		  case 'validacionModificacionDespachoDetalle':
		    $result = validacionModificacionDespachoDetalle($sql); break;

		}

                echo($result);
		$database->desconectar();
            }
    }

 function validacionModificacionDespachoDetalle($sql){
	$result=$sql[0];
	if ($sql==NULL){
	    $result='false';
        }
	return $result;
 }


 function validacionExisteVendedor($sql){
	$result=$sql[0];
	if ($sql==NULL){
	    $result='false';
        }
	return $result;
 }

 function validacionExistencias($sql){
	$result=$sql[0];
	if ($sql==NULL){
	    $result='false';
        }
	return $result;
 }

 function validacionModificacionGrillaEstadoVentas($sql){
	$result=$sql[0];
	if ($sql==NULL){
	    $result='false';
        }
	return $result;
 }

 function validacionModificacionGrillaEstadoCompras($sql){
	$result=$sql[0];
	if ($sql==NULL){
	    $result='false';
        }
	return $result;
 }

 function validacionCantidadTotalenCompras($sql){
	$result=$sql[0];
	if ($sql==NULL){
	    $result='false';
        }
	return $result;
 }

 function validacionModificacionGrillaCompras($sql){
	$result=$sql[0];
	if ($sql==NULL){
	    $result='false';
        }
	return $result;
 }

 function validacionDespachosenVentas($sql){
	$result=$sql[0];
	if ($sql==NULL){
	    $result='false';
        }
	return $result;
 }

 function validacionModificacionGrillaVentas($sql){
	$result=$sql[0];
	if ($sql==NULL){
	    $result='false';
        }
	return $result;
 }

 function validacionProductoGrilla($sql){
	$count=$sql[0];

	if ($count == 1){
	    $result ='true';
        } elseif ($sql==NULL){
	    $result='false';
        } else{
            $result = 'false';
	}
	return $result;
 }

 function validacionCantidadTotalenVentas($sql){
	$result=$sql[0];
	if ($sql==NULL){
	    $result='false';
        }
	return $result;
 }
    
?>
