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

	Fecha creacion		= 28-02-2015
	Desarrollador		= CAGC
	Fecha modificacion	= 06-04-2017
	Usuario Modifico	= CAGC

*/

include "../Class/Utilities.php";
include "../Class/Menu.php";

class TemplatePage
{
	var $menu;
	var $idPage;
	var $objUtilities;
	var $pageProperties;
    var $render;
    var $config;

	function TemplatePage($objUtilities){
        if (!isset ($objUtilities)){
            $this->objUtilities = new Utilities('localhost','nabu','6492496','nabu');
            $_SESSION['objUtilities']=$this->objUtilities;
        }
        else
            $this->objUtilities=$objUtilities;
    }

    function initTemplate($empresa,$id_page){
        $this->idPage=$this->objUtilities->idPage($id_page);
        $this->config=$this->objUtilities->setupConfig();
        $this->pageProperties=$this->objUtilities->pageProperties($empresa,$this->idPage);
        
        $this->tipo=$this->pageProperties['tipo'];
        if ($this->tipo == 'datagrid')
        	$this->render=$this->objUtilities->getDataGrid($this->idPage);
        
        $this->header();
        $this->body();
        $this->tail();
    }
    
	function header(){
?>
		<!DOCTYPE html>
		<html>
            <head>

				<meta charset="UTF-8"/>
				<meta name="author" content="nabu" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" >
                <?php ?>    
                <title><?php echo $this->pageProperties['title']; ?></title>

                <!-- Atributos Pagina -->
                <?php $this->objUtilities->pageAttribute( $_SESSION['app'],$this->idPage);?>
            </head>
<?php
    }

	function banner(){
        
    if ($this->idPage <> 'login' and $this->idPage <> 'event'){                 
?>
        <div class="Menuheader"><a href="#menu"></a></div>
<?php
    }
?>
    <div class="content">
	<header>
			<table width="100%">
				<tr>
					<td colspan="1">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="../Images/logo.png" ></td>
				</tr>
				<tr>
					<td class="slogan">&nbsp&nbsp<?php echo $this->config[0] ?></td>
				</tr>
			</table>
		</header>

        <script src="../Framework/notie/notie.js"></script>
        
		<br><br>
<?php
		if ($this->idPage <> 'login' and  $this->idPage <> 'event')
            $this->menu = new Menu($_SESSION['app'],$this->objUtilities);
                      
	}
    
	function body(){
?>
		<body onload="ChangeUrl('nabu','nabu')">
            
			<?php $this->banner();?>
			 <div align='center'>
				<?php
                    include "../Class/analyticstracking.php";

                    $style=$this->pageProperties['style'];
                    $trace=$this->pageProperties['trace'];
                    $empresa=$_SESSION['app'];
                        
                    if ($empresa=='')
                        $empresa='nabu';
                    
                    if ($this->tipo == 'alpaca' or $this->tipo == 'wizard'){
                        $schema=$this->objUtilities->getSchema($empresa,$this->idPage);
                        $options=$this->objUtilities->getOption($empresa,$this->idPage);
                        $data =$this->objUtilities->getData($empresa,$this->idPage);
                        $view =$this->objUtilities->getView($empresa,$this->idPage);
			$postrender=$this->objUtilities->getPostrender($empresa,$this->idPage);
                        $this->objUtilities->forms($style,$trace,$schema,$options,$data, $view,$postrender);
                    }
                    if ($this->tipo == 'datagrid'){
                        
                        $paginas2Nivel ="nb_factura_de_pg,nb_compras_de_pg,nb_ventas_de_pg";
                        $permiso= strpos($paginas2Nivel,$this->idPage);
                        
                    ?>    
                        <div style="margin:10px">
                            <?php 
                                echo $this->render;
                                $csv=$this->objUtilities->fileDatagrid($this->idPage);
                                 if ($csv <> '' and $permiso === false ){
                                    echo "<br><a href=''>Actualizar</a>&nbsp&nbsp&nbsp&nbsp";
                                    echo "<a href='$csv' target='_blank'>Descargar Archivo</a>";
                                 }
                                 else{
                                    if ($permiso !== false){ 
                                        if (isset($_GET["idCabecera"])){
                                            $idCabecera=$_GET["idCabecera"];
                                            if (!is_numeric($idCabecera))
                                                $idCabecera=0;
                                        }
                                        echo "<br>";
                                        echo "<a href='../Reports/factura.php?idF=1&idCabecera=$idCabecera' target='_blank'>Imprimir Factura</a>";   
                                    }
                                 }
                            ?>
                        </div>
                    <?php
                    }
                    if ($this->tipo == 'chart'){
                        $this->objUtilities->legend($this->idPage);
                    ?>
                        <div style="width: 90%">
			               <canvas id="canvas" height="30%" width="100%"></canvas> 
                        </div>
                    <?php
                        $this->objUtilities->charts($this->idPage);  
                    }
                    
                    if ($this->tipo == 'event')
                        $this->objUtilities->validateLogin();
                    if ($this->tipo == 'save')
                        $this->objUtilities->eventSave();
                    
                    ?>
			</div>
<?php
	echo '<br><br><br><br>';
    }

	function tail() {
        
        $terminos=file_get_contents("../Files/terminos.txt");
        $terminos = ucfirst($terminos);
        //$terminos = htmlentities($terminos);
        $terminos = str_replace(array("\r\n", "\r", "\n"), "<br />",$terminos);
        $terminos = nl2br($terminos);
?>
		      <footer class="footer">
                  <table width="100%">
                      <tr>
                        <td> 
                             <a href="https://www.facebook.com/nabugi/" TARGET="_blank"><i class="fa fa-facebook fa-1x btn btn-primary"></i></a>
                             <a href="mailto:nabu.sas.info@gmail.com?Subject=Información acerca Nabu" TARGET="_blank"><i class="fa fa-envelope fa-1x btn btn-primary"></i></a>
				             <a href="../../Mantis" TARGET="_blank"><i class="fa fa-bug fa-1x btn btn-primary"></i></a>    
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nabu &copy; 2017</p>
                        </td>
                        <td align='right'>
                                <a class="terminosCon">
                                    <i class="fa fa-commenting-o fa-1x btn btn-primary"></i>
                                </a>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <p>Terminos y Condiciones<?php ?></p>
                        </td>
                      </tr>
                  </table>          
		        </footer>
            
            <script>
            $(document).on("click", ".terminosCon", function(e) {
                var dialog = bootbox.dialog({
                    title: 'Nabu @ Términos y Condiciones',
                    size: 'large',
                    message: '<p><i class="fa fa-spin fa-spinner fa-2x"></i> Cargando...</p>'
                });
                
                dialog.init(function(){
                    setTimeout(function(){dialog.find('.bootbox-body').html('<?php echo $terminos ?>');},1000);});
                });
            </script>
            
                </div>    
			</body>
		</html>

<?php
	}
}
?>
