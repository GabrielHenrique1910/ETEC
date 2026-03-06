<?php
include "crud3.php";
$dados = consultar();
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;500;700&display=swap" rel="stylesheet">

<style>
body{
    font-family: 'Montserrat', sans-serif;
    display:flex;
    flex-direction:column;
    align-items:center;
    padding:20px;
    background:linear-gradient(135deg, #eaeaea, #d5d5d5);
}

h2{
    margin-bottom:10px;
}

form{
    background:#ffffffcc;
    padding:20px;
    border-radius:15px;
    display:flex;
    flex-direction:column;
    width:350px;
    gap:10px;
    backdrop-filter: blur(3px);
    box-shadow:0 0 15px rgba(0,0,0,0.15);
}

input, select, button{
    padding:10px;
    border-radius:10px;
    border:1px solid #bbb;
}

input:focus, select:focus{
    outline:none;
    border-color:#666;
}

button{
    cursor:pointer;
    background:#444;
    color:white;
    border:none;
    transition:0.2s;
}

button:hover{
    background:#222;
}

table{
    margin-top:30px;
    border-collapse: collapse;
    width:90%;
    background:white;
    border-radius:15px;
    overflow:hidden;
    box-shadow:0 0 15px rgba(0,0,0,0.15);
}

th{
    background:#444;
    color:white;
    padding:10px;
}

td{
    border-bottom:1px solid #ddd;
    padding:10px;
}

tr:nth-child(even){
    background:#f3f3f3;
}

.imgsolta{
    width:180px;
    position:absolute;
    right:40px;
    top:40px;
}

.imgsolta2{
    width:140px;
    position:absolute;
    left:40px;
    bottom:250px;
}
</style>

<title>Loja CRUD3</title>
</head>
<body>

<!-- Imagens -->
<img src="camisa.png" class="imgsolta">
<img src="tenis.png" class="imgsolta2">

<h2>CRUD Loja de Roupas</h2>

<form method="post">

    <input type="number" name="idprod" placeholder="ID do produto">
    <input type="text" name="nome" placeholder="Nome do cliente">

    <input type="number" step="0.01" name="calca" placeholder="Valor da calça">
    <input type="number" step="0.01" name="shorts" placeholder="Valor do shorts">
    <input type="number" step="0.01" name="camisa" placeholder="Valor da camisa">
    <input type="number" step="0.01" name="camiseta" placeholder="Valor da camiseta">
    <input type="number" step="0.01" name="tenis" placeholder="Valor do tênis">

    <select name="pagamento">
        <option value="">Forma de pagamento</option>
        <option>Crédito</option>
        <option>Débito</option>
        <option>Pix</option>
        <option>Dinheiro</option>
    </select>

    <button name="acao" value="c">Cadastrar</button>
    <button name="acao" value="u">Atualizar pelo ID</button>
    <button name="acao" value="d">Deletar pelo Nome</button>
</form>


<table>
<tr>
    <th>ID</th>
    <th>Nome</th>
    <th>Calça</th>
    <th>Shorts</th>
    <th>Camisa</th>
    <th>Camiseta</th>
    <th>Tênis</th>
    <th>Pagamento</th>
    <th>Total</th>
</tr>

<?php
foreach($dados as $d){
    $total = $d["calca"] + $d["shorts"] + $d["camisa"] + $d["camiseta"] + $d["tenis"];

    echo "
    <tr>
        <td>$d[idprod]</td>
        <td>$d[nome]</td>
        <td>R$ $d[calca]</td>
        <td>R$ $d[shorts]</td>
        <td>R$ $d[camisa]</td>
        <td>R$ $d[camiseta]</td>
        <td>R$ $d[tenis]</td>
        <td>$d[pagamento]</td>
        <td><b>R$ $total</b></td>
    </tr>
    ";
}
?>
</table>

</body>
</html>
