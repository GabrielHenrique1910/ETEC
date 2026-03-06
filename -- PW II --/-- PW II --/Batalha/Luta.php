<?php
// luta.php

// Dados dos personagens
$personagens = [
  "Ryu"     => ["forca"=>4500,"img"=>"ryu.jpg","label"=>"Ryu"],
  "Guile"   => ["forca"=>4300,"img"=>"guile.jpg","label"=>"Guile"],
  "Ken"     => ["forca"=>4400,"img"=>"ken.jpg","label"=>"Ken"],
  "Chun-Li" => ["forca"=>4200,"img"=>"chunli.jpg","label"=>"Chun-Li"],
  "Sagat"   => ["forca"=>4600,"img"=>"sagat.jpg","label"=>"Sagat"],
  "Blanka"  => ["forca"=>4300,"img"=>"blanka.jpg","label"=>"Blanka"],
  "Bison"   => ["forca"=>4500,"img"=>"mbison.jpg","label"=>"M. Bison"],
  "Dhalsim" => ["forca"=>4000,"img"=>"dhalsim.jpg","label"=>"Dhalsim"],
];

$erro = $resultado = "";
if($_SERVER["REQUEST_METHOD"]==="POST"){
  $t1 = $_POST["Time1"] ?? "";
  $t2 = $_POST["Time2"] ?? "";
  if(!$t1||!$t2) {
    $erro = "Escolhe os dois personagens, parça!";
  } else {
    $f1 = $personagens[$t1]["forca"];
    $f2 = $personagens[$t2]["forca"];
    if($f1>$f2)      $winner=$t1;
    elseif($f2>$f1)  $winner=$t2;
    else             $winner="Empate";
    $resultado = compact("t1","t2","winner");
  }
}
?><!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1">
<title>Street Fighter Brawl</title>
<style>
*{box-sizing:border-box;margin:0;padding:0;font-family:Arial,sans-serif}
body{background:url('back.jpg')center/cover no-repeat;color:#eee}
.container{max-width:900px;margin:20px auto;background:rgba(0,0,0,0.8);border-radius:10px;overflow:hidden}
header{padding:15px;text-align:center;background:rgba(0,0,0,0.9)}
header h1{color:#FFD700;font-size:2rem}
.section{padding:15px}
.grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(160px,1fr));gap:10px}
.card{background:#222;border-radius:8px;overflow:hidden;position:relative;cursor:pointer;transition:transform .2s}
.card:hover{transform:translateY(-3px)}
.card img{width:100%;display:block}
.card label{display:block;padding:8px;text-align:center;color:#FFD700}
.card input{position:absolute;top:8px;left:8px;transform:scale(1.3)}
.btn{display:inline-block;margin:15px auto;padding:10px 20px;background:#4CAF50;color:#fff;border:none;border-radius:6px;cursor:pointer;transition:background .2s}
.btn:hover{background:#45a049}
.erro{padding:10px;text-align:center;color:#f55}
.result{padding:15px;text-align:center}
.health-bar{height:20px;background:#555;border-radius:10px;overflow:hidden;margin:10px auto;max-width:80%}
.health{height:100%;background:#4CAF50;width:100%;transition:width .5s}
.attack{animation:shake .3s}
@keyframes shake{0%{transform:translate(0)}25%{transform:translate(-5px,5px)}50%{transform:translate(5px,-5px)}75%{transform:translate(-5px,-5px)}100%{transform:translate(0)}}
.timer{font-size:1.2rem;margin-top:10px}
.history{padding:10px;color:#aaa;font-size:.9rem;text-align:center}
audio{display:none}
</style>
</head>
<body>
<div class="container">
  <header><h1>🏆 Street Fighter Brawl 🥊</h1></header>
  <?php if(!$resultado): ?>
    <?php if($erro):?><div class="erro"><?=$erro?></div><?php endif ?>
    <form id="fightForm" method="POST" onsubmit="return startFight()">
      <div class="section">
        <h2>Time 1</h2>
        <div class="grid">
          <?php foreach(["Ryu","Guile","Ken","Chun-Li"] as $key):
            $p=$personagens[$key]; ?>
          <div class="card" onclick="this.querySelector('input').checked=true">
            <img src="<?=$p['img']?>" alt="<?=$p['label']?>">
            <label><?=$p['label']?></label>
            <input type="radio" name="Time1" value="<?=$key?>">
          </div>
          <?php endforeach ?>
        </div>
      </div>
      <div class="section">
        <h2>Time 2</h2>
        <div class="grid">
          <?php foreach(["Sagat","Blanka","Bison","Dhalsim"] as $key):
            $p=$personagens[$key]; ?>
          <div class="card" onclick="this.querySelector('input').checked=true">
            <img src="<?=$p['img']?>" alt="<?=$p['label']?>">
            <label><?=$p['label']?></label>
            <input type="radio" name="Time2" value="<?=$key?>">
          </div>
          <?php endforeach ?>
        </div>
      </div>
      <div style="text-align:center">
        <button type="submit" class="btn">Lutar!</button>
        <button type="button" class="btn" onclick="resetAll()">Resetar</button>
      </div>
    </form>
  <?php else: ?>
    <div class="result" id="resultPanel">
      <?php if($resultado['winner']==="Empate"): ?>
        <h2>⚖️ Empate ⚖️</h2>
      <?php else: ?>
        <h2>🏆 <?=$personagens[$resultado['winner']]['label']?> venceu! 🏆</h2>
      <?php endif ?>
      <div>
        <h3><?=$personagens[$resultado['t1']]['label']?></h3>
        <div class="health-bar"><div id="hp1" class="health"></div></div>
      </div>
      <div>
        <h3><?=$personagens[$resultado['t2']]['label']?></h3>
        <div class="health-bar"><div id="hp2" class="health"></div></div>
      </div>
      <div class="timer" id="timer">Round: 0</div>
      <button class="btn" onclick="location.href='luta.php'">Jogar de Novo</button>
    </div>
  <?php endif ?>
  <div class="history" id="history"></div>
</div>

<!-- Sons -->
<audio id="sfxPunch" src="punch.mp3"></audio>
<audio id="sfxHadouken" src="hadouken.mp3"></audio>

<script>
// controles de teclado
document.addEventListener('keydown', e => {
  if (e.key==='1') document.querySelector('input[name="Time1"]:checked')?.checked=false
  if (e.key==='2') document.querySelectorAll('input[name="Time1"]')[0].checked=true
  if (e.key==='ArrowRight') document.querySelectorAll('input[name="Time2"]')[0].checked=true
  // ... pode mapear mais
});

function startFight(){
  // animar health
  let hp1=100, hp2=100, round=0, winner="<?= $resultado['winner'] ?? ''?>";
  const elHp1=document.getElementById('hp1'), elHp2=document.getElementById('hp2'), elTimer=document.getElementById('timer');
  const punch=document.getElementById('sfxPunch'), hadouken=document.getElementById('sfxHadouken');
  const p1="<?= $resultado['t1'] ?? ''?>", p2="<?= $resultado['t2'] ?? ''?>";
  
  function step(){
    round++;
    elTimer.textContent=`Round: ${round}`;
    // sorteio de dano
    const d1=Math.floor(Math.random()*20), d2=Math.floor(Math.random()*20);
    hp2-=d1; hp1-=d2;
    punch.play();
    elHp2.style.width=Math.max(hp2,0)+'%'; elHp2.parentNode.classList.add('attack');
    elHp1.style.width=Math.max(hp1,0)+'%'; elHp1.parentNode.classList.add('attack');
    setTimeout(()=>{ elHp1.parentNode.classList.remove('attack'); elHp2.parentNode.classList.remove('attack'); },300);

    if(hp1<=0||hp2<=0||round>=10){
      clearInterval(fightLoop);
      if(hp1>hp2) playWin(p1);
      else if(hp2>hp1) playWin(p2);
      else draw();
    }
  }
  function playWin(champ){
    hadouken.play();
    addHistory(champ);
    document.querySelector('#resultPanel h2').textContent=`🏆 ${champ} venceu! 🏆`;
  }
  function draw(){
    addHistory('Empate');
    document.querySelector('#resultPanel h2').textContent='⚖️ Empate ⚖️';
  }
  function addHistory(res){
    let hist = JSON.parse(localStorage.getItem('sfHistory')||'[]');
    hist.unshift(`${new Date().toLocaleTimeString()} - ${res}`);
    hist = hist.slice(0,5);
    localStorage.setItem('sfHistory', JSON.stringify(hist));
    renderHistory();
  }
  function renderHistory(){
    const hist=JSON.parse(localStorage.getItem('sfHistory')||'[]');
    document.getElementById('history').textContent = 'Histórico: '+hist.join(' | ');
  }
  renderHistory();
  const fightLoop=setInterval(step,800);
  return false;
}

function resetAll(){
  localStorage.removeItem('sfHistory');
  location.reload();
}
</script>
</body>
</html>
