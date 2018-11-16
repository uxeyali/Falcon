<!DOCTYPE html>
<html lang="en">
  <head>
    <title>
    Donate
   </title>   
    <link rel="stylesheet" href="../Style/style.css">
      
    <script src="../JS/javascriptlearndonate.js" type="text/javascript"></script>  
      
    <link href="https://fonts.googleapis.com/css?family=Anton|Pragati+Narrow|Titillium+Web|Droid+Serif:400i" rel="stylesheet">
  </head>

  <body class="donbody">
      
      <?php
      include 'header.html';
      ?>
      
      <main>
          
          <div>
      <h1 class="col-lg-4 col-m-12 col-sm-12 donateformheading">PLEASE FILL OUT YOUR INFORMATION TO DONATE</h1>
      
              <div class="col-lg-8 col-m-12 col-sm-12">
          <form action="thankyou.php" method="post" class="donateform">
              <label>NAME:
                  <br>
                  <input type="text" name="name" placeholder="TYPE YOUR NAME HERE" required></label>
              <br>
              <label>E-MAIL:
                  <br>
                  <input type="email" name="email" placeholder="TYPE YOUR EMAIL HERE" required>
              </label>
              <br>
              <label>AMOUNT: 
                 <br><input type="number" name="amount" placeholder="$ AMOUNT" required></label>
              <br>
              <label>CREDIT CARD NO:
                  <br>
                  <input type="number" name="ccnumber" max="999999999999999" required></label>
              <br>  
              <br>
              <input type="submit" value="SUBMIT" class="submit">
          </form>
              </div>
              <br>
      </div>
          <br>
      </main>
   
      <?php
      include 'footer.html';
      
      ?>
      
  </body>
</html>
