<HTML>
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

	Fecha creacion		= 29-12-2015
	Desarrollador		= CAGC
	Fecha modificacion	= 24-05-2016
	User modify		    = CAGC

*/
?>
    <head>
            <meta charset="utf-8">
            <title>Informacion del Vehiculo</title>
            <link rel="stylesheet" href="../Styles/nabu.css">
            <link rel="stylesheet" href="../Framework/alpaca/dist/lib/bootstrap/dist/css/bootstrap.css">

            <link rel="stylesheet" href="../Framework/font-awesome/css/font-awesome.min.css">

            <script src="../Framework/alpaca/dist/lib/jquery/dist/jquery.min.js"></script>
            <script src="../Framework/alpaca/dist/lib/bootstrap/dist/js/bootstrap.js"></script>

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
        
        <script src="../Framework/notie/notie.js"></script>

<?php    
    
    include "../Class/Utilities.php";
    
    session_start();

    $objUtilities = $_SESSION['objUtilities'];
    $database = $objUtilities->database;
    
    date_default_timezone_set("America/Bogota");
    setlocale(LC_MONETARY, 'en_US');

    $oprid=$_SESSION['oprid'];
    
    
    $placa=strtoupper($_POST['nb_2_placa_fld']);
    $fecha=date("Y-m-d H:i:sa");
        
    $mensajeTiempo='';
    $mensajeFecha='';
    $mensajeValor='';
    $error=0;
    
    $pagelink=$_GET['p'];
    echo "<br><br><br><br><center><a href='../Pages/nabu.php?p=$pagelink'><img src='../Images/imagenHome.png'></a><center>";

    $tipoD=$database->tipoControlDB($placa);
    $tipo=$tipoD[0];
    $tarjetaBD=$database->tarjControl($placa);
    $existe=$database->verifiControlR($placa);
    $tarifa=$database->tarifaControlDB($placa);

    if ($existe[0] == 0){
        $error=1;
    }
    else{
        
        if ($_SESSION['role']==2)
            $estado=2;
        else
            $estado=1;
        
        $database->updtControl($placa,$fecha,$estado);
        
        $fechaDB=$database->fechasControl($placa);
        $tiempo=$database->timeControl($placa);
        
        $mensajeIngreso = 'Fecha Ingreso = '.date_create($fechaDB[0])->format('Y-m-d H:i:s');
        $mensajeSalida = 'Fecha Salida = '.$fecha;
        $mensajeFecha=$mensajeIngreso.'<br>'.$mensajeSalida;

        $valorhora=$database->dataTarifa($tipo,$tarifa[0],2);
        $valorfraccion=$database->dataTarifa($tipo,$tarifa[0],3);
        
        if (( $tarifa[0] == 0 or $tarifa[0] == 1) or ($tiempo[0] <= $valorhora[1] )){
            $costo=0;
            $error=0; 
        }
        else{
            if ( $tiempo[0] < 60 ){
                $costo=$valorhora[0];
            }
            else{
                $costoFraccion=ceil($tiempo[0]/60);
                
                if ($costoFraccion < 2 ){
                    $costoFraccion=1;
                }
                else{
                    $costoFraccion =$costoFraccion-1;
                }
                $costo=$valorhora[0]+($costoFraccion*$valorfraccion[0]);
            }
        }
        
        $tiempoF=round(($tiempo[0]/60),0);

        if ($tiempo[0] <= $valorhora[1] or $tiempo[0] <= 60 ){
            $tiempoF=$tiempo[0].' Minutos';
        }
        else{
            $tiempoF=round(($tiempo[0]/60),0).' Horas';
        }
        
        $mensajeTiempo = 'Tiempo Total = '.$tiempoF;
        $mensajeValor = 'Valor a Cancelar= '.money_format('%(#10n', $costo);

        $database->updtCosto($placa,$costo);
        $error=0; 
    }
    
    $tipoC=$database->tipoControl($tipo);
    
    $Mensaje='Tipo='.$tipoC[0].'<br>';
    $Mensaje=$Mensaje.' Placa='.$placa.'<br>';
    $Mensaje=$Mensaje.' Tarjeta='.$tarjetaBD[0].'<br>';
    $Mensaje=$Mensaje.'Tarifa='.$tarifa[1].'<br>';    
    $Mensaje=$Mensaje.$mensajeFecha.'<br>';
    $Mensaje=$Mensaje.$mensajeTiempo.'<br>';
    $Mensaje=$Mensaje.$mensajeValor.'<br>';
    
    if ($error == 1  )
        $Mensaje= 'No existen vehiculos con estos datos pendientes de pago';
    else
        if ($error == 2  )
            $Mensaje= 'Tarjeta ya asignada';
    
?>
    
    <script languaje="javascript">
            var message = "<?php echo $Mensaje;?>";
            var link = "<?php echo $pagelink ;?>";
        
        notie.confirm(message, 'OK', 'Cancelar', function() {document.location = "../Pages/nabu.php?p="+link;});
    </script> 
    
    <footer class="footer">
        <a href="#"><i class="fa fa-facebook"></i></a>
        <a href="#"><i class="fa fa-twitter"></i></a>
        <a href="#"><i class="fa fa-google-plus"></i></a>
        <a href="#"><i class="fa fa-youtube"></i></a>    
        <a href="http://cagc4.github.io/Nabu/" TARGET="_blank"><i class="fa fa-github"></i></a>
        <p>Nabu &copy; 2016</p>
    </footer>
</body>
</html>