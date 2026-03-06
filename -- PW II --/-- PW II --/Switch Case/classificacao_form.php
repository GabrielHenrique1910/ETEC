<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Avaliação Escolar</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-image: url(curinthia.jpg);
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            min-height: 100vh;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .container {
            background-color: rgba(255,255,255,0.95);
            padding: 30px;
            border-radius: 10px;
            width: 90%;
            max-width: 600px;
            box-shadow: 0 0 10px rgba(0,0,0,0.2);
        }
        h1 {
            text-align: center;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            margin-top: 10px;
        }
        select, input[type="submit"] {
            padding: 8px;
            margin-top: 5px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Avaliação Escolar</h1>
        <form method="post" action="classificacao.php">
            <label for="componente1">Componente Curricular 1:</label>
            <select name="componente1" id="componente1" required>
                <option disabled selected>Selecione o componente</option>
                <option value="PW II">PW II</option>
                <option value="BD II">BD II</option>
                <option value="PAM">PAM</option>
                <option value="DS">DS</option>
                <option value="Matemática">Matemática</option>
                <option value="Português">Português</option>
                <option value="Inglês">Inglês</option>
                <option value="Química">Química</option>
                <option value="Física">Física</option>
                <option value="EACNT">EACNT</option>
                <option value="EAMT">EAMT</option>
                <option value="Ed. Física">Ed. Física</option>
                <option value="LAMIS">LAMIS</option>
                <option value="LPC">LPC</option>
                <option value="Ética">Ética</option>
                <option value="Geografia">Geografia</option>
                <option value="História">História</option>
                <option value="Biologia">Biologia</option>
            </select>

            <label for="mencao1">Menção:</label>
            <select name="mencao1" id="mencao1" required>
                <option value="MB">MB</option>
                <option value="B">B</option>
                <option value="R">R</option>
                <option value="I">I</option>
            </select>

            <label for="componente2">Componente Curricular 2:</label>
            <select name="componente2" id="componente2" required>
                <option disabled selected>Selecione o componente</option>
                <!-- Repete os componentes aqui -->
                <option value="PW II">PW II</option>
                <option value="BD II">BD II</option>
                <option value="PAM">PAM</option>
                <option value="DS">DS</option>
                <option value="Matemática">Matemática</option>
                <option value="Português">Português</option>
                <option value="Inglês">Inglês</option>
                <option value="Química">Química</option>
                <option value="Física">Física</option>
                <option value="EACNT">EACNT</option>
                <option value="EAMT">EAMT</option>
                <option value="Ed. Física">Ed. Física</option>
                <option value="LAMIS">LAMIS</option>
                <option value="LPC">LPC</option>
                <option value="Ética">Ética</option>
                <option value="Geografia">Geografia</option>
                <option value="História">História</option>
                <option value="Biologia">Biologia</option>
            </select>

            <label for="mencao2">Menção:</label>
            <select name="mencao2" id="mencao2" required>
                <option value="MB">MB</option>
                <option value="B">B</option>
                <option value="R">R</option>
                <option value="I">I</option>
            </select>

            <label for="componente3">Componente Curricular 3:</label>
            <select name="componente3" id="componente3" required>
                <option disabled selected>Selecione o componente</option>
                <!-- Repete os componentes aqui -->
                <option value="PW II">PW II</option>
                <option value="BD II">BD II</option>
                <option value="PAM">PAM</option>
                <option value="DS">DS</option>
                <option value="Matemática">Matemática</option>
                <option value="Português">Português</option>
                <option value="Inglês">Inglês</option>
                <option value="Química">Química</option>
                <option value="Física">Física</option>
                <option value="EACNT">EACNT</option>
                <option value="EAMT">EAMT</option>
                <option value="Ed. Física">Ed. Física</option>
                <option value="LAMIS">LAMIS</option>
                <option value="LPC">LPC</option>
                <option value="Ética">Ética</option>
                <option value="Geografia">Geografia</option>
                <option value="História">História</option>
                <option value="Biologia">Biologia</option>
            </select>

            <label for="mencao3">Menção:</label>
            <select name="mencao3" id="mencao3" required>
                <option value="MB">MB</option>
                <option value="B">B</option>
                <option value="R">R</option>
                <option value="I">I</option>
            </select>

            <input type="submit" value="Avaliar">
        </form>
    </div>
</body>
</html>
