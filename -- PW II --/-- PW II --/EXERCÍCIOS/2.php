<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <title>Múltiplos de 3 Crescente</title>
  <style>
    body {
      font-family: 'Roboto', sans-serif;
      background-color: #fafafa;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      text-align: center;
    }
    .box {
      background-color: white;
      padding: 25px;
      border-radius: 10px;
      box-shadow: 0 0 8px rgba(0,0,0,0.2);
    }
  </style>
</head>
<body>
  <div class="box">
    <h3>Múltiplos de 3 (0 a 60)</h3>
    <?php
      for ($i = 0; $i <= 60; $i += 3) {
        echo "$i ";
      }
    ?>
  </div>
</body>
</html>