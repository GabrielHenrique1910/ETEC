<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <style>
        body{
            font-family: Arial;
            background-color: lightgrey;
            padding:20px;
            display:flex;
            flex-direction:column;
            align-items:center;
        }

        .formbox{
            width:320px;
            background:white;
            padding:15px;
            border:1px solid #9b9b9bff;
            border-radius:10px;
            display:flex;
            flex-direction:column;
            gap:10px;
        }

        .formbox input{
            padding:8px;
            border:1px solid #919191ff;
            border-radius:6px;
        }

        .btns{
            display:flex;
            gap:8px;
        }

        .btns button{
            flex:1;
            padding:8px;
            border:none;
            border-radius:6px;
            cursor:pointer;
        }

        .btns button:nth-child(1){ background:#6ce26c }
        .btns button:nth-child(2){ background:#6cb4e2 }
        .btns button:nth-child(3){ background:#e26c6c }

        table{
            margin-top:30px;
            width:80%;
            background:white;
            border-collapse:collapse;
            border-radius:10px;
            overflow:hidden;
        }

        th, td{
            border:1px solid #828282ff;
            padding:10px;
            text-align:center;
        }

        tr:nth-child(even){
            background:#f0f0f0;
        }

        .prof-img{
            width:150px;
            margin-top:20px;
        }
    </style>
</head>

<body>

<h2>Tabela de Profissões</h2>

<img class="prof-img" src="https://cdn-icons-png.flaticon.com/512/201/201623.png">
<br>
<form class="formbox" method="post" action="crud.php">
    <input type="text" name="nome" placeholder="Nome">
    <input type="text" name="cidade" placeholder="Cidade">
    <input type="text" name="imagem" placeholder="URL da imagem">
    <input type="text" name="profissao" placeholder="Profissão">
    <input type="number" name="salario" placeholder="Salário">
<br>
    <div class="btns">
        <button type="submit" name="acao" value="c">Cadastrar</button>
        <button type="submit" name="acao" value="u">Alterar</button>
        <button type="submit" name="acao" value="d">Deletar</button>
    </div>
</form>

<?php
session_start();
if(isset($_SESSION["aviso"])){
    echo "<b>".$_SESSION["aviso"]."</b>";
    unset($_SESSION["aviso"]);
}

$con = new mysqli("127.0.0.1", "root", "", "Gabriel");

$sql = "SELECT * FROM Silva";
$res = $con->query($sql);

if($res->num_rows > 0){
    echo "<table>";
    echo "<tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Cidade</th>
            <th>Imagem</th>
            <th>Profissão</th>
            <th>Salário</th>
          </tr>";

    while($campo = $res->fetch_assoc()){
        echo "<tr>";
        echo "<td>".$campo["idprod"]."</td>";
        echo "<td>".$campo["nome"]."</td>";
        echo "<td>".$campo["cidade"]."</td>";
        echo "<td><img src='".$campo["imagem"]."' width='60' style='border-radius:6px;'></td>";
        echo "<td>".$campo["profissao"]."</td>";
        echo "<td>".$campo["salario"]."</td>";
        echo "</tr>";
    }

    echo "</table>";
}else{
    echo "Nenhum dado ainda mano";
}

$con->close();
?>

<script>
document.addEventListener("keydown", function(e){
    if(e.key === "Enter"){
        e.preventDefault(); // impede enviar o form

        let campos = Array.from(document.querySelectorAll("input"));
        let index = campos.indexOf(document.activeElement);

        if(index >= 0 && index < campos.length - 1){
            campos[index + 1].focus(); // vai pro próximo input
        }
    }
});
</script>

</body>
</html>
