<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <title>Múltiplos de 3 Decrescentes</title>
  <style>
    body {
      font-family: 'Roboto', sans-serif;
      background-color: #e3f2fd;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }
    .container {
      background: white;
      padding: 20px;
      border-radius: 10px;
      text-align: center;
      box-shadow: 0 0 8px rgba(0,0,0,0.1);
    }
    input, button {
      padding: 8px;
      margin-top: 10px;
      width: 100%;
    }
  </style>
</head>
<body>
  <div class="container">
    <h3>Múltiplos de 3 (decrescentes até 80)</h3>
    <form method="post">
      <input type="number" name="inicio" placeholder="Valor inicial" required>
      <button type="submit">Gerar</button>
    </form>
    <div>
    <?php
      if (isset($_POST["inicio"])) {
        $num = $_POST["inicio"];
        for ($i = $num; $i >= 0; $i--) {
          if ($i % 3 == 0) echo "$i ";
        }
      }
    ?>
    </div>
  </div>
</body>
</html>