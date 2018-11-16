<!DOCTYPE html>
<html lang="en">
  <head>
    <title> Capstone Project </title>  
      
      <link href="https://fonts.googleapis.com/css?family=Anton|Pragati+Narrow|Titillium+Web|Droid+Serif:400i" rel="stylesheet">
      
      <script src="../JS/javascript.js" type="text/javascript"></script>
    
      <link rel="stylesheet" href="../Style/style.css">
      
      <link href="https://fonts.googleapis.com/css?family=Lato|Slabo+27px" rel="stylesheet">
      
  </head>

  <body id="indbod">
      
      <?php
      include 'header.html';
      ?>
      
      <main>
          
      <div >
      <h1 class="col-lg-3 col-m-12 col-sm-12 bigheading">FIGHT FOR A CHILD</h1>
      </div>
      
      <br>
      
      <div class="col-lg-10 col-m-12 col-sm-12 headerish">
      <p>LEARN HOW CHILDREN ARE BEING VICTIMIZED. CLICK ALL THE ISSUES YOU CARE ABOUT.</p>
      </div>
      
      <br>
      
      <div class="col-lg-12 col-m-12 col-sm-12 labels_check">
          
          <form action="learn.php" method="post">
              
          <label class="imagMal txt" id="labelMal">
              <input type="checkbox" id="mal" name="MALNUTRITION">
              MALNUTRITION</label>
          
          <label class="imagPov txt" id="labelPov">
              <input type="checkbox" id="pov" name="POVERTY">
              POVERTY</label>
              
           <label class="imagAbu txt" id="labelAb">
              <input type="checkbox" id="ab" name="ABUSE">
              ABUSE</label>
          
          <label class="imagLab txt" id="labelLab">
              <input type="checkbox" id="lab" name="LABOUR">
              LABOUR</label>
          
          
              
              <br>
        <input type="submit" value="LEARN" class="submit">
              
          <br>
          
              <hr>

              <div class="col-lg-12 col-m-12 col-sm-12">
                  
                  <p class="quote">"It is easier to build strong children than to repair broken men."</p>
                  
                  <p class="para">'All children, no matter where they live, deserve the opportunity to live full, healthy lives,' said UNICEF Executive Director Anthony Lake, one of four senior United Nations officials who launched the Committee's two-day discussion of efforts to promote and protect children's rights.  In the 10 years since the General Assembly special session on children, the world had shown what could be achieved:  more children were surviving to age 5 than ever before, and the number of child deaths from hunger had fallen from 12 million in 1999 to 6.9 million in 2011, with all regions making gains.

                  </p>
                  <br>
              </div>
              

          </form>
          <hr>
      </div>
          
          <hr>
          </main>
      
      <br>

      <?php
      
      include 'footer.html';
      
      ?>
      
  </body>
</html>
