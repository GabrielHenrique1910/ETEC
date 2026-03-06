<?php
$processador = $_POST['processador'] ?? '';
$ram = $_POST['ram'] ?? '';
$armazenamento = $_POST['armazenamento'] ?? '';
$sistema = $_POST['sistema'] ?? '';
?>
<!doctype html>
<html lang="pt-BR">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>TechStore - Monte seu PC</title>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">
<style>
body {
    font-family: 'Inter', sans-serif;
    background: url('compiuter.jpg') no-repeat center center fixed;
    background-size: cover;
    margin: 0;
    padding: 0;
    display: flex;
    flex-direction: column;
    align-items: center;
}

.imagens-pc {
    display: flex;
    align-items: flex-end;
    justify-content: center;
    gap: 10px;
    margin-top: 20px;
}

.imagens-pc img {
    border-radius: 8px;
    box-shadow: 0 2px 8px rgba(0,0,0,0.2);
}

.imagens-pc img#pc1 {
    width: 600px;
    height: auto;
}

.imagens-pc img#pc2,
.imagens-pc img#pc3 {
    width: 200px;
    height: auto;
}

.container {
    display: flex;
    gap: 20px;
    max-width: 1200px;
    width: 100%;
    margin-top: 20px;
}

.painel {
    flex: 1;
    background: rgba(255, 255, 255, 0.9);
    padding: 20px;
    border-radius: 12px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.15);
}

h1 {
    font-size: 22px;
    margin-bottom: 15px;
    color: #0077ff;
}

label {
    display: block;
    margin: 10px 0 5px;
    font-weight: 600;
}

select, button {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border-radius: 6px;
    border: 1px solid #ccc;
}

button {
    border: 0;
    background: #0077ff;
    color: #fff;
    font-weight: 600;
    cursor: pointer;
}

.resultado-item {
    margin: 8px 0;
    padding: 8px;
    border-bottom: 1px solid #eee;
}

.icone {
    width: 20px;
    height: 20px;
    vertical-align: middle;
    margin-right: 8px;
}
</style>
</head>
<body>

<div class="imagens-pc">
    <img src="pc2.jpg" id="pc2" alt="PC 2">
    <img src="pc1.webp" id="pc1" alt="PC 1">
    <img src="pc3.jpeg" id="pc3" alt="PC 3">
</div>

<div class="container">
    <div class="painel">
        <h1>Monte seu PC - TechStore</h1>
        <form method="post">
            <label><img src="processador.png" class="icone" alt="Processador">Processador</label>
            <select name="processador" required>
                <option value="">Selecione</option>
                <option value="Intel i5" <?= $processador=='Intel i5'?'selected':'' ?>>Intel i5</option>
                <option value="Intel i7" <?= $processador=='Intel i7'?'selected':'' ?>>Intel i7</option>
                <option value="Ryzen 5" <?= $processador=='Ryzen 5'?'selected':'' ?>>Ryzen 5</option>
            </select>

            <label><img src="ram.png" class="icone" alt="Memória RAM">RAM</label>
            <select name="ram" required>
                <option value="">Selecione</option>
                <option value="8GB" <?= $ram=='8GB'?'selected':'' ?>>8GB</option>
                <option value="16GB" <?= $ram=='16GB'?'selected':'' ?>>16GB</option>
                <option value="32GB" <?= $ram=='32GB'?'selected':'' ?>>32GB</option>
            </select>

            <label><img src="armazenamento.png" class="icone" alt="Armazenamento">Armazenamento</label>
            <select name="armazenamento" required>
                <option value="">Selecione</option>
                <option value="256GB SSD" <?= $armazenamento=='256GB SSD'?'selected':'' ?>>256GB SSD</option>
                <option value="512GB SSD" <?= $armazenamento=='512GB SSD'?'selected':'' ?>>512GB SSD</option>
                <option value="1TB HDD" <?= $armazenamento=='1TB HDD'?'selected':'' ?>>1TB HDD</option>
            </select>

            <label><img src="os.png" class="icone" alt="Sistema Operacional">Sistema</label>
            <select name="sistema" required>
                <option value="">Selecione</option>
                <option value="Windows 10" <?= $sistema=='Windows 10'?'selected':'' ?>>Windows 10</option>
                <option value="Windows 11" <?= $sistema=='Windows 11'?'selected':'' ?>>Windows 11</option>
                <option value="Linux" <?= $sistema=='Linux'?'selected':'' ?>>Linux</option>
            </select>

            <button type="submit">Montar</button>
        </form>
    </div>

    <div class="painel">
        <h1>Resultado</h1>
        <?php if($_SERVER['REQUEST_METHOD']==='POST'): ?>
            <div class="resultado-item">Processador: <strong><?= $processador ?></strong></div>
            <div class="resultado-item">RAM: <strong><?= $ram ?></strong></div>
            <div class="resultado-item">Armazenamento: <strong><?= $armazenamento ?></strong></div>
            <div class="resultado-item">Sistema: <strong><?= $sistema ?></strong></div>
        <?php else: ?>
            <p>Escolha as peças ao lado para ver o resultado aqui</p>
        <?php endif; ?>
    </div>
</div>

</body>
</html>