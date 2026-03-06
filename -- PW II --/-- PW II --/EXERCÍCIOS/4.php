<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <title>Múltiplos de 4 até 100</title>
  <style>
    body {
      font-family: 'Roboto', sans-serif;
      background-color: #fff3e0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }
    .wrap {
      background: white;
      padding: 20px;
      border-radius: 10px;
      text-align: center;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    input, button {
      padding: 10px;
      width: 100%;
      margin-top: 10px;
    }
  </style>
</head>
<body>
  <div class="wrap">
    <h3>Múltiplos de 4 decrescendo</h3>
    <form method="post">
      <input type="number" name="inicio" placeholder="Valor Inicial" required>
      <button type="submit">Mostrar</button>
    </form>
    <div>
    <?php
      if (isset($_POST["inicio"])) {
        $num = $_POST["inicio"];
        for ($i = $num; $i >= 0; $i--) {
          if ($i % 4 == 0) echo "$i ";
        }
      }
    ?>
    </div>
  </div>
</body>
</html>