<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Flagle - CSS Edition</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    body {
      background: linear-gradient(135deg, #1e1e2f, #2e2e48);
      color: white;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: flex-start;
      min-height: 100vh;
      padding: 2rem;
    }

    h1 {
      margin-bottom: 1.5rem;
      font-size: 2.5rem;
      color: #00ffcc;
    }

    #flag {
      width: 300px;
      height: 200px;
      border: 2px solid white;
      margin-bottom: 2rem;
      display: flex;
      flex-direction: column;
      overflow: hidden;
    }

    .input-area {
      display: flex;
      flex-direction: column;
      align-items: center;
      margin-bottom: 1rem;
    }

    input[type="text"] {
      padding: 0.6rem 1rem;
      border-radius: 8px;
      border: none;
      outline: none;
      font-size: 1rem;
      width: 250px;
      margin-bottom: 0.5rem;
    }

    button {
      padding: 0.6rem 1.2rem;
      background-color: #00ffcc;
      color: #000;
      border: none;
      border-radius: 8px;
      cursor: pointer;
      font-weight: bold;
      transition: 0.3s;
    }

    button:hover {
      background-color: #00ccaa;
    }

    #message {
      font-size: 1.2rem;
      margin-top: 1rem;
    }

    .guesses {
      margin-top: 2rem;
      max-width: 400px;
      width: 100%;
    }

    .guesses h2 {
      margin-bottom: 0.5rem;
    }

    ul {
      list-style: none;
    }

    .flag-france {
      display: flex;
    }
    .flag-france div {
      width: 33.33%; height: 100%;
    }
    .flag-france .blue { background: blue; }
    .flag-france .white { background: white; }
    .flag-france .red { background: red; }

    .flag-italy {
      display: flex;
    }
    .flag-italy div {
      width: 33.33%; height: 100%;
    }
    .flag-italy .green { background: green; }
    .flag-italy .white { background: white; }
    .flag-italy .red { background: red; }

    .flag-germany {
      display: flex;
      flex-direction: column;
    }
    .flag-germany div {
      height: 33.33%; width: 100%;
    }
    .flag-germany .black { background: black; }
    .flag-germany .red { background: red; }
    .flag-germany .yellow { background: yellow; }

    .flag-japan {
      background: white;
      position: relative;
    }
    .flag-japan::before {
      content: '';
      width: 100px;
      height: 100px;
      background: red;
      border-radius: 50%;
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
    }

    .flag-brazil {
      background: green;
      position: relative;
    }
    .flag-brazil::before {
      content: '';
      position: absolute;
      width: 150px;
      height: 150px;
      background: yellow;
      clip-path: polygon(50% 0%, 100% 50%, 50% 100%, 0% 50%);
      top: 50%; left: 50%; transform: translate(-50%, -50%);
    }

    /* Outras bandeiras seguem o mesmo padrão simplificado */

  </style>
</head>
<body>
  <h1>Flagle - CSS Only</h1>
  <div id="flag"></div>
  <div class="input-area">
    <input type="text" id="guess" placeholder="Digite o nome do país...">
    <button onclick="checkGuess()">Enviar</button>
  </div>
  <div id="message"></div>
  <div class="guesses">
    <h2>Tentativas:</h2>
    <ul id="history"></ul>
  </div>

  <script>
    const flags = [
      {
        name: "França",
        className: "flag-france",
        html: '<div class="blue"></div><div class="white"></div><div class="red"></div>'
      },
      {
        name: "Itália",
        className: "flag-italy",
        html: '<div class="green"></div><div class="white"></div><div class="red"></div>'
      },
      {
        name: "Alemanha",
        className: "flag-germany",
        html: '<div class="black"></div><div class="red"></div><div class="yellow"></div>'
      },
      {
        name: "Japão",
        className: "flag-japan",
        html: ''
      },
      {
        name: "Brasil",
        className: "flag-brazil",
        html: ''
      }
      // Adicione +65 bandeiras aqui seguindo o mesmo padrão
    ];

    let currentFlag = {};
    const flagContainer = document.getElementById("flag");
    const input = document.getElementById("guess");
    const message = document.getElementById("message");
    const history = document.getElementById("history");

    function pickRandomFlag() {
      currentFlag = flags[Math.floor(Math.random() * flags.length)];
      flagContainer.className = currentFlag.className;
      flagContainer.innerHTML = currentFlag.html;
      message.textContent = "";
      input.value = "";
      history.innerHTML = "";
    }

    function checkGuess() {
      const guess = input.value.trim().toLowerCase();
      const correct = currentFlag.name.toLowerCase();
      const li = document.createElement("li");
      li.textContent = guess;
      if (guess === correct) {
        message.textContent = "Acertou! 🎉";
        message.style.color = "#00ffcc";
        setTimeout(() => pickRandomFlag(), 2000);
      } else {
        message.textContent = "Errado. Tenta de novo.";
        message.style.color = "#ff4444";
      }
      history.appendChild(li);
      input.value = "";
    }

    window.onload = pickRandomFlag;
  </script>
</body>
</html>
