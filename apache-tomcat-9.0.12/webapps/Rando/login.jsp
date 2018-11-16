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
       
       
<%@ page import="java.io.*" %> 
<%@ page import="db.*" %>   
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
       
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
       
        <div class="large-12 medium-12 cell main">
           <h3 id="indexHeader">LOGIN</h3>
           </div>
           
        <div class="large-4 large-offset-4 medium-6 medium-offset-3 small-8 small-offset-2 cell sidebar">
        
        <form>
        <h2>SIGN-IN</h2>
        <hr>
        <br>
        <label><h5>Username</h5>
        <input type="text" name="username">
        </label>
        
        <label><h5>Password</h5>
        <input type="password" name="password">
        </label>
        
        <input type="submit" name="LOGIN" class="yellowButton">
        
        </form>
        
        <% 
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        if (username == null && password == null){
        	
        }else{
        	 DB test = new DB();
             User user = test.login(username, password);
             if(user != null){
             	System.err.println("Someone exits" + user.getfirst_name());
             	String redirectURL = "user.jsp?username=";
                response.sendRedirect(redirectURL + username);
             } else {
             	System.err.println("Dont know where youre messing up");
             }
        }
        
       
        
        %>
        
        <br><br>
        </div>
        
        <div class="large-4 large-offset-4 medium-6 medium-offset-3 small-8 small-offset-2 center">
        <a href="register.jsp">Don't have an account? Create one now.</a>
       </div>
        
        </div>
        
<br>
<br>
<br>
 
        
         
    </body>
</html>
