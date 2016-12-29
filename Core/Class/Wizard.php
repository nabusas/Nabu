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
	Desarrollador		= GASAKAWA
	Fecha modificacion	= 29-12-2016
	Usuario Modifico	= CAGC

*/
    include_once "Step.php";
    include_once "Button.php";

    class Wizard{
        
        var $title;
        var $description;
        var $bindings;
        var $steps;
        var $buttons;
        var $showProgressBar;
        var $empresa;
        
        function Wizard($db,$idPage){
            $this->steps = array();
            $this->bindings = array();
            $this->buildWizard($db,$idPage);
            $this->empresa=$_SESSION['app'];
        }
        
        function buildWizard($db,$idPage){
            $rows = $db->getWizardQuery($this->empresa,$idPage);
            
            foreach($rows as $row){
                $this->title = $row['nb_wizard_title'];
                $this->description = $row['nb_wizard_desc'];
                if($row['nb_wizard_show_progress'] == "true")
                    $this->showProgressBar =   true;
                else
                    $this->showProgressBar =   false;     
            }
        }
        
        function buildSteps($db,$idPage){
            $rows = $db->getWizardStepsQuery($this->empresa,$idPage); 
            foreach($rows as $row)
                array_push($this->steps, new Step($row["nb_wizard_step_title"], $row["nb_wizard_step_desc"]));        
        }
        
        function buildBindings($db,$idPage){
            $rows = $db->getWizardBindingsQuery($this->empresa,$idPage);
            
            foreach($rows as $row)
                $this->bindings[$row["nb_id_pr_schema_fld"]] = intval($row["nb_id_wizard_step"]);   
            
        }
        
        function buildButtons($db,$idPage){
            $rows = $db->getWizardButtonQuery($this->empresa,$idPage);
            foreach($rows as $row){
                $button = new Button($row["nb_wizard_button_title"]);
                $button->click = $row["nb_wizard_button_click"];
                $button->validate = $row["nb_wizard_button_validate"];
                $this->buttons[$row["nb_wizard_button_name"]] = $button;   
            }
        }
    }
?>