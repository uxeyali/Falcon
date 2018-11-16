<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>GADGET.COM</title>
        <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/foundation.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/main.css">
    </head>
    <body>
       
       
<!--       MAIN HEADER-->
       <div class="grid-x grid-padding-x">
        <div id="bar" class="large-12 cell">
           <a id="homeLogo" href="index.jsp">
           
            <p id="gadgetlogo">
                &nbsp;
                GADGET
            </p>
            
            <p id="comlogo">
            .COM
            </p>
            
            </a>
            
            <a id="cart" href="cart.jsp"> <img src="images/cart.png"></a>
            <a id="user" href="login.jsp"> <img src="images/user.png"></a>
        </div>
        </div>
        
<!--      SECONDARY HEADER WITH NAVIGATION -->
         <nav class="vertical medium-horizontal menu" id="navig">
            <a href="index.jsp"><i class="fi-list"></i> <span>Home</span></a>
         <a href="laptop.jsp"><i class="fi-list"></i> <span>Laptops</span></a>
  <a href="camera.jsp"><i class="fi-list"></i> <span>Cameras</span></a>
  <a href="phones.jsp"><i class="fi-list"></i> <span>Cell Phones</span></a>
      </nav>
<!--       END OF NAVIGATION-->
       
       <div class="grid-x grid-padding-x">
       
<!--       SIDEBAR -->
        <div class="large-2 medium-3 cell sidebar">
          <h2>FILTER</h2>
          <!-- Grid Example -->

         <form>
          <div class="grid-x grid-padding-x">
            <div class="large-12 cell sidebar">
             
              <div class="primary callout">
                <h3><strong>MANUFACTURER</strong></h3>
                
                <label> <input type="checkbox" name="manufacturer" value="apple"> Apple </label>
                <label> <input type="checkbox" name="manufacturer" value="samsung"> Samsung</label>
                <label> <input type="checkbox" name="manufacturer" value="microsoft"> Microsoft </label>
                <label> <input type="checkbox" name="manufacturer" value="samsung"> </label>
                <label> <input type="checkbox" name="manufacturer" value="microsoft"> Microsoft </label>
                
              </div>
            </div>
          </div>
          
          <div class="grid-x grid-padding-x">
            <div class="large-12 cell sidebar">
              <div class="primary callout">
                <h3><strong>PROCESSOR</strong></h3>
                
                <label> <input type="checkbox" name="processor" value="hp"> HP</label>
                <label> <input type="checkbox" name="processor" value="microsoft"> Microsoft </label>
                
              </div>
            </div>
          </div>
          
          <div class="grid-x grid-padding-x">
            <div class="large-12 cell sidebar">
              <div class="primary callout">
                <h3><strong>OPERATING SYSTEM</strong></h3>
                
                <label> <input type="checkbox" name="os" value="osx"> Mac OSX</label>
                <label> <input type="checkbox" name="os" value="windows"> Windows </label>
                
              </div>
            </div>
          </div>
          
          <div class="grid-x grid-padding-x">
            <div class="large-12 cell sidebar">
              <div class="primary callout">
                <h3><strong>STORAGE SIZE</strong></h3>
                
                <label> <input type="checkbox" name="storage" value="500gb"> 500GB </label>
                <label> <input type="checkbox" name="storage" value="1tb"> 1TB </label>
                <label> <input type="checkbox" name="storage" value="2tb"> 2TB </label>
                
              </div>
            </div>
          </div>
          
          <br>
          <input class= "yellowButton" type="submit" value="SUBMIT">
          
       </form>
        <br>
          <br>
           </div>
<!------------------------------------------------->
           <!--        MAIN WINDOW -->
        <div class="large-10 medium-9 cell main">
          <h2>CELL PHONES</h2>
          <!-- Grid Example -->

          <div class="grid-x grid-padding-x">
            <div class="large-12 cell">
              <div class="primary callout">
                <p><strong>This is a twelve cell section in a grid-x.</strong> Each of these includes a div.callout element so you can see where the cell are - it's not required at all for the grid.</p>
              </div>
            </div>
          </div>
          <div class="grid-x grid-padding-x">
            <div class="large-2 medium-4 small-4 cell">
              <div class="primary callout">
                <p>Four cell</p>
              </div>
            </div>
            <div class="large-2 medium-4 small-4 cell">
              <div class="primary callout">
                <p>Four cell</p>
              </div>
            </div>
            <div class="large-2 medium-4 small-4 cell">
              <div class="primary callout">
                <p>Four cell</p>
              </div>
            </div>
            <div class="large-2 medium-4 small-4 cell">
              <div class="primary callout">
                <p>Four cell</p>
              </div>
            </div>
            <div class="large-2 medium-4 small-4 cell">
              <div class="primary callout">
                <p>Four cell</p>
              </div>
            </div>
            <div class="large-2 medium-4 small-4 cell">
              <div class="primary callout">
                <p>Four cell</p>
              </div>
            </div>
          </div>

           </div>
        
        </div>
        

 
        
         
    </body>
</html>
