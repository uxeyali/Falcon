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
      <h1 class="col-lg-3 col-m-12 col-sm-12 flathead">THANK YOU FOR SUBSCRIBING.</h1>
              
     <br>
              
     <h1 class="flat col-lg-8 col-m-12 col-sm-12">YOU WILL BE RECEIVING UPDATES THROUGH EMAIL SOON.</h1>
      </div>
      
      <br>
      
          <?php
          
             $email = $_POST["email"]."\r\n"; file_put_contents('../Info/email.txt',$email, FILE_APPEND);
          ?>
          
          
      </main>
   <?php
      include 'footer.html';
      ?>
      
  </body>
</html>