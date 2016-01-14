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
	Fecha modificacion	= 13-01-2016
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
        
        function Wizard($db,$idPage){
            $this->steps = array();
            $this->bindings = array();
            $this->title = $title;
            $this->description = $desc;
            $this->buildWizard($db,$idPage);
        }
        
        function buildWizard($db,$idPage){
            $rows = $db->getWizardQuery($idPage);
            
            foreach($rows as $row){
                $this->title = $row['NB_WIZARD_TITLE'];
                $this->description = $row['NB_WIZARD_DESC'];
                if($row['NB_WIZARD_SHOW_PROGRESS'] == "true")
                    $this->showProgressBar =   true;
                else
                    $this->showProgressBar =   false;     
            }
        }
        
        function buildSteps($db,$idPage){
            $rows = $db->getWizardStepsQuery($idPage); 
            foreach($rows as $row)
                array_push($this->steps, new Step($row["NB_WIZARD_STEP_TITLE"], $row["NB_WIZARD_STEP_DESC"]));        
        }
        
        function buildBindings($db,$idPage){
            $rows = $db->getWizardBindingsQuery($idPage);
            
            foreach($rows as $row)
                $this->bindings[$row["NB_ID_PR_SCHEMA_FLD"]] = intval($row["NB_ID_WIZARD_STEP"]);   
            
        }
        
        function buildButtons($db,$idPage){
            $rows = $db->getWizardButtonQuery($idPage);
            foreach($rows as $row){
                $button = new Button($row["NB_WIZARD_BUTTON_TITLE"]);
                $button->click = $row["NB_WIZARD_BUTTON_CLICK"];
                $button->validate = $row["NB_WIZARD_BUTTON_VALIDATE"];
                $this->buttons[$row["NB_WIZARD_BUTTON_NAME"]] = $button;   
            }
        }
    }
?>