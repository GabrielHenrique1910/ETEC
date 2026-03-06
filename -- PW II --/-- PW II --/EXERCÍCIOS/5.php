<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <title>Pares Verticais</title>
  <style>
    body {
      font-family: 'Roboto', sans-serif;
      background-color: #ede7f6;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }
    .card {
      background: white;
      padding: 25px;
      border-radius: 10px;
      text-align: center;
      box-shadow: 0 0 8px rgba(0,0,0,0.2);
    }
    input, button {
      width: 100%;
      margin-top: 10px;
      padding: 8px;
    }
  </style>
</head>
<body>
  <div class="card">
    <h3>Pares verticais até 10</h3>
    <form method="post">
      <input type="number" name="fim" placeholder="Máximo (até 10)" required>
      <button type="submit">Ver</button>
    </form>
    <div>
    <?php
      if (isset($_POST["fim"])) {
        $fim = $_POST["fim"];
        for ($i = 0; $i <= $fim; $i++) {
          if ($i % 2 == 0) echo "$i<br>";
        }
      }
    ?>
    </div>
  </div>
</body>
</html>