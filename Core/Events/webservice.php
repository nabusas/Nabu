<?php

/*
http://localhost/Nabu/Core/Events/webservice.php?token=e53db2b5b93254fddb55de43a3323970&codigoemp=paraiso&codigovalidacion=none&validacion=getData&binds=nb_compras_pg;nb_codigo_provedor_fld;1The MIT License (MIT)

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
	Fecha modificacion	= 25-05-2017
	Usuario Modifico	= CAGC

*/

include_once "../Class/Utilities.php";
include_once "../Class/JsonData.php";


if ( isset($_POST['token']) ){
    $token =$_POST['token'];
    
    echo 'CAGC(1)';
    
    if ($token == 'e53db2b5b93254fddb55de43a3323970'){

        header('Content-type: application/json');
                
        $codigoemp =$_POST['codigoemp'];
        $mensaje =$_POST['messa'];
        $codigovalidacion =$_POST['codigovalidacion'];
        $validacion =$_POST['validacion'];
        $binds=explode(";",$_POST['binds']);

        echo 'CAGC(2)';
        $objUtilities = new Utilities('localhost','nabu','6492496','nabu');
        $database = $objUtilities->database;

        $bindEmp[0]=$codigoemp;
        echo 'CAGC(3)';
        $sqlEmpresa = $database->getSqlStatement('nabu', 'nabuconnect', $bindEmp, "1");
        echo 'CAGC(4)';

        $empresa =$sqlEmpresa[0];
        $bd =$sqlEmpresa[1];
        $usuario =$sqlEmpresa[2];
        $password =$sqlEmpresa[3];
        $host =$sqlEmpresa[4];

        $objUtilities = new Utilities($host, $usuario, $password, $bd);
        $database = $objUtilities->database;

        if ($codigovalidacion <> 'none')    
            $sql=$database->getSqlStatement($empresa,$codigovalidacion,$binds,"1");

        switch ($validacion) {
            case 'validarDuplicadooNoExistencia':
                $result = validarDuplicadooNoExistencia($sql, $mensaje); break;
            case 'validarExistencia':
                $result = validarExistencia($sql, $mensaje); break;
            case 'validarRelacionEntreRegistros':
                $result = validarRelacionEntreRegistros($sql, $mensaje); break;
            case 'getData':
                $result = getData($database,$empresa,$binds); break;
        }

        echo json_encode($result);

    }
}

function getData($database,$empresa,$binds){
    
    echo 'CAGC(5) <br>';
    $json = new JsonData();
    
    $idpage=$binds[0];
    $campo =$binds[1];
    $valor =$binds[2];
    
    echo 'CAGC(6)<br>';
    
    $fieldxs=$database->getPromptSelect($empresa,$idpage,$campo,$valor);
    
    echo 'CAGC(7)<br>';
    
    foreach($fieldxs as $fieldx){
    
        echo 'CAGC(8)<br>';
        $value=$database->executeQueryOneRow($fieldx[1]);
        echo 'CAGC(9)<br>';
        $fieldsData[$fieldx[0]]=$value[0];
    }
    
    $jsonA=$json->getData2($fieldsData);
    
    echo 'CAGC(10)<br>';
    
    return $jsonA;
    
}

function validarExistencia($sql, $mensaje){
    
    $count=$sql[0];
    
    if ($count >= 1){
        $value = false;
        $mensaje = "Error: Existe un registro con el dato ingresado: ".$mensaje;
        $result["message"] =$mensaje;
    } 
    elseif ($sql==NULL){
        $value = false;
        $mensaje = "Error: No se pudo realizar la consulta a la bd.=";
        $result["message"] =$mensaje;
    } 
    else{
        $value = true;
	}
	
    $result["status"] =$value;
	
    return $result;
 }


function validarDuplicadooNoExistencia($sql, $mensaje){
    
    $count=$sql[0];
    
    if ($count == 0 ){
        $value = false;
        $mensaje = "Error: No existe: ".$mensaje;
	    $result["message"] =$mensaje;
    } 
    elseif ($count > 1){
        $value = false;
        $mensaje = "Error: registro duplicado en BD: ".$mensaje;
	    $result["message"] =$mensaje;
    } 
    elseif ($sql==NULL){
        $value = false;
        $mensaje = "Error al conectarse a la base de datos.";
	    $result["message"] =$mensaje;
    } 
    else{
        $value = true;
	}
	
    $result["status"] =$value;
	return $result;
 }


function validarRelacionEntreRegistros($sql, $mensaje){
 	
    $count=$sql[0];

    if ($count >= 1){
        $value = false;
        $mensaje = "Error: ".$mensaje;
	    $result["message"] =$mensaje;
    } 
    elseif ($sql==NULL){
        $value = false;
        $mensaje = "Error: No se pudo realizar la consulta a la bd.=";
	    $result["message"] =$mensaje;
    } 
    else{
        $value = true;
	}
	
    $result["status"] =$value;
	return $result;
}
    
?>
