<?php
$nome = $telefone = $endereco = $animal = $raca = $idade = $vacina = $cor = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nome = $_POST["nome"];
    $telefone = $_POST["telefone"];
    $endereco = $_POST["endereco"];
    $animal = $_POST["animal"];
    $raca = $_POST["raca"];
    $idade = $_POST["idade"];
    $vacina = $_POST["vacina"];
    $cor = $_POST["cor"];
}
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Clínica Veterinária</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background: #f2f2f2;
            display: flex;
            justify-content: center;
            padding: 20px;
        }
        .container {
            background: white;
            padding: 20px;
            border-radius: 8px;
            width: 400px;
            display: flex;
            flex-direction: column;
            gap: 15px;
        }
        h2 {
            text-align: center;
        }
        form {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }
        label {
            font-weight: bold;
        }
        input {
            padding: 8px;
            border: 1px solid #aaa;
            border-radius: 4px;
        }
        button {
            padding: 10px;
            border: none;
            border-radius: 4px;
            background: #2949b3ff;
            color: white;
        }
        button:hover {
            background: #2a0e87ff;
        }
        .resultado {
            margin-top: 15px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
            background: #fafafa;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Cadastro - Clínica Veterinária</h2>
        <form method="POST">
            <label>Nome do Cliente:</label>
            <input type="text" name="nome" required>
            
            <label>Telefone:</label>
            <input type="text" name="telefone" required>
            
            <label>Endereço:</label>
            <input type="text" name="endereco" required>
            
            <label>Animal:</label>
            <input type="text" name="animal" required>
            
            <label>Raça:</label>
            <input type="text" name="raca" required>
            
            <label>Idade:</label>
            <input type="number" name="idade" required>
            
            <label>Vacinação:</label>
            <input type="text" name="vacina" required>
            
            <label>Cor do Pelo:</label>
            <input type="text" name="cor" required>
            
            <button type="submit">Cadastrar</button>
        </form>

        <?php if ($_SERVER["REQUEST_METHOD"] == "POST"): ?>
        <div class="resultado">
            <h3>Resultado do Cadastro:</h3>
            <p><b>Nome:</b> <?= $nome ?></p>
            <p><b>Telefone:</b> <?= $telefone ?></p>
            <p><b>Endereço:</b> <?= $endereco ?></p>
            <p><b>Animal:</b> <?= $animal ?></p>
            <p><b>Raça:</b> <?= $raca ?></p>
            <p><b>Idade:</b> <?= $idade ?> anos</p>
            <p><b>Vacinação:</b> <?= $vacina ?></p>
            <p><b>Cor do Pelo:</b> <?= $cor ?></p>
        </div>  
        <?php endif; ?>
    </div>
</body>
</html>
