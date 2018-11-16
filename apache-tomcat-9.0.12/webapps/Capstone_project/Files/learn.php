<!DOCTYPE html>
<html lang="en">
  <head>
        <title> 
          Learn
        </title> 
      
     <link href="https://fonts.googleapis.com/css?family=Anton|Pragati+Narrow|Titillium+Web|Droid+Serif:400i" rel="stylesheet">
      
      <script src="../JS/javascriptlearndonate.js" type="text/javascript"></script>
      
    
    <link rel="stylesheet" href="../Style/style.css">  
  </head>

  <body class="learnbod">
      
       <?php
      include 'header.html';
      ?>
      
      <main>
      <?php
      
          //put what happens if nothing has been checked
            if(isset($_POST["MALNUTRITION"])){
              include 'malnutrition.html';
          }
            if(isset($_POST["POVERTY"])){
              include 'poverty.html';
          }

            if(isset($_POST["ABUSE"])){
              include 'abuse.html';
          }

          if(isset($_POST["LABOUR"])){
              include 'labour.html';
          }
          
          
   ?>
      </main>

    
    <br>
    <?php
    
    include 'footer.html';

    ?>
      
  </body>
</html>
