<?php
header('Content-Type: application/json');
$con = new mysqli("localhost", "root", "", "SJC");

if ($con->connect_error) {
    die(json_encode([['resultado' => 'Erro na conexão: ' . $con->connect_error]]));
}

$acao = $_POST['acao'] ?? '';
$nome = $_POST['nome'] ?? '';
$cidade = $_POST['cidade'] ?? '';
$imagem = $_POST['imagem'] ?? '';
$estado = $_POST['estado'] ?? '';

$resultado = [];

switch($acao) {
    case 'cadastrar':
        if (empty($nome) || empty($cidade)) {
            $resultado[] = ['resultado' => 'Preencha pelo menos nome e cidade pra cadastrar'];
            break;
        }
        $sql = "INSERT INTO viladasflores (nome, cidade, imagem, estado) VALUES ('$nome', '$cidade', '$imagem', '$estado')";
        if ($con->query($sql)) {
            $resultado[] = ['resultado' => 'Cadastro realizado com sucesso'];
        } else {
            $resultado[] = ['resultado' => 'Erro ao cadastrar: ' . $con->error];
        }
        break;

    case 'consultar':
        if (!empty($cidade)) {
            $res = $con->query("SELECT * FROM viladasflores WHERE cidade='$cidade'");
        } else {
            $res = $con->query("SELECT * FROM viladasflores");
        }
        if ($res && $res->num_rows > 0) {
            while ($row = $res->fetch_assoc()) {
                $resultado[] = ['resultado' => $row['nome'].' - '.$row['cidade'].' - '.$row['imagem'].' - '.$row['estado']];
            }
        } else {
            $resultado[] = ['resultado' => 'Nenhum registro encontrado'];
        }
        break;

    case 'atualizar':
        if (empty($cidade)) {
            $resultado[] = ['resultado' => 'Informe a cidade pra alterar'];
            break;
        }
        $check = $con->query("SELECT * FROM viladasflores WHERE cidade='$cidade'");
        if ($check->num_rows == 0) {
            $resultado[] = ['resultado' => 'Nenhum registro encontrado com essa cidade'];
            break;
        }

        $updateFields = [];
        if (!empty($nome))   $updateFields[] = "nome='$nome'";
        if (!empty($imagem)) $updateFields[] = "imagem='$imagem'";
        if (!empty($estado)) $updateFields[] = "estado='$estado'";

        if (empty($updateFields)) {
            $resultado[] = ['resultado' => 'Preencha algum campo pra atualizar'];
            break;
        }

        $sql = "UPDATE viladasflores SET ".implode(', ', $updateFields)." WHERE cidade='$cidade'";
        if ($con->query($sql)) {
            $resultado[] = ['resultado' => 'Dados atualizados com sucesso'];
        } else {
            $resultado[] = ['resultado' => 'Erro ao atualizar: ' . $con->error];
        }
        break;

    case 'deletar':
        if (empty($nome) || empty($cidade) || empty($estado)) {
            $resultado[] = ['resultado' => 'Preencha nome, cidade e estado pra excluir'];
            break;
        }

        $check = $con->query("SELECT * FROM viladasflores WHERE nome='$nome' AND cidade='$cidade' AND estado='$estado'");
        if ($check->num_rows == 0) {
            $resultado[] = ['resultado' => 'Nenhum registro encontrado com esses dados'];
            break;
        }

        $sql = "DELETE FROM viladasflores WHERE nome='$nome' AND cidade='$cidade' AND estado='$estado'";
        if ($con->query($sql)) {
            $resultado[] = ['resultado' => 'Registro excluído com sucesso'];
        } else {
            $resultado[] = ['resultado' => 'Erro ao excluir: ' . $con->error];
        }
        break;

    default:
        $resultado[] = ['resultado' => 'Ação inválida'];
}

echo json_encode($resultado);
?>
