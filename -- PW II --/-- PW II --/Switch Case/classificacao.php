<div class="container">
    <h1>Resultado da Avaliação</h1>

    <?php
    $componentes = [
        $_POST['componente1'] ?? '',
        $_POST['componente2'] ?? '',
        $_POST['componente3'] ?? ''
    ];

    $mencoes = [
        $_POST['mencao1'] ?? '',
        $_POST['mencao2'] ?? '',
        $_POST['mencao3'] ?? ''
    ];

    foreach ($componentes as $i => $comp) {
        $mencao = strtoupper($mencoes[$i]);
        switch ($mencao) {
            case "MB":
            case "B":
            case "R":
            case "I":
                echo "<p>$comp -> Menção $mencao</p>";
                break;
            default:
                echo "<p>$comp -> Menção inválida</p>";
                break;
        }
    }
    ?>
</div>
<html>
    <body>
        <style>
            body {
                background-image: url(curinthia.jpg);
                background-size: cover;
                background-repeat: no-repeat;
                background-position: center;
            }
            .container {
                background: rgba(255, 255, 255, 0.85);
                padding: 20px;
                border-radius: 10px;
                width: fit-content;
                margin: 0 auto;
                text-align: center;
            }
        </style>
    </body>
</html>