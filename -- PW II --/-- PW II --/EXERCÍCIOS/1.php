<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <title>Ímpares de 1 a 99</title>
  <style>
    body {
      font-family: 'Roboto', sans-serif;
      background-color: #f2f2f2;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }
    .container {
      background-color: white;
      padding: 20px;
      border-radius: 10px;
      width: 300px;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
      text-align: center;
    }
    input, button {
      margin-top: 10px;
      width: 100%;
      padding: 8px;
      font-size: 15px;
      border-radius: 5px;
      border: 1px solid #ccc;
    }
    button {
      background-color: #5c6bc0;
      color: white;
      border: none;
    }
    .res {
      margin-top: 15px;
      font-weight: bold;
    }
  </style>
</head>
<body>
  <div class="container">
    <h3>Ímpares de 1 a 99</h3>
    <?php
      for ($i = 1; $i <= 99; $i += 2) {
        echo "$i ";
      }
    ?>
    <form method="post">
      <input type="number" name="inicio" placeholder="Digite um número (1-99)" min="1" max="99" required>
      <button type="submit">Mostrar a partir daí</button>
    </form>
    <div class="res">
      <?php
        if (isset($_POST["inicio"])) {
          $ini = $_POST["inicio"] + 1;
          for ($i = $ini; $i <= 99; $i++) {
            if ($i % 2 != 0) echo "$i ";
          }
        }
      ?>
    </div>
  </div>
</body>
</html>