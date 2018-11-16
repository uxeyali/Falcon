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
                  
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>    
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
       
<!--       MAIN -->
        <div class="large-12 medium-12 cell main">
           <h2 id="indexHeader">WELCOME TO GADGET.COM</h2>
           </div>
           
        </div>
        
          <%
          DB test = new DB();
 			List<Product> list = test.Laptop(null, null, null, null, null);
 			request.setAttribute("list", list);
		%>



          <div class="grid-x grid-padding-x">
          
          <c:forEach items="${list}" var="object">
			 <%-- <c:forEach items="${object}" var="value"> --%>
			 	<div class="large-2 medium-4 small-4 cell">
	              <div class="primary callout">
	              <a href="">
	              <img src="images/laptopImages/${object[0]}.jpg">
	                <p class="center widgetHeading">${object[8]} ${object[2]}</p>
	                </a>
	                <div class="large-12 medium-12 small-12 widget center"> 
	                <div class="widgetInfo"> USD ${object[1] }  
	                <a class="widgetBlack"> <img src="images/cartDevice.png"> </a>
	                </div> 
	                </div>
			 <br>
	              </div>
	            </div>
			<%--  </c:forEach> --%>
		 </c:forEach>
          </div>

         
    </body>
</html>
