<?php
$a = (float) $_GET["a"];
$b = (float) $_GET["b"];
$c = (float) $_GET["c"];

$delta = $b**2 - 4 * $a * $c;
$x1 = (-$b + sqrt($delta)) / (2 * $a);
$x2 = (-$b - sqrt($delta)) / (2 * $a);
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultado do Perímetro</title>
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
        a {
            display: inline-block;
            margin-top: 15px;
            padding: 10px 15px;
            font-size: 18px;
            background: red;
            color: white;
            border-radius: 5px;
            transition: 0.3s;
        }
        a:hover {
            background: darkred;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Resultado</h1>
        <p>Δ: <?= $delta ?></p>
        <p>X1: <?= $x1 ?></p>
        <p>X2: <?= $x2 ?></p>
        <a href="Input.php">Voltar</a>
    </div>
</body>
</html>
