<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <title>Total Gasto</title>
  <style>
    body {
      background: url(curinthia.jpg) no-repeat center center fixed;
      background-size: cover;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      height: 100vh;
      font-family: Arial, sans-serif;
      color: white;
    }

    .container {
      background: rgba(0, 0, 0, 0.7);
      padding: 30px;
      border-radius: 10px;
      box-shadow: 2px 2px 10px rgba(0,0,0,0.2);
      display: flex;
      flex-direction: column;
      align-items: center;
      box-shadow: 0px 0px 10px rgba(255, 255, 255, 0.3);
    }

    h1 {
      margin-bottom: 20px;
    }

    p {
      font-size: 16px;
    }

    .btn-voltar {
      margin-top: 20px;
      padding: 10px 20px;
      background-color: blue;
      color: white;
      border-radius: 6px;
    }

    .btn-voltar:hover {
      background-color: darkblue;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Total da Conta</h1>
    <?php
      $a = isset($_GET["a"]) ? floatval($_GET["a"]) : 0;
      $b = isset($_GET["b"]) ? floatval($_GET["b"]) : 0;
      $c = isset($_GET["c"]) ? floatval($_GET["c"]) : 0;
      $d = isset($_GET["d"]) ? floatval($_GET["d"]) : 0;
      $e = isset($_GET["e"]) ? floatval($_GET["e"]) : 0;
      $f = isset($_GET["f"]) ? floatval($_GET["f"]) : 0;
      $g = isset($_GET["g"]) ? floatval($_GET["g"]) : 0;
      $h = isset($_GET["h"]) ? floatval($_GET["h"]) : 0;

      $refri = 3.00;
      $suco = 5.50;
      $salada = 5.50;
      $burger = 4.00;
      $egg = 4.90;
      $calabresa = 8.00;
      $bacon = 9.00;
      $tudo = 12.00;

      $total = ($a * $refri) + ($b * $suco) + ($c * $salada) + ($d * $burger) + ($e * $egg) + ($f * $calabresa) + ($g * $bacon) + ($h * $tudo);

      echo "<p>Total gasto: R$ " . number_format($total, 2, ',', '.') . "</p>";
    ?>
    <a href="formulario.php" class="btn-voltar">Voltar</a>
  </div>
</body>
</html>
