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

	Fecha creacion		= 20-02-2015
	Desarrollador		= CAGC
	Fecha modificacion	= 19-11-2016
	User modify	   	    = CAGC

*/

    include "../Class/Utilities.php";   

    session_start();

?>
    <head>
            <meta charset="utf-8">
            <title>Evento Guardar</title>
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

     <br><br><br><br><center><img src='../Images/error.png'><center>

<?php

    $empresa=$_POST['Campo0'];
    $usuario=$_POST['Campo1'];
    $password=$_POST['Campo2'];
    $idPage=$_GET['p'];
    
    $objUtilities=$_SESSION['objUtilities'];

    $enterprise=$objUtilities->database->getEnterprise($empresa);

    if (sizeof($enterprise) > 1){
        
        $objUtilities = new Utilities($enterprise[0],$enterprise[2],$enterprise[3],$enterprise[1]);
        $_SESSION['objUtilities']=$objUtilities;

        $row=$objUtilities->database->validateUser($empresa,$usuario,$password); 

        if ($row[0] != null) {
            session_start();
            $_SESSION['app'] = $empresa;
            $_SESSION['oprid'] = $row[0];
            $_SESSION['role'] = $row[1];
            $_SESSION['opridLogin'] = $usuario;
            header("location:../Pages/?p=home");
        }
        else
        {
            unset($_SESSION['app']);
            unset($_SESSION['oprid']);
            unset($_SESSION['role']);
            unset($_SESSION['opridLogin']);
        ?>
        <script languaje="javascript">
            notie.alert(3,'Error en autenticación de usuario',5);
            setTimeout ('document.location = "../Pages/nabu.php?p=login";',2000); 
        </script> 
<?php        
            
        }
    }
    else
        {
?>  
            <script languaje="javascript">
                notie.alert(3,'Empresa no existe',5);
                setTimeout ('document.location = "../Pages/nabu.php?p=login";',2000); 
            </script> 
<?php        
        }
 ?>                

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