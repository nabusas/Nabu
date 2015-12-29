<HTML>
<?php

/*
The MIT License (MIT)

Copyright (c) <2015> <Carlos Alberto Garcia Cobo - carlosgc4@gmail.com>

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

	Fecha creacion		= 20-02-2015
	Desarrollador		= CAGC
	Fecha modificacion	= 29-12-2015
	User modify		    = CAGC

*/
?>
    <head>
        <meta charset="utf-8">
        <title>Informacion del Vehiculo</title>
        <link rel="stylesheet" href="../Styles/nabu.css">
        <link rel="stylesheet" href="../Framework/bootstrap/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="../Framework/Datagrid/lib/js/themes/cobo/jquery-ui.custom.css">
        
      
        <link rel="stylesheet" href="../Framework/font-awesome/css/font-awesome.min.css">
        <script src="../Framework/jquery/dist/jquery.min.js"></script>
        <script src="../Framework/jquery-ui/jquery-ui.min.js"></script>
        <script src="../Framework/bootstrap/dist/js/bootstrap.min.js"></script>
    
        <style>
            .ui-dialog-titlebar-close{
                display: none;
            }
        </style>
        
        <script>
            $(function() {
                $( "#dialog-confirm" ).dialog({
                    resizable: false,
                    height:350,
                    width: 500,
                    modal: false,
                    buttons: {
                        "Aceptar": function() {
                            document.location = "../Pages/nabu.php?p=nb_control_pg";
                        }
                    }
                });
            });
        </script>
    </head>
<body>
    <header>
			<table width="100%">
				<tr>
					<td colspan="1">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="../Images/logo.png" ></td>
				</tr>
				<tr>
					<td class="slogan">&nbsp&nbsp Semilla de innovacion que da vida a tus ideas</td>
				</tr>
			</table>
		</header>

<?php    
    
    include_once "../Class/Database.php";
    
    session_start();

    $database = new Database(); 
    date_default_timezone_set("America/Bogota");
    setlocale(LC_MONETARY, 'en_US');

    $oprid=$_SESSION['oprid'];
    
    $tipo=$_POST['nb_1_tipo_vehi_fld'];
    $placa=strtoupper($_POST['nb_2_placa_fld']);
    $tarjeta=$_POST['nb_3_tarjeta_fld'];
    $fecha=date("Y-m-d H:i:sa");
        
    $mensajeFecha='';
    $mensajeSalida='';
    $error=0;

    $existe=$database->verifiControl($placa);
    $tarifa=$database->tarifaControl($placa);

        if ($existe[0] == 0){
            $validaTarjeta=$database->tarjRepControl($tarjeta);
            if ($validaTarjeta[0] == 0){
                $mensajeFecha = 'Fecha Ingreso = '.$fecha;
                $database->insertControl($tipo,$placa,$tarjeta,$fecha,$tarifa[0],$oprid);
            }
            else
                $error=2;
        }
        else{
            $tarjetaBD=$database->tarjControl($placa);
            if ($tarjetaBD[0] == $tarjeta){
                $validaS=$database->validaSalida($placa,$tarjeta);
                if ($validaS[0] > 0)
                    $error=3;
                else{
                    $tiempoG=$database->tiempoGracia($tarifa[0],$tipo);
                    $validaG=$database->validaGracia($placa,$tiempoG[0]);
                    if ($validaG[0] >0 and  $tarifa[0] == 2 ){
                        $database->insertControl($tipo,$placa,$tarjeta,$fecha,$tarifa[0],$oprid);
                        $error=4;
                    }
                    else{
                        $error=0;
                        $mensajeSalida= 'Salida Autorizada';
                    }
                }
            }
            else
                $error=1;
        }
    
    $tipoC=$database->tipoControl($tipo);
    
    $Mensaje='Tipo='.$tipoC[0].'<br>';
    $Mensaje=$Mensaje.' Placa='.$placa.'<br>';
    $Mensaje=$Mensaje.' Tarjeta='.$tarjeta.'<br>';
    $Mensaje=$Mensaje.'Tarifa='.$tarifa[1].'<br>';    
    $Mensaje=$Mensaje.$mensajeFecha.'<br>';
    $Mensaje=$Mensaje.$mensajeSalida.'<br>';
    
    echo "<div id='dialog-confirm' title='Informacion Vehiculo'>";
        if ($error == 0 )
            echo $Mensaje;
        else
            if ($error == 1 )
                echo 'El numero de las tarjetas no coincide';
            else
                if ($error == 2 )
                    echo 'Tarjeta ya asignada';
                else
                    if ($error == 3 )
                        echo 'Pasar por puesto de pago';
                    else
                        if ($error == 4 )
                            echo 'Pasar por puesto de pago tiempo gracia cumplido';
    
    echo '</div>';    

?>
    
    <footer class="footer">
        <a href="#"><i class="fa fa-facebook"></i></a>
        <a href="#"><i class="fa fa-twitter"></i></a>
        <a href="#"><i class="fa fa-google-plus"></i></a>
        <a href="#"><i class="fa fa-youtube"></i></a>    
        <a href="http://cagc4.github.io/Nabu/" TARGET="_blank"><i class="fa fa-github"></i></a>
        <p>Nabu &copy; 2015</p>
    </footer>
</body>
</html>