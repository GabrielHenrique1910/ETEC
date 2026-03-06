<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <title>Formulário Restaurante</title>
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

    .form-box {
      background: rgba(0, 0, 0, 0.7);
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0px 0px 10px rgba(255, 255, 255, 0.3);
    }

    h1 {
      text-align: center;
      margin-bottom: 20px;
    }

    p {
      margin: 10px 0;
      font-size: 16px;
      display: flex;
      justify-content: space-between;
      width: 300px;
    }

    input[type="text"] {
      width: 60px;
    }

    input[type="submit"] {
      margin-top: 15px;
      padding: 8px 16px;
      background-color: blue;
      color: white;
      border-radius: 6px;
    }
  </style>
</head>
<body>
  <form action="restaurante.php" method="get" class="form-box">
    <h1>QUANTIDADES CONSUMIDAS</h1>
    <p><span>Refrigerante R$3,00</span> <input type="text" name="a" /></p>
    <p><span>Suco R$5,50:</span> <input type="text" name="b" /></p>
    <p><span>Cheese Salada R$5,50:</span> <input type="text" name="c" /></p>
    <p><span>Cheese Burger R$4,00:</span> <input type="text" name="d" /></p>
    <p><span>Cheese Egg R$4,90:</span> <input type="text" name="e" /></p>
    <p><span>Cheese Calabresa R$8,00:</span> <input type="text" name="f" /></p>
    <p><span>Cheese Bacon R$9,00 :</span> <input type="text" name="g" /></p>
    <p><span>Cheese Tudo R$12,00:</span> <input type="text" name="h" /></p>
    <p><input type="submit" value="Calcular Total" /></p>
  </form>
</body>
</html>
