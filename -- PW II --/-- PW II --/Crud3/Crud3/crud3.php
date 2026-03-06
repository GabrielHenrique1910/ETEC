<?php
function conexao(){
    return new mysqli("localhost", "root", "", "loja3");
}

function cadastrar($nome,$calca,$shorts,$camisa,$camiseta,$tenis,$pag){
    $c = conexao();
    $sql = "INSERT INTO roupas(nome,calca,shorts,camisa,camiseta,tenis,pagamento)
            VALUES('$nome','$calca','$shorts','$camisa','$camiseta','$tenis','$pag')";
    $c->query($sql);
}

function consultar(){
    $c = conexao();
    $sql = "SELECT * FROM roupas";
    return $c->query($sql);
}

function atualizar($id,$nome,$calca,$shorts,$camisa,$camiseta,$tenis,$pag){
    $c = conexao();
    $sql = "UPDATE roupas SET 
            nome='$nome',
            calca='$calca',
            shorts='$shorts',
            camisa='$camisa',
            camiseta='$camiseta',
            tenis='$tenis',
            pagamento='$pag'
            WHERE idprod='$id'";
    $c->query($sql);
}

function deletar($nome){
    $c = conexao();
    $sql = "DELETE FROM roupas WHERE nome='$nome'";
    $c->query($sql);
}

if($_POST){
    $acao = $_POST["acao"];
    $id = $_POST["idprod"] ?? 0;
    $nome = $_POST["nome"] ?? "";
    $calca = $_POST["calca"] ?? 0;
    $shorts = $_POST["shorts"] ?? 0;
    $camisa = $_POST["camisa"] ?? 0;
    $camiseta = $_POST["camiseta"] ?? 0;
    $tenis = $_POST["tenis"] ?? 0;
    $pag = $_POST["pagamento"] ?? "";

    if($acao=="c") cadastrar($nome,$calca,$shorts,$camisa,$camiseta,$tenis,$pag);
    if($acao=="u") atualizar($id,$nome,$calca,$shorts,$camisa,$camiseta,$tenis,$pag);
    if($acao=="d") deletar($nome);

    header("Location: index.php");
}
?>