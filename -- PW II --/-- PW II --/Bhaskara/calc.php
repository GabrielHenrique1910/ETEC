<?php
$num01 = filter_input(INPUT_POST, "txtNumero1");
$num02 = filter_input(INPUT_POST, "txtNumero2");
$opera = filter_input(INPUT_POST, "slOperacao");
$resul = "";

if ($num01 && $num02) {
    switch ($opera) {
        case "+":
            $resul = $num01 + $num02;
            break;
        case "-":
            $resul = $num01 - $num02;
            break;
        case "*":
            $resul = $num01 * $num02;
            break;
        case "/":
            if ($num02 != 0) {
                $resul = $num01 / $num02;
            } else {
                $resul = "Erro: Divisão por zero!";
            }
            break;
    }
}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Calculadora</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f4f4f4;
        }

        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }

        h1 {
            font-size: 24px;
            color: #333;
        }

        input, select {
            padding: 10px;
            margin: 10px 0;
            width: 100%;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        label {
            font-size: 16px;
            margin-bottom: 5px;
        }

        select {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Calculadora</h1>

        <form method="post">
            <label for="txtNumero1">Número 1:</label>
            <input type="text" name="txtNumero1" value="<?= isset($num01) ? $num01 : '' ?>" required />

            <label for="txtNumero2">Número 2:</label>
            <input type="text" name="txtNumero2" value="<?= isset($num02) ? $num02 : '' ?>" required />

            <label for="slOperacao">Operação:</label>
            <select name="slOperacao">
                <option value="+" <?= isset($opera) && $opera == "+" ? "selected" : "" ?>>Adição</option>
                <option value="-" <?= isset($opera) && $opera == "-" ? "selected" : "" ?>>Subtração</option>
                <option value="*" <?= isset($opera) && $opera == "*" ? "selected" : "" ?>>Multiplicação</option>
                <option value="/" <?= isset($opera) && $opera == "/" ? "selected" : "" ?>>Divisão</option>
            </select>

            <input type="submit" name="btnCalcular" value="Calcular" />
        </form>

        <?php if ($resul !== ""): ?>
            <h1>Resultado: <?= $resul ?></h1>
        <?php endif; ?>
    </div>

</body>
</html>
