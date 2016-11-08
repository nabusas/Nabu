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

	Fecha creacion		= 04-02-2016
	Desarrollador		= CAGC
	Fecha modificacion	= 04-02-2016
	Usuario Modifico	= CAGC

*/

include '../Framework/Tcpdf/tcpdf_include.php'; 

class Report
{
	var $pdf;
	

	function Report($reporte,$orientacion,$tamano,$creator,$author,$tittle,$subject)
	{
		$this->pdf = new TCPDF($orientacion, PDF_UNIT, $tamano, true, 'UTF-8', false);

		$this->pdf->SetCreator($creator);
		$this->pdf->SetAuthor($author);
		$this->pdf->SetTitle($tittle);
		$this->pdf->SetSubject($subject);
		$this->pdf->SetKeywords('Nabu');
        
    }

	function setupForm(){

        $this->pdf->AddPage();
		$bMargin = $this->pdf->getBreakMargin();
		$auto_page_break = $this->pdf->getAutoPageBreak();
		$this->pdf->SetAutoPageBreak(false, 0);

        $this->pdf->Image(K_PATH_IMAGES.'logo.png',10,12, 30, 0, '', '', '', false, 0);

        $this->pdf->SetAutoPageBreak($auto_page_break, $bMargin);
        
        return $this->pdf;
	}

	function exportarPdf($pdf,$id){
        ob_start();
		$pdf->Output($id, 'I');
        ob_end_flush();
	}
    
}
?>