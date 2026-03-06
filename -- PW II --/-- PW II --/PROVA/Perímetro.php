<?php
$num01 = filter_input(INPUT_POST, "txtNumero1", FILTER_VALIDATE_FLOAT);
$num02 = filter_input(INPUT_POST, "txtNumero2", FILTER_VALIDATE_FLOAT);
$resul = "";

if ($num01 !== false && $num02 !== false && $num01 !== null && $num02 !== null) {
  $resul = ($num01 + $num02) * 2;
}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="utf-8">
  <title>Perímetro</title>
  <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
  <style>
    body {
      font-family: 'Roboto', sans-serif;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
    }

    .container {
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    input {
      margin: 5px;
    }
  </style>
</head>
<body>

  <div class="container">
    <form method="post">
      <label>Número 1: <input type="number" name="txtNumero1" required></label><br>
      <label>Número 2: <input type="number" name="txtNumero2" required></label><br>
      <input type="submit" name="btnCalcular" value="Calcular">
    </form>

    <?php 
      if ($resul !== "") {
        echo "<h1>Perímetro: $resul</h1>";
      }
    ?>
  </div>

</body>
</html>
