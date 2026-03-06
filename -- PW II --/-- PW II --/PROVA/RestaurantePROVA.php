<?php
    $refriConsumido = filter_input(INPUT_POST, "a");
    $sucoConsumido = filter_input(INPUT_POST, "b");
    $xsaladaConsumido = filter_input(INPUT_POST, "c");
    $xburgerConsumido = filter_input(INPUT_POST, "d");
    $xeggConsumido = filter_input(INPUT_POST, "e");
    $xcalabrezaConsumido = filter_input(INPUT_POST, "f");
    $xbaconConsumido = filter_input(INPUT_POST, "g");
    $xtudoConsumido = filter_input(INPUT_POST, "h");
    $resul = "";

        if ($refriConsumido == "")
            $refriConsumido = 0;
        if ($sucoConsumido == "")
            $sucoConsumido = 0;
        if ($xsaladaConsumido == "")
            $xsaladaConsumido = 0;
        if ($xburgerConsumido == "")
            $xburgerConsumido = 0;
        if ($xeggConsumido == "")
            $xeggConsumido = 0;
        if ($xcalabrezaConsumido == "")
            $xcalabrezaConsumido = 0;
        if ($xbaconConsumido == "")
            $xbaconConsumido = 0;
        if ($xtudoConsumido == "")
            $xtudoConsumido = 0;
		
		$refri = 3.00;
		$suco  = 5.50;
		$xsalada  = 5.50;
		$xburger = 4.00;
		$xegg = 4.90;
		$xcalabreza = 8.00;
		$xbacon = 9.00;
		$xtudo = 12.00;
		
		$refriPago = $refriConsumido * $refri;
		$sucoPago = $sucoConsumido * $suco;
		$xsaladaPago  = $xsaladaConsumido * $xsalada;
		$xburgerPago = $xburgerConsumido * $xburger;
		$xeggPago = $xeggConsumido * $xegg;
		$xcalabrezaPago = $xcalabrezaConsumido * $xcalabreza;
		$xbaconPago = $xbaconConsumido * $xbacon;
		$xtudoPago = $xtudoConsumido * $xtudo;
		
		
		$resul = $refriPago + $sucoPago + $xsaladaPago + $xburgerPago + $xeggPago + $xcalabrezaPago + $xbaconPago+ $xtudoPago;
?>
 
 <!DOCTYPE html>
 <html>
   <head>
     <meta charset="utf-8">
     <title>Perímetro</title>
     <style>
      input, select{padding:10px; margin: 5px;} 
     </style>
   </head>
   <body>
    <center>
        <div class="box">
        <form method="post">
            <h1> Quantidades consumidas</h1>
            <p>Refrigerante R$3,00 <input type="text" name="a" /></p>
            <p>Suco R$5,50: <input type="text" name="b" /></p>
            <p>Cheese Salada R$5,50: <input type="text" name="c" /></p>
            <p>Cheese Burger R$4,00: <input type="text" name="d" /></p>
            <p>Cheese Egg R$4,90: <input type="text" name="e" /></p>
            <p>Cheese Calabresa R$8,00: <input type="text" name="f" /></p>
            <p>Cheese Bacon R$9,00 : <input type="text" name="g" /></p>
            <p>Cheese Tudo R$12,00: <input type="text" name="h" /></p>
            <p><input type="submit" name="btnCalcular" value="Calcular"/></p>
        </form>
        </div>
     <h1>Preço da Conta: <?=$resul;?></h1>
    </center>
   </body>
 </html>