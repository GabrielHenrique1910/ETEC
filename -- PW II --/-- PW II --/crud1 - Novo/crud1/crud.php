<?php
header('Content-Type: application/json');
$con = new mysqli("localhost", "root", "", "meusdados");

$acao = $_POST['acao'] ?? '';
$nome = $_POST['nome'] ?? '';
$cidade = $_POST['cidade'] ?? '';
$imagem = $_POST['imagem'] ?? '';

$resultado = [];

switch($acao) {
    case 'cadastro':
        $sql = "INSERT INTO pessoas (nome, cidade, imagem) VALUES ('$nome', '$cidade', '$imagem')";
        $con->query($sql);
        $resultado[] = ['resultado' => 'Pessoa cadastrada'];
        break;

    case 'consulta':
        $res = $con->query("SELECT * FROM pessoas");
        while ($row = $res->fetch_assoc()) {
            $resultado[] = ['resultado' => $row['nome'] . ' - ' . $row['cidade'] . ' - ' . $row['imagem']];
        }
        break;

    case 'alteracao':
        $sql = "UPDATE pessoas SET cidade='$cidade', imagem='$imagem' WHERE nome='$nome'";
        $con->query($sql);
        $resultado[] = ['resultado' => 'Dados atualizados'];
        break;

    case 'exclusao':
        $sql = "DELETE FROM pessoas WHERE nome='$nome'";
        $con->query($sql);
        $resultado[] = ['resultado' => 'Pessoa excluída'];
        break;

    default:
        $resultado[] = ['resultado' => 'Ação inválida'];
}

echo json_encode($resultado);
?>
