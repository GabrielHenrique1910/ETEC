<?php
session_start();

$nome = $_POST["nome"] ?? "";
$cidade = $_POST["cidade"] ?? "";
$imagem = $_POST["imagem"] ?? "";
$profissao = $_POST["profissao"] ?? "";
$salario = $_POST["salario"] ?? "";
$acao = $_POST["acao"] ?? "";

$con = new mysqli("127.0.0.1", "root", "", "Gabriel");

if($acao == "c"){
    $sql = "INSERT INTO Silva (nome, cidade, imagem, profissao, salario)
            VALUES ('$nome', '$cidade', '$imagem', '$profissao', '$salario')";
    
    $con->query($sql);
    $_SESSION["aviso"] = "Cadastrado!";
}

if($acao == "u"){
    $sql = "UPDATE Silva 
            SET profissao='$profissao', cidade='$cidade', imagem='$imagem', salario='$salario'
            WHERE nome='$nome'";

    $con->query($sql);
    $_SESSION["aviso"] = "Alterado!";
}

if($acao == "d"){
    $sql = "DELETE FROM Silva WHERE profissao='$profissao' and nome='$nome' and salario='$salario' and imagem='$imagem' and cidade='$cidade'";
    $con->query($sql);

    $_SESSION["aviso"] = "Deletado!";
}

header("location: ".$_SERVER['HTTP_REFERER']);
exit;
?>
