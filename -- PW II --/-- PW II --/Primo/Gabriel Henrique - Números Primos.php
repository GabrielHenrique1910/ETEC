<?php 
$resultado = ""; // variável pra guardar o resultado (não tinha no seu, criei pra guardar)

if ($_SERVER["REQUEST_METHOD"] == "POST") { // verifica se o form foi mandado
    $resultado .= "<div class='resultado'>"; // abre a div do resultado

    for ($i = 0; $i < 10; $i++) { // repete 10 vez, pq são 10 numeros
        $numero = isset($_POST["numero$i"]) ? intval($_POST["numero$i"]) : 0; // pega o numero q o usuario mandou

        $ehPrimo = true; // começa assumindo q é primo

        if ($numero <= 1) { // numero menor ou igual a 1 nunca é primo
            $ehPrimo = false; // entao nao é primo
        } else {
            for ($j = 2; $j <= sqrt($numero); $j++) { // verifica se tem algum divisor alem de 1 e ele mesmo
                if ($numero % $j == 0) { // se tiver divisor, n é primo
                    $ehPrimo = false; // entao coloca como falso
                    break; // para o loop pq ja sabe q n é primo
                }
            }
        }

        $resultado .= "número $numero: " . ($ehPrimo ? "é primo" : "não é primo") . "<br>"; // mostra na tela se é primo ou nao
    }

    $resultado .= "</div>"; // fecha a div do resultado
}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8"> <!-- codificacao br pra n bugar acento -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- responsividade pra celular -->
    <title>verificador de número primo</title> <!-- titulo q aparece na aba -->
    <style>
        body { /* geralzão do corpo da pagina */
            background-color: #121212; /* modo escuro, pretin */
            color: #ffffff; /* texto branco */
            font-family: sans-serif; /* fonte mais clean */
            padding: 20px; /* espaco pros lado */
            display: flex; /* ativa flexbox */
            justify-content: center; /* centraliza horizontalmente */
        }

        .container {
            text-align: center; /* centraliza o conteúdo */
        }

        form {
            background-color: #1e1e1e; /* fundo do formulario */
            padding: 20px; /* espacamento interno */
            border-radius: 8px; /* cantinho arredondado */
            width: fit-content; /* so o tamanho necessário */
            margin: 0 auto; /* centraliza */
        }

        input[type='number'] {
            margin-bottom: 10px; /* espaço embaixo dos campos */
            padding: 5px; /* espaço dentro do input */
            background-color: #333; /* fundo do input */
            color: #fff; /* cor do texto */
            border: 1px solid #555; /* borda cinza escura */
            border-radius: 4px; /* arredonda um pouco */
        }

        input[type='submit'] {
            background-color: #6200ea; /* roxinho top */
            color: white; /* texto branco */
            padding: 10px 15px; /* espaçamento do botão */
            border: none; /* sem borda */
            border-radius: 4px; /* arredondado */
            cursor: pointer; /* vira maozinha */
        }

        .resultado {
            margin-top: 20px; /* da um espaco em cima do resultado */
            padding: 10px; /* espaco dentro */
            background-color: #2a2a2a; /* fundo escuro mas diferente do form */
            border-radius: 6px; /* arredondado tbm */
            text-align: left; /* texto alinhado a esquerda pra facilitar leitura */
            max-width: 500px; /* limita a largura do resultado */
            margin: 20px auto 0 auto; /* centraliza horizontal e da espaçamento cima */
        }

        h2 {
            margin-bottom: 20px; /* distancia entre titulo e form */
        }
    </style>
</head>
<body>

<div class="container"> <!-- div que segura tudo e centraliza o conteúdo -->
    <h2>VERIFICADOR DE NÚMEROS PRIMOS</h2> <!-- título da página -->

    <form method="post"> <!-- formulário que envia os dados pelo método post -->
        <?php
        for ($i = 0; $i < 10; $i++) { // cria 10 campos pro usuario digitar os numeros
            echo "número " . ($i + 1) . ": <input type='number' name='numero$i' required><br>"; // input do tipo numero
        }
        ?>
        <br> <!-- quebra de linha entre os inputs e o botão -->
        <input type="submit" value="verificar"> <!-- botão de enviar -->
    </form>

    <?php
    if (!empty($resultado)) {
        echo $resultado; // mostra o resultado aqui embaixo do form
    }
    ?>
</div> <!-- fecha a div container -->


</body>
</html>
