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
	Fecha modificacion	= 08-01-2016
	Usuario Modifico	= CAGC

*/

include "../Class/Menu.php";
include "../Class/Utilities.php";



class TemplatePage
{
	var $menu;
	var $idPage;
	var $title;
	var $objUtilities;
	var $pageProperties;
    var $render;
    var $slogan;

	function TemplatePage($id_page){
        
		$this->objUtilities = new Utilities();
		$this->idPage=$this->objUtilities->idPage($id_page);
        $this->slogan=$this->objUtilities->setupConfig();
		$this->pageProperties=$this->objUtilities->pageProperties($this->idPage);
		$this->title=$this->pageProperties['title'];
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

                <title><?php echo $this->title ?></title>

                <!-- Atributos Pagina -->
                <?php $this->objUtilities->pageAttribute($this->idPage);?>

            </head>
<?php
    }

	function banner(){
?>
    <div class="Menuheader"><a href="#menu"></a></div>

    <div class="content">
	<header>
			<table width="100%">
				<tr>
					<td colspan="1">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="../Images/logo.png" ></td>
				</tr>
				<tr>
					<td class="slogan">&nbsp&nbsp<?php echo $this->slogan ?>-12</td>
				</tr>
			</table>
		</header>


		<br><br>
<?php
		$this->menu = new Menu($this->idPage,$this->objUtilities);
	}
    
	function body(){
?>
		<body>
            
			<?php $this->banner();?>
			 <div align='center'>
				<?php

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
                                 echo "<br><a href=''>Actualizar</a>&nbsp&nbsp&nbsp&nbsp";
                                 echo "<a href='$csv' target='_blank'>Descargar Archivo</a>";
                            ?>
                        </div>
                    <?php
                    }
                    if ($this->tipo == 'chart'){
                        $this->objUtilities->legend($this->idPage);
                    ?>
                        <div style="width: 60%">
			               <canvas id="canvas" height="300" width="600"></canvas> 
                        </div>
                    <?php
                        $this->objUtilities->charts($this->idPage,'');  
                    }

                    ?>
			</div>
<?php
	echo '<br><br><br><br>';
    }

	function tail() {
?>
		      <footer class="footer">
			            <a href="#"><i class="fa fa-facebook"></i></a>
				        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-google-plus"></i></a>
                        <a href="#"><i class="fa fa-youtube"></i></a>    
				        <a href="http://cagc4.github.io/Nabu/" TARGET="_blank"><i class="fa fa-github"></i></a>
                        <p>Nabu &copy; 2016</p>
		        </footer>
            
                </div>    
			</body>
		</html>

<?php
	}
}
?>
