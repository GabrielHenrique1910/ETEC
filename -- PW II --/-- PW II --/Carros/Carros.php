<?php
$carros = [
    ["nome" => "Pagani Huayra R", "img" => "PaganiHuayraR.png"],
    ["nome" => "Lamborghini Aventador", "img" => "LamborghiniAventador.jpg"],
    ["nome" => "McLaren Senna", "img" => "McLarenSenna.jpg"],
    ["nome" => "Ferrari Daytona SP3", "img" => "FerrariDaytonaSP3.jpg"],
    ["nome" => "Ferrari 488 Speciale", "img" => "Ferrari488Speciale.jpg"],
    ["nome" => "McLaren 720s", "img" => "McLaren720s.jpg"],
    ["nome" => "Mercedes AMG", "img" => "MercedesAMG.jpg"],
    ["nome" => "Ferrari SF90", "img" => "FerrariSF90.jpg"],
    ["nome" => "Lamborghini Huracan STO", "img" => "LamborghiniHuracanSTO.avif"],
    ["nome" => "Ferrari 296 GTS", "img" => "Ferrari296GTS.avif"],
];
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Carros</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background: #f2f2f2;
            margin: 20px;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .linha {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }
        .carro {
            margin: 10px;
            text-align: center;
            background: #fff;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 8px;
            width: 200px;
            cursor: pointer;
            transition: background 0.2s;
        }
        .carro img {
            width: 100%;
            height: auto;
            border-radius: 5px;
        }
        .carro:hover {
            background: #e6f0ff;
        }
        .carro input[type="checkbox"] {
            margin-top: 8px;
        }
        .carro input[type="checkbox"]:checked + .nome {
            font-weight: bold;
            color: #0066cc;
        }
        .selecionados {
            margin-top: 30px;
        }
        .selecionados h3 {
            text-align: center;
        }
        .lista-selecionados {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 15px;
            margin-top: 15px;
        }
        .selecionado {
            text-align: center;
            background: #fff;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 8px;
            width: 180px;
        }
        .selecionado img {
            width: 100%;
            height: auto;
            border-radius: 5px;
        }
        .botao {
            display: block;
            margin: 0 auto;
            padding: 10px 20px;
            font-size: 16px;
        }
    </style>
</head>
<body>

<h2>Escolha seus carros</h2>

<form method="post">
    <div class="linha">
        <?php for($i=0; $i<4; $i++): ?>
            <label class="carro">
                <img src="<?= $carros[$i]['img'] ?>" alt="">
                <input type="checkbox" name="carros[]" value="<?= $i ?>">
                <div class="nome"><?= $carros[$i]['nome'] ?></div>
            </label>
        <?php endfor; ?>
    </div>

    <div class="linha">
        <?php for($i=4; $i<8; $i++): ?>
            <label class="carro">
                <img src="<?= $carros[$i]['img'] ?>" alt="">
                <input type="checkbox" name="carros[]" value="<?= $i ?>">
                <div class="nome"><?= $carros[$i]['nome'] ?></div>
            </label>
        <?php endfor; ?>
    </div>

    <div class="linha">
        <?php for($i=8; $i<10; $i++): ?>
            <label class="carro">
                <img src="<?= $carros[$i]['img'] ?>" alt="">
                <input type="checkbox" name="carros[]" value="<?= $i ?>">
                <div class="nome"><?= $carros[$i]['nome'] ?></div>
            </label>
        <?php endfor; ?>
    </div>

    <input type="submit" value="Confirmar" class="botao">
</form>

<?php
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['carros'])) {
    echo "<div class='selecionados'><h3>Você escolheu:</h3>";
    echo "<div class='lista-selecionados'>";
    foreach($_POST['carros'] as $indice){
        $c = $carros[$indice];
        echo "<div class='selecionado'>
                <img src='{$c['img']}' alt='{$c['nome']}'>
                <p>{$c['nome']}</p>
              </div>";
    }
    echo "</div></div>";
}
?>

</body>
</html>
