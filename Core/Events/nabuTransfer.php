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
	Fecha modificacion	= 13-12-2015
	User modify		    = CAGC

*/
?>
    <head>
        <meta charset="utf-8">
        <title>Informacion del Vehiculo</title>
        <link rel="stylesheet" href="../Styles/nabu.css">
        <link rel="stylesheet" href="../Framework/bootstrap/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/redmond/jquery-ui.css">
        
      
        <link rel="stylesheet" href="../Framework/font-awesome/css/font-awesome.min.css">
        <script src="../Framework/jquery/dist/jquery.min.js"></script>
        <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
          <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    
        <style>
            .ui-dialog-titlebar-close{
                display: none;
            }
        </style>
        
        <script>
            $(function() {
                $( "#dialog-confirm" ).dialog({
                    resizable: false,
                    weight:800,  
                    height:300,
                    modal: true,
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

    $database = new Database(); 
    date_default_timezone_set("America/Bogota");

    $tipo=$_POST['nb_1_tipo_vehi_fld'];
    $placa=$_POST['nb_2_placa_fld'];
    $tarjeta=$_POST['nb_3_tarjeta_fld'];
    $fecha=date("Y-m-d h:i:sa");
        
    $database->insertControl($tipo,$placa,$tarjeta,$fecha);

    $Mensaje='Tipo='.$tipo.'<br>';
    $Mensaje=$Mensaje.' Placa='.$placa.'<br>';
    $Mensaje=$Mensaje.' Tarjeta='.$tarjeta.'<br>';

    echo "<div id='dialog-confirm' title='Informacion Vehiculo'>";
    echo $Mensaje;
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