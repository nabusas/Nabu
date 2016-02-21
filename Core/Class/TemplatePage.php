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
	Fecha modificacion	= 19-02-2016
	Usuario Modifico	= CAGC

*/

include "../Class/Menu.php";

class TemplatePage
{
	var $menu;
	var $idPage;
	var $title;
	var $objUtilities;
	var $pageProperties;
    var $render;
    var $config;

	function TemplatePage($objUtilities){
        $this->objUtilities=$objUtilities;
    }

    function initTemplate($id_page){
        $this->idPage=$this->objUtilities->idPage($id_page);
        $this->config=$this->objUtilities->setupConfig();
        $this->pageProperties=$this->objUtilities->pageProperties($this->idPage);
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
		<html>
			<head>

				<meta charset="UTF-8"/>
				<meta name="author" content="nabu" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" >
                <?php ?>    
                <title><?php echo $this->pageProperties['title']; ?></title>

                <!-- Atributos Pagina -->
                <?php $this->objUtilities->pageAttribute($this->idPage);?>

            </head>
<?php
    }

	function banner(){
    if ($this->idPage <> 'login'){                 
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


		<br><br>
<?php
		if ($this->idPage <> 'login')
            $this->menu = new Menu($this->idPage,$this->objUtilities);
                      
	}
    
	function body(){
?>
		<body>
            
			<?php $this->banner();?>
			 <div align='center'>
				<?php
                    include "../Class/analyticstracking.php";
                    $style=$this->pageProperties['style'];
                    $trace=$this->pageProperties['trace'];
                    
                    if ($this->tipo == 'alpaca' or $this->tipo == 'wizard'){
                        $schema=$this->objUtilities->getSchema($this->idPage);
                        $options=$this->objUtilities->getOption($this->idPage);
                        $data =$this->objUtilities->getData($this->idPage);
                        $view =$this->objUtilities->getView($this->idPage);
                        $this->objUtilities->forms($style,$trace,$schema,$options,$data, $view);
                    }
                    if ($this->tipo == 'datagrid'){
                    ?>    
                        <div style="margin:10px">
                            <?php 
                                echo $this->render;
                                $csv=$this->objUtilities->fileDatagrid($this->idPage);
                                 if ($csv <> '' and $this->idPage <> 'nb_factura_de_pg'){
                                    echo "<br><a href=''>Actualizar</a>&nbsp&nbsp&nbsp&nbsp";
                                    echo "<a href='$csv' target='_blank'>Descargar Archivo</a>";
                                 }
                                 else{
                                    if (isset($_GET["factura"])){
                                        $factura=$_GET["factura"];
                                        if (!is_numeric($factura))
                                            $factura=0;
                                    }
                                    echo "<br>";
                                    echo "<a href='../Reports/report.php?tipo=fact&id=$factura' target='_blank'>Imprimir Factura</a>";   
                                 }
                            ?>
                        </div>
                    <?php
                    }
                    if ($this->tipo == 'chart'){
                        $this->objUtilities->legend($this->idPage);
                    ?>
                        <div style="width: 100%">
			               <canvas id="canvas" height="300" width="800"></canvas> 
                        </div>
                    <?php
                        $this->objUtilities->charts($this->idPage);  
                    }

                    ?>
			</div>
<?php
	echo '<br><br><br><br>';
    }

	function tail() {
?>
		      <footer class="footer">
                  <table width="100%">
                      <tr>
			            <td><a href="#"><i class="fa fa-facebook"></i></a>
				        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-google-plus"></i></a>
                        <a href="#"><i class="fa fa-youtube"></i></a>    
				        <a href="http://cagc4.github.io/Nabu/" TARGET="_blank"><i class="fa fa-github"></i></a>
                            <p>Nabu &copy; 2016</pp>
                        </td>
                        <td align='right'>&nbsp&nbsp<?php echo "Version App ".$this->config[2]."-DB ".$this->config[1] ?></td>
                      </tr>
                  </table>          
		        </footer>
            
                </div>    
			</body>
		</html>

<?php
	}
}
?>
