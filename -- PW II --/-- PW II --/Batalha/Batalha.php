<html>
   <head>
      <style>
         body {
            background-image: url('back.jpg');
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
            color: white;
            text-align: center;
         }
         .card {
            background-color: rgba(0, 0, 0, 0.7);
            border-radius: 15px;
            padding: 20px;
            margin: 20px;
            width: 300px;
            display: inline-block;
            box-shadow: 0px 4px 6px rgba(0,0,0,0.5);
         }
         .card img {
            width: 100%;
            border-radius: 10px;
         }
         .vencedor {
            font-size: 28px;
            color: #FFD700;
            margin-top: 20px;
         }
         .empate {
            font-size: 28px;
            color: #FFFF00;
            margin-top: 20px;
         }
         .result-table {
            margin: 0 auto;
            padding-top: 30px;
         }
         .result-table td {
            padding: 10px;
         }
         .button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-top: 20px;
            border-radius: 10px;
         }
         .button:hover {
            background-color: #45a049;
         }
      </style>
   </head>
   <body>
      <?php
         if(isset($_POST["Time1"])) $time1 = $_POST["Time1"];
         else $time1 = "";

         if(isset($_POST["time2"])) $time2 = $_POST["time2"];
         else $time2 = "";

         if($time1 == "" || $time2 == "") {
            echo "<font color='red'><center><b>Por favor, escolha ambos os personagens para a luta!</b></center></font>";
            echo "<br><br><center><a href='luta.php' style='color: white; text-decoration: none; padding: 10px; background-color: #4CAF50; border-radius: 5px;'>Voltar à Escolha de Personagens</a></center>";
         } else {
            if($time1 == "Ryu"){
               echo "<div class='card'>
                     <h2>Ryu</h2>
                     <img src='ryu.jpg' height=200 width=250>
                     </div>";
               $p1 = 4500;
               $img1 = "ryu.jpg";
            }
            else if($time1 == "Guile"){
               echo "<div class='card'>
                     <h2>Guile</h2>
                     <img src='guile.jpg' height=200 width=250>
                     </div>";
               $p1 = 4300;
               $img1 = "guile.jpg";
            }
            else if($time1 == "Ken"){
               echo "<div class='card'>
                     <h2>Ken</h2>
                     <img src='ken.jpg' height=200 width=250>
                     </div>";
               $p1 = 4400;
               $img1 = "ken.jpg";
            }
            else if($time1 == "Chun-Li"){
               echo "<div class='card'>
                     <h2>Chun-Li</h2>
                     <img src='chunli.jpg' height=200 width=250>
                     </div>";
               $p1 = 4200;
               $img1 = "chunli.jpg";
            }

            echo "<div class='vencedor'>VS</div>";

            if($time2 == "Sagat"){
               echo "<div class='card'>
                     <h2>Sagat</h2>
                     <img src='sagat.jpg' height=200 width=250>
                     </div>";
               $p2 = 4600;
               $img2 = "sagat.jpg";
            }
            else if($time2 == "Blanka"){
               echo "<div class='card'>
                     <h2>Blanka</h2>
                     <img src='blanka.jpg' height=200 width=250>
                     </div>";
               $p2 = 4300;
               $img2 = "blanka.jpg";
            }
            else if($time2 == "Bison"){
               echo "<div class='card'>
                     <h2>M. Bison</h2>
                     <img src='mbison.jpg' height=200 width=250>
                     </div>";
               $p2 = 4500;
               $img2 = "mbison.jpg";
            }
            else if($time2 == "Dhalsim"){
               echo "<div class='card'>
                     <h2>Dhalsim</h2>
                     <img src='Dhalsim.jpg' height=200 width=250>
                     </div>";
               $p2 = 4000;
               $img2 = "Dhalsim.jpg";
            }

            echo "<br><br>";

            if($p1 > $p2){
               echo "<div class='vencedor'><b>Vencedor:</b><br>$time1</div>
                     <div class='card'>
                     <img src='$img1' height=250 width=300>
                     </div>";
            }
            else if($p2 > $p1){
               echo "<div class='vencedor'><b>Vencedor:</b><br>$time2</div>
                     <div class='card'>
                     <img src='$img2' height=250 width=300>
                     </div>";
            }
            else {
               echo "<div class='empate'><b>Empate:</b></div>
                     <table class='result-table'>
                        <tr>
                           <td>
                              <div class='card'>
                                 <h3>$time1</h3>
                                 <img src='$img1' height=200 width=250>
                              </div>
                           </td>
                           <td><font size=25 color=White>=</font></td>
                           <td>
                              <div class='card'>
                                 <h3>$time2</h3>
                                 <img src='$img2' height=200 width=250>
                              </div>
                           </td>
                        </tr>
                     </table>";
            }

            echo "<br><a href='luta.php' class='button'>Voltar à Luta</a>";
         }
      ?>
   </body>
</html>

