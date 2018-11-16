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
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
      
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
       
       <% 
       String username = request.getParameter("username"); 
       System.out.println(username);
       
       DB test = new DB();
       User user = test.userInfo(username);
       pageContext.setAttribute("user", user);
       %>
       
       <div class="grid-x grid-padding-x">
       
<!--       SIDEBAR -->
        <div class="large-2 medium-3 cell sidebar center">
          <h2><c:out value="${user.getusername()}"/></h2>
          <!-- Grid Example -->

         <form method="get">
          <div class="grid-x grid-padding-x">
            <div class="large-12 cell user-sidebar">
             
             <hr>
              <div class="primary callout">
                <h3><a><strong>SHIPPING ADDRESS</strong></a></h3>
                </div>
            <hr>
              <div class="primary callout">
                <h3><a><strong>PERSONAL INFORMATION</strong></a></h3>
                </div>
            <hr>
          <br>
          <a class= "yellowButton" href="login.jsp"> LOGOUT</a>
              </div>
             </div>
       </form>
        <br>
          <br>
           </div>
<!------------------------------------------------->
           <!--        MAIN WINDOW -->
        <div class="large-10 medium-9 cell main">
          <h1 class="center">Hello, <c:out value="${user.getusername()}"/></h1>
          <!-- Grid Example -->

          <div class="grid-x grid-padding-x">
            <div class="large-12 cell">
              <div class="primary callout">
                <p><strong>This is your Account portal.</strong> You can select Shipping information or Personal information to edit your account settings.</p>
              </div>
            </div>
          </div>
          
          <div class="grid-x grid-padding-x">
            <div class="large-12 cell">
              <div class="primary callout">
                <h2> <c:out value="${user.getfirst_name()}"/>  <c:out value="${user.getlast_name()}"/> </h2>
                <h3 class="center"> YOUR CURRENT ADDRESS </h3>
                <h5 class="center"><c:out value="${user.getadd1()}"/> <c:out value="${user.getadd2()}"/></h5>
                <h5 class="center"><c:out value="${user.getcity()}"/> <c:out value="${user.getzip()}"/> <c:out value="${user.getstate()}"/> <c:out value="${user.getcountry()}"/> </h5>
              </div>
            </div>
          </div>
<br>

           </div>
        <br>
        </div>
        <br>
    </body>
</html>
