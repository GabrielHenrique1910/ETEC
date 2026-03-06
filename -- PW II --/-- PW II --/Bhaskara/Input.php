<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fórmula de Bhaskara</title>
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
            text-align: center;
        }
        .container {
            background: rgba(0, 0, 0, 0.7);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(255, 255, 255, 0.3);
        }
        p {
            font-size: 24px;
            margin: 10px 0;
        }
        input {
            padding: 10px;
            font-size: 18px;
            border-radius: 5px;
            border: none;
            margin-top: 5px;
        }
        input[type="submit"] {
            background: red;
            color: white;
            transition: 0.3s;
        }
        input[type="submit"]:hover {
            background: darkred;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Fórmula de Bhaskara: </h1>
        <form action="Resultado.php" method="get">
            <p>Digite o valor de "a": <input type="text" name="a" required /></p>
            <p>Digite o valor de "b": <input type="text" name="b" required /></p>
            <p>Digite o valor de "c": <input type="text" name="c" required /></p>
            <p><input type="submit" value="Calcular" /></p>
        </form>
    </div>
</body>
</html>
