<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <title>Minutos para Horas</title>
  <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
  <style>
    body {
      font-family: 'Roboto', sans-serif;
      background: url(back.png);
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }
    .caixa {
      background-color: #fff;
      padding: 25px;
      border-radius: 10px;
      box-shadow: 2px 2px 8px rgba(0,0,0,0.2);
      width: 280px;
      text-align: center;
    }
    input, button {
      margin-top: 8px;
      padding: 8px;
      width: 100%;
      font-size: 15px;
      border-radius: 5px;
      border: 1px solid #ccc;
    }
    button {
      background-color: #2196F3;
      color: white;
      border: none;
    }
    button:hover {
      background-color: #1976D2;
    }
    .resposta {
      margin-top: 10px;
      font-weight: 600;
    }
  </style>
</head>
<body>
  <div class="caixa">
    <h3>Converter Minutos em Horas</h3>
    <form method="post">
      <input type="number" name="minutos" placeholder="Digite os minutos" required>
      <button type="submit">Converter</button>
    </form>
    <div class="resposta">
      <?php
        if (isset($_POST["minutos"])) {
          $m = $_POST["minutos"];
          $hr = $m / 60;
          echo "$m minuto(s) = " . round($hr, 2) . " hora(s)";
        }
      ?>
    </div>
  </div>
</body>
</html>
