<!DOCTYPE html>
<html lang="en">
  <head>
    <title> 
      Thank You 
   </title> 
      
       <link href="https://fonts.googleapis.com/css?family=Anton|Pragati+Narrow|Titillium+Web|Droid+Serif:400i" rel="stylesheet">
      
    <script src="../JS/javascriptlearndonate.js" type="text/javascript"></script>
    
    <link rel="stylesheet" href="../Style/style.css">
      
  </head>

  <body id="indbod">
       <?php
      include 'header.html';
      ?>
      
      <main>
      
          <div >
      <h1 class="col-lg-3 col-m-12 col-sm-12 bigheading">THANK YOU FOR YOUR DONATION</h1>
      </div>
      
      <br>
      
          <?php
          
             $name = $_POST["name"]."\r\n"; file_put_contents('../Info/creditcard.txt',$name, FILE_APPEND);
              
             $email = $_POST["email"]."\r\n"; file_put_contents('../Info/creditcard.txt',$email, FILE_APPEND);
          
            $amount = $_POST["amount"]."\r\n"; file_put_contents('../Info/creditcard.txt',$amount, FILE_APPEND);
          
            $credcrd = $_POST["ccnumber"]."\r\n"; file_put_contents('../Info/creditcard.txt',$credcrd, FILE_APPEND);
          ?>
          
          
      </main>
   <?php
      include 'footer.html';
      ?>
      
  </body>
</html>