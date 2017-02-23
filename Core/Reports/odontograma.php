<?php

include "../Class/Utilities.php";
include "../Class/Report.php";

function superficie($pdf,$x1,$y1,$x2,$y2,$x3,$y3,$x4,$y4,$super,$color){
    
    if ($super == '1') 
        $fill='DF';
    else
        $fill='D';

    $pdf->PolyLine(array($x1,$y1,$x2,$y2,$x3,$y3,$x4,$y4),$fill,array(),$color);
    
}

function diente($pdf,$numero,$x,$y,$len,$color,$s1,$s2,$s3,$s4,$s5){

    $pdf->Rect($x,$y,$len,$len);
    $prop=($len*0.30);
    
    if ($s1 == '1') 
        $fill='DF';
    else
        $fill='D';
    
    /* Punto 1 */ $x1=$x; $y1=$y; 
    /* Punto 2 */ $x2=$x+$prop; $y2=$y+$prop; 
    /* Punto 3 */ $x3=$x2+$len-($prop*2); $y3=$y2; 
    /* Punto 4 */ $x4=$x+$len; $y4=$y1;
    /* Punto 5 */ $x5=$x2; $y5=$y2+$len-($prop*2);
    /* Punto 6 */ $x6=$x1; $y6=$y1+$len;    
    /* Punto 7 */ $x7=$x3; $y7=$y5;
    /* Punto 8 */ $x8=$x4; $y8=$y6;
    
    /* Superficie 1 */ $pdf->Rect($x+$prop,$y+$prop,$len-($prop*2),$len-($prop*2),$fill, array(),$color);
    /* Superficie 2 */ superficie($pdf,$x1,$y1,$x2,$y2,$x3,$y3,$x4,$y4,$s2,$color);
    /* Superficie 3 */ superficie($pdf,$x1,$y1,$x2,$y2,$x5,$y5,$x6,$y6,$s3,$color);
    /* Superficie 4 */ superficie($pdf,$x6,$y6,$x5,$y5,$x7,$y7,$x8,$y8,$s4,$color);
    /* Superficie 5 */ superficie($pdf,$x4,$y4,$x3,$y3,$x7,$y7,$x8,$y8,$s5,$color);

    if (($numero >=11 and $numero <=28) or ($numero >=51 and $numero <=65) )
        $pdf->Text($x1+2,$y1-5,"".$numero);
    else{
        if (($numero >=31 and $numero <=48) or ($numero >=71 and $numero <=85) )
            $pdf->Text($x1+2,$y6+1,"".$numero);
    }
}

/************************************************************************************************************************************/


    $objUtilities = new Utilities('localhost','root','','nabuodon');
    $database = $objUtilities->database;
    
    
    $sql="SELECT * FROM nbd_odonto_detalle_tbl where nb_odont_id_fld=1";
    $det=$database->executeQuery($sql);

    
    $objReport = new Report('Odontograma','L','A4','Nabu','Nabu','Nabu','Nabu');
    $pdf=$objReport->setupForm();
    $pdf->SetFont('helvetica', 'B', 20); 
    $pdf->Cell(278,50,'ODONTOGRAMA', 0, 1, 'C');

    $pdf->SetFont('helvetica', 'N', 12);

    $len=10;
    $pos=0;
    
    $x=40;
    $y=50;
    $esp=12;
    $ysep=15;

    for ($i=0; $i<sizeof($det); $i++){
        
        $separador=0; 
        $secu=$det[$i][1];
        $diente=$det[$i][2];
        $tipo =$det[$i][3];
        $sup1 =$det[$i][4];
        $sup2 =$det[$i][5];
        $sup3 =$det[$i][6];
        $sup4 =$det[$i][7];
        $sup5 =$det[$i][8];
        
        if ($tipo == '1' )
            $color=array(0,0,156);
        else
            if ($tipo == '2' )
                $color=array(255,0,0);
            else
                if ($tipo == '3' )
                    $color=array(0,255,0);
                else
                    $color=array(255,255,255);
        
        if (($secu >= 9 and $secu<= 16) or ($secu >= 25 and $secu<= 32) or ($secu >= 38 and $secu<= 42) or ($secu >= 48))
            $separador=24; 
        else{
            if ( ($secu==1) or ($secu == 17) or ($secu == 33) or ($secu == 43) ){
                
                if ($secu == 17)
                    $pos=0;
                
                if ($secu == 33)
                    $y=$y+$ysep+10;
                else
                    $y=$y+$ysep;
                
                if ( ($secu == 33) or ($secu == 43))
                    $pos=3;
                
            }
        }
           
        diente($pdf,$diente,$x+($pos*$esp)+$separador,$y,$len,$color,$sup1,$sup2,$sup3,$sup4,$sup5);        
        $pos=$pos+1;
    }

   $objReport->exportarPdf($pdf,'Odontograma');
?>