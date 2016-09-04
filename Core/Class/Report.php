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
	}

	function exportarPdf($id){
        ob_start();
		$this->pdf->Output($id, 'I');
        ob_end_flush();
	}
    
	function schemaReport($tamanoFuenteForm,$cabecera,$detalle,$totales)
	{

        $borde=1;
        $w=5;
        
        $this->pdf->Ln(15);

        $this->pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+4); 
        $this->pdf->Cell(278,$w,$cabecera['Tipo_Factura'].' Numero '.$cabecera['Id'], $borde, 1, 'C');
        $this->pdf->Ln(5);
        
        $this->pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $this->pdf->Cell(35,$w,"Fecha Factura:",$borde,0, 'L');
        $this->pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $this->pdf->Cell(100,$w,$cabecera['Fecha_Factura'],$borde,0, 'L');
        
        $this->pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $this->pdf->Cell(40,$w,"Fecha Vencimiento:",$borde,0, 'L');
        $this->pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $this->pdf->Cell(103,$w,$cabecera['Vencimiento'],$borde,0, 'L');
        
        $this->pdf->Ln(5);
        
        $this->pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $this->pdf->Cell(35,$w,"Cliente:",$borde,0, 'L');
        $this->pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $this->pdf->Cell(100,$w,$cabecera['Nombre'],$borde,0, 'L');
    
        $this->pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $this->pdf->Cell(40,$w,"Documento:",$borde,0, 'L');
        $this->pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $this->pdf->Cell(103,$w,$cabecera['Tipo_Documento'].' # '.$cabecera['Documento'],$borde,0, 'L');
        
        $this->pdf->Ln(5);
        
        $this->pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $this->pdf->Cell(35,$w,"Direccion:",$borde,0, 'L');
        $this->pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $this->pdf->Cell(100,$w,$cabecera['Direccion'],$borde,0, 'L');
        
        $this->pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $this->pdf->Cell(40,$w,"Telefono:",$borde,0, 'L');
        $this->pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $this->pdf->Cell(30,$w,$cabecera['Telefono'],$borde,0, 'L');
        
        $this->pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $this->pdf->Cell(18,$w,"Email:",$borde,0, 'L');
        $this->pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $this->pdf->Cell(55,$w,$cabecera['Email'],$borde,0, 'L');
        
        $this->pdf->Ln(5);
        
        $this->pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $this->pdf->Cell(35, $w,"Vendedor:",$borde,0, 'L');
        $this->pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);   
        $this->pdf->Cell(243,$w,$cabecera['Vendedor'],$borde,0, 'L');
        
        $this->pdf->Ln(10);
        
        $this->pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $this->pdf->Cell(35,$w,'Cantidad', $borde,0,'C');
        $this->pdf->Cell(100,$w,'Producto',$borde,0,'C');
        $this->pdf->Cell(40,$w,'Precio',$borde,0,'C');
        $this->pdf->Cell(30,$w,'Iva',$borde,0,'C');
        $this->pdf->Cell(73,$w,'Total Linea',$borde,0,'C');
        $this->pdf->Ln(5);

        $this->pdf->SetFont('helvetica', 'N', $tamanoFuenteForm);  
        
        for ($i=0; $i<sizeof($detalle); $i++){
            $this->pdf->Cell(35,$w,$detalle[$i]['Cantidad'], $borde,0,'C');
            $this->pdf->Cell(100,$w,$detalle[$i]['Producto'],$borde,0,'C');
            $this->pdf->Cell(40,$w,$detalle[$i]['Precio'],$borde,0,'C');
            $this->pdf->Cell(30,$w,$detalle[$i]['Iva'],$borde,0,'C');
            $this->pdf->Cell(73,$w,$detalle[$i]['Total'],$borde,0,'C');
            $this->pdf->Ln(5);
        }
        
        $this->pdf->Ln(5);
        $this->pdf->SetFont('helvetica', 'B', $tamanoFuenteForm+1); 
        $this->pdf->Cell(175,$w,'',0,0,'C');
        $this->pdf->Cell(30,$w,'Total', $borde,0,'C');
        $this->pdf->Cell(73,$w,$totales['Monto'], $borde,0,'C');
		
	}
}
?>